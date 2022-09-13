/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint, PrivateKey, PublicKey, Action, Bytes, ABI, ABIDecoder, Authority, PermissionLevel, UInt32, Serializer, TimePointSec } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { init, chain, act, oracles, global, contract, reports, boid, addRounds, tkn, config, wait, setupOracle } from "./util.js"

// beforeEach(() => chain.resetTables())
const report = { protocol_id: 0, round: 10, units: 100 }
async function main() {
  try {
    describe("deposit", async() => {
      it("mininmum deposit", async() => {
        await init()
        chain.createAccount("oracle1")
        await tkn("transfer", { from: "token.boid", to: "oracle1", quantity: "10000000.0000 BOID", memo: "" })
        await tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "1000000.0000 BOID", memo: "collateral" }, "oracle1")
        expect(oracles()[0].collateral.locked).eq(1000000)
        await tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "1000000.0000 BOID", memo: "collateral" }, "oracle1")
        expect(oracles()[0].collateral.locked).eq(2000000)
      })
      it("invalid deposit", async() => {
        await expectToThrow(
          tkn("transfer", { from: "oracle1", to: "power.boid", quantity: "100000.0000 BOID", memo: "collateral" }, "oracle1"),
          "eosio_assert: must deposit collateral in correct increments")
      })
      it("pwrreport", async() => {
        addRounds(10)

        await expectToThrow(
          act("pwrreport", { oracle: "oracle1", boid_id_scope: "testaccount", report }, "oracle1"),
          "eosio_assert: report round must target a past round")
        addRounds(1)
        await expectToThrow(
          act("pwrreport", { oracle: "oracle1", boid_id_scope: "testaccount", report }, "oracle1"),
          "eosio_assert: oracle is in standby mode, disable standby first to start making reports")
        await act("setstandby", { oracle: "oracle1", standby: false })
        await expectToThrow(
          act("pwrreport", { oracle: "oracle1", boid_id_scope: "testaccount", report }, "oracle1"),
          "eosio_assert: invalid protocol_id")
        await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1 } })
        await act("pwrreport", { oracle: "oracle1", boid_id_scope: "testaccount", report }, "oracle1")
        // console.log(reports("testaccount"))
        const rRow = reports("testaccount")[0]

        expect(rRow.proposer).eq("oracle1")
        expect(rRow.report_id).eq("10100100000")
        expect(rRow.report.units).eq(100)
        expect(rRow.report.round).eq(10)
        expect(rRow.approval_weight).eq(2)
        expect(rRow.reported).eq(false)
        expect(rRow.merged).eq(false)
      })
      it("reports", async() => {
        console.log(chain.console)
        await expectToThrow(
          act("finishreport", { boid_id_scope: "testaccount", pwrreport_id: 10100100000 }),
          "eosio_assert: report can't be finalized yet, too early in the round")
        console.log(chain.console)
        console.log(chain.timestamp.toString())

        await wait(100)
        // await act("thisround")
        console.log(chain.timestamp.toString())
        console.log(chain.console)
        // return
        await setupOracle("oracle3")
        await act("pwrreport", { oracle: "oracle3", boid_id_scope: "testaccount", report }, "oracle3")
        await setupOracle("oracle4")
        await act("pwrreport", { oracle: "oracle4", boid_id_scope: "testaccount", report }, "oracle4")
        await setupOracle("oracle5")
        await act("pwrreport", { oracle: "oracle5", boid_id_scope: "testaccount", report }, "oracle5")
        await setupOracle("oracle2")
        await act("pwrreport", { oracle: "oracle2", boid_id_scope: "testaccount", report }, "oracle2")

        // console.log(oracles())
        chain.addTime(TimePointSec.fromInteger(80000))
        await act("finishreport", { boid_id_scope: "testaccount", pwrreport_id: 10100100000 })
        console.log(reports("testaccount"))

        // console.log(reports())
      })
    })
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
