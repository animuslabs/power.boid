/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint, PrivateKey, PublicKey, Action, Bytes, ABI, ABIDecoder, Authority, PermissionLevel, UInt32, Serializer, TimePointSec } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { init, chain, act, oracles, global, contract, reports, boid, addRounds, tkn, config, wait, setupOracle, oracleStats, stats, logActions, getReportId, boid_id } from "./util.js"

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
      await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
      addRounds(16)
      const goodReport = { round: 15, units: 100, protocol_id: 0 }
      await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
      addRounds(3)
      await act("slashabsent", { oracle: "oracle2", round: 15 })
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
      // it("Oracle was active this round", async() => {
      //   await setupOracle("oracle1")
      //   await setupOracle("oracle2")
      //   await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
      //   addRounds(16)
      //   const goodReport = { round: 15, units: 100, protocol_id: 0 }
      //   await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
      //   await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: goodReport }, "oracle2")
      //   addRounds(3)
      //   await expectToThrow(
      //     act("slashabsent", { oracle: "oracle2", round: 15 }),
      //     "eosio_assert: oracle was active this round")
      // })
      
      // check(!global.active_oracles.includes(oracle), "oracle was active this round")
      // // verify that the oracle was absent in a round when they should be active
      // check(!oracleRow.standby, "oracle is in standby, can't be slashed for inactivity")
      // check(oracleRow.expected_active_after_round < round, "oracle is not expected to be active this round")
      // const finalizedRound = this.currentRound() - config.reports_finalized_after_rounds
      // check(round < finalizedRound, "invalid round specified, must be before the finalized round: " + finalizedRound.toString())
      // // finally, if the row doesn't exist, send the slash action
      // if (oStatsRow) check(false, "stats row exists for this oracle on this round, no slashing needed")
    })
  })
  describe("slashmulti", async() => {
    it("Success", async() => {
      await setupOracle("oracle1")
      await setupOracle("oracle2")
      await setupOracle("oracle3")
      await setupOracle("oracle4")
      await setupOracle("oracle5")    
      await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
      addRounds(16)
      // await act("thisround")
      const goodReport = { round: 15, units: 100, protocol_id: 0 }
      const badReport = { round: 15, units: 20, protocol_id: 0 }
      await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: badReport }, "oracle1")
      console.log(oracles()[0])
      await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: badReport }, "oracle2")
      // await act("thisround")
      await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: goodReport }, "oracle1")
      await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report: goodReport }, "oracle3")
      await act("pwrreport", { oracle: "oracle4", boid_id_scope: boid_id, report: goodReport }, "oracle4")
      await act("pwrreport", { oracle: "oracle5", boid_id_scope: boid_id, report: goodReport }, "oracle5")
      // console.log(reports(boid_id).filter(el => el.report.round == 15))
      // await act("handleostat", { oracle: "oracle1", round: 15 })
      // console.log(global())
      await act("slashmulti", { oracle: "oracle1", boid_id_scope: boid_id, pwrreport_ids: [getReportId(badReport), getReportId(goodReport)], round: 15, protocol_id: 0 })
      // console.log(reports(boid_id).filter(el => el.report.round == 15))
      // console.log(oracles()[0])
      // console.log(global())
      expect(oracles()[0].standby).false
      expect(oracles()[0].weight).eq(10)
      addRounds(1)
      await act("roundstats")
      addRounds(1)
      await act("roundstats")
      addRounds(1)
      await act("roundstats")
      addRounds(1)
      await act("roundstats")
      addRounds(1)
      await act("roundstats")
      // await act("handleostat", { oracle: "oracle1", round: 15 })
      // expect(oracleStats("oracle1").filter(el => el.round == 15)[0].processed).true
      // console.log(oracleStats("oracle2"))
      //await act("handleostat", { oracle: "oracle2", round: 17 })
      // console.log(oracleStats("oracle2"))
    })
  })
})
