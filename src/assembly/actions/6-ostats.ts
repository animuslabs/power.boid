import { check, Name, Asset, TableStore, print, SAME_PAYER, unpackActionData, ActionData, requireAuth, Action, EMPTY_NAME } from "proton-tsc"
import { Assets, TransferNfts, ATOMICASSETS_CONTRACT } from "../../external/atomicassets"
import { OracleStat } from "../tables/oracleStats"
import { DepositActions } from "./5-deposit"

export class OStatsActions extends DepositActions {
  /**
   * reads oraclestats row and reward/slash an oracle based on relative performance
   *
   * @param {Name} oracle
   * @param {u16} round
   */
  @action("handleostat")
  handleOStat(oracle:Name, round:u16):void {
    // TODO this action needs to be refined

    const config = this.getConfig()
    check(this.currentRound() >= config.reports_finalized_after_rounds, "chain is too recent to generate reports")
    check(round < this.currentRound() - config.reports_finalized_after_rounds, "can't process this round yet, not yet finalized")

    // get config, global and oracle stats
    const oStatsT = this.oracleStatsT(oracle)
    const oRoundData = oStatsT.requireGet(round, "oStats round doesn't exist")
    check(!oRoundData.processed, "round stats is already processed")
    const globalData = this.statsT.requireGet(round + 1, "round stats not yet available")
    // TODO need to handle situation where no stats are available because stats generation was skipped

    // find the oracle pct of the round
    let unReportedShare:f32 = f32(oRoundData.reports.unreported_unmerged) / f32(globalData.unreported_unmerged_since_previous)
    if (isNaN(unReportedShare)) unReportedShare = 0
    print("\n unreportedShare: " + unReportedShare.toString())

    // if unreported is above the threshold, slash funds from the oracle
    const validProposed = u32(Math.max(i32(oRoundData.reports.proposed) - i32(oRoundData.reports.unreported_unmerged), 0))
    const globalValidProposed = globalData.valid_proposed_since_previous
    // const globalValidProposed = u32(globalData.proposed_since_previous)
    print("\n reportedSincePrevious " + globalData.reported_since_previous.toString())
    print("\n proposedSincePrevious " + globalData.proposed_since_previous.toString())
    print("\n previousProposed: " + globalData.starting_global.reports.proposed.toString())
    print("\n previousReported: " + globalData.starting_global.reports.reported.toString())
    // print("\n previousReported: " + globalData.starting_global.reports.)

    // calculate the oracle pct of the round reported/proposed
    print("\n oracle reported/merged: " + oRoundData.reports.reported_merged.toString())
    print("\n validProposed: " + validProposed.toString())
    print("\n globalValidProposed: " + globalValidProposed.toString())
    print("\n active Oracles: " + globalData.starting_global.active_oracles.length.toString())
    let reportedShare:f32 = f32(oRoundData.reports.reported_merged) / f32(globalData.reported_since_previous) / f32(globalData.starting_global.active_oracles.length)
    let proposedShare:f32 = f32(validProposed) / f32(globalValidProposed)
    if (!isFinite(proposedShare)) proposedShare = 1
    else if (isNaN(proposedShare)) proposedShare = 0
    if (!isFinite(reportedShare)) reportedShare = 1
    else if (isNaN(reportedShare)) reportedShare = 0
    print("\n reportedShare: " + reportedShare.toString())
    print("\n proposedShare: " + proposedShare.toString())

    // oracle pay calculated based on their pct share of the round
    const oracleBonusReportedPayout = f32(config.round_bonus_pay_reports) * reportedShare
    const oracleBonusProposedPayout = f32(config.round_bonus_pay_proposed) * proposedShare
    print("\n oracleBonusReportedPayout: " + oracleBonusReportedPayout.toString())
    print("\n oracleBonusProposedPayout: " + oracleBonusProposedPayout.toString())

    let minGlobalActiveWeight:bool = globalData.starting_global.active_weight >= this.minWeightThreshold(config, globalData.starting_global)

    // calculate the final pay
    const oracleRow = this.oraclesT.requireGet(oracle.value, "can't find oracle in oracles table")
    if (minGlobalActiveWeight && unReportedShare > config.slash_threshold_pct && !oracleRow.standby) this.sendSlashOracle(oracle, this.findSlashQuantity(oracleRow, config))
    let basePay:u32 = 0

    if (reportedShare >= config.min_pay_report_share_threshold || proposedShare >= config.min_pay_report_share_threshold) basePay = u32(f32(oracleRow.trueCollateral) * config.collateral_pct_pay_per_round)
    const bonusPay:u32 = u32(oracleBonusProposedPayout + oracleBonusReportedPayout)

    // return
    // call the payment action
    if (basePay > 0 || bonusPay > 0) this.sendPayOracle(oracle, basePay, bonusPay)

    // don't delete the row yet
    // need to keep the row so we don't accidentally slash the oracle for being absent
    // safe to delete when the rounds row in stats table is cleaned up
    oRoundData.processed = true
    oStatsT.update(oRoundData, this.receiver)
  }

  sendPayOracle(oracle:Name, basePay:u32, bonusPay:u32):void {
    const data = new PayOracleParams(oracle, basePay, bonusPay)
    const action = new Action(this.receiver, Name.fromString("payoracle"), [this.codePerm], data.pack())
    action.send()
  }

  /**
   * For paying oracle rewards. Rewards are added to unclaimed bucket. This action is triggered inline by the contract.
   *
   * @param {Name} oracle
   * @param {u32} basePay
   * @param {u32} bonusPay
   */
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
}
@packer
export class PayOracleParams extends ActionData {
  constructor(
    public oracle:Name = EMPTY_NAME,
    public basePay:u32 = 0,
    public bonusPay:u32 = 0
  ) { super() }
}
