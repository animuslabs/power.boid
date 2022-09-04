
import { Asset, Table, Name, PublicKey } from "proton-tsc"

@packer
export class TokenUnstake {
  redeemable_after_round:u16 = 0
  quantity:u32 = 0
}

@packer
export class AccountStake {
  unstaking:TokenUnstake[] = []
  self_staked:u32 = 0 // whole BOID quality staked to the account, BOID earned from power claiming is also added here.
  received_delegated_stake:u16 = 0 // stake delegated to this account (could be self delegated also) delegated stakes are counted in incremenets of 10k so
  get totalStake():u32 {
    return u32(this.self_staked + (this.received_delegated_stake * u32(10000)))
  }
}

@packer
export class AccountPowerMod {
  pwr_multiplier:u8 = 0
  pwr_add_per_round:u16 = 0
  expires_round:u16 = 0
  aggregate_pwr_remaining:u32 = 0
}

@packer
export class AccountPower {
  last_claimed_round:u16 = 0
  rating:u16 = 0
  mods:AccountPowerMod[] = []
}

@packer
export class AccountTeam {
  team_id:u16 = 0 // user is on this team, from teams table
  last_edit_round:u16 = 0 // used to track when was the last time the team or tax_pct was changed
  team_tax_mult:u8 = 0 // percent of account earnings which are paid to the team, calculated by
  team_cumulative_contribution:u32 = 0 // cumulative amount the account has sent to their current team, resets on team change
}
@packer
export class AccountAuth {
  keys:PublicKey[] = [] // pubkeys that can be used to control this boid account
  nonce:u32 = 0 // incremented by the auth action when a pubkey is used to prevent replays
}

@table("accounts", noabigen)
export class Account extends Table {
  constructor(
    public boid_id:Name = new Name(),
    // The owners are native chain accounts that can authorize actions on behalf of this boid account. Owner accounts can only be added/removed by other Owners on the account.
    public owners:Name[] = [],
    public auth:AccountAuth = new AccountAuth(),
    public sponsors:Name[] = [],
    public stake:AccountStake = new AccountStake(),
    public power:AccountPower = new AccountPower(),
    public team:AccountTeam = new AccountTeam(),
    public social_ipfs_json:string = "",
    public balance:u32 = 0,
    public nft_balance:u16 = 0
  ) {
    super()
  }

    @primary
  get primary():u64 {
    return this.boid_id.value
  }
}
