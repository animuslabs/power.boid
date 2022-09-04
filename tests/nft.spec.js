/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Action, Asset, Name, PermissionLevel, PrivateKey, Serializer, TimePoint, UInt32 } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt, wait } from "@proton/vert"
import { chain, accounts, addRounds, currentRound, depositTokens, setupAccountOwner, defaultConfig, contract, stakes, token, roundStartTime, init, teams, decayPower, totalPayout, teamContribution, teamOwnerCut, act, pwrmods, findMultipliedPower, findSponsorCut, boid_id, owners, sponsors, signActions, setupNfts, aa, assets, nfts, validateGlobals, account } from "./util.js"

afterEach(() => {
  expect(validateGlobals()).eq(true)
})

describe("nft", () => {
  it("receive", async() => {
    await init()
    await setupNfts()
    await aa.actions.transfer({
      from: "nft.boid",
      to: "boid",
      memo: "boid_id=testaccount",
      asset_ids: [assets("nft.boid")[0].asset_id]
    }).send("nft.boid@active")
    expect(nfts(boid_id).length).eq(1)
    await aa.actions.transfer({
      from: "nft.boid",
      to: "boid",
      memo: "boid_id=testaccount",
      asset_ids: [assets("nft.boid")[0].asset_id]
    }).send("nft.boid@active")
    expect(nfts(boid_id).length).eq(2)
  })
  it("only boid nfts", async() => {
    await expectToThrow(
      aa.actions.transfer({
        from: "nft.boid",
        to: "boid",
        memo: "boid_id=testaccount",
        asset_ids: [assets("nft.boid")[0].asset_id]
      }).send("nft.boid@active"),
      "eosio_assert: can only deposit boid nfts")
    expect(nfts(boid_id).length).eq(2)
  })
  it("receive mint", async() => {
    await act("nft.receiver", { boid_id, mint_quantity: 2 })
    expect(contract.tables.nftmint().getTableRows()[0].mint_receiver_boid_id).eq(boid_id)
    expect(contract.tables.nftmint().getTableRows()[0].mint_quantity_remaining).eq(2)
    await aa.actions.mintasset({
      authorized_minter: "nft.boid",
      collection_name: "nft.boid",
      schema_name: "testschema",
      template_id: -1,
      new_asset_owner: "boid",
      immutable_data: [{ key: "name", value: "mintTest" }],
      mutable_data: [],
      tokens_to_back: []
    }).send("nft.boid@active")
    expect(contract.tables.nftmint().getTableRows()[0].mint_receiver_boid_id).eq(boid_id)
    expect(contract.tables.nftmint().getTableRows()[0].mint_quantity_remaining).eq(1)
    await aa.actions.mintasset({
      authorized_minter: "nft.boid",
      collection_name: "nft.boid",
      schema_name: "testschema",
      template_id: -1,
      new_asset_owner: "boid",
      immutable_data: [{ key: "name", value: "mintTest" }],
      mutable_data: [],
      tokens_to_back: []
    }).send("nft.boid@active")
    expect(contract.tables.nftmint().getTableRows()[0]).eq(undefined)
  })
  it("mint receiver", async() => {
    await expectToThrow(
      aa.actions.mintasset({
        authorized_minter: "nft.boid",
        collection_name: "nft.boid",
        schema_name: "testschema",
        template_id: -1,
        new_asset_owner: "boid",
        immutable_data: [{ key: "name", value: "mintTest" }],
        mutable_data: [],
        tokens_to_back: []
      }).send("nft.boid@active"),
      "eosio_assert: nft mint receiver must be set first"
    )
    await act("nft.receiver", { boid_id, mint_quantity: 2 })
    await aa.actions.mintasset({
      authorized_minter: "nft.boid",
      collection_name: "nft.boid",
      schema_name: "testschema",
      template_id: -1,
      new_asset_owner: "boid",
      immutable_data: [{ key: "name", value: "mintTest" }],
      mutable_data: [],
      tokens_to_back: []
    }).send("nft.boid@active")
  })
  it("max account nfts reached", async() => {
    await expectToThrow(
      aa.actions.mintasset({
        authorized_minter: "nft.boid",
        collection_name: "nft.boid",
        schema_name: "testschema",
        template_id: -1,
        new_asset_owner: "boid",
        immutable_data: [{ key: "name", value: "mintTest" }],
        mutable_data: [],
        tokens_to_back: []
      }).send("nft.boid@active"),
      "eosio_assert: maximum NFTs reached for this Boid ID")
  })
  it("xfer", async() => {
    addRounds(10)
    expect(nfts(boid_id).length).eq(5)
    expect(account(boid_id).nft_balance).eq(5)
    expect(nfts("boid").length).eq(0)
    expect(accounts()[0].nft_balance).eq(0)
    await act("nft.xfer", { from_boid_id: boid_id, to_boid_id: "boid", asset_ids: [nfts(boid_id)[0].asset_id] }, "newowner@active")
    expect(nfts(boid_id).length).eq(4)
    expect(account(boid_id).nft_balance).eq(4)
    expect(nfts("boid").length).eq(1)
    expect(accounts()[0].nft_balance).eq(1)
    await act("nft.xfer", { from_boid_id: boid_id, to_boid_id: "boid", asset_ids: [nfts(boid_id)[0].asset_id] }, "newowner@active")
    expect(nfts(boid_id).length).eq(3)
    expect(account(boid_id).nft_balance).eq(3)
    expect(nfts("boid").length).eq(2)
    expect(accounts()[0].nft_balance).eq(2)
    await act("nft.xfer", { from_boid_id: boid_id, to_boid_id: "boid", asset_ids: [nfts(boid_id)[0].asset_id] }, "newowner@active")
    expect(nfts(boid_id).length).eq(2)
    expect(account(boid_id).nft_balance).eq(2)
    expect(nfts("boid").length).eq(3)
    expect(accounts()[0].nft_balance).eq(3)
    const asset_ids = nfts("boid").map(el => el.asset_id)
    await act("nft.xfer", { from_boid_id: "boid", to_boid_id: boid_id, asset_ids }, "boid@active")
    expect(nfts(boid_id).length).eq(5)
    expect(account(boid_id).nft_balance).eq(5)
    expect(nfts("boid").length).eq(0)
    expect(accounts()[0].nft_balance).eq(0)
  })
  it("withdraw", async() => {
    await act("nft.withdraw", { boid_id, asset_ids: nfts(boid_id).map(el => el.asset_id), to: "newowner" }, "newowner@active")
    expect(nfts(boid_id).length).eq(0)
    expect(account(boid_id).nft_balance).eq(0)
    expect(assets("newowner").length).eq(5)
    expectToThrow(
      act("nft.withdraw", { boid_id, asset_ids: nfts(boid_id).map(el => el.asset_id), to: "boid" }, "newowner@active"),
      "Error: missing required authority boid"
    )
    expectToThrow(
      act("nft.withdraw", { boid_id, asset_ids: [545435343], to: "boid" }, "newowner@active"),
      "eosio_assert: nft not owned by this boid_id"
    )
  })
  it("nft.lock", async() => {
    addRounds(10)
    await aa.actions.transfer({
      from: "newowner",
      to: "boid",
      memo: "boid_id=testaccount",
      asset_ids: [assets("newowner")[0].asset_id]
    }).send("newowner@active")
    expect(nfts(boid_id).length).eq(1)
    expect(assets("newowner").length).eq(4)
    const lockUntil = currentRound() + 100
    const asset = nfts(boid_id)[0].asset_id
    await act("nft.lock", { boid_id, asset_id: asset, locked_until_round: lockUntil })
    expect(nfts(boid_id)[0].locked_until_round).eq(lockUntil)
    addRounds(10)
    await expectToThrow(
      act("nft.withdraw", { boid_id, asset_ids: [asset], to: "newowner" }, "newowner@active"),
      "eosio_assert: nft is locked and can't be transferred"
    )
    addRounds(10)
    await expectToThrow(
      act("nft.withdraw", { boid_id, asset_ids: [asset], to: "newowner" }, "newowner@active"),
      "eosio_assert: nft is locked and can't be transferred"
    )
    addRounds(10)
    await expectToThrow(
      act("nft.lock", { boid_id, asset_id: asset, locked_until_round: currentRound() }, "boid@active"),
      "eosio_assert: locked_until_round must be a round in the future"
    )
    addRounds(10)
    await expectToThrow(
      act("nft.lock", { boid_id, asset_id: asset, locked_until_round: lockUntil }, "boid@active"),
      "eosio_assert: can't lock an NFT which is already locked"
    )
    addRounds(100)
    await act("nft.withdraw", { boid_id, asset_ids: [asset], to: "newowner" }, "newowner@active")
    expect(nfts(boid_id).length).eq(0)
    expect(account(boid_id).nft_balance).eq(0)
    expect(assets("newowner").length).eq(5)
  })
})
