import { RoundCommit } from "../tables/roundCommit"
import { Action, ActionData, check, EMPTY_NAME, Name, PermissionLevel, print, requireAuth, SAME_PAYER, TableStore } from "proton-tsc"
import { Account } from "../tables/external/accounts"
import { Oracle } from "../tables/oracles"
import { OracleStat } from "../tables/oracleStats"
import { PwrReport, PwrReportRow } from "../tables/pwrreports"
import { OracleActions } from "./2-oracle"
@packer
export class PowerAddParams extends ActionData {
  constructor(
    public boid_id:Name = EMPTY_NAME,
    public power:u16 = 0
  ) {
    super()
  }
}
@packer
export class ReportSentParams extends ActionData {
  constructor(
    public report:PwrReportRow,
    public adding_power:u16 = 0
  ) {
    super()
  }
}

@contract
export class PwrReportActions extends OracleActions {
  sendReport(boid_id:Name, report:PwrReportRow):void {
    // check(false, "finalize report here: " + this.minWeightThreshold().toString())
    const proto = this.protocolsT.requireGet(u64(report.report.protocol_id), "invalid protocol_id")
    const power:u16 = u16(proto.unitPowerMult * f32(report.report.units))
    // check(false, proto.unitPowerMult.toString() + " " + report.units.toString() + " " + power.toString())
    const logData = new ReportSentParams(report, power)
    const logAct = new Action(this.receiver, Name.fromString("reportsent"), [this.codePerm], logData.pack())
    logAct.send()
    // silently fail if no power was generated
    if (power == 0) return
    const data = new PowerAddParams(boid_id, power)
    const action = new Action(Name.fromString("boid"), Name.fromString("power.add"), [new PermissionLevel(Name.fromString("boid"), Name.fromString("active"))], data.pack())
    action.send()
  }

  @action("reportsent")
  reportSent(report:PwrReportRow, adding_power:u16):void {
    requireAuth(this.receiver)
  }

  /**
   * oracles call this action to add reports into the pwrreports table
   *
   * @param {Name} oracle
   * @param {Name} boid_id_scope
   * @param {PwrReport} report
   */
  @action("pwrreport")
  pwrReport(oracle:Name, boid_id_scope:Name, report:PwrReport):void {
    requireAuth(oracle)
    const reportId = PwrReportRow.getReportId(report)
    const config = this.getConfig()
    this.updateGlobal()
    let oRoundCommit = this.roundCommitT(oracle)
    let commitExists = oRoundCommit.getBySecondaryU128(RoundCommit.getByRoundProtocolBoidId(boid_id_scope, report.protocol_id, report.round), 1)
    check(commitExists == null, "oracle already commited report for this user + round + and protocol")
    const activeRound = this.currentRound() - 1
    // ensure the report is for a round that is valid
    check(report.round < this.currentRound(), "report round must target a past round")
    check(report.round == activeRound, "report round is too far in the past, must report for round: " + activeRound.toString())
    check(report.units > 0, "report units must be > 0")
    // ensure the oracle can make reports
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle not registered")
    check(!oracleRow.standby, "oracle is in standby mode, disable standby first to start making reports")
    check(oracleRow.weight > 0, "can't make reports with a weight of 0")

    // make sure it's a valid protocol
    const protocol = this.protocolsT.requireGet(u64(report.protocol_id), "invalid protocol_id")
    check(protocol.active, "protocol not currently active, can't make report")
    const coreContract = Name.fromString("boid")

    // make sure the target boid_id is valid
    const accountsT:TableStore<Account> = new TableStore<Account>(coreContract, coreContract)
    check(accountsT.exists(boid_id_scope.value), "invalid boid_id_owner")

    let reportSent = false
    let reportCreated = false

    const pwrReportsT = this.pwrReportsT(boid_id_scope)
    const existing = pwrReportsT.get(reportId)
    const global = this.globalT.get()

    // if the report already exists, aggregate our weight with the existing weight and possibly finalize it
    if (existing) {
      existing.approval_weight += oracleRow.weight
      existing.approvals.push(oracle)
      // if we can finalize, go ahead and do it now
      if (existing.approval_weight >= this.minWeightThreshold(config, global) && this.shouldFinalizeReports(existing.report.round, config)) {
        this.sendReport(boid_id_scope, existing)
        reportSent = true
        this.pwrReportsT(boid_id_scope).remove(existing)
      } else pwrReportsT.update(existing, oracle)
    } else {
      // we are the first to make this report so this oracle is the proposer
      reportCreated = true
      print("\n minThreshold: " + u16(this.minWeightThreshold()).toString())
      print("\n weightEnough? " + (oracleRow.weight >= u16(this.minWeightThreshold())).toString())
      const reported = oracleRow.weight >= u16(this.minWeightThreshold()) && this.shouldFinalizeReports(report.round, config)
      print("\n reported: " + reported.toString())
      const row = new PwrReportRow(oracle, report, [oracle], oracleRow.weight)
      pwrReportsT.store(row, oracle)
      if (reported) {
        reportSent = true
        this.sendReport(boid_id_scope, row)
        this.pwrReportsT(boid_id_scope).remove(row)
      }
    }
    this.markOracleActive(oracleRow, global)
    this.globalT.set(global, this.receiver)

    // if report was sent, we need to update the stats for all oracles that participated
    if (reportSent) {
      if (existing) {
        for (let i = 0; i < existing.approvals.length; i++) {
          const oracleName = existing.approvals[i]
          let row:Oracle|null = null
          if (oracleName == oracle) row = oracleRow
          else row = this.oraclesT.get(oracleName.value)
          if (!row) continue
          else this.updateOracleStats(row, reportSent, false, report.round)
        }
      }
    } else {
      // otherwise we just need to update our own oracle stats
      this.updateOracleStats(oracleRow, reportSent, reportCreated, report.round)
    }
    this.loopRoundCommitsCleanup(activeRound - 1, oRoundCommit, false)
    oRoundCommit.store(new RoundCommit(oRoundCommit.availablePrimaryKey, report.protocol_id, report.round, boid_id_scope), oracle)
  }

