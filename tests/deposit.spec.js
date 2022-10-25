/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint, PrivateKey, PublicKey, Action, Bytes, ABI, ABIDecoder, Authority, PermissionLevel, UInt32, Serializer, TimePointSec } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { init, chain, act, oracles, global, contract, reports, boid, addRounds, tkn, config, wait, setupOracle, oracleStats, stats, logActions, getReportId, boid_id } from "./util.js"

const report = { protocol_id: 0, round: 10, units: 100 }
const report2 = { protocol_id: 0, round: 11, units: 100 }
const report3 = { protocol_id: 0, round: 12, units: 100 }

beforeEach(async () => {
  chain.resetTables()
  await init()
})
describe("deposit", async() => {
  it("mininmum deposit", async() => {
    await setupOracle("oracle1")
    expect(oracles()[0].collateral.locked).eq(10000000)
    await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "10000000.0000 BOID", memo: "" })
    await tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "10000000.0000 BOID", memo: "collateral" }, "oracle1")
    expect(oracles()[0].collateral.locked).eq(20000000)
  })
  it("invalid deposit", async() => {
    await setupOracle("oracle1")
    await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "10000000.0000 BOID", memo: "" })
    await expectToThrow(
      tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "100000.0000 BOID", memo: "collateral" }, "oracle1"),
      "eosio_assert: must deposit collateral in correct increments")
  })
})