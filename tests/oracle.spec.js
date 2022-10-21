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
describe("deposit", async() => {
  it("mininmum deposit", async() => {
    await setupOracle("oracle1")
    expect(oracles()[0].collateral.locked).eq(10000000)
    await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "10000000.0000 BOID", memo: "" })
    await tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "10000000.0000 BOID", memo: "collateral" }, "oracle1")
    expect(oracles()[0].collateral.locked).eq(20000000)
  })
  it("invalid deposit", async() => {
    await setupOracle("oracle1")
    await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "10000000.0000 BOID", memo: "" })
    await expectToThrow(
      tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "100000.0000 BOID", memo: "collateral" }, "oracle1"),
      "eosio_assert: must deposit collateral in correct increments")
  })
})
describe("reports", async() => {
  it("pwrreport", async() => {
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
    expect(rRow.report_id).eq(getReportId(report).toString())
    expect(rRow.report.units).eq(100)
    expect(rRow.report.round).eq(10)
    expect(rRow.approval_weight).eq(12)
    expect(rRow.reported).eq(false)
    expect(rRow.merged).eq(false)
  })
  // add more oracles that make early reports, then move time forward and finalize the report
  it("accumulate early reports", async() => {
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
  it("claimrewards", async() => {
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
    // console.log(oraclestats("oracle1"))
    // console.log(oraclestats("oracle2"))
    // console.log(stats())
    await expectToThrow(
      act("handleostat", { oracle: "oracle1", round: 10 }),
      "eosio_assert: can't process this round yet, not yet finalized"
    )
    await act("roundstats")
    addRounds(1)
    await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
    addRounds(1)
    await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report3 }, "oracle1")
    addRounds(1)
    report2.round = 13
    await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
    addRounds(1)
    report2.round = 14
    await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
    addRounds(1)
    report2.round = 15
    await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
    addRounds(1)
    report2.round = 16
    await act("pwrreport", { oracle: "oracle1", boid_id_scope: boid_id, report: report2 }, "oracle1")
    console.log(chain.console);
    // await act("thisround")
    await act("handleostat", { oracle: "oracle1", round: 11 }).catch(err => {
      console.log(err.toString())
      console.log(chain.console)
    })
    // console.log(chain.console)
    // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
    await act("handleostat", { oracle: "oracle2", round: 11 })
    await act("handleostat", { oracle: "oracle3", round: 11 })
    await act("handleostat", { oracle: "oracle4", round: 11 })
    await act("handleostat", { oracle: "oracle5", round: 11 })
    // await act("handleostat", { oracle: "oracle5", round: 11 })

    // console.log(chain.console)
    // console.log(oracles().map(el => el.funds))
    // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))

    // expect(oracles()[0].funds.unclaimed).eq(230000)
  })
})
describe("funds", async() => {
  it("withdrawinit", async() => {
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
    await act("handleostat", { oracle: "oracle1", round: 16 })
    const unclaimed = oracles()[0].funds.unclaimed

    await act("withdrawinit", { oracle: "oracle1" }, "oracle1")
    expect(oracles()[0].funds.withdrawing).eq(unclaimed)
    expect(oracles()[0].funds.withdrawable_after_round).eq(40)
    addRounds(5)
    await expectToThrow(
      act("withdrawinit", { oracle: "oracle1" }, "oracle1"),
      "eosio_assert: currently withdrawing, must wait for current withdraw to finish."
    )
  })
  it("withdraw", async() => {
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
    await act("handleostat", { oracle: "oracle1", round: 16 })

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
})
describe("unlocking", async() => {
  it("unlockinit", async() => {
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
  it("unlock", async() => {
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
})