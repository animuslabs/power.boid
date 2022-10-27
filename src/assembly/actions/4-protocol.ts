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
    }
  }
}
