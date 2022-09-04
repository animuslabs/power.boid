import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"

// @packer
// export class OracleStats {
//   validReports:u64 = 0
//   invalidReports:u64 = 0
// }

@table("oracles")
export class Oracle extends Table {
  constructor(
    public account:Name = EMPTY_NAME,
    // public boid_id:Name = EMPTY_NAME,
    public weight:u8 = 0
    // public stats:OracleStats = new OracleStats()
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return this.account.value
  }
}