  /**
   * Update the oracle stats or create a new oraclestats row for the target round.
   *
   * @param {Oracle} oracleRow reference to the oracle row to be edited
   * @param {boolean} reportSent was the report finalized or not
   * @param {boolean} proposed did the oracle propose the report or just adding to an existing one
   * @param {u16} targetRound target round to update oracle stats
   * @memberof PwrReportActions
   */
  updateOracleStats(oracleRow:Oracle, reportSent:boolean, proposed:boolean, targetRound:u16):void {
    const oStatsT = this.oracleStatsT(oracleRow.account)
    const existingOStats = oStatsT.get(u64(targetRound))
    if (existingOStats) {
      if (reportSent) {
        existingOStats.reports.reported_or_merged++
        if (existingOStats.reports.unreported_unmerged > 0)existingOStats.reports.unreported_unmerged--
      } else existingOStats.reports.unreported_unmerged++
      if (proposed) existingOStats.reports.proposed++
      oStatsT.update(existingOStats, this.receiver)
    } else {
      const oracleStatsRow = new OracleStat(targetRound, oracleRow.weight, { proposed: proposed ? 1 : 0, reported_or_merged: reportSent ? 1 : 0, unreported_unmerged: reportSent ? 0 : 1 })
      oStatsT.store(oracleStatsRow, this.receiver)
    }
  }

  /**
   * Finish report
   * Since reports can't always be finalized when receiving reports, sometimes we need to finalize the report seperately.
   * does not require any authentication
   *
   * @param {Name} boid_id_scope the scope of pwrreports table where the reports can be find
   * @param {u64} pwrreport_id the report to finalize
   */
  @action("finishreport")
  finishReport(boid_id_scope:Name, pwrreport_id:u64):void {
    const config = this.getConfig()
    const pwrReport = this.pwrReportsT(boid_id_scope).requireGet(pwrreport_id, "invalid id provided")
    check(this.shouldFinalizeReports(u16(pwrReport.report.round), config), "can't finish reports this early in a round")
    const global = this.globalT.get()
    const minThreshold = this.minWeightThreshold(config, global)
    check(pwrReport.approval_weight >= minThreshold, "aggregate approval_weight isn't high enough. Minimum:" + minThreshold.toString() + " report has:" + pwrReport.approval_weight.toString())
    this.sendReport(boid_id_scope, pwrReport)

    for (let i = 0; i < pwrReport.approvals.length; i++) {
      const oracleName = pwrReport.approvals[i]
      let row = this.oraclesT.get(oracleName.value)
      if (!row) continue
      else this.updateOracleStats(row, true, false, pwrReport.report.round)
    }
    this.globalT.set(global, SAME_PAYER)
    this.pwrReportsT(boid_id_scope).remove(pwrReport)
  }

