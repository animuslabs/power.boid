import { Asset, Table, Name, EMPTY_NAME, ActionData } from "proton-tsc"

@packer
export class PwrReport {
  // protocol associated with this report
  protocol_id:u8 = 0
  // round associated with this report
  round:u16 = 0
  // the quantity of generic units for this report, has a different meaning for different protocols
  units:u32 = 0
}

/**
 * This table is scoped based on the boid_id that is receiving the boid power.
 * @extends Table
 */
@table("pwrreports")
export class PwrReportRow extends Table {
  constructor(
    // unique report_id, generated from metadata
    // // TODO: remove this field after clearing PwrReportRow table
    // public report_id:u64 = 0,
    // the oracle that originally proposed this report
    public proposer:Name = EMPTY_NAME,
    // report details
    public report:PwrReport = new PwrReport(),
    // list of oracles that approved this report
    // TODO might be good to also include the oracle weight in this vector because of some edge cases when slashing
    public approvals:Name[] = [],
    // cumulative approval weight from oracles
    public approval_weight:u16 = 0,
    // report was finalized and boid power was generated
    public reported:boolean = false,
    // report was merged with other similar reports and boid power generated
    public merged:boolean = false
  ) {
    super()
  }

  /**
  * calculates a unique report ID based on the report metadata
  * @todo move to the pwreports primary index function
  * @param {PwrReport} report
  * @return {*}  {u64}
  * @memberof PwrReportActions
  */
  static getReportId(report:PwrReport):u64 {
    return (u64(report.protocol_id) << 48) + (u64(report.round) << 32) + u64(report.units)
  }

  @primary
  get primary():u64 {
    return PwrReportRow.getReportId(this.report)
  }

  @secondary
  get byRound():u64 {
    return u64(this.report.round)
  }

  set byRound(value:u64) {
    this.report.round = value
  }
}
