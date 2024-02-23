const conf = require('./eosioConfig')
const env = require('./.env.js')
const { api, tapos, doAction } = require('./lib/eosjs')()
const activeChain = process.env.CHAIN || env.defaultChain
const contractAccount = conf.accountName[activeChain]
let config = {
  paused: false,
  consensus: {
    min_weight: 2,
    min_weight_pct: 0.66,
    merge_deviation_pct: 0.25
  },
  payment: {
    collateral_pct_pay_per_round_mult: 0.00007415,
    round_bonus_pay_reports: 10,
    round_bonus_pay_proposed: 2,
    reports_proposed_adjust_pwr: .42,
    num_oracles_adjust_base:1.015
  },
  slashLow: {
    slash_quantity_static: 500000,
    slash_quantity_collateral_pct: 5,
  },
  slashMed: {
    slash_quantity_static: 1000000,
    slash_quantity_collateral_pct: 10,
  },
  slashHigh: {
    slash_quantity_static: 1500000,
    slash_quantity_collateral_pct: 25,
  },
  waits: {
    withdraw_rounds_wait: 5,
    collateral_unlock_wait_rounds: 10
  },
  collateral: {
    oracle_collateral_deposit_increment: 1_000_000,
    oracle_collateral_minimum: 1_000_000
  },
  keep_finalized_stats_rows: 2,
  standby_toggle_interval_rounds: 5,
  reports_accumulate_weight_round_pct: 0
}

const methods = {
  async configset() {
    await doAction('configset',{config})
  },
  async configclear() {
    await doAction('configclear')
  },
  async thisround() {
    await doAction("thisround")
  },
  async setweight(oracle,weight) {
    await doAction("setweight",{oracle,weight})
  },
  async payoutround(oracle,round) {
    await doAction("payoutround",{oracle,round})
  },
  async finalround() {
    await doAction("finalround")
  },
  async globalset(){
    await doAction("globalset",{global:{reporting_round:0,active_oracles:[],expected_active_oracles:["boidworker11","boidworker12"],expected_active_weight:2,active_weight:0}})
  },
  async setstandby(oracle, standby) {
    if (standby == "false") standby = false
    else standby = true
    await doAction("setstandby",{oracle,standby})
  },
  async protoset() {
    await doAction("protoset",{protocol:{protocol_id:5,protocol_name:"wcg",unitPowerMult:0.001,active:true}})
  },
  async protoclear() {
    await doAction("protoclear")
  },
  async globalclear() {
    await doAction("globalclear")
  },
  async oraclesclear() {
    await doAction("oraclesclear")
  },
  async pwrreport() {
    await doAction("pwrreport",{oracle:"boidworker11",boid_id_scope:"trovi.oid",report:{protocol_id:3,round:56,units:1000}},contractAccount,"boidworker11")
  },
  async mergereports(boid_id_scope, pwrreport_ids) {
    await doAction("mergereports",{boid_id_scope, pwrreport_ids})
  },
  async finishreport(boid_id_scope, pwrreport_id) {
    await doAction("finishreport",{boid_id_scope, pwrreport_id})
  },
  async reportsclean(scope) {
    await doAction("reportsclean",{scope})
  },
  async statsclean() {
    await doAction("statsclean")
  },
  async statsclear() {
    await doAction("statsclear")
  },
  async ostatsclean(scope) {
    await doAction("ostatsclean",{scope})
  },
  async ostatsclear(scope) {
    await doAction("ostatsclear",{scope})
  },
  async roundcommit(oracle,boid_id, protocol_id, round){
    await doAction("roundcommit",{oracle, boid_id, protocol_id, round})
  },
  async clearAllReports() {
    const scopes = (await api.rpc.get_table_by_scope({ code: contractAccount, table: "pwrreports", limit: 1000 })).rows.map(el => el.scope)
    console.log(scopes)
    for (const scope of scopes) {
      await doAction('reportsclear',{scope})
    }
  },
  async clearAllRoundCommits() {
    const scopes = (await api.rpc.get_table_by_scope({ code: contractAccount, table: "roundcommit", limit: 1000 })).rows.map(el => el.scope)
    console.log(scopes)
    for (const scope of scopes) {
      await doAction('commitsclear',{scope})
    }
  },
  async clearAllOstats() {
    const scopes = (await api.rpc.get_table_by_scope({ code: contractAccount, table: "oraclestats", limit: 1000 })).rows.map(el => el.scope)
    console.log(scopes)
    for (const scope of scopes) {
      await doAction('ostatsclean',{scope})
    }
  },
  async slashabsent(oracle, round) {
    await doAction("slashabsent",{oracle,round})
  },
  async showStats() {
    const stats = (await api.rpc.get_table_rows({ code: contractAccount, table: "stats", limit: 1000, scope: contractAccount })).rows.reverse()
    console.table(stats)
    // stats.forEach(el => {
    //   // console.log(JSON.stringify(el.starting_global))

    // })
    console.log(stats.map(el => ({round:el.round,starting_global:el.starting_global})))

  },
  async commitsclean(scope,round) {
    await doAction("commitsclean",{scope,round})
  },
  async commitsclear(scope) {
    await doAction("commitsclear",{scope})
  },
  async boincset(protocol_id,url,teamId) {
    await doAction("boincset",{boincMeta:{protocol_id,url,teamId,meta:[]}})
  },
  async boincsetAll(){
    const boinc = [
      {protocol_id:1,url:" https://boinc.bakerlab.org/rosetta/",teamId:36190},
      {protocol_id:2,url:"https://denis.usj.es/denisathome/",teamId:11420},
      {protocol_id:3,url:"https://www.sidock.si/sidock/",teamId:312},
      {protocol_id:4,url:"https://www.rnaworld.de/rnaworld/",teamId:6401},
    ]
    for (let item of boinc){
      await this.boincset(...Object.values(item))
    }
  },
  async addcommit(){
    await doAction("addcommit",{oracle:"boidworker11",commit:{round_commit_id:6,protocol_id:1,round:3,boid_id:"test"}})
  },
  async addreport(){
    await doAction("addreport",{oracle:"boidworker12",report:{proposer:"boidworker12",report:{protocol_id:0,round:22,units:0},approvals:[],approval_weight:0}})
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
