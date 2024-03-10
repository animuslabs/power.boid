import { Action, ActionData, EMPTY_NAME, Name, SAME_PAYER, check, requireAuth } from "proton-tsc"
import { DepositActions } from "./5-deposit"
import { Reports } from "../tables/oracleStats"

export class OStatsActions extends DepositActions {
  /**
   * reads oraclestats row and reward/slash an oracle based on relative performance
   *
   * @param {Name} oracle
   * @param {u16} round
   */

  sendPayOracle(oracle:Name, basePay:u32, bonusPay:u32, round:u16, reports:Reports):void {
    const data = new PayOracleParams(oracle, basePay, bonusPay, round, reports)
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
  payOracle(oracle:Name, basePay:u32, bonusPay:u32, round:u16, reports:Reports):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const payQuantity = basePay + bonusPay
    oracleRow.funds.unclaimed += payQuantity
    this.oraclesT.update(oracleRow, this.receiver)
    this.sendWholeBoid(Name.fromString("tknmint.boid"), this.receiver, payQuantity, "payoracle:" + oracle.toString() + " round:" + round.toString())
    // this.sendWholeBoid(Name.fromString("mint.boid"), this.receiver, payQuantity, "payoracle:" + oracle.toString() + " round:" + round.toString())
  }

  @action("payoutround")
  payoutRound(oracle:Name, round:u16):void {
    const config = this.getConfig()
    check(round < this.currentRound() - 1, "can't process this round yet, not yet finalized")
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const oStatsT = this.oracleStatsT(oracle)
    const oRoundData = oStatsT.requireGet(round, "oStats round doesn't exist")
    check(!oRoundData.processed, "round stats is already processed")
    const validProposed = u32(Math.max(i32(oRoundData.reports.proposed) - i32(oRoundData.reports.unreported_unmerged), 0))
    const basePay = u32(f32(oracleRow.trueCollateral) * config.payment.collateral_pct_pay_per_round_mult)
    let bonusPay:u32 = 0
    if (oRoundData.reports.reported_or_merged > 0 || validProposed > 0) bonusPay = u32(f64(config.payment.round_bonus_pay_reports) * Math.pow(oRoundData.reports.reported_or_merged, config.payment.reports_proposed_adjust_pwr) + f64(config.payment.round_bonus_pay_proposed) * Math.pow(validProposed, config.payment.reports_proposed_adjust_pwr))
    oStatsT.update(oRoundData, SAME_PAYER)
    this.sendPayOracle(oracle, basePay, bonusPay, round, oRoundData.reports)
  }
}
@packer
export class PayOracleParams extends ActionData {
  constructor(
    public oracle:Name = EMPTY_NAME,
    public basePay:u32 = 0,
    public bonusPay:u32 = 0,
    public round:u16 = 0,
    public reports:Reports = new Reports()
  ) { super() }
}
