const conf = require("../eosioConfig.cjs")
const env = require("../.env.cjs")
const { api, tapos, doAction } = require("./lib/eosjs.cjs")()
const activeChain = process.env.CHAIN || env.defaultChain
const contractAccount = conf.accountName[activeChain]

const methods = {
  async updateauth() {
    const auth = {
      threshold: 1,
      keys: [{ key: "EOS6FoTSwiKk27SJ1kANdJFmso3KbECASAMDpEka4dG9p1ub6GqiH", weight: 1 }],
      accounts: [{ permission: { actor: contractAccount, permission: "eosio.code" }, weight: 1 }],
      waits: []
    }
    await doAction("updateauth", { account: contractAccount, auth, parent: "owner", permission: "active" }, "eosio", contractAccount)
  },
  async makeChildAccount(targetAccount) {
    const auth = {
      threshold: 1,
      keys: [{ key: "EOS6FoTSwiKk27SJ1kANdJFmso3KbECASAMDpEka4dG9p1ub6GqiH", weight: 1 }],
      accounts: [{ permission: { actor: contractAccount, permission: "eosio.code" }, weight: 1 }],
      waits: []
    }
    await doAction("updateauth", { account: targetAccount, auth, parent: "owner", permission: "active" }, "eosio", targetAccount)
  },
  async createAccount(accountName) {
    const result = await api.transact({
      actions: [{
        account: "eosio",
        name: "newaccount",
        data: {
          creator: contractAccount,
          name: accountName,
          owner: {
            threshold: 1,
            keys: [
              {
                key: "EOS6FoTSwiKk27SJ1kANdJFmso3KbECASAMDpEka4dG9p1ub6GqiH",
                weight: 1
              }
            ],
            accounts: [],
            waits: []
          },
          active: {
            threshold: 1,
            keys: [
              {
                key: "EOS6FoTSwiKk27SJ1kANdJFmso3KbECASAMDpEka4dG9p1ub6GqiH",
                weight: 1
              }
            ],
            accounts: [],
            waits: []
          }
        },
        authorization: [
          {
            actor: contractAccount,
            permission: "active"
          }
        ]
      },
      {
        account: "eosio",
        name: "buyrambytes",
        data: {
          payer: contractAccount,
          receiver: accountName,
          bytes: 10000
        },
        authorization: [
          {
            actor: contractAccount,
            permission: "active"
          }
        ]
      },
      {
        account: "eosio",
        name: "delegatebw",
        data: {
          from: contractAccount,
          receiver: accountName,
          stake_net_quantity: "0.2000 TLOS",
          stake_cpu_quantity: "1.2000 TLOS",
          transfer: false
        },
        authorization: [
          {
            actor: contractAccount,
            permission: "active"
          }
        ]
      }]
    }, tapos)
    console.log(result)
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