  @action("mergereports")
  mergeReports(boid_id_scope:Name, pwrreport_ids:u64[]):void {
    check(pwrreport_ids.length > 1, "must provide at least two reports to merge")
    const config = this.getConfig()
    const targetReports:PwrReportRow[] = []
    let targetProtocol:i16 = -1
    let targetRound:i32 = -1
    let aggregateWeight:u16 = 0
    const pwrReportsT = this.pwrReportsT(boid_id_scope)
    for (let i = 0; i < pwrreport_ids.length; i++) {
      const id = pwrreport_ids[i]
      const pwrReport = pwrReportsT.requireGet(id, "invalid id provided")

      // make sure the target reports are compatible to be merged
      if (targetProtocol < 0) targetProtocol = i16(pwrReport.report.protocol_id)
      else check(pwrReport.report.protocol_id == targetProtocol, "protocol_ids must match")
      if (targetRound < 0) targetRound = i32(pwrReport.report.round)
      else check(pwrReport.report.round == targetRound, "rounds must match")
      targetReports.push(pwrReport)
    }

    check(this.shouldFinalizeReports(u16(targetRound), config), "can't merge reports this early in a round")

    const global = this.globalT.get()

    let medianUnits:u32 = 0
    // find the median
    targetReports.sort((a:PwrReportRow, b:PwrReportRow) => a.report.units - b.report.units)
    let half = i32(Math.floor(targetReports.length / 2))

    if (targetReports.length % 2) medianUnits = targetReports[half].report.units
    else medianUnits = u32((targetReports[half - 1].report.units + targetReports[half].report.units) / 2)

    //find safe min/max values
    const safeAmount = Math.max(f32(medianUnits) * config.consensus.merge_deviation_pct, 1)
    const safeMax = u32(medianUnits + safeAmount)
    check(safeMax >= medianUnits, "safeMax max reached")
    const safeMin = u32(Math.max(f32(medianUnits) - safeAmount, 1))

    // ensure each report is a safe range from the median
    for (let i = 0; i < targetReports.length; i++) {
      const pwrReport = targetReports[i]
      check(pwrReport.report.units <= safeMax, "report units " + pwrReport.report.units.toString() + " above maximum: " + safeMax.toString())
      check(pwrReport.report.units >= safeMin, "report units " + pwrReport.report.units.toString() + " below required minimum: " + safeMin.toString())
    }
    const mergedRow = targetReports[half]

    // aggregate weights and see if it's above the minimum
    aggregateWeight = targetReports.reduce((a:u16, b:PwrReportRow) => a + b.approval_weight, u16(0))
    print("\n min threshold: " + this.minWeightThreshold(config, global).toString())
    print("\n aggregate: " + aggregateWeight.toString())
    check(aggregateWeight >= this.minWeightThreshold(config, global), "aggregate approval_weight isn't high enough " + this.minWeightThreshold(config, global).toString() + " " + aggregateWeight.toString())

    let allOracles:Name[] = []

    // delete all the report rows and update all oracles
    for (let i = 0; i < targetReports.length; i++) {
      const pwrReport = targetReports[i]

      for (let i = 0; i < pwrReport.approvals.length; i++) {
        const oracle = pwrReport.approvals[i]
        const exists = allOracles.indexOf(oracle)
        if (exists == -1) allOracles.push(oracle)
        else {
          check(false, "can't merge multiple reports that share same oracle: " + oracle.toString())
        }
      }
      pwrReportsT.remove(pwrReport)
    }

    mergedRow.approvals = allOracles
    mergedRow.approvals.push(Name.fromString("merged.boid"))
    mergedRow.approval_weight = aggregateWeight
    this.sendReport(boid_id_scope, mergedRow)

    // update oracle stats for each oracle
    for (let i = 0; i < allOracles.length; i++) {
      const oracle = allOracles[i]
      const oStatsT = this.oracleStatsT(oracle)
      const existing = oStatsT.get(u64(targetRound))
      if (existing) {
        existing.reports.reported_or_merged++
        if (existing.reports.unreported_unmerged > 0) existing.reports.unreported_unmerged--
        oStatsT.update(existing, this.receiver)
      } else {
        const oracleData = this.oraclesT.get(oracle.value)
        if (!oracleData) continue
        const oracleStatsRow = new OracleStat(u16(targetRound), oracleData.weight, { reported_or_merged: 1, unreported_unmerged: 0, proposed: 0 })
        oStatsT.store(oracleStatsRow, this.receiver)
      }
    }
  }
}
