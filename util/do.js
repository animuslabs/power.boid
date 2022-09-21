const conf = require('./eosioConfig')
const env = require('./.env.js')
const { api, tapos, doAction } = require('./lib/eosjs')()
const activeChain = process.env.CHAIN || env.defaultChain
const contractAccount = conf.accountName[activeChain]
const config = {
  paused: false,
  min_consensus_weight: 30,
  min_consensus_pct: 0.66,
  collateral_pct_pay_per_round: 0.01,
  round_bonus_pay_reports: 50000,
  round_bonus_pay_proposed: 200000,
  slash_threshold_pct: 0.5,
  slash_quantity_static: 500000,
  slash_quantity_collateral_pct: 0.01,
  withdraw_rounds_wait: 20,
  keep_stats_rows: 200,
  reports_finalized_after_rounds: 3,
  unlock_wait_rounds: 40,
  standby_toggle_interval_rounds: 20,
  weight_collateral_pwr: 1.1,
  oracle_collateral_deposit_increment: 1000,
  reports_accumulate_weight_round_pct: 0.20,
  weight_collateral_divisor:1000
}

const methods = {
  async configSet() {
    await doAction('configset',{config})
  },
  async configClear() {
    await doAction('configclear')
  },
  async thisround() {
    await doAction("thisround")
  },
  async setstandby(oracle, standby) {
    if (standby == "false") standby = false
    else standby = true
    await doAction("setstandby",{oracle,standby})
  },
  async protoset() {
    await doAction("protoset",{protocol:{protocol_id:0,protocol_name:"fah",unitPowerMult:0.0001}})
  }
}

if (require.main == module) {
  if (Object.keys(methods).find(el => el === process.argv[2])) {
    console.log('Starting:', process.argv[2])
    methods[process.argv[2]](...process.argv.slice(3)).catch(error => console.error(error))
      .then(result => console.log('Finished'))
  } else {
    console.log('Available Commands:')
    console.log(JSON.stringify(Object.keys(methods), null, 2))
  }
}
module.exports = methods