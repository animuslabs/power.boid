// @ts-nocheck
/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Action, Asset, Name, PermissionLevel, PrivateKey, Serializer, TimePoint, UInt32 } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt, wait } from "@proton/vert"
import { validateGlobals, chain, global, accounts, account, addRounds, currentRound, depositTokens, setupAccountOwner, defaultConfig, contract, stakes, token, roundStartTime, init, teams, decayPower, totalPayout, teamContribution, teamOwnerCut, act, pwrmods, findMultipliedPower, findSponsorCut, boid_id, owners, sponsors, signActions, setupNfts, aa, assets, nfts, offers } from "./util.js"
import atomic from "atomicassets"

const { deserialize, serialize, ObjectSchema, Uint8Array } = atomic
const offer1 = {
  requirements: { team_id: [], min_power: 0, min_balance: 0, min_stake: 0, min_cumulative_team_contribution: 0 },
  actions: { delegated_stake: 1, stake_locked_additional_rounds: 100, nft_actions: [], balance_payment: 0 },
  rewards: { nft_mints: [], balance_deposit: 5000, delegated_stake: 0, stake_locked_additional_rounds: 0, activate_powermod_ids: [] },
  limits: { offer_quantity_remaining: 1, available_until_round: 65000 }
}
const offer2 = {
  requirements: { team_id: [], min_power: 100, min_balance: 10000, min_stake: 2000, min_cumulative_team_contribution: 100 },
  actions: { delegated_stake: 0, stake_locked_additional_rounds: 0, nft_actions: [], balance_payment: 100 },
  rewards: { nft_mints: [], balance_deposit: 0, delegated_stake: 1, stake_locked_additional_rounds: 50, activate_powermod_ids: [] },
  limits: { offer_quantity_remaining: 2, available_until_round: 65000 }
}
const offer3 = {
  requirements: { team_id: [], min_power: 100, min_balance: 1000, min_stake: 10000, min_cumulative_team_contribution: 100 },
  actions: { delegated_stake: 0, stake_locked_additional_rounds: 100, nft_actions: [], balance_payment: 0 },
  rewards: { nft_mints: [], balance_deposit: 5000, delegated_stake: 0, stake_locked_additional_rounds: 0, activate_powermod_ids: [] },
  limits: { offer_quantity_remaining: 1, available_until_round: 65000 }
}
const offer4 = {
  requirements: { team_id: [], min_power: 100, min_balance: 1000, min_stake: 10000, min_cumulative_team_contribution: 100 },
  actions: { delegated_stake: 1, stake_locked_additional_rounds: 100, nft_actions: [], balance_payment: 0 },
  rewards: { nft_mints: [], balance_deposit: 5000, delegated_stake: 0, stake_locked_additional_rounds: 0, activate_powermod_ids: [] },
  limits: { offer_quantity_remaining: 1, available_until_round: 65000 }
}

const testTemp = {
  authorized_creator: "nft.boid",
  collection_name: "nft.boid",
  schema_name: "testschema",
  transferable: true,
  burnable: true,
  max_supply: 10000,
  immutable_data: [{ key: "name", value: "sauce" }]
}
const mintAsset = {
  authorized_minter: "nft.boid",
  collection_name: "nft.boid",
  schema_name: "testschema",
  template_id: 1,
  new_asset_owner: "nft.boid",
  immutable_data: [],
  mutable_data: [],
  tokens_to_back: []
}

const nftTransfer = () => ({
  from: "nft.boid",
  to: "boid",
  memo: "boid_id=" + boid_id,
  asset_ids: [assets("nft.boid")[0].asset_id]
})

async function checkGlobals() {
  const usrs = accounts()
  // console.log("users:", usrs.length)
  const totalBal = usrs.reduce((prev, curr) => prev + curr.balance, 0)
  // console.log("totalbal:", totalBal)
  const glob = global()
  // console.log(glob)
}

afterEach(() => {
  expect(validateGlobals()).eq(true)
})

