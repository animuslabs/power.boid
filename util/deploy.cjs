/* eslint-disable promise/param-names */
/* eslint-disable no-async-promise-executor */
const { setAbiAction, setCodeAction, clearCodeAction, clearAbiAction } = require("./lib/encodeContractData.cjs")

const conf = require("../eosioConfig.cjs")

// @ts-ignore
const fs = require("fs-extra")
const env = require("../.env.cjs")

const methods = {

  async telosTest(type, targetAccount = "") {
    const { api, tapos } = require("./lib/eosjs.cjs")(env.keys.telosTest, conf.endpoints.telosTest[0])

    const authorization = [{ actor: "boid", permission: "active" }]
    if (type == "clear") {
      const authorization = [{ actor: targetAccount, permission: "active" }]
      const result = await api.transact({ actions: [clearAbiAction(authorization)] }, tapos).catch(err => console.log(err))
      console.log(result)
      const result2 = await api.transact({ actions: [clearCodeAction(authorization)] }, tapos).catch(err => console.log(err))
      console.log(result2)
      return
    }
    // console.log(authorization);
    if (!type) type = "debug"
    const abiAction = new Promise(async(res) => {
      const result = await api.transact({ actions: [setAbiAction(`../build/${conf.contractName}.abi`, authorization)] }, tapos).catch(err => console.log(err))
      // @ts-ignore
      if (result) console.log("https://telos-test.bloks.io/transaction/" + result.transaction_id)
      // @ts-ignore
      res()
    })
    const wasmAction = new Promise(async(res) => {
      console.log("Pushing WASM")
      const result2 = await api.transact({ actions: [setCodeAction(`../build/${conf.contractName}.wasm`, authorization)] }, tapos).catch(err => console.log(err.toString()))
      // @ts-ignore
      if (result2) console.log("https://telos-test.bloks.io/transaction/" + result2.transaction_id)
      // @ts-ignore
      res()
    })
    await Promise.all([abiAction, wasmAction])
  },
  async waxTest(type) {
    const { api, tapos } = require("./lib/eosjs.cjs")(env.keys.waxTest, conf.endpoints.waxTest[0])

    const authorization = [{ actor: conf.accountName.waxTest, permission: "active" }]
    if (!type) type = "debug"

    console.log("Pushing ABI")
    const result = await api.transact({ actions: [setAbiAction(`../build/${conf.contractName}.abi`, authorization)] }, tapos).catch(err => console.log(err.toString()))
    // @ts-ignore
    if (result) console.log("https://wax-test.bloks.io/transaction/" + result.transaction_id)

    console.log("Pushing WASM")
    const result2 = await api.transact({ actions: [setCodeAction(`../build/${conf.contractName}.wasm`, authorization)] }, tapos).catch(err => console.log(err.toString()))
    // @ts-ignore
    if (result2) console.log("https://wax-test.bloks.io/transaction/" + result2.transaction_id)
  },
  async jungle3(type) {
    // @ts-ignore
    // @ts-ignore
    const { api, tapos, doAction } = require("./lib/eosjs.cjs")(env.keys.jungle3, conf.endpoints.jungle3[0])

    const authorization = [{ actor: conf.accountName.jungle3, permission: "active" }]
    console.log(authorization)
    if (!type) type = "debug"
    // await doAction('powerup', { payer: conf.accountName.jungle3, receiver: conf.accountName.jungle3, days: 1, net_frac: 1000000, cpu_frac: 100000, max_payment: "0.1000 EOS" }, 'eosio', conf.accountName.jungle3)

    console.log("Pushing ABI")
    const result = await api.transact({ actions: [setAbiAction(`../build/${conf.contractName}.abi`, authorization)] }, tapos).catch(err => console.log(err.toString()))
    // @ts-ignore
    if (result) console.log("https://jungle3.bloks.io/transaction/" + result.transaction_id)

    console.log("Pushing WASM")
    const result2 = await api.transact({ actions: [setCodeAction(`../build/${conf.contractName}.wasm`, authorization)] }, tapos).catch(err => console.log(err.toString()))
    // @ts-ignore
    if (result2) console.log("https://jungle3.bloks.io/transaction/" + result2.transaction_id)
  },
  async telos(type) {
    const { api, tapos } = require("./lib/eosjs.cjs")(env.keys.telos, conf.endpoints.telos[0])

    const authorization = [{ actor: conf.accountName.telos, permission: "active" }]
    // console.log(authorization);
    if (!type) type = "debug"

    console.log("Pushing ABI")
    const result = await api.transact({ actions: [setAbiAction(`../build/${conf.contractName}.abi`, authorization)] }, tapos).catch(err => console.log(err))
    // @ts-ignore
    if (result) console.log("https://telos.bloks.io/transaction/" + result.transaction_id)

    console.log("Pushing WASM")
    const result2 = await api.transact({ actions: [setCodeAction(`../build/${conf.contractName}.wasm`, authorization)] }, tapos).catch(err => console.log(err.toString()))
    // @ts-ignore
    if (result2) console.log("https://telos.bloks.io/transaction/" + result2.transaction_id)
  }
}

if (require.main == module) {
  if (Object.keys(methods).find(el => el === process.argv[2])) {
    console.log("Starting:", process.argv[2])
    methods[process.argv[2]](...process.argv.slice(3)).catch((error) => console.error(error.toString()))
      // @ts-ignore
      // @ts-ignore
      .then((result) => console.log("Finished"))
  } else {
    console.log("Available Commands:")
    console.log(JSON.stringify(Object.keys(methods), null, 2))
  }
}
