/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { Name, UInt64 } from "@greymass/eosio"
import { expectToThrow } from "@proton/vert"
import { expect } from "chai"
import { beforeEach, describe, it } from "mocha"
import { act, addRounds, boid_id, chain, getReportId, init, oracles, setupOracle, tkn } from "./util.js"
import {config} from "./lib/config.js"


const report = { protocol_id: 0, round: 10, units: 100 }

beforeEach(async () => {
  chain.resetTables()
  await init()
})
describe("oracle", async() => {
  describe("oracldeposit", async() => {
    it("Success", async() => {
      setupOracle("oracle1")
      await act("oracleset", { oracle: "oracle1", weight: 0, adding_collateral:0 })
      await act("oracldeposit", { oracle: "oracle1", depositQuantity: 10 })
    })
    describe("validate oracldeposit checks", async() => {
      it("Deposit must be greater than zero", async() => {
        await expectToThrow(
            act("oracldeposit", { oracle: "oracle1", depositQuantity: 0 }),
            "eosio_assert: deposit must be greater than zero")
      })
      it("Oracle doesn't exist", async() => {
        await expectToThrow(
            act("oracldeposit", { oracle: "oracle1", depositQuantity: 10 }),
            "eosio_assert: oracle doesn't exist")
      })
      it("Can't deposit funds into an oracle that is unlocking", async() => {
        await setupOracle("oracle1")
        addRounds(21)
        await act("setstandby", { oracle: "oracle1", standby: true })
        await act("unlockinit", { oracle: "oracle1" }, "oracle1")
        await expectToThrow(
          act("unlock", { oracle: "oracle1" }),
          "eosio_assert: unlock is still under progress"
        )
        addRounds(40)
        await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "10000000.0000 BOID", memo: "" })
        await expectToThrow(
          tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "1000000.0000 BOID", memo: "collateral" }, "oracle1"),
          "eosio_assert: can't deposit funds into an oracle that is unlocking"
        )
      })
      it("Collateral locked max reached", async() => {
        chain.createAccount("oracle1")

        await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "5000000000.0000 BOID", memo: "" })
        await expectToThrow(
          tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "5000000000.0000 BOID", memo: "collateral" }, "oracle1"),
          "eosio_assert: max deposit collateral amount reached")

        await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "5000000000.0000 BOID", memo: "" })
        await tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "4000000000.0000 BOID", memo: "collateral" }, "oracle1")
        await expectToThrow(
          tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "1000000000.0000 BOID", memo: "collateral" }, "oracle1"),
          "eosio_assert: collateral locked max reached")
      })
      it("Max standy_oracles reached", async() => {
        let oracle = ""
        for(let i=0; i < 255; i++) {
          oracle = new Name(UInt64.random()).toString()
          await setupOracle(oracle, "16000000.0000 BOID", 1, true)
        }
        oracle = new Name(UInt64.random()).toString()
        await expectToThrow(
          setupOracle(oracle, "16000000.0000 BOID", 1, true),
          "eosio_assert: max standy_oracles reached")
      }).timeout(8000)
    })
  })
  describe("withdrawinit", async() => {
    it("Success", async() => {
      await setupOracle("oracle1")
      await setupOracle("oracle2")
      await setupOracle("oracle3")
      await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })

      addRounds(16)
      report.round = 15
      await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report }, "oracle1")
      await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: report }, "oracle2")
      await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: report }, "oracle3")
      addRounds(1)
      await act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) })
      addRounds(3)
      await act("payoutround", { oracle: "oracle1", round: 15 })
      const unclaimed = oracles()[0].funds.unclaimed

      await act("withdrawinit", { oracle: "oracle1" }, "oracle1")
      expect(oracles()[0].funds.withdrawing).eq(unclaimed)
      expect(oracles()[0].funds.withdrawable_after_round).eq(20 + config.waits.withdraw_rounds_wait)
    })
    describe("validate withdrawinit checks", async() => {
      it("Missing required authority", async() => {
        await expectToThrow(
            act("withdrawinit", { oracle: "oracle1" }),
            "missing required authority oracle1")
      })
      it("Currently withdrawing, must wait for current withdraw to finish.", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        await setupOracle("oracle3")
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
        addRounds(16)
        report.round = 15
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: report }, "oracle2")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: report }, "oracle3")
        addRounds(1)
        await act("roundstats")
        await act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) })
        addRounds(3)
        await act("payoutround", { oracle: "oracle1", round: 15 })
        const unclaimed = oracles()[0].funds.unclaimed

        await act("withdrawinit", { oracle: "oracle1" }, "oracle1")
        expect(oracles()[0].funds.withdrawing).eq(unclaimed)
        expect(oracles()[0].funds.withdrawable_after_round).eq(config.waits.withdraw_rounds_wait+20)
        addRounds(5)
        await expectToThrow(
          act("withdrawinit", { oracle: "oracle1" }, "oracle1"),
          "eosio_assert: currently withdrawing, must wait for current withdraw to finish."
        )
      })
      it("Unclaimed funds must be greater than zero", async() => {
        await setupOracle("oracle1")
        await expectToThrow(
            act("withdrawinit", { oracle: "oracle1" }, "oracle1"),
            "eosio_assert: unclaimed funds must be greater than zero")
      })
    })
  })
  describe("withdraw", async() => {
    it("Success", async() => {
      await setupOracle("oracle1")
      await setupOracle("oracle2")
      await setupOracle("oracle3")
      await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
      addRounds(16)
      report.round = 15
      await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report }, "oracle1")
      await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: report }, "oracle2")
      await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: report }, "oracle3")
      addRounds(1)
      await act("roundstats")
      await act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) })
      addRounds(3)
      await act("payoutround", { oracle: "oracle1", round: 15 })

      await act("withdrawinit", { oracle: "oracle1" }, "oracle1")
      await expectToThrow(
        act("withdraw", { oracle: "oracle1" }, "oracle1"),
        "eosio_assert: can't withdraw funds yet"
      )
      const withdrawing = oracles()[0].funds.withdrawing
      addRounds(40)
      await act("withdraw", { oracle: "oracle1" }, "oracle1")
      expect(oracles()[0].funds.withdrawing).eq(0)
      expect(oracles()[0].funds.claimed).eq(withdrawing)
      expect(oracles()[0].funds.withdrawable_after_round).eq(0)
      await expectToThrow(
        act("withdrawinit", { oracle: "oracle1" }, "oracle1"),
        "eosio_assert: unclaimed funds must be greater than zero"
      )
      // console.log(oracles()[0])
    })
    describe("validate withdraw checks", async() => {
      it("Oracle doesn't exist", async() => {
        await expectToThrow(
          act("withdraw", { oracle: "oracle1" }),
          "eosio_assert: oracle doesn't exist")
      })
      it("Call withdrawinit first", async() => {
        await setupOracle("oracle1")
        await expectToThrow(
          act("withdraw", { oracle: "oracle1" }),
          "eosio_assert: call withdrawinit first")
      })
      it("Can't withdraw funds yet", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        await setupOracle("oracle3")
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
        addRounds(16)
        report.round = 15
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: report }, "oracle2")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: report }, "oracle3")
        addRounds(1)
        await act("roundstats")
        await act("finishreport", { boid_id_scope: boid_id, pwrreport_id:  getReportId(report) })
        addRounds(3)
        await act("payoutround", { oracle: "oracle1", round: 15 })
        await act("withdrawinit", { oracle: "oracle1" }, "oracle1")
        await expectToThrow(
          act("withdraw", { oracle: "oracle1" }, "oracle1"),
          "eosio_assert: can't withdraw funds yet"
        )
      })
    })
  })
  describe("unlockinit", async() => {
    it("Success", async() => {
      await setupOracle("oracle1")
      await setupOracle("oracle2")
      const oracle = oracles()[0]
      const validCollateral = oracle.collateral.locked - oracle.collateral.slashed
      addRounds(21)
      await act("setstandby", { oracle: "oracle1", standby: true })
      await act("unlockinit", { oracle: "oracle1" }, "oracle1")
      expect(oracles()[0].collateral.unlocking).eq(validCollateral)
      await expectToThrow(
        act("unlockinit", { oracle: "oracle2" }, "oracle2"),
        "eosio_assert: oracle must be in standby to be unlocked"
      )
      await act("setstandby", { oracle: "oracle2", standby: true })
      await act("unlockinit", { oracle: "oracle2" }, "oracle2")
    })
    describe("validate unlockinit checks", async() => {
      it("Oracle doesn't exist", async() => {
        await expectToThrow(
            act("unlockinit", { oracle: "oracle1" }),
            "eosio_assert: oracle doesn't exist")
      })
      it("Can't start unlock yet", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        await act("setstandby", { oracle: "oracle1", standby: true })
        await expectToThrow(
          act("unlockinit", { oracle: "oracle1" }, "oracle1"),
          "eosio_assert: can't start unlock yet"
        )
      })
      it("Account is already unlocking, must wait for existing unlock to finish", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        addRounds(21)
        const oracle = oracles()[0]
        const validCollateral = oracle.collateral.locked - oracle.collateral.slashed
        await act("setstandby", { oracle: "oracle1", standby: true })
        await act("unlockinit", { oracle: "oracle1" }, "oracle1")
        expect(oracles()[0].collateral.unlocking).eq(validCollateral)
        await expectToThrow(
          act("unlockinit", { oracle: "oracle1" }, "oracle1"),
          "eosio_assert: account is already unlocking, must wait for existing unlock to finish"
        )
      })
      it("Oracle still has rows in the oraclestats table, must wait for rows to be cleared", async() => {
        await setupOracle("oracle1")
        addRounds(16)
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
        addRounds(10)
        await act("setstandby", { oracle: "oracle1", standby: true })
        await expectToThrow(
          act("unlockinit", { oracle: "oracle1" }, "oracle1"),
          "eosio_assert: oracle still has rows in the oraclestats table, must wait for rows to be cleared"
        )
      })
      it("Oracle must be in standby to be unlocked", async() => {
        await setupOracle("oracle1", "10000000.0000 BOID", 1,false)
        addRounds(40)
        await expectToThrow(
          act("unlockinit", { oracle: "oracle1" }, "oracle1"),
          "eosio_assert: oracle must be in standby to be unlocked"
        )
      })
      it("No valid collateral to unlock (locked - slashed)", async() => {
        await setupOracle("oracle1", "10000000.0000 BOID", 1,false)
        addRounds(40)
        await act("setstandby", { oracle: "oracle1", standby: true })
        await act("unlockinit", { oracle: "oracle1" }, "oracle1")
        addRounds(40)
        await act("unlock", { oracle: "oracle1" })
        await expectToThrow(
          act("unlockinit", { oracle: "oracle1" }, "oracle1"),
          "eosio_assert: no valid collateral to unlock (locked - slashed)"
        )
      })
    })
  })
  describe("unlock", async() => {
    it("Success", async() => {
      await setupOracle("oracle1")
      addRounds(21)
      await act("setstandby", { oracle: "oracle1", standby: true })
      await act("unlockinit", { oracle: "oracle1" }, "oracle1")
      await expectToThrow(
        act("unlock", { oracle: "oracle1" }),
        "eosio_assert: unlock is still under progress"
      )
      addRounds(40)
      await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "10000000.0000 BOID", memo: "" })
      await expectToThrow(
        tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "1000000.0000 BOID", memo: "collateral" }, "oracle1"),
        "eosio_assert: can't deposit funds into an oracle that is unlocking"
      )
      await act("unlock", { oracle: "oracle1" })
      expect(oracles()[0].collateral.locked).eq(0)
      await tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "10000000.0000 BOID", memo: "collateral" }, "oracle1")
    })
    describe("validate unlock checks", async() => {
      it("Oracle doesn't exist", async() => {
        await expectToThrow(
            act("unlock", { oracle: "oracle1" }),
            "eosio_assert: oracle doesn't exist")
      })
      it("Unlock is still under progress", async() => {
        await setupOracle("oracle1")
        addRounds(21)
        await act("setstandby", { oracle: "oracle1", standby: true })
        await act("unlockinit", { oracle: "oracle1" }, "oracle1")
        await expectToThrow(
          act("unlock", { oracle: "oracle1" }),
          "eosio_assert: unlock is still under progress"
        )
      })
      it("not currently unlocking any funds", async() => {
        await setupOracle("oracle1")
        await expectToThrow(
          act("unlock", { oracle: "oracle1" }),
          "eosio_assert: not currently unlocking any funds"
        )
      })
    })
  })
})
