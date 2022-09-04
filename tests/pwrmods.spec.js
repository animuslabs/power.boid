/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { chain, accounts, addRounds, currentRound, depositTokens, setupAccountOwner, defaultConfig, contract, stakes, token, roundStartTime, init, teams, decayPower, totalPayout, teamContribution, teamOwnerCut, act, pwrmods, findMultipliedPower, findSponsorCut, boid_id, validateGlobals, account } from "./util.js"

const pwrMod1 = {
  mod_id: 0,
  pwr_multiplier: 10,
  pwr_add_per_round: 0,
  expire_after_elapsed_rounds: 100,
  aggregate_pwr_capacity: 30000
}

const pwrMod2 = {
  mod_id: 1,
  pwr_multiplier: 0,
  pwr_add_per_round: 10,
  expire_after_elapsed_rounds: 100,
  aggregate_pwr_capacity: 30000
}
afterEach(() => {
  expect(validateGlobals()).eq(true)
})
describe("pwrmods", () => {
  it("new", async() => {
    await init()
    await act("pwrmod.new", { mod: pwrMod1 })
    await act("pwrmod.new", { mod: pwrMod2 })
    // console.log(pwrmods())
    expect(pwrmods().length).eq(2)
  })
  it("add", async() => {
    await act("pwrmod.add", { boid_id, mod_id: 0 })
    expect(account(boid_id).power.mods.length).eq(1)
    expect(account(boid_id).power.mods[0].pwr_multiplier).eq(pwrMod1.pwr_multiplier)
    expect(account(boid_id).power.mods[0].expires_round).eq(currentRound() + pwrMod1.expire_after_elapsed_rounds)
    await expectToThrow(
      act("pwrmod.add", { boid_id, mod_id: 0 }),
      "eosio_assert: sponsored accounts can only hold one PwrMod")
    await token.actions.transfer({ from: Name.from("newowner"), to: Name.from("boid"), quantity: "100000.0000 BOID", memo: "deposit boid_id=testaccount" }).send("newowner@active")
    await act("account.free", { boid_id }, "recover.boid@active")
    await act("pwrmod.add", { boid_id, mod_id: 1 })
    await act("pwrmod.add", { boid_id, mod_id: 1 })
    await act("pwrmod.add", { boid_id, mod_id: 1 })
    await expectToThrow(
      act("pwrmod.add", { boid_id: "testaccount", mod_id: 0 }),
      "eosio_assert: max power mods has been reached for this boid_id")

    // console.log(account(boid_id).power.mods)
    expect(account(boid_id).power.mods.length).eq(4)
  })
  it("remove", async() => {
    await act("pwrmod.rm", { boid_id, pwrmod_index: 0 })
    await act("pwrmod.rm", { boid_id, pwrmod_index: 0 })
    await act("pwrmod.rm", { boid_id, pwrmod_index: 0 })
    expect(account(boid_id).power.mods.length).eq(1)
    await act("pwrmod.rm", { boid_id, pwrmod_index: 0 })
    expect(account(boid_id).power.mods.length).eq(0)
    expectToThrow(
      act("pwrmod.rm", { boid_id, pwrmod_index: 0 }),
      "eosio_assert: invalid index")
  })
  it("pwrmod_mult", async() => {
    await act("pwrmod.add", { boid_id, mod_id: 0 })
    expect(account(boid_id).power.mods[0].aggregate_pwr_remaining).eq(pwrMod1.aggregate_pwr_capacity)
    const addingPower = 1000
    await act("power.add", { boid_id, power: addingPower })
    expect(account(boid_id).power.mods[0].aggregate_pwr_remaining).eq(pwrMod1.aggregate_pwr_capacity - addingPower)
    const multiplied = (addingPower + findMultipliedPower(addingPower, account(boid_id).power.mods))
    console.log("multiplied:", multiplied)
    const sponsorCut = findSponsorCut(multiplied)
    console.log("sponsorCut:", sponsorCut)
    const toAccount = multiplied - sponsorCut
    console.log("toAccount:", toAccount)
    console.log(chain.console)
    expect(account(boid_id).power.rating).eq(multiplied)
    // expect(accounts()[0].power.rating).eq(sponsorCut)
  })
  it("pwrmod_add", async() => {
    await act("pwrmod.rm", { boid_id, pwrmod_index: 0 })
    expect(account(boid_id).power.mods.length).eq(0)
    await act("pwrmod.add", { boid_id, mod_id: 1 })
    expect(account(boid_id).power.mods[0].pwr_add_per_round).eq(pwrMod2.pwr_add_per_round)
    const addingPower = 1000
    await act("power.add", { boid_id, power: addingPower })
    addRounds(10)
    await act("power.claim", { boid_id })
    expect(account("boid").power.rating).eq(0)
    expect(account(boid_id).power.rating).eq(980)
  })
})
