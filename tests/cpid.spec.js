/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expectToThrow } from "@proton/vert"
import { expect } from "chai"
import { beforeEach, describe, it } from "mocha"
import { act, boid_id, chain, cpids, init,bytesToString, oracles, setupOracle, stringToBytes, tkn, uint8ArrayToString, hexToString, cpidReports, addRounds } from "./util.js"
import { Bytes, Name, Struct } from "@wharfkit/antelope"

beforeEach(async () => {
  chain.resetTables()
  await init()
})
describe("cpid", async() => {
  it("cpidset", async() => {
    await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
    await act("boincset",{boincMeta:{protocol_id:0,url:"",teamId:0,meta:[]}})
    await setupOracle("oracle1")
    const cpid = "5dd295e419a19d7cc3bb1b"
    const cpid_bytes = stringToBytes(cpid)
    await act("cpidset",{protocol_id:0,boid_id,cpid_bytes})
    // const saved = Bytes.fromString(cpids(0)[0].cpid_bytes,"utf8").hexString
    // console.log(hexToString(saved))
    // expect(typeof saved).to.equal("string")
  })
  it("cpidreport",async()=>{
    await act("protoset", { protocol: { protocol_id: 0, protocol_name: "testproto", unitPowerMult: 1, active:true } })
    await act("boincset",{boincMeta:{protocol_id:0,url:"",teamId:0,meta:[]}})
    await setupOracle("oracle1")
    await setupOracle("oracle2")
    const cpid = "5dd295e419a19d7cc3bb1b"
    const cpid_bytes = stringToBytes(cpid)
    await act("cpidreport",{oracle:"oracle1",protocol_id:0,boid_id_scope:boid_id,cpid_bytes},"oracle1")
    addRounds(1)
    await act("cpidreport",{oracle:"oracle2",protocol_id:0,boid_id_scope:boid_id,cpid_bytes},"oracle2")
    await act("cpidreport",{oracle:"oracle1",protocol_id:0,boid_id_scope:boid_id,cpid_bytes},"oracle1")
    // console.log(cpidReports(boid_id))
    expect(cpidReports(boid_id).length).to.equal(1)
    expect(cpids(0).length).to.equal(1)
    await act("cpidrepclean",{boid_id_scope:boid_id},"oracle1")
    expect(cpidReports(boid_id).length).to.equal(0)

  })
})
