import { act, chain, init, setupOracle } from "./util.js"
// chain.resetTables()
const report = { protocol_id: 0, round: 10, units: 100 }

async function scenario1(){
  try {
    await init()
    // await setupOracle("oracle1")
    // await setupOracle("oracle2")
    // await setupOracle("oracle3")
    // act("thisround")
    // console.log(chain.console)
    // console.log(chain.actionTraces.map(el => [el.action.toString(), JSON.stringify(el.decodedData, null, 2)]))
  } catch (e) {
    console.error(e)
  }

}
scenario1()
