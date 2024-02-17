import { Action, ActionData, EMPTY_NAME, Name, SAME_PAYER, check, print, requireAuth } from "proton-tsc"
import { DepositActions } from "./5-deposit"

export class OStatsActions extends DepositActions {
  /**
   * reads oraclestats row and reward/slash an oracle based on relative performance
   *
   * @param {Name} oracle
   * @param {u16} round
   */
  // @action("handleostat")
  // handleOStat(oracle:Name, round:u16):void {
  //   const config = this.getConfig()
  //   check(round < this.currentRound() - 2, "can't process this round yet, not yet finalized")

  //   // get config, global and oracle stats
  //   const oStatsT = this.oracleStatsT(oracle)
  //   const oRoundData = oStatsT.requireGet(round, "oStats round doesn't exist")
  //   check(!oRoundData.processed, "round stats is already processed")
  //   const globalData = this.statsT.requireGet(round + 1, "round stats not yet available")
  //   // TODO need to handle situation where no stats are available because stats generation was skipped

  //   // find the oracle pct of the round
  //   let unReportedShare:f32 = f32(oRoundData.reports.unreported_unmerged) / f32(globalData.unreported_unmerged_since_previous)
  //   if (isNaN(unReportedShare)) unReportedShare = 0
  //   print("\n unreportedShare: " + unReportedShare.toString())

  //   // if unreported is above the threshold, slash funds from the oracle
  //   const validProposed = u32(Math.max(i32(oRoundData.reports.proposed) - i32(oRoundData.reports.unreported_unmerged), 0))
  //   const globalValidProposed = globalData.valid_proposed_since_previous

  //   print("\n reportedSincePrevious " + globalData.reported_since_previous.toString())
  //   print("\n proposedSincePrevious " + globalData.proposed_since_previous.toString())
  //   print("\n previousProposed: " + globalData.starting_global.reports.proposed.toString())
  //   print("\n previousReported: " + globalData.starting_global.reports.reported.toString())

  //   // calculate the oracle pct of the round reported/proposed
  //   print("\n oracle reported/merged: " + oRoundData.reports.reported_or_merged.toString())
  //   print("\n validProposed: " + validProposed.toString())
  //   print("\n globalValidProposed: " + globalValidProposed.toString())
  //   print("\n active Oracles: " + globalData.starting_global.active_oracles.length.toString())
  //   let reportedShare:f32 = f32(oRoundData.reports.reported_or_merged) / f32(globalData.reported_since_previous) / f32(globalData.starting_global.active_oracles.length)
  //   let proposedShare:f32 = f32(validProposed) / f32(globalValidProposed)
  //   if (!isFinite(proposedShare)) proposedShare = 0
  //   else if (isNaN(proposedShare)) proposedShare = 0
  //   if (!isFinite(reportedShare)) reportedShare = 0
  //   else if (isNaN(reportedShare)) reportedShare = 0
  //   print("\n reportedShare: " + reportedShare.toString())
  //   print("\n proposedShare: " + proposedShare.toString())

  //   // oracle pay calculated based on their pct share of the round
  //   const oracleBonusReportedPayout = f32(config.payment.round_bonus_pay_reports) * reportedShare
  //   const oracleBonusProposedPayout = f32(config.payment.round_bonus_pay_proposed) * proposedShare
  //   print("\n oracleBonusReportedPayout: " + oracleBonusReportedPayout.toString())
  //   print("\n oracleBonusProposedPayout: " + oracleBonusProposedPayout.toString())

  //   let minGlobalActiveWeight:bool = globalData.starting_global.active_weight >= this.minWeightThreshold(config, globalData.starting_global)

  //   // calculate the final pay
  //   const oracleRow = this.oraclesT.requireGet(oracle.value, "can't find oracle in oracles table")
  //   let basePay:u32 = 0

  //   if (reportedShare >= config.min_pay_report_share_threshold || proposedShare >= config.min_pay_report_share_threshold) basePay = u32(f32(oracleRow.trueCollateral) * config.payment.collateral_pct_pay_per_round)
  //   const bonusPay:u32 = u32(oracleBonusProposedPayout + oracleBonusReportedPayout)

  //   // return
  //   // call the payment action
  //   if (basePay > 0 || bonusPay > 0) this.sendPayOracle(oracle, basePay, bonusPay)

  //   // don't delete the row yet
  //   // need to keep the row so we don't accidentally slash the oracle for being absent
  //   // safe to delete when the rounds row in stats table is cleaned up
  //   oRoundData.processed = true
  //   oStatsT.update(oRoundData, this.receiver)
  // }

  sendPayOracle(oracle:Name, basePay:u32, bonusPay:u32, round:u16):void {
    const data = new PayOracleParams(oracle, basePay, bonusPay, round)
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
  payOracle(oracle:Name, basePay:u32, bonusPay:u32, round:u16):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const payQuantity = basePay + bonusPay
    oracleRow.funds.unclaimed += payQuantity
    this.oraclesT.update(oracleRow, this.receiver)
    const global = this.globalT.get()
    global.rewards_paid += payQuantity
    // this.sendWholeBoid(Name.fromString("tknmint.boid"), this.receiver, payQuantity, "payoracle:" + oracle.toString() + " round:" + round.toString())
    this.sendWholeBoid(Name.fromString("mint.boid"), this.receiver, payQuantity, "payoracle:" + oracle.toString() + " round:" + round.toString())
    this.globalT.set(global, this.receiver)
  }

  @action("payoutround")
  payoutRound(oracle:Name, round:u16):void {
    const config = this.getConfig()
    const global = this.globalT.get()
    check(round < this.currentRound() - 1, "can't process this round yet, not yet finalized")
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    // get config, global and oracle stats
    const oStatsT = this.oracleStatsT(oracle)
    const oRoundData = oStatsT.requireGet(round, "oStats round doesn't exist")
    check(!oRoundData.processed, "round stats is already processed")
    const basePay = u32(f32(oracleRow.trueCollateral) * config.payment.collateral_pct_pay_per_round_mult)
    let bonusPay = f64(config.payment.round_bonus_pay_reports) * Math.pow(oRoundData.reports.reported_or_merged, config.payment.reports_proposed_adjust_pwr) + f64(config.payment.round_bonus_pay_proposed) * Math.pow(oRoundData.reports.proposed, config.payment.reports_proposed_adjust_pwr)
    bonusPay = bonusPay / Math.pow(config.payment.num_oracles_adjust_base, global.expected_active_oracles.length)
    oRoundData.processed = true
    oStatsT.update(oRoundData, SAME_PAYER)
    this.sendPayOracle(oracle, basePay, u32(bonusPay), round)
  }
}
@packer
export class PayOracleParams extends ActionData {
  constructor(
    public oracle:Name = EMPTY_NAME,
    public basePay:u32 = 0,
    public bonusPay:u32 = 0,
    public round:u16 = 0
  ) { super() }
}
