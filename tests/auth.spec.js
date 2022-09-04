/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Action, Asset, Name, PermissionLevel, PrivateKey, Serializer, TimePoint, UInt32 } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt, wait } from "@proton/vert"
import { chain, accounts, addRounds, currentRound, depositTokens, setupAccountOwner, defaultConfig, contract, stakes, token, roundStartTime, init, teams, decayPower, totalPayout, teamContribution, teamOwnerCut, act, pwrmods, findMultipliedPower, findSponsorCut, boid_id, owners, sponsors, signActions, validateGlobals, account } from "./util.js"
const privKey = PrivateKey.generate("K1")
let action
wait(0).then(() => {
  action = Action.from({
    account: Name.from("boid"),
    authorization: [PermissionLevel.from("boid@active")],
    name: "unstake.init",
    data: { boid_id, quantity: 1 }
  }, contract.abi)
})
afterEach(() => {
  expect(validateGlobals()).eq(true)
})

describe("auth", () => {
  it("addKey", async() => {
    await init()
    const pubKey = privKey.toPublic()
    await act("auth.addkey", { boid_id, key: pubKey }, "recover.boid@active")
    expect(account(boid_id).auth.keys.length).eq(1)
  })
  it("signAction", async() => {
    chain.createAccount("worker")
    await act("power.add", { boid_id, power: 1000 })
    addRounds(10)
    await act("power.claim", { boid_id, power: 1000 })
    addRounds(1)

    const sig = signActions(privKey, [action], 0)
    await act("auth", { boid_id, actions: [action], sig, keyIndex: 0 }, "worker@active")
    expect(account(boid_id).stake.unstaking.length).eq(1)
  })
  it("invalid", async() => {
    addRounds(1)
    const sig = signActions(privKey, [action], 0) // wrong nonce
    await expectToThrow(
      act("auth", { boid_id, actions: [action], sig, keyIndex: 0 }, "worker@active"),
      "recovered key is different from expected one")

    // try to an action that controls another account
    const unstakeOther = Action.from({
      account: Name.from("boid"),
      authorization: [PermissionLevel.from("boid@active")],
      name: "unstake.init",
      data: { boid_id: "teamownr", quantity: 1 }
    }, contract.abi)
    const sig2 = signActions(privKey, [unstakeOther], 1)
    await expectToThrow(
      act("auth", { boid_id, actions: [unstakeOther], sig: sig2, keyIndex: 0 }, "worker@active"),
      "eosio_assert: boid_id not authenticated")
  })
  it("reject unauthenticated", async() => {
    // try to an action that is not whitelisted controls another account
    const claimPower = Action.from({
      account: Name.from("boid"),
      authorization: [PermissionLevel.from("boid@active")],
      name: "power.claim",
      data: { boid_id }
    }, contract.abi)
    const setConfig = Action.from({
      account: Name.from("boid"),
      authorization: [PermissionLevel.from("boid@active")],
      name: "config.set",
      data: { config: defaultConfig }
    }, contract.abi)
    const unstake = Action.from({
      account: Name.from("boid"),
      authorization: [PermissionLevel.from("boid@active")],
      name: "unstake.init",
      data: { boid_id, quantity: 1 }
    }, contract.abi)

    const actions = [setConfig, unstake]

    const sig3 = signActions(privKey, actions, account(boid_id).auth.nonce)
    await expectToThrow(
      act("auth", { boid_id, actions, sig: sig3, keyIndex: 0 }, "worker@active"),
      "eosio_assert: action not whitelisted for key auth")
    // await act("auth", { boid_id, actions, sig: sig3, keyIndex: 0 }, "worker@active")
  })
  it("reject too many actions", async() => {
    // try to an action that is not whitelisted controls another account
    addRounds(1)
    const claimPower = Action.from({
      account: Name.from("boid"),
      authorization: [PermissionLevel.from("boid@active")],
      name: "power.claim",
      data: { boid_id }
    }, contract.abi)
    const setConfig = Action.from({
      account: Name.from("boid"),
      authorization: [PermissionLevel.from("boid@active")],
      name: "config.set",
      data: { config: defaultConfig }
    }, contract.abi)
    const unstake = Action.from({
      account: Name.from("boid"),
      authorization: [PermissionLevel.from("boid@active")],
      name: "unstake.init",
      data: { boid_id, quantity: 1 }
    }, contract.abi)
    const actions = [claimPower, unstake, unstake, unstake]
    const sig3 = signActions(privKey, actions, account(boid_id).auth.nonce)
    await expectToThrow(
      act("auth", { boid_id, actions, sig: sig3, keyIndex: 0 }, "worker@active"),
      "eosio_assert: maximum inline actions for key trx")
  })
})
