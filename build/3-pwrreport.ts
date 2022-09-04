import * as _chain from "as-chain";
import { Action, ActionData, check, Contract, EMPTY_NAME, Encoder, isAccount, Name, PermissionLevel, requireAuth, TableStore } from "proton-tsc"
import { PwrReport, PwrReportRow } from "../tables/pwrreports"
// import { Account } from "../tables/external/accounts"
// import { PwrReportRow } from "../tables/pwrreports"
import { OracleActions } from "./2-oracle"

@packer(nocodegen)
export class PowerAddParams implements _chain.Packer {
    
  constructor(
    public boid_id:Name = EMPTY_NAME,
    public power:u16 = 0
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.boid_id);
        enc.packNumber<u16>(this.power);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.boid_id = obj;
        }
        this.power = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.boid_id.getSize();
        size += sizeof<u16>();
        return size;
    }
}

@contract
export class PwrReportActions extends OracleActions {
  getReportId(report:PwrReport):u64 {
    const idEncoder = new Encoder(8)
    idEncoder.packObjectArray([report])
    const bytes = idEncoder.getBytes()
    return u64(parseInt(bytes.reduce((acc:string, val:u8) => acc + val.toString(), "")))
  }

  sendReport(boid_id:Name, report:PwrReport):void {
    // check(false, "finalize report here: " + this.minWeightThreshold().toString())
    const proto = this.protocolsT.requireGet(u64(report.protocol_id), "invalid protocol_id")
    const power:u16 = u16(proto.unitPowerMult * f32(report.units))
    // check(false, proto.unitPowerMult.toString() + " " + report.units.toString() + " " + power.toString())
    if (power == 0) return
    const data = new PowerAddParams(boid_id, power)
    const action = new Action(Name.fromU64(0x3D1C900000000000), Name.fromU64(0xAD38AB80C9480000), [new PermissionLevel(Name.fromU64(0x3D1C900000000000), Name.fromU64(0x3232EDA800000000))], data.pack())
    action.send()
  }

  @action("pwrreport")
  pwrReport(oracle:Name, boid_id_scope:Name, report:PwrReport):void {
    requireAuth(oracle)
    const reportId = this.getReportId(report)
    // check(report.round > this.currentRound() - 5, "round is too far in the past")
    // check(report.round <= this.currentRound(), "report round must be current or in the past")
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle not registered")
    // const protocolRow = this.protocolsT.requireGet(u64(report.protocol_id), "invalid protocol_id")
    // const coreContract = Name.fromU64(0x3D1C900000000000)
    // const accountsT:TableStore<Account> = new TableStore<Account>(coreContract, coreContract)
    // accountsT.requireGet(boid_id_owner.value, "invalid boid_id_owner")
    const pwrReportsT = this.pwrReportsT(boid_id_scope)
    const existing = pwrReportsT.get(reportId)
    if (existing) {
      check(!existing.approvals.includes(oracle), "oracle already approved this report")
      check(!existing.reported, "report already reported")
      existing.approval_weight += oracleRow.weight
      existing.approvals.push(oracle)
      if (existing.approval_weight >= this.minWeightThreshold()) {
        this.sendReport(boid_id_scope, report)
        existing.reported = true
      }
      pwrReportsT.update(existing, this.receiver)
    } else {
      const reported = oracleRow.weight >= u16(this.minWeightThreshold())
      const row = new PwrReportRow(reportId, report, [oracle], oracleRow.weight, reported)
      pwrReportsT.store(row, this.receiver)
      if (reported) this.sendReport(boid_id_scope, report)
    }
  }

  @action("mergereports")
  mergeReports(boid_id_scope:Name, pwrreport_ids:u64[]):void {
    const targetReports:PwrReportRow[] = []
    let targetProtocol:i16 = -1
    let targetRound:i32 = -1
    let aggregateWeight:u16 = 0
    for (let i = 0; i < pwrreport_ids.length; i++) {
      const id = pwrreport_ids[i]
      const pwrReport = this.pwrReportsT(boid_id_scope).requireGet(id, "invalid id provided")

      // make sure the target reports are compatible to be merged
      if (targetProtocol < 0) targetProtocol = i16(pwrReport.report.protocol_id)
      else check(pwrReport.report.protocol_id == targetProtocol, "protocol_ids must match")
      if (targetRound < 0) targetRound = i32(pwrReport.report.round)
      else check(pwrReport.report.round == targetRound, "rounds must match")
      check(!pwrReport.reported, "can't merge reports already reported")
      targetReports.push(pwrReport)
    }

    targetReports.sort((a:PwrReportRow, b:PwrReportRow) => a.report.units - b.report.units)
    let half = i32(Math.floor(targetReports.length / 2))
    let medianUnits:u32 = 0

    if (targetReports.length % 2) medianUnits = targetReports[half].report.units
    else medianUnits = u32((targetReports[half - 1].report.units + targetReports[half].report.units) / 2)

    const safeAmount = medianUnits * 0.05
    const safeMax = u32(medianUnits + safeAmount)
    const safeMin = u32(medianUnits - safeAmount)

    // ensure each report is a safe range from the median
    for (let i = 0; i < targetReports.length; i++) {
      const pwrReport = targetReports[i]
      check(pwrReport.report.units <= safeMax, "report units too wide a difference to be merged")
      check(pwrReport.report.units >= safeMin, "report units too wide a difference to be merged")
    }

    // aggregate weights and see if it's above the minimum
    aggregateWeight = targetReports.reduce((a:u16, b:PwrReportRow) => a + b.approval_weight, u16(0))
    check(aggregateWeight >= this.minWeightThreshold(), "aggregate approval_weight isn't high enough")

    //
  }
}
