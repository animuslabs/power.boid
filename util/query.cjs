const conf = require("../eosioConfig.cjs")
const env = require("../.env.cjs")
const { api, tapos, doAction } = require("./lib/eosjs.cjs")()
const activeChain = process.env.CHAIN || env.defaultChain
const contractAccount = conf.accountName[activeChain]

const methods = {
  async accounts() {
    const result = await api.rpc.get_table_rows({ code: contractAccount, table: "accounts", limit: 10000, scope: contractAccount })
    console.table(JSON.stringify(result.rows, null, 2))
    return result
  }
}

if (require.main == module) {
  if (Object.keys(methods).find(el => el === process.argv[2])) {
    console.log("Starting:", process.argv[2])
    methods[process.argv[2]](...process.argv.slice(3)).catch((error) => console.error(error))
      .then((result) => console.log("Finished"))
  } else {
    console.log("Available Commands:")
    console.log(JSON.stringify(Object.keys(methods), null, 2))
  }
}
module.exports = methods
