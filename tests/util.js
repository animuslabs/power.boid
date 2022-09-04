/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Authority, Name, PermissionLevel, PermissionLevelWeight, Serializer, TimePoint, UInt16, UInt32 } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt, AccountPermission } from "@proton/vert"
import fs from "fs"
export const chain = new Blockchain()

export const contract = chain.createContract("power.boid", "./build/boid.contract")
export const token = chain.createContract("token.boid", "./external/token/token.contract")
export const aa = chain.createContract("atomicassets", "./external/atomicassets/atomicassets")
export const boid = chain.createContract("boid", "./external/boid/boid.contract")

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

const roundLengthSec = 900
const defaultConfig = {
  paused: false,
  account: { purchase_price: 1000, max_owners: 4, max_sponsors: 1, max_pwrmods: 4, suffix_whitelist: ["oid"], remove_sponsor_price: 100000 },
  power: { round_decay_constant: 10, round_decay_mult: 0.05, sponsor_tax_mult: 0.1, powered_stake_mult: 1, powered_stake_pwr: 0.95, claim_maximum_elapsed_rounds: 10 },
  mint: { round_powered_stake_mult: 0.3, round_power_mult: 0.09 },
  team: { change_min_rounds: 42, edit_team_min_rounds: 48, team_edit_max_pct_change: 1, buy_team_cost: 5e6, owner_stake_required: 2e7, owner_future_stake_lock_rounds_required: 80 },
  stake: { unstake_rounds: 24, extra_stake_min_locked_rounds: 12 },
  time: { rounds_start: "2022-08-17T03:19:57.992", round_length_sec: roundLengthSec },
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

export async function wait(ms) {
  return new Promise(resolve => {
    setTimeout(resolve, ms)
  })
}
export function oracles() {
  return contract.tables.oracles().getTableRows()
}
export function reports(scope) {
  scope = Name.from(scope).value.toString()
  return contract.tables.pwrreports(scope).getTableRows()
}
export function global() {
  return contract.tables.global().getTableRows()[0]
}

export function act(name, params = {}, permission = "power.boid@active") {
  return contract.actions[name](params).send(permission)
}
export const owners = ["boid"]
export const sponsors = ["sponsoracct"]
export const boid_id = "testaccount"

export async function init() {
  await wait(100)
  await boid.actions["auth.init"]({ }).send()
  await boid.actions["config.set"]({ config: defaultConfig }).send()
  await boid.actions["account.add"]({ boid_id: "boid", owners: ["boid"], sponsors: [], keys: [] }).send()
  await boid.actions["account.add"]({ boid_id, owners: ["boid"], sponsors: [], keys: [] }).send()
  chain.createAccount("recover.boid")
  await boid.actions["account.add"]({ boid_id: Name.from("teamownr"), owners: ["recover.boid"], sponsors: [], keys: [] }).send()
  await boid.actions["team.create"]({ owner: Name.from("teamownr"), min_pwr_tax_mult: 10, owner_cut_mult: 4, url_safe_name: "teamteam", info_json_ipfs: "" }).send()
}
