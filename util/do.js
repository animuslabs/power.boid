const conf = require('./eosioConfig')
const env = require('./.env.js')
const { api, tapos, doAction } = require('./lib/eosjs')()
const activeChain = process.env.CHAIN || env.defaultChain
const contractAccount = conf.accountName[activeChain]
const config = {
  paused: false,
  min_consensus_weight: 6,
  min_consensus_pct: 0.51,
  collateral_pct_pay_per_round: 0.01,
  round_bonus_pay_reports: 500,
  round_bonus_pay_proposed: 1000,
  slash_threshold_pct: 0.9,
  slash_quantity_static: 1,
  slash_quantity_collateral_pct: 0.01,
  withdraw_rounds_wait: 20,
  keep_finalized_stats_rows: 3,
  reports_finalized_after_rounds: 3,
  unlock_wait_rounds: 40,
  standby_toggle_interval_rounds: 3,
  weight_collateral_pwr: 1.1,
  oracle_collateral_deposit_increment: 1000,
  reports_accumulate_weight_round_pct: 1,
  weight_collateral_divisor: 1000,
  first_unlock_wait_rounds: 1,
  merge_deviation_pct: 0.25,
  oracle_expected_active_after_rounds: 2,
  min_pay_report_share_threshold:0.10
}

const methods = {
  async configset() {
    await doAction('configset',{config})
  },
  async configClear() {
    await doAction('configclear')
  },
  async thisround() {
    await doAction("thisround")
  },
  async finalround() {
    await doAction("finalround")
  },
  async setstandby(oracle, standby) {
    if (standby == "false") standby = false
    else standby = true
    await doAction("setstandby",{oracle,standby})
  },
  async protoset() {
    await doAction("protoset",{protocol:{protocol_id:0,protocol_name:"fah",unitPowerMult:0.005,active:true}})
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
  async finishreport(boid_id_scope, pwrreport_ids) {
    await doAction("finishreport",{boid_id_scope, pwrreport_ids})
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
  async clearAllReports() {
    const scopes = (await api.rpc.get_table_by_scope({ code: contractAccount, table: "pwrreports", limit: 1000 })).rows.map(el => el.scope)
    console.log(scopes)
    for (const scope of scopes) {
      await doAction('reportsclear',{scope})
    }
  },
  async slashabsent(oracle, round) {
    await doAction("slashabsent",{oracle,round})
  },
  async powerClaim(boid_id) {
    await doAction("power.claim",{boid_id},"boid","boid")
  },
  async teamChange(boid_id, new_team_id, new_pwr_tax_mult) {
    await doAction("team.change",{boid_id,new_team_id,new_pwr_tax_mult},"boid","boid")
  },
  async showStats() {
    const stats = (await api.rpc.get_table_rows({ code: contractAccount, table: "stats", limit: 1000, scope: contractAccount })).rows.reverse()
    console.table(stats)
    // stats.forEach(el => {
    //   // console.log(JSON.stringify(el.starting_global))

    // })
    console.log(stats.map(el => ({round:el.round,starting_global:el.starting_global})))

  },
  async cleanRoundCommits(scope) {
    await doAction("commitsclean",{scope})
  }
}

//   if (acct.power.last_claimed_round.toNumber() < round) await doAction("power.claim", PowerClaim.from({ boid_id: acct.boid_id }), "boid", [PermissionLevel.from("boid@active")]).catch(console.error)
//   const result = await doAction("team.change", TeamChange.from({ boid_id: acct.boid_id, new_team_id: 1, new_pwr_tax_mult: 10 }), "boid", [PermissionLevel.from("boid@active")])

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
