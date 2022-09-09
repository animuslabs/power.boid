import { check, Name, Asset, TableStore, print, SAME_PAYER, unpackActionData, ActionData, requireAuth, Action, EMPTY_NAME } from "proton-tsc"
import { Assets, TransferNfts, ATOMICASSETS_CONTRACT } from "../../external/atomicassets"
import { OracleStat } from "../tables/oracleStats"
import { DepositActions } from "./5-deposit"

export class OStatsActions extends DepositActions {
  @action("handleostat")
  handleOStat(oracle:Name, round:u16):void {
    const config = this.getConfig()
    check(round < this.currentRound() - config.reports_finalized_after_rounds, "can't process this round yet, not yet finalized")

    // get config, global and oracle stats
    const oStatsT = this.oracleStatsT(oracle)
    const oRoundData = oStatsT.requireGet(round, "oStats round doesn't exist")
    check(!oRoundData.processed, "round stats is already processed")
    const globalData = this.statsT.requireGet(round + 1, "round stats not yet available")

    // find the oracle pct of the round
    const unReportedShare:f32 = f32(oRoundData.reports.unreported_unmerged) / f32(globalData.unreported_unmerged_since_previous)
    print("\n unreportedShare: " + unReportedShare.toString())

    // if unreported is above the threshold, slash funds from the oracle
    if (unReportedShare > config.slash_threshold_pct) this.sendSlashOracle(oracle, config.slash_quantity)
    const validProposed = u32(Math.max(i32(oRoundData.reports.proposed) - i32(oRoundData.reports.unreported_unmerged), 0))
    print("\n validProposed: " + validProposed.toString())

    // calculate the oracle pct of the round reported/proposed
    const reportedShare:f32 = f32(oRoundData.reports.reported_merged) / f32(globalData.reported_since_previous)
    const proposedShare:f32 = f32(validProposed) / f32(globalData.proposed_since_previous)
    print("\n reportedShare: " + reportedShare.toString())
    print("\n proposedShare: " + proposedShare.toString())

    // oracle pay calculated based on their pct share of the round
    const oracleBonusReportedPayout = f32(config.round_bonus_pay_reports) * reportedShare
    const oracleBonusProposedPayout = f32(config.round_bonus_pay_proposed) * proposedShare
    print("\n oracleBonusReportedPayout: " + oracleBonusReportedPayout.toString())
    print("\n oracleBonusProposedPayout: " + oracleBonusProposedPayout.toString())

    // calculate the final pay
    const oracleRow = this.oraclesT.requireGet(oracle.value, "can't find oracle in oracles table")
    let basePay:u32 = 0
    if (reportedShare >= 0.01 || proposedShare >= 0.01) basePay = u32(f32(oracleRow.trueCollateral) * config.collateral_pct_pay_per_round)
    const bonusPay:u32 = u32(oracleBonusProposedPayout + oracleBonusReportedPayout)

    // call the payment action
    this.sendPayOracle(oracle, basePay, bonusPay)

    // don't delete the row yet
    oRoundData.processed = true
    oStatsT.update(oRoundData, this.receiver)
  }

  sendPayOracle(oracle:Name, basePay:u32, bonusPay:u32):void {
    const data = new PayOracleParams(oracle, basePay, bonusPay)
    const action = new Action(this.receiver, Name.fromString("payoracle"), [this.codePerm], data.pack())
    action.send()
  }

  @action("payoracle")
  payOracle(oracle:Name, basePay:u32, bonusPay:u32):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const payQuantity = basePay + bonusPay
    oracleRow.funds.unclaimed += payQuantity
    this.oraclesT.update(oracleRow, this.receiver)
    const global = this.globalT.get()
    global.rewards_paid += payQuantity
  }

  sendSlashOracle(oracle:Name, quantity:u32):void {
    const data = new SlashOracleParams(oracle, quantity)
    const action = new Action(this.receiver, Name.fromString("slashoracle"), [this.codePerm], data.pack())
    action.send()
  }

  @action("slashoracle")
  slashOracle(oracle:Name, quantity:u32):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    oracleRow.collateral.slashed += quantity
    const weightBefore = oracleRow.weight

    if (oracleRow.collateral.slashed >= oracleRow.collateral.locked) {
      oracleRow.collateral.slashed = oracleRow.collateral.locked
      oracleRow.weight = 0
    } else {
      oracleRow.weight = u8(oracleRow.trueCollateral / 5000000)
    }
    if (oracleRow.weight < weightBefore) {
      const global = this.globalT.get()
      global.total_weight -= u16(weightBefore - oracleRow.weight)
      this.globalT.set(global, this.receiver)
    }
    this.oraclesT.update(oracleRow, this.receiver)
  }

  @action("slashinactive")
  slashInactive(oracle:Name, round:u16):void {
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle not found")
    const config = this.getConfig()
    check(!oracleRow.standby, "oracle is in standby, can't be slashed for innactivity")
    check(oracleRow.expected_active_after_round > round, "oracle is not expected to be active this round")
    const finalizedRound = this.currentRound() - config.reports_finalized_after_rounds
    check(round < finalizedRound && round > finalizedRound - config.standby_toggle_interval_rounds, "invalid round specified")
    const oStatsT = this.oracleStatsT(oracle)
    const oStatsRow = oStatsT.get(u64(round))
    if (oStatsRow) check(false, "stats row exists for this oracle on this round, no slashing needed")
    else this.sendSlashOracle(oracle, config.slash_quantity)
    const newRow:OracleStat = new OracleStat(round, 0, { proposed: 0, reported_merged: 0, unreported_unmerged: 0 }, true)
    oStatsT.store(newRow, this.receiver)
  }
}
@packer
export class PayOracleParams extends ActionData {
  constructor(
    public oracle:Name = EMPTY_NAME,
    public basePay:u32 = 0,
    public bonusPay:u32 = 0
  ) { super() }
}
@packer
export class SlashOracleParams extends ActionData {
  constructor(
    public oracle:Name = EMPTY_NAME,
    public quantity:u32 = 0
  ) { super() }
}
