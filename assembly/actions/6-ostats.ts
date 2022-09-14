import { check, Name, Asset, TableStore, print, SAME_PAYER, unpackActionData, ActionData, requireAuth, Action, EMPTY_NAME } from "proton-tsc"
import { Assets, TransferNfts, ATOMICASSETS_CONTRACT } from "../../external/atomicassets"
import { OracleStat } from "../tables/oracleStats"
import { DepositActions } from "./5-deposit"

export class OStatsActions extends DepositActions {
  @action("handleostat")
  handleOStat(oracle:Name, round:u16):void {
    const config = this.getConfig()
    check(round < this.currentRound() - (1 + config.reports_finalized_after_rounds), "can't process this round yet, not yet finalized")

    // get config, global and oracle stats
    const oStatsT = this.oracleStatsT(oracle)
    const oRoundData = oStatsT.requireGet(round, "oStats round doesn't exist")
    check(!oRoundData.processed, "round stats is already processed")
    const globalData = this.statsT.requireGet(round + 1, "round stats not yet available")

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
    print("\n activeValidators: " + globalData.starting_global.active_validators.length.toString())
    let reportedShare:f32 = f32(oRoundData.reports.reported_merged) / f32(globalData.reported_since_previous) / f32(globalData.starting_global.active_validators.length)
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

    // calculate the final pay
    const oracleRow = this.oraclesT.requireGet(oracle.value, "can't find oracle in oracles table")
    if (unReportedShare > config.slash_threshold_pct) this.sendSlashOracle(oracle, this.findSlashQuantity(oracleRow, config))
    let basePay:u32 = 0
    if (reportedShare >= 0.01 || proposedShare >= 0.01) basePay = u32(f32(oracleRow.trueCollateral) * config.collateral_pct_pay_per_round)
    const bonusPay:u32 = u32(oracleBonusProposedPayout + oracleBonusReportedPayout)

    // return
    // call the payment action
    if (basePay > 0 || bonusPay > 0) this.sendPayOracle(oracle, basePay, bonusPay)

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
    check(!oracleRow.standby, "can't slash an oracle in standby")
    oracleRow.collateral.slashed += quantity
    const weightBefore = oracleRow.weight
    if (oracleRow.collateral.slashed >= oracleRow.collateral.locked) {
      oracleRow.collateral.slashed = oracleRow.collateral.locked
      oracleRow.weight = 0
      this.sendOracleStandby(oracle, true)
    } else {
      oracleRow.weight = this.getOracleWeight(oracleRow.trueCollateral, this.configT.get())
      if (oracleRow.weight == 0) this.sendOracleStandby(oracle, true)
    }
    if (oracleRow.weight < weightBefore) {
      const global = this.globalT.get()
      global.total_weight -= u16(weightBefore - oracleRow.weight)
      this.globalT.set(global, this.receiver)
    }
    this.oraclesT.update(oracleRow, this.receiver)
  }

  @action("slashmulti")
  slashMulti(oracle:Name, boid_id_scope:Name, pwrreport_ids:u64[], protocol_id:u8, round:u16):void {
    check(pwrreport_ids.length > 1, "must include at least two pwrreport_ids")
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const config = this.getConfig()
    const pwrReportsT = this.pwrReportsT(boid_id_scope)
    for (let i = 0; i < pwrreport_ids.length; i++) {
      const reportId = pwrreport_ids[i]
      const reportRow = pwrReportsT.requireGet(reportId, "invalid reportId: " + reportId.toString())
      const oracleIndex:i32 = reportRow.approvals.indexOf(oracle)

      // verify the row is problematic
      check(oracleIndex > -1, "This report wasn't approved by the target oracle: " + reportId.toString())
      check(reportRow.report.protocol_id == protocol_id, "protocol_ids must match")
      check(reportRow.report.round == round, "rounds must match")
      // check(!reportRow.merged && !reportRow.reported, "report was already reported or merged")

      // remove the oracle aproval and weight from the row and save it
      if (!reportRow.merged && !reportRow.reported) {
        reportRow.approvals.splice(oracleIndex, 1)
        if (oracleRow.weight < reportRow.approval_weight) reportRow.approval_weight -= oracleRow.weight
        else reportRow.approval_weight = 0
        pwrReportsT.update(reportRow, this.receiver)
      }
    }

    // slash for every invalid row
    for (let i = 0; i < pwrreport_ids.length; i++) {
      this.sendSlashOracle(oracle, this.findSlashQuantity(oracleRow, config))
    }
  }

  @action("slashabsent")
  slashAbsent(oracle:Name, round:u16):void {
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle not found")
    const config = this.getConfig()
    const oStatsT = this.oracleStatsT(oracle)
    const oStatsRow = oStatsT.get(u64(round))

    // verify that the oracle was absent in a round when they should be active
    check(!oracleRow.standby, "oracle is in standby, can't be slashed for inactivity")
    check(oracleRow.expected_active_after_round > round, "oracle is not expected to be active this round")
    const finalizedRound = this.currentRound() - config.reports_finalized_after_rounds
    check(round < finalizedRound && round > finalizedRound - config.standby_toggle_interval_rounds, "invalid round specified")

    // finally, if the row doesn't exist, send the slash action
    if (oStatsRow) check(false, "stats row exists for this oracle on this round, no slashing needed")
    else this.sendSlashOracle(oracle, this.findSlashQuantity(oracleRow, config))

    // write an empty row so the account can't be slashed twice
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
