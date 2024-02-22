import { Name, check, requireAuth } from "proton-tsc"
import { BoincMeta } from "../tables/boincMeta"
import { Protocol } from "../tables/protocols"
import { RoundCommit } from "../tables/roundCommit"
import { PwrReportActions } from "./3-pwrreport"
import { PwrReportRow } from "../tables/pwrreports"

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

  @action("roundcommit")
  roundCommit(oracle:Name, boid_id:Name, protocol_id:u8, round:u16):void {
    // check(false, RoundCommit.getByRoundProtocolBoidId(boid_id, protocol_id, round).toString())
    let oRoundCommit = this.roundCommitT(oracle)
    let commitExists = oRoundCommit.getBySecondaryU128(RoundCommit.getByRoundProtocolBoidId(boid_id, protocol_id, round), 1)
    check(commitExists !== null, "commit doesn't exist")
  }

  @action("addcommit")
  addcommit(oracle:Name, commit:RoundCommit):void {
    requireAuth(this.receiver)
    const commitT = this.roundCommitT(oracle)
    commitT.store(commit, this.receiver)
  }

  @action("addreport")
  addreport(oracle:Name, report:PwrReportRow):void {
    requireAuth(this.receiver)
    const reportsT = this.pwrReportsT(oracle)
    reportsT.store(report, this.receiver)
  }
}
