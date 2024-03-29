import { RoundCommit } from "../tables/roundCommit"
import { Action, ActionData, check, EMPTY_NAME, Encoder, Name, PermissionLevel, print, requireAuth, SAME_PAYER, TableStore, U128 } from "proton-tsc"
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

@contract
export class PwrReportActions extends OracleActions {
  sendReport(boid_id:Name, report:PwrReport):void {
    // check(false, "finalize report here: " + this.minWeightThreshold().toString())
    const proto = this.protocolsT.requireGet(u64(report.protocol_id), "invalid protocol_id")
    const power:u16 = u16(proto.unitPowerMult * f32(report.units))
    // check(false, proto.unitPowerMult.toString() + " " + report.units.toString() + " " + power.toString())
    // silently fail if no power was generated
    if (power == 0) return
    const data = new PowerAddParams(boid_id, power)
    const action = new Action(Name.fromString("boid"), Name.fromString("power.add"), [new PermissionLevel(Name.fromString("boid"), Name.fromString("active"))], data.pack())
    action.send()
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

    let oRoundCommit = this.roundCommitT(oracle)
    let commitExists = oRoundCommit.getBySecondaryU128(RoundCommit.getByRoundProtocolBoidId(boid_id_scope, report.protocol_id, report.round), 1)
    check(commitExists == null, "oracle already commited report for this user and round")

    // ensure the report is for a round that is valid
    check(this.currentRound() >= config.reports_finalized_after_rounds, "chain is too recent to generate reports")
    check(report.round >= this.currentRound() - config.reports_finalized_after_rounds, "round is too far in the past")
    check(report.round < this.currentRound(), "report round must target a past round")

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

    // make sure the stats table is updated for this round
    this.updateStats(global)

    // if the report already exists, aggregate our weight with the existing weight and possibly finalize it
    if (existing) {
      check(!existing.reported, "report already reported")
      check(!existing.merged, "report already merged")
      existing.approval_weight += oracleRow.weight
      existing.approvals.push(oracle)

      // if we can finalize, go ahead and do it now
      if (existing.approval_weight >= this.minWeightThreshold(config, global) && this.shouldFinalizeReports(existing.report.round, config)) {
        this.sendReport(boid_id_scope, report)
        reportSent = true
        existing.reported = true
        global.reports.reported++
        global.reports.unreported_and_unmerged--
      }
      pwrReportsT.update(existing, this.receiver)
    } else {
      // we are the first to make this report so this oracle is the proposer
      reportCreated = true
      print("\n minThreshold: " + u16(this.minWeightThreshold()).toString())
      print("\n weightEnough? " + (oracleRow.weight >= u16(this.minWeightThreshold())).toString())
      const reported = oracleRow.weight >= u16(this.minWeightThreshold()) && this.shouldFinalizeReports(report.round, config)
      print("\n reported: " + reported.toString())
      const row = new PwrReportRow(oracle, report, [oracle], oracleRow.weight, reported)
      global.reports.proposed++
      pwrReportsT.store(row, this.receiver)
      if (reported) {
        reportSent = true
        this.sendReport(boid_id_scope, report)
        global.reports.reported++
      } else global.reports.unreported_and_unmerged++
    }
    this.markOracleActive(oracleRow, global)
    this.globalT.set(global, this.receiver)

    // if report was sent, we need to update the stats for all oracles that participated
    if (reportSent) {
      if (!existing) return
      for (let i = 0; i < existing.approvals.length; i++) {
        const oracleName = existing.approvals[i]
        let row:Oracle|null = null
        if (oracleName == oracle) row = oracleRow
        else row = this.oraclesT.get(oracleName.value)
        if (!row) continue
        else this.updateOracleStats(row, reportSent, false, report.round)
      }
    } else {
      // otherwise we just need to update our own oracle stats
      this.updateOracleStats(oracleRow, reportSent, reportCreated, report.round)
    }
    oRoundCommit.store(new RoundCommit(oRoundCommit.availablePrimaryKey, report.protocol_id, report.round, boid_id_scope), this.receiver)
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
        existingOStats.reports.reported_merged++
        existingOStats.reports.unreported_unmerged--
      } else existingOStats.reports.unreported_unmerged++
      if (proposed) existingOStats.reports.proposed++
      oStatsT.update(existingOStats, this.receiver)
    } else {
      const oracleStatsRow = new OracleStat(targetRound, oracleRow.weight, { proposed: proposed ? 1 : 0, reported_merged: reportSent ? 1 : 0, unreported_unmerged: reportSent ? 0 : 1 })
      oStatsT.store(oracleStatsRow, this.receiver)
    }
  }

  /**
   * Finish report
   * Since reports can't always be finalized when receiving reports, sometimes we need to finalize the report seperately.
   * Sometimes oracles may make slightly different reports based on fuzzy data.
   * In this case, multiple reports that are within a range can be combined and finalized as one report.
   * does not require any authentication
   *
   * @param {Name} boid_id_scope the scope of pwrreports table where the reports can be find
   * @param {u64[]} pwrreport_ids a vector of reports that could be combined
   */
  @action("finishreport")
  finishReport(boid_id_scope:Name, pwrreport_ids:u64[]):void {
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
      check(!pwrReport.reported, "can't merge reports already reported")
      check(!pwrReport.merged, "can't merge reports already merged")
      targetReports.push(pwrReport)
    }

    check(this.shouldFinalizeReports(u16(targetRound), config), "can't finalize/merge reports this early in a round")

    const global = this.globalT.get()
    this.updateStats(global)

    let mergedRow = targetReports[0]
    let medianUnits:u32 = targetReports[0].report.units
    if (targetReports.length > 1) {
      // find the median
      targetReports.sort((a:PwrReportRow, b:PwrReportRow) => a.report.units - b.report.units)
      let half = i32(Math.floor(targetReports.length / 2))

      if (targetReports.length % 2) medianUnits = targetReports[half].report.units
      else medianUnits = u32((targetReports[half - 1].report.units + targetReports[half].report.units) / 2)

      //find safe min/max values
      const safeAmount = Math.max(f32(medianUnits) * config.merge_deviation_pct, 1)
      const safeMax = u32(medianUnits + safeAmount)
      check(safeMax >= medianUnits, "safeMax max reached")
      const safeMin = u32(Math.max(f32(medianUnits) - safeAmount, 1))

      // ensure each report is a safe range from the median
      for (let i = 0; i < targetReports.length; i++) {
        const pwrReport = targetReports[i]
        check(pwrReport.report.units <= safeMax, "report units " + pwrReport.report.units.toString() + " above maximum: " + safeMax.toString())
        check(pwrReport.report.units >= safeMin, "report units " + pwrReport.report.units.toString() + " below required minimum: " + safeMin.toString())
      }
      mergedRow = targetReports[half]
    }

    // aggregate weights and see if it's above the minimum
    aggregateWeight = targetReports.reduce((a:u16, b:PwrReportRow) => a + b.approval_weight, u16(0))
    print("\n min threshold: " + this.minWeightThreshold(config, global).toString())
    print("\n aggregate: " + aggregateWeight.toString())
    check(aggregateWeight >= this.minWeightThreshold(config, global), "aggregate approval_weight isn't high enough " + this.minWeightThreshold(config, global).toString() + " " + aggregateWeight.toString())

    // create or update merged report
    if (targetReports.length % 2) {
      mergedRow.reported = true
      if (targetReports.length > 1) {
        mergedRow.approvals.push(Name.fromString("merged.boid"))
      }
    } else {
      const newReport:PwrReport = { protocol_id: u8(targetProtocol), round: u16(targetRound), units: medianUnits }
      mergedRow = new PwrReportRow(Name.fromString("merged.boid"), newReport, [Name.fromString("merged.boid")], aggregateWeight, true, false)
      this.pwrReportsT(boid_id_scope).store(mergedRow, this.receiver)
    }
    this.sendReport(boid_id_scope, mergedRow.report)

    let allOracles:Name[] = []

    // update all the report rows and store all oracles
    for (let i = 0; i < targetReports.length; i++) {
      const pwrReport = targetReports[i]
      pwrReport.merged = true
      pwrReportsT.update(pwrReport, this.receiver)
      for (let i = 0; i < pwrReport.approvals.length; i++) {
        const oracle = pwrReport.approvals[i]
        const exists = allOracles.indexOf(oracle)
        if (exists == -1) allOracles.push(oracle)
        else {
          check(false, "can't merge multiple reports that share same oracle: " + oracle.toString())
        }
      }
    }

    // update oracle stats for each oracle
    for (let i = 0; i < allOracles.length; i++) {
      const oracle = allOracles[i]
      const oStatsT = this.oracleStatsT(oracle)
      const existing = oStatsT.get(u64(targetRound))
      if (existing) {
        existing.reports.reported_merged++
        existing.reports.unreported_unmerged--
        oStatsT.update(existing, this.receiver)
      } else {
        const oracleData = this.oraclesT.get(oracle.value)
        if (!oracleData) continue
        const oracleStatsRow = new OracleStat(u16(targetRound), oracleData.weight, { reported_merged: 1, unreported_unmerged: 0, proposed: 0 })
        oStatsT.store(oracleStatsRow, this.receiver)
      }
    }

    // update global data
    global.reports.reported++
    global.reports.merged += u64(targetReports.length)
    global.reports.unreported_and_unmerged -= u64(targetReports.length)
    this.globalT.set(global, this.receiver)
  }
}
