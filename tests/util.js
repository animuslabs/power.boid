/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { Authority, Name, PermissionLevel, PermissionLevelWeight, TimePoint, UInt16, UInt32,UInt64 } from "@wharfkit/antelope"
import { AccountPermission, Blockchain } from "@proton/vert"
import { defaultConfig } from "./defaultConfig.js"
import { config } from "./lib/config.js"
export const chain = new Blockchain()

export const contract = chain.createContract("power.boid", "../build/boid.contract")
export const token = chain.createContract("token.boid", "../src/external/token/token.contract")
export const boid = chain.createContract("boid", "../src/external/boid/boid.contract")

const mint = chain.createAccount("tknmint.boid")

mint.setPermissions([
  AccountPermission.from({
    perm_name: Name.from("owner"),
    parent: Name.from(""),
    required_auth: Authority.from({
      threshold: UInt32.from(1),
      keys: [],
      accounts: [
        PermissionLevelWeight.from({
          permission: PermissionLevel.from("tknmint.boid@active"),
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
          permission: PermissionLevel.from("tknmint.boid@active"),
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
  const issuer = Name.from("token.boid")
  const maximum_supply = "25000000000.0000 BOID"
  await tkn("create", { issuer, maximum_supply })
  await tkn("issue", { to: issuer, quantity: maximum_supply, memo: "" })
  await tkn("transfer", { from: issuer, to: "tknmint.boid", quantity: "100000000.0000 BOID", memo: "" })
}

export const roundStartTime = TimePoint.fromMilliseconds(defaultConfig.time.rounds_start_sec_since_epoch * 1000)
console.log(roundStartTime.toString())

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
export function cpids(scope) {
  scope = new Name(UInt64.from(parseInt(scope)))
  return contract.tables.boinccpids(scope).getTableRows()
}
export function cpid(boid_id) {
  return contract.tables.boinccpids().getTableRows().filter(el=> el.boid_id == boid_id)[0]
}
export function stats() {
  return contract.tables.stats().getTableRows()
}
export function reports(scope) {
  scope = Name.from(scope).value.toString()
  return contract.tables.pwrreports(scope).getTableRows()
}
export function cpidReports(scope) {
  scope = Name.from(scope).value.toString()
  return contract.tables.cpidreports(scope).getTableRows()
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


export function addRounds(numRounds = 0) {
  // @ts-ignore
  chain.addTime(TimePoint.fromMilliseconds(defaultConfig.time.round_length_sec * 1000 * numRounds))
}

export async function setupOracle(name = "oraclename", quantity = "10000000.0000 BOID", weight = 1,standby = false) {
  chain.createAccount(name)
  await tkn("transfer", { from: "token.boid", to: name, quantity, memo: "" })
  await tkn("transfer", { from: name, to: "power.boid", quantity, memo: "collateral" }, name)
  await act("setweight", { oracle: name, weight },"power.boid")
  if(!standby) await act("setstandby", { oracle: name, standby: false },"power.boid")
}

  export function stringToBytes(input) {
    const encoder = new TextEncoder(); // Use UTF-8 encoding by default
    return encoder.encode(input);
  }

  // Converts a Uint8Array (bytes) back to a string
  export function bytesToString(bytes) {
    const decoder = new TextDecoder('utf-8'); // Use UTF-8 decoding by default
    return decoder.decode(bytes);
  }
export function uint8ArrayToString(uint8Array) {
  return new TextDecoder().decode(uint8Array);
}
export function hexToString(hex) {
  let str = '';
  for (let i = 0; i < hex.length; i += 2) {
    str += String.fromCharCode(parseInt(hex.substr(i, 2), 16));
  }
  return str;
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
export function trueCollateral(oracleRow) {
  return oracleRow.collateral.locked - oracleRow.collateral.slashed
}
export function findRoundPayout(oracleName,roundNum){
  const oracleRow = oracle(oracleName)
  const oRoundTable = oracleStats(oracleName)
  const oRoundData = oRoundTable.filter(el => el.round == roundNum)[0]
  if(!oRoundData) throw new Error(`Cannot find round ${roundNum} for ${oracleName}`)
  const basePay = trueCollateral(oracleRow) * config.payment.collateral_pct_pay_per_round_mult
  // console.log(basePay)
  let bonusPay = config.payment.round_bonus_pay_reports * Math.pow(oRoundData.reports.reported_or_merged, config.payment.reports_proposed_adjust_pwr) + config.payment.round_bonus_pay_proposed * Math.pow(oRoundData.reports.proposed, config.payment.reports_proposed_adjust_pwr);
  bonusPay = bonusPay / Math.pow(config.payment.num_oracles_adjust_base, global().expected_active_oracles.length);
  // console.log(bonusPay)
  return parseInt((Math.floor(bonusPay) + Math.floor(basePay)).toString())
}
