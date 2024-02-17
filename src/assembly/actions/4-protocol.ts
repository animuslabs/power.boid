import { ActionData, EMPTY_NAME, Name, check, requireAuth } from "proton-tsc"
import { Protocol } from "../tables/protocols"
import { PwrReportActions } from "./3-pwrreport"
import { BoincMeta } from "../tables/boincMeta"
import { BoincCPID } from "../tables/boincCpid"

export class ProtoActions extends PwrReportActions {
  /**
   * requires contract authority, for adding/editing protocols
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

  @action("boincset")
  boincSet(boincMeta:BoincMeta):void {
    requireAuth(this.receiver)
    check(this.protocolsT.exists(boincMeta.protocol_id), "protocol not found")
    this.boincMetaT.set(boincMeta, this.receiver)
  }

  @action("cpidset")
  cpidSet(protocol_id:u64, boid_id:Name, cpid_bytes:u8[]):void {
    requireAuth(this.receiver)
    const boincCPIDT = this.boincCPIDT(protocol_id)
    // check(!boincCPIDT.exists(boid_id.value),"boid_id already has a cpid registered for this protocol")
    boincCPIDT.set(new BoincCPID(boid_id, cpid_bytes), this.receiver)
  }
}
