/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint, PrivateKey, PublicKey, Action, Bytes, ABI, ABIDecoder, Authority, PermissionLevel, UInt32, Serializer, TimePointSec } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { init, chain, act, oracles, global, contract, reports, boid, tkn, addRounds } from "../tests/util.js"

async function main() {
  try {
    await init()

    chain.createAccount("oracle1")
    chain.createAccount("oracle2")
    chain.createAccount("oracle3")
    chain.createAccount("oracle4")
    addRounds(34)
    chain.addTime(TimePointSec.fromInteger(80000))
    await act("thisround")
    return
    await act("oracleset", { account: "oracle1", weight: 10, adding_collateral: 0 })
    await act("setstandby", { oracle: "oracle1", standby: false })
    await act("oracleset", { account: "oracle2", weight: 10, adding_collateral: 0 })
    await act("setstandby", { oracle: "oracle2", standby: false })
    await act("oracleset", { account: "oracle3", weight: 10, adding_collateral: 0 })
    await act("setstandby", { oracle: "oracle3", standby: false })
    await act("oracleset", { account: "oracle4", weight: 10, adding_collateral: 0 })
    await act("setstandby", { oracle: "oracle4", standby: false })

    await act("slashoracle", { oracle: "oracle1", quantity: 20000 })

    // console.log(JSON.stringify(boid.permissions, null, 2))

    // chain.createAccount("oracle1")

    // await tkn("transfer", { to: "oracle1", from: "token.boid", quantity: "100000000.0000 BOID", memo: "" }, "token.boid@active")
    // await tkn("transfer", { to: "power.boid", from: "oracle1", quantity: "1000000.0000 BOID", memo: "collateral" }, "oracle1@active")

    // chain.createAccount("oracle2")
    // chain.createAccount("oracle3")
    // chain.createAccount("oracle4")
    // await act("oracleset", { account: "oracle1", weight: 10 })
    // await act("oracleset", { account: "oracle2", weight: 10 })
    // await act("oracleset", { account: "oracle3", weight: 10 })
    // await act("oracleset", { account: "oracle4", weight: 10 })
    // console.log(global())
    // await act("protoset", { protocol: { protocol_id: 0, protocol_name: "fah", unitPowerMult: 1 } })
    // await act("pwrreport", { oracle: "oracle1", boid_id_scope: "testaccount", report: { protocol_id: 0, round: 33, units: 7 } }, "oracle1@active")
    // // console.log(reports("testaccount"))
    // await act("pwrreport", { oracle: "oracle2", boid_id_scope: "testaccount", report: { protocol_id: 0, round: 33, units: 8 } }, "oracle2@active")
    // // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
    // // console.log(reports("testaccount"))
    // await act("pwrreport", { oracle: "oracle3", boid_id_scope: "testaccount", report: { protocol_id: 0, round: 33, units: 10 } }, "oracle3@active")
    // console.log(global())
    // await act("pwrreport", { oracle: "oracle4", boid_id_scope: "testaccount", report: { protocol_id: 0, round: 33, units: 13 } }, "oracle4@active")
    console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
    console.log(oracles())
    // await act("mergereports", { boid_id_scope: "testaccount", pwrreport_ids: [103307000, 103308000, 1033010000, 1033013000] })
    // console.log(reports("testaccount"))
    console.log(global())
  } catch (error) {
    console.log(error.toString())
    // console.log(error)
  }
}
main().catch((err) => {
  console.log(err)
  console.log(chain.console)
  console.log(chain.actionTraces.map(el => [el.receiver.name.toString(), el.action.toString(), el.decodedData.data.toJSON()]))
})
