import { Table, Name, EMPTY_NAME } from "proton-tsc"

@packer
export class PwrReport {
  /**  protocol associated with this report */
  protocol_id:u8 = 0
  /** round associated with this report */
  round:u16 = 0
  /** the quantity of generic units for this report, has a different meaning for different protocols */
  units:u32 = 0
}

/**
 * This table is scoped based on the boid_id that is receiving the boid power.
 * @extends Table
 */
@table("pwrreports")
export class PwrReportRow extends Table {
  constructor(
    // the oracle that originally proposed this report
    public proposer:Name = EMPTY_NAME,
    // report details
    public report:PwrReport = new PwrReport(),
    // list of oracles that approved this report
    // TODO might be good to also include the oracle weight in this vector because of some edge cases when slashing
    public approvals:Name[] = [],
    // cumulative approval weight from oracles
    public approval_weight:u16 = 0
  ) {
    super()
  }

  /**
  * calculates a unique report ID based on the report metadata
  * @param {PwrReport} report
  * @return {*}  {u64}
  * @memberof PwrReportActions
  */
  static getReportId(report:PwrReport):u64 {
    return (u64(report.round) << 32) + (u64(report.protocol_id) << 48) + u64(report.units)
  }

  @primary
  get primary():u64 {
    return PwrReportRow.getReportId(this.report)
  }
}
