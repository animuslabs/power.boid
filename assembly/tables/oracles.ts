import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"

// @packer
// export class OracleStats {
//   validReports:u64 = 0
//   invalidReports:u64 = 0
// }

@packer
export class OracleCollateral {
  locked:u32 = 0
  unlocking:u32 = 0
  slashed:u32 = 0
  unlock_finished_round:u16 = 0
  min_unlock_start_round:u16 = 0
}

@packer
export class OracleFunds {
  claimed:u32 = 0
  unclaimed:u32 = 0
  withdrawing:u32 = 0
  withdrawable_after_round:u16 = 0
}

@table("oracles")
export class Oracle extends Table {
  constructor(
    public account:Name = EMPTY_NAME,
    // public boid_id:Name = EMPTY_NAME,
    public weight:u8 = 0,
    // public stats:OracleStats = new OracleStats()
    public collateral:OracleCollateral = new OracleCollateral(),
    public funds:OracleFunds = new OracleFunds(),
    public standby:boolean = true,
    public last_standby_toggle_round:u16 = 0,
    public expected_active_after_round:u16 = 0
  ) {
    super()
  }

  public get trueCollateral():u32 {
    return this.collateral.locked - this.collateral.slashed
  }

  @primary
  get primary():u64 {
    return this.account.value
  }
}
