import { Asset, Table, Name, TimePoint, EMPTY_NAME } from "proton-tsc"

@packer
export class ConfigAccount {
  invite_price:u32 = 0
  premium_purchase_price:u32 = 0
  max_premium_prefix:u8 = 0
  max_owners:u8 = 0
  max_boosters:u8 = 0
  suffix_whitelist:Name[] = []
  remove_sponsor_price:u32 = 0
  sponsor_max_invite_codes:u8 = 0
  invite_code_expire_rounds:u16 = 0
}

@packer
export class ConfigPower {
  sponsor_tax_mult:f32 = 0
  powered_stake_mult:f32 = 0
  claim_maximum_elapsed_rounds:u16 = 0
  soft_max_pwr_add:u16 = 0
  history_slots_length:u8 = 0
}

@packer
export class ConfigMint {
  round_powered_stake_mult:f32 = 0 // inflation from powered stake
  round_power_mult:f32 = 0 // determines inflation from boid power
}
// @packer
// export class ConfigAutoAdjust {
//   target_inflation_per_round:u32 = 0 // for the auto adjust to change inflation based on stats data
//   power_mult_max_adjust:f32 = 0 // max the round_power_mult may be adjusted each adjustment action
//   powered_stake_mult_max_adjust:f32 = 0 // max the round_powered_stake_mult may be adjusted each adjustment action
//   adjustment_interval_rounds:u16 = 0 // how often can the adjust action be called to update inflation
//   max_check_rounds:u16 // the maximum number of rows to check from the stats table when calculating inflation
// }
@packer
export class ConfigTeam {
  change_min_rounds:u16 = 0 // minimum rounds an account must wait before changing teams
  edit_team_min_rounds:u16 = 0 //minimum rounds a team owner must wait before chaning teams
  team_edit_max_pct_change:u16 = 0 // maximum that team tax and owner cut can be adjusted (up or down) with each edit
  buy_team_cost:u32 = 0 // BOID required to create a team
  owner_stake_required:u32 = 0 // BOID stake required to create a team
  owner_future_stake_lock_rounds_required:u16 = 0 // owner must have some BOID stake locked for this amount of time
}

@packer
export class ConfigStake {
  unstake_rounds:u8 = 0
  extra_stake_min_locked_rounds:u8 = 0
}

@packer
export class ConfigTime {
  rounds_start_sec_since_epoch:u32 = 0
  round_length_sec:u32 = 0
}

@packer
export class ConfigAuth {
  // actions must be whitelisted in order for key authentication to be used on that action
  key_actions_whitelist:Name[] = []
  // NOT IMPLEMENTED: in the future we might limit the stake/balance of accounts that don't have an owner account attached (key only accts)
  key_account_max_stake:u32 = 0
  // NOT IMPLEMENTED: in the future we might limit the stake/balance of accounts that don't have an owner account attached (key only accts)
  key_account_max_balance:u32 = 0
  // max number of keys that can be registered for authentication on a boid account
  account_max_keys:u8 = 0
  // NOT IMPLEMENTED: The idea is that workers that pass along actions for key accounts
  // could optionally bill the account to prevent spam.
  worker_max_bill_per_action:u32 = 0
}
@packer
export class PowerClaimLog {
  before:u32 = 0
  after:u32 = 0
  from_boosters:u32 = 0
  elapsed_rounds:u16 = 0
}

@packer
export class MintLog {
  power_mint:u32 = 0
  powered_stake_mint:u32 = 0
  account_earned:u32 = 0
  team_cut:u32 = 0
  team_owner_earned:u32 = 0
  overstake_mint:u32 = 0
  total:u32 = 0
}

@packer
export class ConfigNft {
  boid_id_maximum_nfts:u16 = 0
  whitelist_collections:Name[] = []
}

@table("config", singleton)
export class Config extends Table {
  constructor(
    public account:ConfigAccount = new ConfigAccount(),
    public power:ConfigPower = new ConfigPower(),
    public mint:ConfigMint = new ConfigMint(),
    public team:ConfigTeam = new ConfigTeam(),
    public stake:ConfigStake = new ConfigStake(),
    public time:ConfigTime = new ConfigTime(),
    public auth:ConfigAuth = new ConfigAuth(),
    public nft:ConfigNft = new ConfigNft(),
    // public auto:ConfigAutoAdjust = new ConfigAutoAdjust(),
    public paused:boolean = true,
    public allow_deposits:boolean = false,
    public allow_withdrawals:boolean = false,
    public recoveryAccount:Name = EMPTY_NAME // this is an account secured by the DAO and other trusted accounts that can recover accounts of users who lost their keys if recoverable bool is enabled, the details to be figured out later
  ) {
    super()
  }
}
