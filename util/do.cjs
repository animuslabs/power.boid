
const { Asset, Authority, Name, PermissionLevel, PermissionLevelWeight, Serializer, TimePoint, UInt16, UInt32 } = require("@greymass/eosio")
const conf = require("../eosioConfig.cjs")
const env = require("../.env.cjs")
const { api, tapos, doAction } = require("./lib/eosjs.cjs")()
const activeChain = process.env.CHAIN || env.defaultChain

const roundStartTime = TimePoint.fromMilliseconds(Date.now())
const roundLengthSec = 900
const defaultConfig = {
  paused: false,
  account: { purchase_price: 1000, max_owners: 4, max_sponsors: 1, max_pwrmods: 4, suffix_whitelist: ["oid"], remove_sponsor_price: 100000 },
  power: { round_decay_constant: 10, round_decay_mult: 0.05, sponsor_tax_mult: 0.1, powered_stake_mult: 1, powered_stake_pwr: 0.95, claim_maximum_elapsed_rounds: 10 },
  mint: { round_powered_stake_mult: 0.3, round_power_mult: 0.09 },
  team: { change_min_rounds: 42, edit_team_min_rounds: 48, team_edit_max_pct_change: 1, buy_team_cost: 5e6, owner_stake_required: 2e7, owner_future_stake_lock_rounds_required: 80 },
  stake: { unstake_rounds: 24, extra_stake_min_locked_rounds: 12 },
  time: { rounds_start: roundStartTime, round_length_sec: roundLengthSec },
  auth: {
    key_actions_whitelist: ["unstake.init", "unstake.end", "power.claim", "team.change", "stake", "account.edit"],
    key_account_max_stake: 500000,
    key_account_max_balance: 500000,
    account_max_keys: 6,
    worker_max_bill_per_action: 100
  },
  nft: { boid_id_maximum_nfts: 6 },
  auto: {
    target_inflation_per_round: 10000,
    power_mult_max_adjust: 1,
    powered_stake_mult_max_adjust: 1,
    adjustment_interval_rounds: 1
  },
  allow_deposits: true,
  allow_withdrawals: true
}

const methods = {
  async authInit() {
    await doAction("auth.init")
  },
  async configSet() {
    await doAction("config.set", { config: defaultConfig })
  },
  async configClear() {
    await doAction("config.clear", {})
  },
  async accountAdd(boid_id, owner = null, sponsor = null, key = null) {
    await doAction("account.add", { boid_id, owners: owner ? [owner] : [], sponsors: sponsor ? [sponsor] : [], keys: key ? [key] : [] })
  },
  async teamCreate(owner, min_pwr_tax_pct, owner_cut_pct, url_safe_name, info_json_ipfs) {
    await doAction("team.create", { owner, min_pwr_tax_pct, owner_cut_pct, url_safe_name, info_json_ipfs })
  },
  async powerAdd(boid_id, power) {
    await doAction("power.add", { boid_id, power })
  },
  async powerClaim(boid_id) {
    await doAction("power.claim", { boid_id })
  },
  async statsClean() {
    await doAction("stats.clean", { })
  }
}

if (require.main == module) {
  if (Object.keys(methods).find(el => el === process.argv[2])) {
    console.log("Starting:", process.argv[2])
    methods[process.argv[2]](...process.argv.slice(3)).catch((error) => console.error(error))
      .then((result) => console.log("Finished"))
  } else {
    console.log("Available Commands:")
    console.log(JSON.stringify(Object.keys(methods), null, 2))
  }
}
module.exports = methods
