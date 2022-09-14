import { Name, Table } from "proton-tsc"

@packer
export class GlobalReports {
  merged:u64 = 0
  unreported_and_unmerged:u64 = 0
  reported:u64 = 0
  proposed:u64 = 0
}
@table("global", singleton)
export class Global extends Table {
  constructor(
    public active_validators:Name[] = [],
    public expected_active_validators:u8 = 0,
    public standby_validators:u8 = 0,
    public total_weight:u16 = 0,
    public reports:GlobalReports = new GlobalReports(),
    public rewards_paid:u64 = 0
  ) {
    super()
  }
}
