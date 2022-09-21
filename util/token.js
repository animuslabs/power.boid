const conf = require('./eosioConfig')
const env = require('./.env.js')
const { api, tapos, doAction, authorization } = require('./lib/eosjs')()
const activeChain = process.env.CHAIN || env.defaultChain
const contractAccount = conf.accountName[activeChain]

const methods = {
  async sendBoid(from, to, quantity, memo = "") {
    quantity = `${parseInt(quantity)}.0000 BOID`
    await doAction("transfer",{from,to,quantity,memo},'token.boid',from)
  }
}

if (require.main == module) {
  if (Object.keys(methods).find(el => el === process.argv[2])) {
    console.log("Starting:", process.argv[2])
    methods[process.argv[2]](...process.argv.slice(3)).catch((error) => console.error(error))
      .then((result) => console.log('Finished'))
  } else {
    console.log("Available Commands:")
    console.log(JSON.stringify(Object.keys(methods), null, 2))
  }
}
