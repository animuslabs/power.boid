/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { chain, accounts, addRounds, currentRound, depositTokens, setupAccountOwner, defaultConfig, contract, stakes, token, roundStartTime, init, teams, decayPower, totalPayout, teamContribution, teamOwnerCut, act, pwrmods, findMultipliedPower, findSponsorCut, boid_id, owners, sponsors, validateGlobals, account } from "./util.js"
afterEach(() => {
  expect(validateGlobals()).eq(true)
})
describe("stake", () => {
  it("deposit & stake", async() => {
    await init()
    console.log(account(boid_id))
    expect(account(boid_id).balance).equals(11000)
    await contract.actions.stake({ boid_id, quantity: 100 }).send()
    expect(account(boid_id).balance).equals(10900)
    expect(account(boid_id).stake.self_staked).equals(100)
  })
  it("unstake", async() => {
    await contract.actions["unstake.init"]({ boid_id, quantity: 1 }).send("recover.boid@active")
    expect(account(boid_id).stake.self_staked).equals(100)
    expect(account(boid_id).stake.unstaking[0].quantity).equals(1)
    expect(account(boid_id).stake.unstaking[0].redeemable_after_round).equals(24)
    await expectToThrow(
      contract.actions["unstake.init"]({ boid_id: "testaccount", quantity: 100 }).send("recover.boid@active"),
      "eosio_assert: pending unstake is already in progress, finish or stop to unstake again.")
    await expectToThrow(
      contract.actions["unstake.end"]({ boid_id: "testaccount" }).send(),
      "eosio_assert: unstake can't be ended yet")
    addRounds(25)
    await contract.actions["unstake.end"]({ boid_id: "testaccount" }).send()

    expect(account(boid_id).stake.unstaking.length).equals(0)
    expect(account(boid_id).balance).equals(10901)
  })
})

describe("delegated stake", () => {
  it("xtraStake", async() => {
    await expectToThrow(
      contract.actions["stake.deleg"]({ from_boid_id: "testaccount", to_boid_id: "teamownr", stake_quantity: 1, lock_until_round: 0 }).send(),
      "eosio_assert: testaccount stake_quantity 10000 exceeds account stake 99"
    )
    // console.log(account(boid_id).balance)
    await contract.actions.stake({ boid_id: "testaccount", quantity: 10901 }).send()
    expect(account(boid_id).balance).equals(0)
    expect(account(boid_id).stake.self_staked).equals(11000)
    await expectToThrow(
      contract.actions["stake.deleg"]({ from_boid_id: "testaccount", to_boid_id: "teamownr", stake_quantity: 1, lock_until_round: 0 }).send(),
      "eosio_assert: invalid lock_until_round"
    )
    const validRound = currentRound() + defaultConfig.stake.extra_stake_min_locked_rounds + 1
    await contract.actions["stake.deleg"]({ from_boid_id: "testaccount", to_boid_id: "teamownr", stake_quantity: 1, lock_until_round: validRound }).send()
    expect(stakes()[0].stake_quantity).equals(1)
    expect(stakes()[0].locked_until_round).equals(validRound)
  })
  it("xtraUnstake", async() => {
    let accounts = contract.tables.accounts().getTableRows()
    expect(account("teamownr").stake.received_delegated_stake).eq(1)
    await expectToThrow(
      contract.actions["unstke.deleg"]({ stake_id: 0 }).send(),
      "eosio_assert: delegated stake is still locked")
    addRounds(defaultConfig.stake.extra_stake_min_locked_rounds + 1)
    await contract.actions["unstke.deleg"]({ stake_id: 0 }).send()
    let stakes = contract.tables.stakes().getTableRows()
    accounts = contract.tables.accounts().getTableRows()
    expect(stakes.length).eq(0)
    expect(account(boid_id).stake.self_staked).eq(11000)
  })
  it("delegated self", async() => {
    await token.actions.transfer({ from: Name.from("newowner"), to: Name.from("boid"), quantity: "10000.0000 BOID", memo: "deposit boid_id=testaccount" }).send("newowner@active")
    expect(account(boid_id).stake.received_delegated_stake).eq(0)
    expect(account(boid_id).balance).eq(10000)
    const validRound = currentRound() + defaultConfig.stake.extra_stake_min_locked_rounds + 1
    await contract.actions.stake({ boid_id: "testaccount", quantity: 10000 }).send()
    expect(account(boid_id).balance).eq(0)
    expect(account(boid_id).stake.self_staked).eq(21000)
    await contract.actions["stake.deleg"]({ from_boid_id: "testaccount", to_boid_id: "testaccount", stake_quantity: 1, lock_until_round: validRound }).send()
    await contract.actions["stake.deleg"]({ from_boid_id: "testaccount", to_boid_id: "testaccount", stake_quantity: 1, lock_until_round: validRound }).send()
    addRounds(defaultConfig.stake.extra_stake_min_locked_rounds + 1)
    const validRound2 = currentRound() + defaultConfig.stake.extra_stake_min_locked_rounds + 1
    expect(account(boid_id).stake.received_delegated_stake).eq(2)
    expect(account(boid_id).stake.self_staked).eq(1000)
    await contract.actions["unstke.deleg"]({ stake_id: 0 }).send()
    expect(account(boid_id).stake.self_staked).eq(11000)
    expect(account(boid_id).stake.received_delegated_stake).eq(1)
    await contract.actions["stake.deleg"]({ from_boid_id: "testaccount", to_boid_id: "teamownr", stake_quantity: 1, lock_until_round: validRound2 }).send()
    expect(account("teamownr").stake.received_delegated_stake).eq(1)
    expect(account(boid_id).stake.received_delegated_stake).eq(1)
  })
})
