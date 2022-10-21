import { check, Name, requireAuth } from "proton-tsc"
import { OracleStat } from "../tables/oracleStats"
import { TableCleanActions } from "./7-tableclean"

export class SlashActions extends TableCleanActions {
  /**
   * If an oracle is offline for a round where they were supposed to be making reports and they did not set themself into standby then they can be slashed.
   * This action does not require authentication but it does require the transaction author to provide some valid inputs or the trx will fail.
   * @param {Name} oracle
   * @param {u16} round
   */
  @action("slashabsent")
  slashAbsent(oracle:Name, round:u16):void {
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle not found")
    const config = this.getConfig()
    const oStatsT = this.oracleStatsT(oracle)
    const oStatsRow = oStatsT.get(u64(round))

    // stats row either hasn't been created or was cleared, important to fail to prevent cleared rows from being mistaken as absent
    const statsRow = this.statsT.requireGet(round + 1, "stats row missing")

    // check the global table first
    // This is important because when rows are cleared it may look like the oracle was missing
    const global = statsRow.starting_global
    check(global.expected_active_oracles.includes(oracle), "oracle was not expected to be active this round")
    check(!global.active_oracles.includes(oracle), "oracle was active this round")

    // verify that the oracle was absent in a round when they should be active
    check(!oracleRow.standby, "oracle is in standby, can't be slashed for inactivity")
    check(oracleRow.expected_active_after_round < round, "oracle is not expected to be active this round")
    const finalizedRound = this.currentRound() - config.reports_finalized_after_rounds
    check(round < finalizedRound, "invalid round specified, must be before the finalized round: " + finalizedRound.toString())

    // finally, if the row doesn't exist, send the slash action
    check(!oStatsRow, "stats row exists for this oracle on this round, no slashing needed")

    this.sendSlashOracle(oracle, this.findSlashQuantity(oracleRow, config))

    // write an empty row so the account can't be slashed twice
    const newRow:OracleStat = new OracleStat(round, 0, { proposed: 0, reported_merged: 0, unreported_unmerged: 0 }, true)
    oStatsT.store(newRow, this.receiver)
  }

  /**
   * Triggered by other contract actions, this action slashes some oracle collateral.
   * Requires contract auth.
   * @param {Name} oracle
   * @param {u32} quantity quantity is calculated by whatever parent action is calling slashoracle inline
   */
  @action("slashoracle")
  slashOracle(oracle:Name, quantity:u32):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    check(!oracleRow.standby, "can't slash an oracle in standby")
    check(quantity > 0, "quantity must be higher than zero")
    oracleRow.collateral.slashed += quantity
    const weightBefore = oracleRow.weight

    // if all the collateral is slashed, or weight is zero, set the oracle to standby
    if (oracleRow.collateral.slashed >= oracleRow.collateral.locked) {
      oracleRow.collateral.slashed = oracleRow.collateral.locked
      oracleRow.weight = 0
      this.sendOracleStandby(oracle, true)
    } else {
      oracleRow.weight = this.getOracleWeight(oracleRow.trueCollateral, this.configT.get())
      if (oracleRow.weight == 0) this.sendOracleStandby(oracle, true)
    }

    // if oracle weight decreased, adjust global values
    if (oracleRow.weight < weightBefore) {
      const global = this.globalT.get()
      global.expected_active_weight -= u16(weightBefore - oracleRow.weight)
      this.globalT.set(global, this.receiver)
    }

    // save oracle row
    this.oraclesT.update(oracleRow, this.receiver)
  }

  /**
   * Oracles can be slashed if they make multiple reports for the same protocol+boid_id+round
   *
   * @param {Name} oracle
   * @param {Name} boid_id_scope
   * @param {u64[]} pwrreport_ids
   * @param {u8} protocol_id
   * @param {u16} round
   */
  @action("slashmulti")
  slashMulti(oracle:Name, boid_id_scope:Name, pwrreport_ids:u64[]):void {
    check(pwrreport_ids.length > 1, "must include at least two pwrreport_ids")
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const config = this.getConfig()
    const pwrReportsT = this.pwrReportsT(boid_id_scope)
    let protocol_id:u8 = 0
    let round:u16 = 0
    let first:bool = true
    for (let i = 0; i < pwrreport_ids.length; i++) {
      const reportId = pwrreport_ids[i]
      const reportRow = pwrReportsT.requireGet(reportId, "invalid reportId: " + reportId.toString())
      const oracleIndex:i32 = reportRow.approvals.indexOf(oracle)

      // use first report protocol and round to compare
      if (first) {
        protocol_id = reportRow.report.protocol_id
        round = reportRow.report.round
        first = false
      }

      // verify the row is problematic
      check(oracleIndex > -1, "This report wasn't approved by the target oracle: " + reportId.toString())
      check(reportRow.report.protocol_id == protocol_id, "protocol_ids must match")
      check(reportRow.report.round == round, "rounds must match")
      // check(!reportRow.merged && !reportRow.reported, "report was already reported or merged")

      // remove the oracle aproval and weight from the row and save it
      // TODO: check for overflow if the oracle weight has changed since the report was made this could be problematic
      if (!reportRow.merged && !reportRow.reported) {
        reportRow.approvals.splice(oracleIndex, 1)
        if (oracleRow.weight < reportRow.approval_weight) reportRow.approval_weight -= oracleRow.weight
        else reportRow.approval_weight = 0
        pwrReportsT.update(reportRow, this.receiver)
      }
    }
    this.sendSlashOracle(oracle, this.findSlashQuantity(oracleRow, config) * pwrreport_ids.length)
  }
}
