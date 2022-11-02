import { Global } from "../tables/global"
import { Action, ActionData, check, Contract, EMPTY_NAME, Encoder, isAccount, Name, requireAuth, TableStore } from "proton-tsc"
import { Protocol } from "../tables/protocols"
import { PwrReportActions } from "./3-pwrreport"

export class ProtoActions extends PwrReportActions {
  /**
   * requires contract authority, for adding/editing protocols
   *
   * @param {Protocol} protocol
   */
  @action("protoset")
  protoSet(protocol:Protocol):void {
    requireAuth(this.receiver)
    check(protocol.unitPowerMult > 0, "unitPowerMult must be higher than zero")
    let existing = this.protocolsT.get(protocol.protocol_id)
    if (existing) {
      existing = protocol
      this.protocolsT.update(existing, this.receiver)
    } else {
      this.protocolsT.store(protocol, this.receiver)
      let global = new Global()
      global.protocol_id = u8(protocol.protocol_id)

      let firstGlobal = this.globalT.first()
      if (firstGlobal) {
        global.expected_active_oracles = firstGlobal.expected_active_oracles
        global.expected_active_weight = firstGlobal.expected_active_weight
        global.standby_oracles = firstGlobal.standby_oracles
      }

      this.globalT.store(global, this.receiver)
    }
  }
}
