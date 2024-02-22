import { EMPTY_NAME, Name, Table } from "proton-tsc"

@packer
export class OracleCollateral {
  // when deposited using the collateral memo, funds accumulate here
  locked:u32 = 0
  // the quantity of BOID being unlocked, waiting for the unlock_finished_round
  unlocking:u32 = 0
  // the quantity of BOID that is slashed, this basically means this quantity of funds can never be unlocked
  slashed:u32 = 0
  // funds can be withdrawn after this round has been reached
  unlock_finished_round:u16 = 0
  // when you deposit funds this value is set to prevent you from depositing and instantly starting an unlock
  min_unlock_start_round:u16 = 0
}

@packer
export class OracleFunds {
  // rewards that were claimed (withdrawn) by the oracle. The tokens are minted on-demand during withdrawals
  claimed:u32 = 0
  // rewards accumulate here inside the contract until the oracle claims them
  unclaimed:u32 = 0
  // quantity of unclaimed funds being withdrawn
  withdrawing:u32 = 0
  // during withdrawal, must wait until this round to receive tokens. This waiting period is in place to help prevent abuse.
  withdrawable_after_round:u16 = 0
}

@table("oracles")
export class Oracle extends Table {
  constructor(
    /** the native chain account na me of the oracle account */
    public account:Name = EMPTY_NAME,
    /** the weight of the oracle */
    public weight:u8 = 0,
    /** tracks various information about oracle collateral */
    public collateral:OracleCollateral = new OracleCollateral(),
    /** tracks details about oracle rewards */
    public funds:OracleFunds = new OracleFunds(),
    /** determines the oracle standby state, oracles in standby can't be slashed or rewarded */
    public standby:boolean = true,
    /** last time the oracle standby was toggled, to prevent abuse by toggling too frequently */
    public last_standby_toggle_round:u16 = 0
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
