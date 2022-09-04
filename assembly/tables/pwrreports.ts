import { Asset, Table, Name, EMPTY_NAME, ActionData } from "proton-tsc"

@packer
export class PwrReport {
  protocol_id:u8 = 0
  round:u16 = 0
  units:u32 = 0
}

@table("pwrreports")
export class PwrReportRow extends Table {
  constructor(
    public report_id:u64 = 0,
    public report:PwrReport = new PwrReport(),
    public approvals:Name[] = [],
    public approval_weight:u16 = 0,
    public reported:boolean = false,
    public merged:boolean = false
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return this.report_id
  }

  @secondary
  get byRound():u64 {
    return u64(this.report.round)
  }

  set byRound(value:u64) {
    this.report.round = value
  }
}
