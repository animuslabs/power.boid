import { Action, ActionData, EMPTY_NAME, Name, SAME_PAYER, check, print, requireAuth } from "proton-tsc"
import { DepositActions } from "./5-deposit"

export class OStatsActions extends DepositActions {
  /**
   * reads oraclestats row and reward/slash an oracle based on relative performance
   *
   * @param {Name} oracle
   * @param {u16} round
   */

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
