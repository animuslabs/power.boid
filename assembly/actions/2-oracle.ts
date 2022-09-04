import { check, Contract, isAccount, Name, requireAuth } from "proton-tsc"
import { Oracle } from "../tables/oracles"
import { GlobalActions } from "./1-global"
@contract
export class OracleActions extends GlobalActions {
  @action("oracleset")
  oracleSet(account:Name, weight:u8):void {
    requireAuth(this.receiver)
    const existing = this.oraclesT.get(account.value)
    const global = this.globalT.get()
    if (existing) {
      check(weight != existing.weight, "data is the same, nothing to update")
      if (weight > existing.weight) {
        global.total_weight += (weight - existing.weight)
      } else {
        global.total_weight -= (existing.weight - weight)
      }
      existing.weight = weight
      this.oraclesT.update(existing, this.receiver)
    } else {
      check(isAccount(account), "oracle must be existing account")
      const row = new Oracle(account, weight)
      this.oraclesT.store(row, this.receiver)
      global.total_weight += weight
      global.num_validators++
    }
    this.globalT.set(global, this.receiver)
  }
}
