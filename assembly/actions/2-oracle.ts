import { Action, ActionData, check, Contract, EMPTY_NAME, isAccount, Name, requireAuth } from "proton-tsc"
import { Oracle, OracleCollateral } from "../tables/oracles"
import { GlobalActions } from "./1-global"

@packer
class OracleSetParam extends ActionData {
  constructor(
    public account:Name = EMPTY_NAME,
    public weight:u8 = 0,
    public adding_collateral:u32 = 0
  ) { super() }
}
@contract
export class OracleActions extends GlobalActions {
  sendOracleSet(account:Name, weight:u8, adding_collateral:u32):void {
    const data = new OracleSetParam(account, weight, adding_collateral)
    const action = new Action(this.receiver, Name.fromString("oracleset"), [this.codePerm], data.pack())
    action.send()
  }

  @action("oracleset")
  oracleSet(account:Name, weight:u8, adding_collateral:u32):void {
    requireAuth(this.receiver)
    const existing = this.oraclesT.get(account.value)
    const global = this.globalT.get()
    if (existing) {
      check(weight != existing.weight, "data is the same, nothing to update")
      existing.collateral.locked += adding_collateral
      existing.collateral.min_unlock_start_round = this.currentRound() + 20

      // update globals with new weight change
      if (weight > existing.weight) {
        global.total_weight += (weight - existing.weight)
      } else {
        global.total_weight -= (existing.weight - weight)
      }
      existing.weight = weight

      this.oraclesT.update(existing, this.receiver)
    } else {
      check(isAccount(account), "oracle must be existing account")
      const collateralData:OracleCollateral = {
        locked: adding_collateral,
        min_unlock_start_round: this.currentRound() + 20,
        slashed: 0,
        unlock_finished_round: 0,
        unlocking: 0
      }
      const row = new Oracle(account, weight, collateralData)
      this.oraclesT.store(row, this.receiver)
      global.total_weight += weight
      global.num_validators++
    }
    this.globalT.set(global, this.receiver)
  }
}
