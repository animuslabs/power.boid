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
describe("reports", async() => {
    describe("pwrreport", async() => {
        it("Success", async() => {
            await setupOracle("oracle1")
            addRounds(10)
            await expectToThrow(
              act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
              "eosio_assert: report round must target a past round")
            addRounds(1)
            // await expectToThrow(
            //   act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
            //   "eosio_assert: oracle is in standby mode, disable standby first to start making reports")
            // await act("setstandby", { oracle: "oracle1", standby: false })
            await expectToThrow(
              act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
              "eosio_assert: invalid protocol_id")
            await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
            // console.log(await act("thisround"));
            // return
            // console.log(reports(boid_id))
            const rRow = reports(boid_id)[0]
            console.log(chain.console);
            console.log(rRow);
            expect(rRow.proposer).eq("oracle1")
            // expect(rRow.report_id).eq(getReportId(report).toString())
            expect(rRow.report.units).eq(100)
            expect(rRow.report.round).eq(10)
            expect(rRow.approval_weight).eq(12)
            expect(rRow.reported).eq(false)
            expect(rRow.merged).eq(false)
        })
        describe("validate pwrreport checks", async() => {
            it("Missing required authority", async() => {
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }),
                    "missing required authority oracle1")
            })
            it("Chain is too recent to generate reports", async() => {
                await setupOracle("oracle1")
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
                    "eosio_assert: chain is too recent to generate reports")
            })
            it("Round is too far in the past", async() => {
                await setupOracle("oracle1")
                addRounds(20)
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
                    "eosio_assert: round is too far in the past")
            })
            it("Report round must target a past round", async() => {
                await setupOracle("oracle1")
                addRounds(3)
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
                    "eosio_assert: report round must target a past round")
            })
            it("Oracle not registered", async() => {
                chain.createAccount("oracle1")
                addRounds(11)
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
                    "eosio_assert: oracle not registered")
            })
            it("Oracle is in standby mode, disable standby first to start making reports", async() => {
                await setupOracle("oracle1")
                await act("setstandby", { oracle: "oracle1", standby: true })
                addRounds(11)
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
                    "eosio_assert: oracle is in standby mode, disable standby first to start making reports")
            })
            it("Invalid protocol_id", async() => {
                await setupOracle("oracle1")
                addRounds(11)
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
                    "eosio_assert: invalid protocol_id")
            })
            it("Protocol not currently active, can't make report", async() => {
                await setupOracle("oracle1")
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:false } })
                addRounds(11)
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
                    "eosio_assert: protocol not currently active, can't make report")
            })
            it("Invalid boid_id_owner", async() => {
                await setupOracle("oracle1")
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(11)
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: Name.from("noaccount"), report }, "oracle1"),
                    "eosio_assert: invalid boid_id_owner")
            })
            it("Oracle already approved this report", async() => {
                await setupOracle("oracle1")
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(11)
                await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1"),
                    "eosio_assert: oracle already approved this report")
            })
            it("Report already reported", async() => {
                for(let i=1; i < 6; i++)
                    await setupOracle(`oracle${i}`)

                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)

                for(let i=1; i < 5; i++)
                    await act("pwrreport", { oracle: `oracle${i}`, boid_id_scope: boid_id, report }, `oracle${i}`)

                await expectToThrow(
                    act("pwrreport", { oracle: "oracle5", boid_id_scope: boid_id, report }, "oracle5"),
                    "eosio_assert: report already reported")
            })
            it("Report already merged", async() => {
                for(let i=1; i < 6; i++)
                    await setupOracle(`oracle${i}`)

                const r1 = { protocol_id: 0, round: 10, units: 100 }
                const r2 = { protocol_id: 0, round: 10, units: 105 }

                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)

                for(let i=1; i < 5; i++)
                    await act("pwrreport", { oracle: `oracle${i}`, boid_id_scope: boid_id, report: i % 2 ? r1 : r2 }, `oracle${i}`)

                await act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2)] })
                await expectToThrow(
                    act("pwrreport", { oracle: "oracle5", boid_id_scope: boid_id, report: r1 }, "oracle5"),
                    "eosio_assert: report already merged")
            })
        })
    })
    describe("finishreport", async() => {
        it("Success", async() => {
            // accumulate early reports
            // add more oracles that make early reports, then move time forward and finalize the report
            addRounds(11)
            await setupOracle("oracle1")
            await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
            await expectToThrow(
            act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) }),
            "eosio_assert: report can't be finalized yet, too early in the round")
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
            await act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) })
        })
        describe("validate finishreport checks", async() => {
            it("Invalid report id or scope", async() => {
                await expectToThrow(
                    act("finishreport", { boid_id_scope: Name.from("noaccount"), pwrreport_id: 123 }),
                    "eosio_assert: invalid report id or scope")
                await expectToThrow(
                    act("finishreport", { boid_id_scope: boid_id, pwrreport_id: 123 }),
                    "eosio_assert: invalid report id or scope")
            })
            it("Report can't be finalized yet, too early in the round", async() => {
                await setupOracle("oracle1")
                addRounds(11)
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
                await expectToThrow(
                    act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) }),
                    "eosio_assert: report can't be finalized yet, too early in the round")
            })
            it("Report can't be finalized yet, minimum weight threshold not met", async() => {
                await setupOracle("oracle1")
                addRounds(11)
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report }, "oracle1")
                addRounds(1)
                await expectToThrow(
                    act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId(report) }),
                    "eosio_assert: report can't be finalized yet, minimum weight threshold not met")
            })
            it("Report already merged or reported", async() => {
                for(let i=1; i < 5; i++)
                    await setupOracle(`oracle${i}`)

                const r1 = { protocol_id: 0, round: 10, units: 100 }
                const r2 = { protocol_id: 0, round: 10, units: 105 }

                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)

                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r2}, `oracle1`)
                await act("pwrreport", { oracle: `oracle2`, boid_id_scope: boid_id, report: r1}, `oracle2`)
                await act("pwrreport", { oracle: `oracle3`, boid_id_scope: boid_id, report: r1}, `oracle3`)
                await act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2)] })
                await expectToThrow(
                    act("finishreport", { boid_id_scope: boid_id, pwrreport_id: getReportId({ protocol_id: 0, round: 10, units: 102 }) }),
                    "eosio_assert: report already merged or reported")
            })
        })
    })
    describe("mergereport", async() => {
        it("merge 4", async() => {
            // console.log(JSON.stringify(boid.permissions, null, 2))

            chain.createAccount("oracle1")
            chain.createAccount("oracle2")
            chain.createAccount("oracle3")
            chain.createAccount("oracle4")
            addRounds(34)
            // @ts-ignore
            chain.addTime(TimePointSec.fromInteger(111111))
            await act("oracleset", { account: "oracle1", weight: 10, adding_collateral: 0 })
            await act("setstandby", { oracle: "oracle1", standby: false })
            await act("oracleset", { account: "oracle2", weight: 10, adding_collateral: 0 })
            await act("setstandby", { oracle: "oracle2", standby: false })
            await act("oracleset", { account: "oracle3", weight: 10, adding_collateral: 0 })
            await act("setstandby", { oracle: "oracle3", standby: false })
            await act("oracleset", { account: "oracle4", weight: 10, adding_collateral: 0 })
            await act("setstandby", { oracle: "oracle4", standby: false })
            // console.log(oracles())
            // console.log(global())
            // await act("thisround")
            let reportsArray = [
              { protocol_id: 0, round: 33, units: 7 },
              { protocol_id: 0, round: 33, units: 8 },
              { protocol_id: 0, round: 33, units: 10 },
              { protocol_id: 0, round: 33, units: 11 }
            ]

            await act("protoset", { protocol: { protocol_id: 0, protocol_name: "fah", unitPowerMult: 1,active:true } })
            // addRounds(33)
            await act("pwrreport", { oracle: "oracle1", boid_id_scope: "testaccount", report: reportsArray[0] }, "oracle1@active")
            // console.log(reports("testaccount"))
            await act("pwrreport", { oracle: "oracle2", boid_id_scope: "testaccount", report: reportsArray[1] }, "oracle2@active")
            // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
            await act("pwrreport", { oracle: "oracle3", boid_id_scope: "testaccount", report: reportsArray[2] }, "oracle3@active")
            await act("pwrreport", { oracle: "oracle4", boid_id_scope: "testaccount", report: reportsArray[3] }, "oracle4@active")
            // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))

            console.log(reports("testaccount"))
            console.log(global())
            await act("mergereports", { boid_id_scope: "testaccount", pwrreport_ids: reportsArray.map(r => getReportId(r)) })
            console.log("chain console:", chain.console)
            // console.log(reports("testaccount"))
            expect(reports("testaccount").length).eq(5)
        })
        it("merge 3", async() => {
        // console.log(JSON.stringify(boid.permissions, null, 2))

        chain.createAccount("oracle1")
        chain.createAccount("oracle2")
        chain.createAccount("oracle3")
        chain.createAccount("oracle4")
        addRounds(34)
        // @ts-ignore
        chain.addTime(TimePointSec.fromInteger(111111))
        await act("oracleset", { account: "oracle1", weight: 10, adding_collateral: 0 })
        await act("setstandby", { oracle: "oracle1", standby: false })
        await act("oracleset", { account: "oracle2", weight: 10, adding_collateral: 0 })
        await act("setstandby", { oracle: "oracle2", standby: false })
        await act("oracleset", { account: "oracle3", weight: 10, adding_collateral: 0 })
        await act("setstandby", { oracle: "oracle3", standby: false })
        await act("oracleset", { account: "oracle4", weight: 10, adding_collateral: 0 })
        await act("setstandby", { oracle: "oracle4", standby: false })

        let reportsArray = [
            { protocol_id: 0, round: 33, units: 7 },
            { protocol_id: 0, round: 33, units: 8 },
            { protocol_id: 0, round: 33, units: 10 }
        ]

        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "fah", unitPowerMult: 1 ,active:true} })
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: "testaccount", report: reportsArray[0] }, "oracle1@active")
        // console.log(reports("testaccount"))
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: "testaccount", report: reportsArray[1] }, "oracle2@active")
        // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
        // console.log(reports("testaccount"))
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: "testaccount", report: reportsArray[2] }, "oracle3@active")
        // await act("pwrreport", { oracle: "oracle4", boid_id_scope: "testaccount", report: { protocol_id: 0, round: 33, units: 13 } }, "oracle4@active")
        // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
        await act("mergereports", { boid_id_scope: "testaccount", pwrreport_ids: reportsArray.map(r => getReportId(r)) })
        // console.log(reports("testaccount"))
        expect(reports("testaccount").length).eq(3)
        expectToThrow(
            act("mergereports", { boid_id_scope: "testaccount", pwrreport_ids: reportsArray.map(r => getReportId(r)) })
            , "eosio_assert: can't merge reports already merged"
        )
        })
        it("too high diff", async() => {
        // console.log(JSON.stringify(boid.permissions, null, 2))

        chain.createAccount("oracle1")
        chain.createAccount("oracle2")
        chain.createAccount("oracle3")
        chain.createAccount("oracle4")
        addRounds(34)
        // @ts-ignore
        chain.addTime(TimePointSec.fromInteger(111111))
        await act("oracleset", { account: "oracle1", weight: 10, adding_collateral: 0 })
        await act("setstandby", { oracle: "oracle1", standby: false })
        await act("oracleset", { account: "oracle2", weight: 10, adding_collateral: 0 })
        await act("setstandby", { oracle: "oracle2", standby: false })
        await act("oracleset", { account: "oracle3", weight: 10, adding_collateral: 0 })
        await act("setstandby", { oracle: "oracle3", standby: false })
        await act("oracleset", { account: "oracle4", weight: 10, adding_collateral: 0 })
        await act("setstandby", { oracle: "oracle4", standby: false })

        let reportsArray = [
            { protocol_id: 0, round: 33, units: 7 },
            { protocol_id: 0, round: 33, units: 8 },
            { protocol_id: 0, round: 33, units: 20 }
        ]

        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "fah", unitPowerMult: 1,active:true } })
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: "testaccount", report: reportsArray[0] }, "oracle1@active")
        // console.log(reports("testaccount"))
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: "testaccount", report: reportsArray[1] }, "oracle2@active")
        // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
        // console.log(reports("testaccount"))
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: "testaccount", report: reportsArray[2] }, "oracle3@active")
        // await act("pwrreport", { oracle: "oracle4", boid_id_scope: "testaccount", report: { protocol_id: 0, round: 33, units: 13 } }, "oracle4@active")
        // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
        // console.log(reports("testaccount"))
        await expectToThrow(
            act("mergereports", { boid_id_scope: "testaccount", pwrreport_ids: reportsArray.map(r => getReportId(r)) }),
            "eosio_assert: report units 20 above maximum: 10"
        )

        // console.log(reports("testaccount"))
        expect(reports("testaccount").length).eq(3)
        })
        describe("validate mergereport checks", async() => {
            it("Invalid id provided", async() => {
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [123, 124] }),
                    "eosio_assert: invalid id provided")
            })
            it("Protocol_ids must match", async() => {
                await setupOracle("oracle1")
                const r1 = { protocol_id: 0, round: 10, units: 100 }
                const r2 = { protocol_id: 1, round: 10, units: 100 }
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                await act("protoset", { protocol: { protocol_id: 1, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r1}, `oracle1`)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r2}, `oracle1`)
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2)]}),
                    "eosio_assert: protocol_ids must match")
            })
            it("Rounds must match", async() => {
                await setupOracle("oracle1")
                const r1 = { protocol_id: 0, round: 10, units: 100 }
                const r2 = { protocol_id: 0, round: 11, units: 100 }
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(13)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r1}, `oracle1`)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r2}, `oracle1`)
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2)]}),
                    "eosio_assert: rounds must match")
            })
            it("Can't merge reports already reported", async() => {
                await setupOracle("oracle1")
                await setupOracle("oracle2")
                await setupOracle("oracle3")
                const r1 = { protocol_id: 0, round: 10, units: 100 }
                const r2 = { protocol_id: 0, round: 10, units: 105 }
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r1}, `oracle1`)
                await act("pwrreport", { oracle: `oracle2`, boid_id_scope: boid_id, report: r1}, `oracle2`)
                await act("pwrreport", { oracle: `oracle3`, boid_id_scope: boid_id, report: r2}, `oracle3`)
                await act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2)]})
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId({ protocol_id: 0, round: 10, units: 102 }), 123]}),
                    "eosio_assert: can't merge reports already reported")
            })
            it("Can't merge reports already merged", async() => {
                await setupOracle("oracle1")
                await setupOracle("oracle2")
                await setupOracle("oracle3")
                const r1 = { protocol_id: 0, round: 10, units: 100 }
                const r2 = { protocol_id: 0, round: 10, units: 105 }
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r1}, `oracle1`)
                await act("pwrreport", { oracle: `oracle2`, boid_id_scope: boid_id, report: r1}, `oracle2`)
                await act("pwrreport", { oracle: `oracle3`, boid_id_scope: boid_id, report: r2}, `oracle3`)
                await act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2)]})
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2)]}),
                    "eosio_assert: can't merge reports already merged")
            })
            it("Can't finalize/merge reports this early in a round", async() => {
                await setupOracle("oracle1")
                await setupOracle("oracle2")
                await setupOracle("oracle3")
                const r1 = { protocol_id: 0, round: 10, units: 100 }
                const r2 = { protocol_id: 0, round: 10, units: 105 }
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(11)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r1}, `oracle1`)
                await act("pwrreport", { oracle: `oracle2`, boid_id_scope: boid_id, report: r1}, `oracle2`)
                await act("pwrreport", { oracle: `oracle3`, boid_id_scope: boid_id, report: r2}, `oracle3`)
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2)]}),
                    "eosio_assert: can't finalize/merge reports this early in a round")
            })
            it("Report units above maximum", async() => {
                await setupOracle("oracle1")
                await setupOracle("oracle2")
                await setupOracle("oracle3")
                const r1 = { protocol_id: 0, round: 10, units: 100 }
                const r2 = { protocol_id: 0, round: 10, units: 105 }
                const r3 = { protocol_id: 0, round: 10, units: 220 }
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r1}, `oracle1`)
                await act("pwrreport", { oracle: `oracle2`, boid_id_scope: boid_id, report: r2}, `oracle2`)
                await act("pwrreport", { oracle: `oracle3`, boid_id_scope: boid_id, report: r3}, `oracle3`)
                console.log(chain.console)
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r2), getReportId(r3)]}),
                    "eosio_assert: report units 220 above maximum: 131")
            })
            it("Aggregate approval_weight isn't high enough", async() => {
                await setupOracle("oracle1")
                const r1 = { protocol_id: 0, round: 10, units: 100 }
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r1}, `oracle1`)
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r1)]}),
                    "eosio_assert: aggregate approval_weight isn't high enough 30 24")
            })
            it("Can't merge multiple reports that share same oracle", async() => {
                await setupOracle("oracle1")
                const r1 = { protocol_id: 0, round: 10, units: 100 }
                await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
                addRounds(12)
                await act("pwrreport", { oracle: `oracle1`, boid_id_scope: boid_id, report: r1}, `oracle1`)
                await expectToThrow(
                    act("mergereports", { boid_id_scope: boid_id, pwrreport_ids: [getReportId(r1), getReportId(r1), getReportId(r1)]}),
                    "eosio_assert: can't merge multiple reports that share an oracle, should slash: oracle1")
            })
        })
    })
})
