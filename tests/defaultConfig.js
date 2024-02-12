
export const defaultConfigTN = {
  paused: true,
  account: {
    invite_price: 10000,
    premium_purchase_price: 500000,
    max_premium_prefix: 3,
    max_owners: 4,
    max_boosters: 4,
    suffix_whitelist: ["oid", "boider", "we", "cool", "yes", "voice"],
    remove_sponsor_price: 200000,
    sponsor_max_invite_codes: 5,
    invite_code_expire_rounds: 48
  },
  power: {
    sponsor_tax_mult: 0.1,
    powered_stake_mult: 10000,
    claim_maximum_elapsed_rounds: 10,
    soft_max_pwr_add: 1000,
    history_slots_length: 10
  },
  mint: {
    round_powered_stake_mult: 0.0001,
    round_power_mult: 1
  },
  team: {
    change_min_rounds: 1,
    edit_team_min_rounds: 1,
    team_edit_max_pct_change: 1,
    buy_team_cost: 5e6,
    owner_stake_required: 2e7,
    owner_future_stake_lock_rounds_required: 80
  },
  stake: {
    unstake_rounds: 1,
    extra_stake_min_locked_rounds: 0
  },
  time: {
    rounds_start_sec_since_epoch: 1697766227,
    round_length_sec: 7200
  },
  auth: {
    key_actions_whitelist: ["unstake.init", "unstake.end", "power.claim", "team.change", "stake", "account.edit", "invite.buy", "invite.add", "invite.rm", "stake.deleg", "unstke.deleg", "unstake.stop", "offer.claim", "account.buy", "owner.add", "account.free"],
    key_account_max_stake: 500000,
    key_account_max_balance: 500000,
    account_max_keys: 6,
    worker_max_bill_per_action: 100
  },
  nft: {
    boid_id_maximum_nfts: 6,
    whitelist_collections: ["nft.boid"]
  },
  allow_deposits: true,
  allow_withdrawals: true,
  recoveryAccount: "recover.boid"
}
// 46800 13 hrs
export const defaultConfig = {
  account: {
    "invite_price": 10000,
    "premium_purchase_price": 500000,
    "max_premium_prefix": 3,
    "max_owners": 4,
    "max_boosters": 4,
    "suffix_whitelist": ["oid", "boider", "we", "cool", "yes", "voice"],
    "remove_sponsor_price": 200000,
    "sponsor_max_invite_codes": 5,
    "invite_code_expire_rounds": 10
  },
  power: {
    "sponsor_tax_mult": "0.1",
    "powered_stake_mult": "70000.00",
    "claim_maximum_elapsed_rounds": 10,
    "soft_max_pwr_add": 1000,
    "history_slots_length": 24
  },
  mint: {
    "round_powered_stake_mult": "0.00007",
    "round_power_mult": "0.85"
  },
  team: {
    "change_min_rounds": 6,
    "edit_team_min_rounds": 12,
    "team_edit_max_pct_change": 1,
    "buy_team_cost": 25000000,
    "owner_stake_required": 20000000,
    "owner_future_stake_lock_rounds_required": 80
  },
  stake: {
    "unstake_rounds": 8,
    "extra_stake_min_locked_rounds": 0
  },
  time: {
    "rounds_start_sec_since_epoch": 0,
    "round_length_sec": 46800
  },
  auth: {
    "key_actions_whitelist": ["unstake.init", "unstake.end", "power.claim", "team.change", "stake", "account.edit", "invite.buy", "invite.add", "invite.rm", "stake.deleg", "unstke.deleg", "unstake.stop", "offer.claim", "account.buy", "owner.add", "account.free"],
    "key_account_max_stake": 500000,
    "key_account_max_balance": 500000,
    "account_max_keys": 6,
    "worker_max_bill_per_action": 100
  },
  nft: {
    "boid_id_maximum_nfts": 12,
    "whitelist_collections": ["nft.boid"]
  },
  paused: false,
  allow_deposits: true,
  allow_withdrawals: false,
  recoveryAccount: "dac.boid",
}
