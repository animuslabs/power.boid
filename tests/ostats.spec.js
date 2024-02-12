/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expectToThrow } from "@proton/vert"
import { beforeEach, describe, it } from "mocha"
import { act, addRounds, boid_id, chain, getReportId, init, oracleStats, setupOracle, global, oracle, reports, findRoundPayout } from "./util.js"

const report = { protocol_id: 0, round: 10, units: 100 }
const report2 = { protocol_id: 0, round: 10, units: 100 }
const report3 = { protocol_id: 0, round: 13, units: 100 }

beforeEach(async () => {
  chain.resetTables()
  await init()
})
describe("reports", async() => {
    describe("handleostat", async() => {
        it("Success", async() => {
          await setupOracle("oracle1")
          await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
          addRounds(11)
          await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
          await act("pwrreport", { oracle: "oracle1", boid_id_scope: "teamownr", report:report2 }, "oracle1")
          await expectToThrow(
            act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) }),
            "eosio_assert: can't finalize/merge reports this early in a round")
            await setupOracle("oracle2")
          await act("pwrreport", { oracle: "oracle2", boid_id_scope: "teamownr", report:report2 }, "oracle2")
          await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report }, "oracle2")
          await setupOracle("oracle3")
          await act("pwrreport", { oracle: "oracle3", boid_id_scope: "teamownr", report:report2 }, "oracle3")
          await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report }, "oracle3")
          await setupOracle("oracle4")
          await act("pwrreport", { oracle: "oracle4", boid_id_scope: boid_id, report }, "oracle4")
          await setupOracle("oracle5")
          await act("pwrreport", { oracle: "oracle5", boid_id_scope: boid_id, report }, "oracle5")
          addRounds(1)
          await act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) })
          await act("finishreport", { boid_id_scope: "teamownr", pwrreport_id: getReportId(report2) })
          await expectToThrow( act("payoutround", { round: 11,oracle:"oracle1" }, "oracle1"),
          "eosio_assert: can't process this round yet, not yet finalized")
          addRounds(1)
          await act("payoutround", { oracle:"oracle1",round: 10 }, "oracle1")
          await act("payoutround", {  round: 10 ,oracle:"oracle2" }, "oracle1")
          await act("payoutround", {  round: 10 ,oracle:"oracle3" }, "oracle1")
          await act("payoutround", {  round: 10 ,oracle:"oracle4" }, "oracle1")
          await act("payoutround", {  round: 10 ,oracle:"oracle5" }, "oracle1")
          console.log('oracle1 earned:',oracle("oracle1").funds.unclaimed)
          console.log('oracle2 earned:',oracle("oracle2").funds.unclaimed)
          console.log('oracle3 earned:',oracle("oracle3").funds.unclaimed)
          console.log('oracle4 earned:',oracle("oracle4").funds.unclaimed)
          console.log('oracle5 earned:',oracle("oracle5").funds.unclaimed)
          console.log('o1 payout estimate:',findRoundPayout("oracle1", 10))
          console.log('o2 payout estimate:',findRoundPayout("oracle2", 10))
          console.log('o3 payout estimate:',findRoundPayout("oracle3", 10))
          console.log('o4 payout estimate:',findRoundPayout("oracle4", 10))
          console.log('o5 payout estimate:',findRoundPayout("oracle5", 10))
          addRounds(1)
          await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report:report3 }, "oracle1")
          await act("pwrreport", { oracle: "oracle2", boid_id_scope: boid_id, report:report3 }, "oracle2")
          await act("pwrreport", { oracle: "oracle3", boid_id_scope: boid_id, report:report3 }, "oracle3")
          addRounds(1)
          await act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report3) })
          addRounds(1)
          await act("payoutround", { protocol_id: 0, round: 13 ,oracle:"oracle1" }, "oracle1")
          await act("payoutround", { protocol_id: 0, round: 13 ,oracle:"oracle2" }, "oracle1")
          await act("payoutround", { protocol_id: 0, round: 13 ,oracle:"oracle3" }, "oracle1")
          console.log('oracle1 earned:',oracle("oracle1").funds.unclaimed)
          console.log('oracle2 earned:',oracle("oracle2").funds.unclaimed)
          console.log('oracle3 earned:',oracle("oracle2").funds.unclaimed)
          console.log(chain.console)





        })
    })
})
