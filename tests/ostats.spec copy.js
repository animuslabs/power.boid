/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expectToThrow } from "@proton/vert"
import { beforeEach, describe, it } from "mocha"
import { act, addRounds, boid_id, chain, getReportId, init, setupOracle, stats } from "./util.js"

const report = { protocol_id: 0, round: 10, units: 100 }
const report2 = { protocol_id: 0, round: 11, units: 100 }
const report3 = { protocol_id: 0, round: 13, units: 100 }

beforeEach(async () => {
  chain.resetTables()
  await init()
})
describe("reports", async() => {
    describe("handleostat", async() => {
        it("Success", async() => {
            addRounds(11)
            await setupOracle("oracle1")
            await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
            await expectToThrow(
            act("finishreport", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(report)] }),
            "eosio_assert: can't finalize/merge reports this early in a round")
            // console.log(oraclestats("oracle1"))
            // console.log("Global:", global())
            await setupOracle("oracle3")
            await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report }, "oracle3")
            await setupOracle("oracle4")
            await act("pwrreport", { oracle: "oracle4", boid_id_scope: boid_id, report }, "oracle4")
            await setupOracle("oracle5")
            await act("pwrreport", { oracle: "oracle5", boid_id_scope: boid_id, report }, "oracle5")
            await setupOracle("oracle2")
            await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report }, "oracle2")
            addRounds(1)
            // console.log(stats())
            await act("finishreport", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(report)] })
            // console.log(oraclestats("oracle1"))
            // console.log(oraclestats("oracle2"))
            return
            await expectToThrow(
            act("handleostat", { oracle: "oracle1", round: 10 }),
            "eosio_assert: can't process this round yet, not yet finalized"
            )
            report2.round = 10
            await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report: report2 }, "oracle2")
            addRounds(1)
            report2.round = 11
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
            addRounds(1)
            report2.round = 12
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
            addRounds(1)
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report3 }, "oracle1")
            addRounds(1)
            report2.round = 14
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
            addRounds(1)
            report2.round = 15
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
            addRounds(1)
            report2.round = 16
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
            addRounds(1)
            report2.round = 17
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
            console.log(chain.console);
            // await act("thisround")
            // await act("handleostat", { oracle: "oracle1", round: 11 }).catch(err => {
            //   console.log(err.toString())
            //   console.log(chain.console)
            // })
            // console.log(chain.console)
            // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
            console.log(stats());

            addRounds(1)
            await act("handleostat", { oracle: "oracle2", round: 10 })
            await act("handleostat", { oracle: "oracle3", round: 10 })
            await act("handleostat", { oracle: "oracle4", round: 10 })
            await act("handleostat", { oracle: "oracle5", round: 10 })
        })
        it("stats", async() => {
            await setupOracle("oracle1")
            await setupOracle("oracle2")
            await setupOracle("oracle3")
            addRounds(11)
            await act("roundstats")
            // addRounds(1)
            await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
            await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report }, "oracle2")
            await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report }, "oracle3")
            addRounds(1)
            await act("roundstats")
            addRounds(3)
            await act("handleostat", { oracle: "oracle1", round: 10 })
            console.log(chain.console)
        })
        describe("validate handleostat checks", async() => {
            it("Can't process this round yet, not yet finalized", async() => {
                addRounds(3)
                await expectToThrow(
                    act("handleostat", { oracle: "oracle1", round: 3 }),
                    "eosio_assert: can't process this round yet, not yet finalized")
            })
            it("OStats round doesn't exist", async() => {
                addRounds(7)
                await expectToThrow(
                    act("handleostat", { oracle: "oracle1", round: 2 }),
                    "eosio_assert: oStats round doesn't exist")
            })
            it("Round stats not yet available", async() => {
                addRounds(12)
                report.round = 11
                await setupOracle("oracle1")
                await setupOracle("oracle2")
                await setupOracle("oracle3")
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
                await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report }, "oracle2")
                await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report }, "oracle3")
                addRounds(3)
                await expectToThrow(
                    act("handleostat", { oracle: "oracle1", round: 11 }),
                    "eosio_assert: round stats not yet available")
            })
            it("Round stats is already processed", async() => {
                await setupOracle("oracle1")
                await setupOracle("oracle2")
                await setupOracle("oracle3")
                addRounds(11)
                await act("roundstats")
                addRounds(1)
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
                await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report }, "oracle2")
                await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report }, "oracle3")
                addRounds(1)
                await act("roundstats")
                addRounds(3)
                await act("handleostat", { oracle: "oracle1", round: 10 })
                await expectToThrow(
                    act("handleostat", { oracle: "oracle1", round: 10 }),
                    "eosio_assert: round stats is already processed")
            })
        })
    })
})
