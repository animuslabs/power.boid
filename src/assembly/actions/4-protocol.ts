import { Action, ActionData, check, Contract, EMPTY_NAME, Encoder, isAccount, Name, requireAuth, TableStore } from "proton-tsc"
import { Protocol } from "../tables/protocols"
import { PwrReportActions } from "./3-pwrreport"

export class ProtoActions extends PwrReportActions {
  @action("protoset")
  protoSet(protocol:Protocol):void {
    requireAuth(this.receiver)
    let existing = this.protocolsT.get(protocol.protocol_id)
    if (existing) {
      existing = protocol
      this.protocolsT.update(existing, this.receiver)
    } else {
      this.protocolsT.store(protocol, this.receiver)
    }
  }
}
