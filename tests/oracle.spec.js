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
    await act("handleostat", { oracle: "oracle1", round: 15 })
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
    await act("handleostat", { oracle: "oracle1", round: 15 })

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