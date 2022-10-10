import { Name, Table } from "proton-tsc"

@packer
export class GlobalReports {
  // reports that were merged together to be reported
  merged:u64 = 0
  // reports were made but never merged or never gained enough weight to generate power
  unreported_and_unmerged:u64 = 0
  // reports that got enough weight to generate power
  reported:u64 = 0
  // proposed reports (first time a unique report is made this is called a proposal)
  proposed:u64 = 0
}
@table("global", singleton)
export class Global extends Table {
  constructor(
    // this vector is cleared at the start of each round and the first time an oracle makes a report during the round they are added
    public active_oracles:Name[] = [],
    // this list is only modified when oracles go in/out of standby, if oracles are not in standby they are expected to be active each round.
    public expected_active_oracles:Name[] = [],
    // the number of oracles in standby, can't earn rewards or be slashed
    public standby_oracles:u8 = 0,
    // the cumulative consensus weight of the expected active oracles
    public expected_active_weight:u16 = 0,
    // cumulative totals of reports made
    public reports:GlobalReports = new GlobalReports(),
    // total BOID paid out as rewards
    public rewards_paid:u64 = 0,
    // the actual amount of active weight, reset at the start of each round and cumulated the first time a unique oracle makes a report
    public active_weight:u16 = 0
  ) {
    super()
  }
}
