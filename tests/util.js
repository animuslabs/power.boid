/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Authority, Name, PermissionLevel, PermissionLevelWeight, Serializer, TimePoint, UInt16, UInt32 } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt, AccountPermission } from "@proton/vert"
export const chain = new Blockchain()

export const contract = chain.createContract("power.boid", "../build/boid.contract")
export const token = chain.createContract("token.boid", "../src/external/token/token.contract")
export const boid = chain.createContract("boid", "../src/external/boid/boid.contract")

const mint = chain.createAccount("mint.boid")

mint.setPermissions([
  AccountPermission.from({
    perm_name: Name.from("owner"),
    parent: Name.from(""),
    required_auth: Authority.from({
      threshold: UInt32.from(1),
      keys: [],
      accounts: [
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("mint.boid@active"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("power.boid@eosio.code"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("boid@eosio.code"),
          weight: UInt16.from(1)
        })
      ],
      waits: []
    })
  }),
  AccountPermission.from({
    perm_name: Name.from("active"),
    parent: Name.from("owner"),
    required_auth: Authority.from({
      threshold: UInt32.from(1),
      keys: [],
      accounts: [
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("mint.boid@active"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("power.boid@eosio.code"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("boid@eosio.code"),
          weight: UInt16.from(1)
        })
      ],
      waits: []
    })
  })
])
token.setPermissions([
  AccountPermission.from({
    perm_name: Name.from("owner"),
    parent: Name.from(""),
    required_auth: Authority.from({
      threshold: UInt32.from(1),
      keys: [],
      accounts: [
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("token.boid@active"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("power.boid@eosio.code"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("boid@eosio.code"),
          weight: UInt16.from(1)
        })
      ],
      waits: []
    })
  }),
  AccountPermission.from({
    perm_name: Name.from("active"),
    parent: Name.from("owner"),
    required_auth: Authority.from({
      threshold: UInt32.from(1),
      keys: [],
      accounts: [
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("token.boid@active"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("power.boid@eosio.code"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("boid@eosio.code"),
          weight: UInt16.from(1)
        })
      ],
      waits: []
    })
  })
])

boid.setPermissions([
  AccountPermission.from({
    perm_name: Name.from("owner"),
    parent: Name.from(""),
    required_auth: Authority.from({
      threshold: UInt32.from(1),
      keys: [],
      accounts: [
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("power.boid@active"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("power.boid@eosio.code"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("boid@eosio.code"),
          weight: UInt16.from(1)
        })
      ],
      waits: []
    })
  }),
  AccountPermission.from({
    perm_name: Name.from("active"),
    parent: Name.from("owner"),
    required_auth: Authority.from({
      threshold: UInt32.from(1),
      keys: [],
      accounts: [
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("power.boid@active"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("power.boid@eosio.code"),
          weight: UInt16.from(1)
        }),
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("boid@eosio.code"),
          weight: UInt16.from(1)
        })
      ],
      waits: []
    })
  })
])
export async function initTokens() {
  // const tkn = token.actions
  // chain.createAccount("token.boid")
  const issuer = Name.from("token.boid")
  const maximum_supply = "25000000000.0000 BOID"
  await tkn("create", { issuer, maximum_supply })
  await tkn("issue", { to: issuer, quantity: maximum_supply, memo: "" })
  await tkn("transfer", { from: issuer, to: "mint.boid", quantity: "100000000.0000 BOID", memo: "" })
}

const roundLengthSec = 90000
export const roundStartTime = TimePoint.fromMilliseconds(Date.now())
console.log(roundStartTime.toString())
const defaultConfig = {
  paused: false,
  account: { invite_price: 1000, premium_purchase_price: 1000, max_premium_prefix: 3, max_owners: 4, max_sponsors: 1, max_pwrmods: 4, suffix_whitelist: ["oid"], remove_sponsor_price: 100000, sponsor_max_invite_codes: 255, invite_code_expire_rounds: 20 },
  power: { round_decay_constant: 10, round_decay_mult: 0.05, sponsor_tax_mult: 0.1, powered_stake_mult: 1, powered_stake_pwr: 0.95, claim_maximum_elapsed_rounds: 10, soft_max_pwr_add: 65000, dev_fund_tax_mult: 0.01 },
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
  nft: { boid_id_maximum_nfts: 6, whitelist_collections: ["mint.boid"] },
  auto: {
    target_inflation_per_round: 10000,
    power_mult_max_adjust: 1,
    powered_stake_mult_max_adjust: 1,
    adjustment_interval_rounds: 1,
    max_check_rounds: 20
  },
  allow_deposits: true,
  allow_withdrawals: true,
  recoveryAccount: "recover.boid"
}

