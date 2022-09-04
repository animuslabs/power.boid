/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { chain, accounts, addRounds, currentRound, depositTokens, setupAccountOwner, defaultConfig, contract, stakes, token, roundStartTime, init, teams, decayPower, totalPayout, teamContribution, teamOwnerCut, validateGlobals, stats, act, boid_id, account } from "./util.js"
afterEach(() => {
  expect(validateGlobals()).eq(true)
})
describe("power", async() => {
  it("add", async() => {
    await chain.resetVm()
    chain.resetTables()
    chain.setTime(TimePoint.fromMilliseconds(0))
    await init()
    await contract.actions["power.add"]({ boid_id, power: 100 }).send()
    expect(account(boid_id).power.rating).eq(90)
    expect(account("sponsoracct").power.rating).eq(10)
  })
  it("claim", async() => {
    addRounds(2)
    const power = account(boid_id).power.rating
    console.log("power start:", power)
    const decayed = decayPower(power, 2)
    console.log("decayed", decayed)
    const newPower = Math.max(power - decayed, 0)
    const payout = totalPayout(account(boid_id), newPower, decayed, 2)
    const toTeam = teamContribution(account(boid_id), teams()[0], payout)
    console.log("toTeam:", toTeam)
    console.log("payout:", payout)
    const finalPayout = payout - toTeam
    const ownerCut = teamOwnerCut(teams()[0], toTeam)
    await contract.actions["power.claim"]({ boid_id: "testaccount" }).send()
    expect(account(boid_id).power.rating).eq(newPower)
    expect(account(boid_id).power.last_claimed_round).eq(2)
    expect(account(boid_id).stake.self_staked).eq(finalPayout)
    expect(account("teamownr").stake.self_staked).eq(ownerCut)
    expect(teams()[0].power).eq(newPower)
    await contract.actions["power.add"]({ boid_id, power: 5000 }).send()
    addRounds(1)
    await contract.actions["power.claim"]({ boid_id }).send()
    console.log(chain.actionTraces.map(el => [el.receiver.name.toString(), el.action.toString(), JSON.stringify(el.decodedData)]))
    console.log(chain.console)
    addRounds(2)
    await contract.actions["power.claim"]({ boid_id: "testaccount" }).send()
    await contract.actions["power.add"]({ boid_id: Name.from("testaccount"), power: 1000 }).send()
    addRounds(10)
    await contract.actions["power.claim"]({ boid_id: "testaccount" }).send()
    addRounds(20)
    await contract.actions["power.claim"]({ boid_id: "testaccount" }).send()
    await contract.actions["power.add"]({ boid_id: Name.from("testaccount"), power: 5000 }).send()
    addRounds(20)
    await contract.actions["power.claim"]({ boid_id: "testaccount" }).send()
    await contract.actions["power.add"]({ boid_id: Name.from("testaccount"), power: 15000 }).send()
    addRounds(20)
    await contract.actions["power.claim"]({ boid_id: "testaccount" }).send()
    addRounds(20)
    await contract.actions["power.claim"]({ boid_id: "testaccount" }).send()
  })
  it("statsCheck", async() => {
    addRounds(200)
    expect(stats().length).eq(9)
    await act("stats.clean", {})
    expect(stats().length).eq(0)
  })
})
