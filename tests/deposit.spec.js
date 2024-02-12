/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expectToThrow } from "@proton/vert"
import { expect } from "chai"
import { beforeEach, describe, it } from "mocha"
import { chain, init, oracles, setupOracle, tkn } from "./util.js"

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
      tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "100001.0000 BOID", memo: "collateral" }, "oracle1"),
      "eosio_assert: must deposit collateral in correct increments")
  })
})
