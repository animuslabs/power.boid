/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expectToThrow } from "@proton/vert"
import { expect } from "chai"
import { beforeEach, describe, it } from "mocha"
import { act, addRounds, boid_id, chain, global, init, oracle, setupOracle, tkn } from "./util.js"

const report = { protocol_id: 0, round: 10, units: 100 }
const report2 = { protocol_id: 0, round: 11, units: 100 }
const report3 = { protocol_id: 0, round: 12, units: 100 }

beforeEach(async () => {
  chain.resetTables()
  await init()
})

describe("slash", async() => {
  describe("slashabsent", async() => {
    it("Success", async() => {
      await setupOracle("oracle1")
      await setupOracle("oracle2")
      await setupOracle("oracle3")
      await setupOracle("oracle4")
      await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
      addRounds(16)
      const goodReport = { round: 15, units: 100, protocol_id: 0 }
      await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
      await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
      await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
      addRounds(1)
      goodReport.round = 16
      await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
      await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
      await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
      addRounds(3)
      await act("slashlow", { oracle: "oracle4", round: 16 })
      // console.log(oracles()[1])
      // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
    })
    describe("validate slashabsent checks", async() => {
      it("Oracle not found", async() => {
        await expectToThrow(
          act("slashabsent", { oracle: "oracle1", round: 1 }),
          "eosio_assert: oracle not found")
      })
      it("Stats row missing", async() => {
        await setupOracle("oracle1")
        await expectToThrow(
          act("slashabsent", { oracle: "oracle1", round: 1 }),
          "eosio_assert: stats row missing")
      })
      it("Oracle was not expected to be active this round", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        await act("setstandby", { oracle: "oracle2", standby: true })
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
        addRounds(16)
        const goodReport = { round: 15, units: 100, protocol_id: 0 }
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        addRounds(3)
        await expectToThrow(
          act("slashabsent", { oracle: "oracle2", round: 15 }),
          "eosio_assert: oracle was not expected to be active this round")
      })
      it("Oracle was active this round", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
        // report at end of round 15 (n+1)
        addRounds(16)
        const goodReport = { round: 15, units: 100, protocol_id: 0 }
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
        // report next round
        addRounds(1)
        goodReport.round = 16
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
        // add enough rounds to pass finalized rounds
        addRounds(3)
        await expectToThrow(
          act("slashabsent", { oracle: "oracle2", round: 16 }),
          "eosio_assert: oracle was active this round")
      })
      it("Oracle is in standby, can't be slashed for inactivity", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        await setupOracle("oracle3")
        await setupOracle("oracle4")
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
        // report at end of round 15 (n+1)
        addRounds(16)
        const goodReport = { round: 15, units: 100, protocol_id: 0 }
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
        addRounds(1)
        goodReport.round = 16
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
        await act("setstandby", { oracle: "oracle4", standby: true })

        await expectToThrow(
          act("slashabsent", { oracle: "oracle4", round: 16 }),
          "eosio_assert: oracle is in standby, can't be slashed for inactivity")
      })
      it("Oracle is not expected to be active this round", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        await setupOracle("oracle3")
        await setupOracle("oracle4")
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
        // report at end of round 15 (n+1)
        addRounds(16)
        const goodReport = { round: 15, units: 100, protocol_id: 0 }
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
        addRounds(1)
        goodReport.round = 16
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
        await act("setstandby", { oracle: "oracle4", standby: true })
        await act("setstandby", { oracle: "oracle4", standby: false })
        addRounds(3)
        await expectToThrow(
          act("slashabsent", { oracle: "oracle4", round: 16 }),
          "eosio_assert: oracle is not expected to be active this round")
      })
      it("Invalid round specified, must be before the finalized round", async() => {
        await setupOracle("oracle1")
        await setupOracle("oracle2")
        await setupOracle("oracle3")
        await setupOracle("oracle4")
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
        // report at end of round 15 (n+1)
        addRounds(16)
        const goodReport = { round: 15, units: 100, protocol_id: 0 }
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
        addRounds(1)
        goodReport.round = 16
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
        await expectToThrow(
          act("slashabsent", { oracle: "oracle4", round: 16 }),
          "eosio_assert: invalid round specified, must be before the finalized round: 14")
      })
    })
  })
  describe("slashoracle", async() => {
    it("Success", async () => {
      await setupOracle("oracle1")
      await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
      expect(oracle("oracle1").weight).eq(12)
      expect(global().expected_active_weight).eq(12)
      await act("slashoracle", { oracle: "oracle1", quantity: 6000000 })
      expect(oracle("oracle1").weight).eq(4)
      expect(global().expected_active_weight).eq(4)

    })
    describe("validate slashoracle checks", async() => {
      it("Oracle doesn't exist", async() => {
        await expectToThrow(
          act("slashoracle", { oracle: "oracle1", quantity: 10 }),
          "eosio_assert: oracle doesn't exist")
      })
      it("Can't slash an oracle in standby", async() => {
        await setupOracle("oracle1")
        await act("setstandby", { oracle: "oracle1", standby: true })
        await expectToThrow(
          act("slashoracle", { oracle: "oracle1", quantity: 10 }),
          "eosio_assert: can't slash an oracle in standby")
      })
      it("Quantity must be higher than zero", async() => {
        await setupOracle("oracle1")
        await expectToThrow(
          act("slashoracle", { oracle: "oracle1", quantity: 0 }),
          "eosio_assert: quantity must be higher than zero")
      })
      it("Max collateral slashed reached", async() => {
        chain.createAccount("oracle1")
        await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "4294967295.0000 BOID", memo: "" })
        await tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "4000000000.0000 BOID", memo: "collateral" }, "oracle1")
        await act("setstandby", { oracle: "oracle1", standby: false })
        await act("slashoracle", { oracle: "oracle1", quantity: 3000000000 })
        await expectToThrow(
          act("slashoracle", { oracle: "oracle1", quantity: 1294967297 }),
          "eosio_assert: max collateral slashed reached")
      })
    })
  })
})