export async function wait(ms) {
  return new Promise(resolve => {
    setTimeout(resolve, ms)
  })
}
export function oracles() {
  return contract.tables.oracles().getTableRows()
}

/**
 * @export
 * @param {string} name
 * @return {object|null}
 */
export function oracle(name) {
  return contract.tables.oracles().getTableRows().filter(el=> el.account == name)[0]
}
export function stats() {
  return contract.tables.stats().getTableRows()
}
export function reports(scope) {
  scope = Name.from(scope).value.toString()
  return contract.tables.pwrreports(scope).getTableRows()
}
export function oracleStats(scope) {
  scope = Name.from(scope).value.toString()
  return contract.tables.oraclestats(scope).getTableRows()
}
export function global() {
  return contract.tables.global().getTableRows()[0]
}

export function act(name, params = {}, permission = "power.boid@active") {
  return contract.actions[name](params).send(permission)
}
export function tkn(name, params = {}, permission = "token.boid@active") {
  return token.actions[name](params).send(permission)
}

export function logActions() {
  console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
}
export function logChain() {
  console.log(chain.console)
}

export const owners = ["boid"]
export const sponsors = ["sponsoracct"]
export const boid_id = "testaccount"

export const config = {
  paused: false,
  min_consensus_weight: 30,
  min_consensus_pct: 0.66,
  collateral_pct_pay_per_round: 0.01,
  round_bonus_pay_reports: 50000,
  round_bonus_pay_proposed: 200000,
  slash_threshold_pct: 0.5,
  slash_quantity_static: 500000,
  slash_quantity_collateral_pct: 0.01,
  withdraw_rounds_wait: 20,
  keep_finalized_stats_rows: 2000,
  reports_finalized_after_rounds: 3,
  unlock_wait_rounds: 40,
  first_unlock_wait_rounds: 20,
  standby_toggle_interval_rounds: 20,
  weight_collateral_pwr: 1.1,
  oracle_collateral_deposit_increment: 1000000,
  reports_accumulate_weight_round_pct: 0.20,
  weight_collateral_divisor:1000000,
  merge_deviation_pct: 0.25,
  oracle_expected_active_after_rounds: 2,
  min_pay_report_share_threshold: 0.01
}
export function addRounds(numRounds = 0) {
  // @ts-ignore
  chain.addTime(TimePoint.fromMilliseconds(roundLengthSec * 1000 * numRounds))
}

export async function setupOracle(name = "oraclename", quantity = "10000000.0000 BOID", standby = false) {
  chain.createAccount(name)
  await tkn("transfer", { from: "token.boid", to: name, quantity, memo: "" })
  await tkn("transfer", { from: name, to: "power.boid", quantity, memo: "collateral" }, name)
  if(!standby)
    await act("setstandby", { oracle: name, standby: false })
}

export async function init() {
  chain.createAccount("recover.boid")

  await boid.actions["auth.init"]({ }).send()
  await boid.actions["config.set"]({ config: defaultConfig }).send()
  await boid.actions["account.add"]({ boid_id: "boid", owners: ["boid"], sponsors: [], keys: [] }).send()
  await boid.actions["account.add"]({ boid_id, owners: ["boid"], sponsors: [], keys: [] }).send()
  await boid.actions["account.add"]({ boid_id: Name.from("teamownr"), owners: ["recover.boid"], sponsors: [], keys: [] }).send()
  await boid.actions["team.create"]({ owner: Name.from("teamownr"), min_pwr_tax_mult: 10, owner_cut_mult: 4, url_safe_name: "teamteam", info_json_ipfs: "" }).send()
  await initTokens()
  // @ts-ignore
  chain.setTime(roundStartTime)
  await act("configset", { config })
}

export function getReportId(report = {protocol_id:0,round:0,units:0}) {
  return Number((BigInt(report.protocol_id) << BigInt(48)) + (BigInt(report.round) << BigInt(32)) + BigInt(report.units))
}
