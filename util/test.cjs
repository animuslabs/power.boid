
const conf = require("../eosioConfig.cjs")
const env = require("../.env.cjs")
const { api, tapos, doAction } = require("./lib/eosjs.cjs")()
const activeChain = process.env.CHAIN || env.defaultChain
const defaultParams = { scope: conf.accountName[activeChain], code: conf.accountName[activeChain] }
const contract = require("./do.cjs")
const methods = {

}

if (require.main == module) {
  if (Object.keys(methods).find(el => el === process.argv[2])) {
    console.log("Starting:", process.argv[2])
    methods[process.argv[2]](...process.argv.slice(3)).catch((error) => console.error(JSON.stringify(error, null, 2)))
      .then((result) => console.log("Finished"))
  } else {
    console.log("Available Commands:")
    console.log(JSON.stringify(Object.keys(methods), null, 2))
  }
}
module.exports = methods
