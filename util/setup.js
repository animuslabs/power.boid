const conf = require('./eosioConfig')
const env = require('./.env.js')
const { api, tapos, doAction, authorization } = require('./lib/eosjs')()
const activeChain = process.env.CHAIN || env.defaultChain
const contractAccount = conf.accountName[activeChain]
const contract = require('./do.js')


const methods = {
  async updateOwner() {

    const auth = {
      "threshold": 1,
      "keys": [],
      "accounts": [{ permission: { actor: "dac.boid", permission: "active" }, "weight": 1 }],
      "waits": []
    }
    await doAction('updateauth', { account: contractAccount, auth, parent: '', permission: 'owner' }, 'eosio', contractAccount)
  },
  async updateAuth(pubkey) {
    // if (!pubkey) pubkey = "EOS6FoTSwiKk27SJ1kANdJFmso3KbECASAMDpEka4dG9p1ub6GqiH"
    const auth = {
      "threshold": 1,
      "keys": [],
      "accounts": [{ "permission": { "actor": contractAccount, "permission": "eosio.code" }, "weight": 1 }],
      "waits": []
    }
    await doAction('updateauth', { account: contractAccount, auth, parent: 'owner', permission: 'active' }, 'eosio', contractAccount)
  },
  async addMintPerm(pubkey) {
    if (!pubkey) pubkey = "EOS6FoTSwiKk27SJ1kANdJFmso3KbECASAMDpEka4dG9p1ub6GqiH"
    const auth = {
      "threshold": 1,
      "keys": [],
      "accounts": [
        { "permission": { "actor": "boid", "permission": "eosio.code" }, "weight": 1 },
        { "permission": { "actor": "power.boid", "permission": "eosio.code" }, "weight": 1 }
      ],
      "waits": []
    }
    await doAction('updateauth', { account: "tknmint.boid", auth, parent: 'owner', permission: 'active' }, 'eosio', "tknmint.boid")
    // await doAction('updateauth', { account: "mint.boid", auth, parent: 'owner', permission: 'active' }, 'eosio', "mint.boid")
    // await doAction('linkauth', { account: contractAccount, code:'avatar.boid',type:"finalize",requirement:'avataroracle' }, 'eosio', contractAccount)
  },
  async pwrAdd(pubkey) {
    if (!pubkey) pubkey = "EOS6FoTSwiKk27SJ1kANdJFmso3KbECASAMDpEka4dG9p1ub6GqiH"
    const auth = {
      "threshold": 1,
      "keys": [{ key: pubkey, weight: 1 }],
      "accounts": [
        { "permission": { "actor": "boid", permission: "eosio.code" }, "weight": 1 },
        { "permission": { "actor": "power.boid", permission: "eosio.code" }, "weight": 1 }
      ],
      "waits": []
    }
    await doAction('updateauth', { account: "boid", auth, parent: 'owner', permission: 'active' }, 'eosio', "boid")
    // await doAction('linkauth', { account: contractAccount, code:'avatar.boid',type:"finalize",requirement:'avataroracle' }, 'eosio', contractAccount)
  },
  async buyRam(payer,receiver,bytes) {
    const data = {
      payer,
      receiver,
      bytes
    }
    await doAction('buyrambytes', data, 'eosio', payer)
  },
  async powerUp(account = contractAccount, cpu_frac = 1e9) {
    const data = {
      "payer": account,
      "receiver": account,
      "days": 1,
      cpu_frac,
      "net_frac": 12076497,
      "max_payment": "0.1000 EOS"
    }
    await doAction('powerup', data, 'eosio', account)
  },
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
module.exports = methods