describe("offers", () => {
  it("add", async() => {
    await init()
    expect(offers().length).eq(0)
    await act("offer.add", offer1)
    expect(offers().length).eq(1)
    checkGlobals()
    const glob = global()
    // console.log(glob)
    return
  })
  it("ensure valid add", async() => {
    let invalidOffer = JSON.parse(JSON.stringify(offer1))
    invalidOffer.limits.available_until_round = 0
    await expectToThrow(
      act("offer.add", invalidOffer),
      "eosio_assert: limits.available_until_round must be a round in the future")
    invalidOffer.limits.available_until_round = 60000
    // @ts-ignore
    invalidOffer.rewards.activate_powermod_ids = [0]
    await expectToThrow(
      act("offer.add", invalidOffer),
      "eosio_assert: rewards pwrmod_id invalid")
  })
  describe("claim offers", () => {
    it("claim offer1", async() => {
      await act("power.add", { boid_id, power: 10000 })
      await act("power.add", { boid_id: "teamownr", power: 10000 })
      addRounds(20)
      await act("power.claim", { boid_id })
      await act("power.claim", { boid_id: "teamownr" })
      addRounds(20)
      await act("power.claim", { boid_id })
      await act("power.claim", { boid_id: "teamownr" })
      // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
      addRounds(20)
      await act("power.claim", { boid_id })
      await act("power.claim", { boid_id: "teamownr" })
      const boidBal = account("boid").balance
      await act("stake", { boid_id, quantity: 8000 })
      await act("offer.claim", { boid_id, offer_id: 0, required_nft_action_ids: [] }, "newowner@active")
      expect(account("boid").balance).eq(boidBal - offer1.rewards.balance_deposit)
      expect(stakes()[0].stake_quantity).eq(offer1.actions.delegated_stake)
      expect(offers()[0].limits.offer_quantity_remaining).eq(0)
      expect(offers()[0].total_claimed).eq(1)
      await expectToThrow(
        act("offer.claim", { boid_id, offer_id: 0, required_nft_action_ids: [] }, "newowner@active"),
        "eosio_assert: no offers remaining for this offer_id")
    })
    it("claim offer2", async() => {
      // console.log(account(boid_id))
      await act("offer.add", offer2)
      await act("power.add", { boid_id, power: 1000 })
      addRounds(10)
      await token.actions.transfer({ from: Name.from("newowner"), to: Name.from("boid"), quantity: "20000.0000 BOID", memo: "deposit boid_id=testaccount" }).send("newowner@active")
      await act("power.claim", { boid_id })
      const bal = account(boid_id).balance
      const delStake = account(boid_id).stake.received_delegated_stake
      await act("offer.claim", { boid_id, offer_id: 1, required_nft_action_ids: [] }, "newowner@active")
      expect(account(boid_id).balance).eq(bal - offer2.actions.balance_payment)
      expect(account(boid_id).stake.received_delegated_stake).eq(delStake + offer2.rewards.delegated_stake)

      // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.parse(JSON.stringify(el.decodedData))]))
      offer2.requirements.min_balance = 100000
      await act("offer.add", offer2)
      await expectToThrow(
        act("offer.claim", { boid_id, offer_id: 2, required_nft_action_ids: [] }, "newowner@active"),
        "eosio_assert: minimum balance requirement not met to claim this offer")
      offer2.requirements.min_balance = 0
      offer2.requirements.min_power = 20000
      await act("offer.add", offer2)
      await expectToThrow(
        act("offer.claim", { boid_id, offer_id: 3, required_nft_action_ids: [] }, "newowner@active"),
        "eosio_assert: account power is below min_power requirement")
      offer2.requirements.min_power = 0
      offer2.requirements.min_stake = 201000
      await act("offer.add", offer2)
      await expectToThrow(
        act("offer.claim", { boid_id, offer_id: 4, required_nft_action_ids: [] }, "newowner@active"),
        "eosio_assert: account total stake is below the offer min_stake requirement")
      offer2.requirements.min_stake = 0
      offer2.requirements.min_cumulative_team_contribution = 100000
      await act("offer.add", offer2)
      await expectToThrow(
        act("offer.claim", { boid_id, offer_id: 5, required_nft_action_ids: [] }, "newowner@active"),
        "eosio_assert: team_cumulative_contribution is below the minimum requirement to claim this offer")
      offer2.requirements.min_cumulative_team_contribution = 0
      await act("offer.add", offer2)
      await act("offer.claim", { boid_id, offer_id: 6, required_nft_action_ids: [] }, "newowner@active")
      await act("offer.claim", { boid_id, offer_id: 6, required_nft_action_ids: [] }, "newowner@active")
      await expectToThrow(
        act("offer.claim", { boid_id, offer_id: 6, required_nft_action_ids: [] }, "newowner@active"),
        "eosio_assert: no offers remaining for this offer_id")
    })
    it("offer3 - lock nfts", async() => {
      await setupNfts()
      await aa.actions.createtempl(testTemp).send("nft.boid@active")
      await aa.actions.createtempl(testTemp).send("nft.boid@active")
      await aa.actions.mintasset(mintAsset).send("nft.boid@active")
      // console.log(assets("nft.boid"))
      await aa.actions.transfer(nftTransfer()).send("nft.boid@active")
      expect(nfts(boid_id).length).eq(1)
      offer3.actions.nft_actions.push({
        collection_name: "nft.boid",
        schema_name: "testschema",
        template_id: -1,
        match_immutable_attributes: [],
        match_mutable_attributes: [],
        burn: false,
        lock_rounds: 10
      })
      await act("offer.add", offer3)
      await act("offer.claim", { boid_id, offer_id: 7, required_nft_action_ids: [nfts(boid_id)[0].asset_id] }, "newowner@owner")
      expect(nfts(boid_id)[0].locked_until_round).eq(currentRound() + offer3.actions.nft_actions[0].lock_rounds)
      let transferData = nftTransfer()
      transferData.asset_ids = [assets("nft.boid")[2].asset_id]
      await aa.actions.transfer(transferData).send("nft.boid@active")
      offer3.actions.nft_actions = [{
        collection_name: "nft.boid",
        schema_name: "testschema",
        template_id: 1,
        match_immutable_attributes: [],
        match_mutable_attributes: [],
        burn: false,
        lock_rounds: 10
      }]
      await act("offer.add", offer3)
      await act("offer.claim", { boid_id, offer_id: 8, required_nft_action_ids: [nfts(boid_id)[1].asset_id] }, "newowner@owner")
      expect(nfts(boid_id)[1].locked_until_round).eq(currentRound() + offer3.actions.nft_actions[0].lock_rounds)
    })
    it("offer3 - advanced schema match", async() => {
      await aa.actions.createschema({
        authorized_creator: "nft.boid",
        collection_name: "nft.boid",
        schema_name: "testschema2",
        schema_format: [
          { name: "name", type: "string" },
          { name: "rarity", type: "uint8" }]
      }).send("nft.boid@active")
      mintAsset.schema_name = "testschema2"
      mintAsset.immutable_data = [
        { key: "name", value: "boom" },
        { key: "rarity", value: ["uint8", 9] }
      ]
      mintAsset.template_id = -1
      await aa.actions.mintasset(mintAsset).send("nft.boid@active")
      const xfer = nftTransfer()
      xfer.asset_ids = [assets("nft.boid")[2].asset_id]
      chain.clearConsole()
      addRounds(10)
      xfer.memo = "boid_id=testaccount"
      await aa.actions.transfer(xfer).send("nft.boid@active")
      offer3.actions.nft_actions = [{
        collection_name: "nft.boid",
        schema_name: "testschema2",
        template_id: -1,
        match_immutable_attributes: [
          { key: "name", value: "boom" },
          { key: "rarity", value: ["uint8", 9] }
        ],
        match_mutable_attributes: [],
        burn: true,
        lock_rounds: 0
      }]
      await act("offer.add", offer3)
      const numNfts = nfts(boid_id).length
      await act("offer.claim", { boid_id, offer_id: 9, required_nft_action_ids: [nfts(boid_id)[2].asset_id] }, "newowner@owner")
      expect(nfts(boid_id).length).eq(numNfts - 1)
    })

    it("offer3 - mint asset reward", async() => {
      offer3.rewards.nft_mints = [{
        mint_template_id: -1,
        mint_schema_name: "testschema2",
        mint_collection_name: "nft.boid",
        immutable_data: [
          { key: "name", value: "reward2" },
          { key: "rarity", value: ["uint8", 100] }
        ],
        mutable_data: [],
        quantity: 2
      }]
      offer3.actions.nft_actions = []
      await act("offer.add", offer3)
      let numNfts = nfts(boid_id).length
      await act("offer.claim", { boid_id, offer_id: 10, required_nft_action_ids: [] }, "newowner@owner").catch(err => {
        console.log(err.toString())
        console.log(chain.actionTraces.map(el => el.action.toString()))
      })
      expect(nfts(boid_id).length).eq(numNfts + 2)
      numNfts = nfts(boid_id).length
      const numAssets = assets("boid").length
      offer3.rewards.nft_mints = []
      offer3.actions.nft_actions = [{
        collection_name: "nft.boid",
        schema_name: "testschema2",
        template_id: -1,
        match_immutable_attributes: [
          { key: "name", value: "reward2" }
        ],
        match_mutable_attributes: [],
        burn: true,
        lock_rounds: 0
      }]
      await act("offer.add", offer3)
      await act("offer.claim", { boid_id, offer_id: 11, required_nft_action_ids: [nfts(boid_id)[3].asset_id] }, "newowner@owner")
      expect(nfts(boid_id).length).eq(numNfts - 1)
      expect(assets("boid").length).eq(numAssets - 1)
    })
  })
})
