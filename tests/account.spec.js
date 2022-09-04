/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { chain, accounts, addRounds, currentRound, depositTokens, setupAccountOwner, defaultConfig, contract, stakes, token, roundStartTime, init, teams, decayPower, totalPayout, teamContribution, teamOwnerCut, act, pwrmods, findMultipliedPower, findSponsorCut, boid_id, owners, sponsors, validateGlobals, account } from "./util.js"

beforeEach(async() => {
  chain.resetTables()
  await init()
})

afterEach(() => {
  expect(validateGlobals()).eq(true)
})

describe("account", () => {
  describe("account.add", () => {
    it("Success", async() => {
      expect(validateGlobals()).eq(true)
      const boid_account2 = Name.from("testaccount2")
      await contract.actions["account.add"]({ boid_id: boid_account2, owners, sponsors, keys: [] }).send()
      const rows = contract.tables.accounts().getTableRows()
      expect(rows.length).equals(5)
    })
    it("No Duplicates", async() => {
      await expectToThrow(
        contract.actions["account.add"]({ boid_id, owners, sponsors, keys: [] }).send(),
        "eosio_assert: account with this name already exists"
      )
    })
    describe("validate owner accounts", () => {
      it("At least one owner", async() => {
        await expectToThrow(
          contract.actions["account.add"]({ boid_id: "atleastone", owners: [], sponsors, keys: [] }).send(),
          "eosio_assert: account must have at least one owner"
        )
      })
      it("Owner accounts must exist", async() => {
        await expectToThrow(
          contract.actions["account.add"]({ boid_id: "mustexist", owners: [Name.from("noaccount")], sponsors, keys: [] }).send(),
          "eosio_assert: owner must be valid eosio account"
        )
      })
    })
  })
  describe("owner", () => {
    it("Add Owner", async() => {
      const rows = contract.tables.accounts().getTableRows()
      expect(rows[1].owners.length).to.equal(1)
    })
    it("Remove Owner", async() => {
      chain.createAccount("newowner2")
      await contract.actions["owner.add"]({ boid_id, owner: Name.from("newowner2") }).send("recover.boid@active")
      expect(account(boid_id).owners.length).to.equal(3)
      await contract.actions["owner.rm"]({ boid_id, owner: Name.from("newowner") }).send("recover.boid@active")
      expect(account(boid_id).owners.length).to.equal(2)
    })
    it("Can't add too many owners", async() => {
      const accounts = ["account1", "account2"]
      for (const account of accounts) {
        chain.createAccount(account)
        await contract.actions["owner.add"]({ boid_id, owner: Name.from(account) }).send("recover.boid@active")
      }
      const rows = contract.tables.accounts().getTableRows()
      // console.log(rows)
      chain.createAccount("account3")
      await expectToThrow(
        contract.actions["owner.add"]({ boid_id, owner: Name.from("account3") }).send("recover.boid@active"),
        "eosio_assert: max of 4 owners"
      )
    })
    it("Owner not listed", async() => {
      chain.createAccount("notaccount")
      await expectToThrow(
        contract.actions["owner.rm"]({ boid_id, owner: Name.from("notaccount") }).send("recover.boid@active"),
        "eosio_assert: can't find owner under this boid_id"
      )
    })
    it("Cant remove last owner", async() => {
      await act("owner.rm", { boid_id, owner: "newowner" }, "recover.boid@active")
      await expectToThrow(
        contract.actions["owner.rm"]({ boid_id, owner: Name.from("boid") }).send("recover.boid@active"),
        "eosio_assert: can't remove the last owner"
      )
    })
  })
})

describe("deposit", () => {
  it("deposit BOID", async() => {
    const deposits = contract.tables.deposits().getTableRows()
    // console.log(deposits)
    expect(deposits[0].boid_quantity).equals(1000000)
  })
})
describe("buy account", () => {
  it("success", async() => {
    const deposits = contract.tables.deposits().getTableRows()
    expect(deposits[0].boid_quantity).equals(1000000)
    chain.createAccount("boidowner")
    chain.createAccount("recover.boid")
    await contract.actions["account.buy"]({ boid_id: "purchase.oid", owners: ["boidowner"], sponsor: "sponsoracct", keys: [] }).send("sponsoracct@active")
  })
  it("insufficient balance", async() => {
    const deposits = contract.tables.deposits().getTableRows()

    expect(deposits[1].boid_quantity).equals(10000)
    chain.createAccount("boidowner")
    chain.createAccount("recover.boid")
    await contract.actions["account.buy"]({ boid_id: "purchase.oid", owners: ["boidowner"], sponsor: "sponsoracct", keys: [] }).send("sponsoracct@active")
    expectToThrow(
      contract.actions["account.buy"]({ boid_id: "purchase.oid", owners: ["boidowner"], sponsor: "sponsoracct", keys: [] }).send("sponsoracct@active")
      , "eosio_assert: sponsor boid_id has no BOID balance")
  })
})
