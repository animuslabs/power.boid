/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint, PrivateKey, PublicKey, Action, Bytes, ABI, ABIDecoder, Authority, PermissionLevel, UInt32, Serializer, TimePointSec } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { init, chain, act, oracles, global, contract, reports, boid, addRounds, getReportId } from "./util.js"

beforeEach(async () => {
  chain.resetTables()
  await init()
})
describe("merge", async() => {
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
      { protocol_id: 0, round: 33, units: 13 }
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
      "eosio_assert: report units 20 above maximum: 16"
    )
  
    // console.log(reports("testaccount"))
    expect(reports("testaccount").length).eq(3)
  })
})
