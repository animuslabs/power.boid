import { Action, ActionData, check, Contract, EMPTY_NAME, Encoder, isAccount, Name, PermissionLevel, print, requireAuth, TableStore } from "proton-tsc"
import { Account } from "../tables/external/accounts"
import { Oracle } from "../tables/oracles"
import { OracleStat } from "../tables/oracleStats"
import { PwrReport, PwrReportRow } from "../tables/pwrreports"
// import { Account } from "../tables/external/accounts"
// import { PwrReportRow } from "../tables/pwrreports"
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
  getReportId(report:PwrReport):u64 {
    const idEncoder = new Encoder(8)
    idEncoder.packObjectArray([report])
    const bytes = idEncoder.getBytes()
    return u64(parseInt(bytes.reduce((acc:string, val:u8) => acc + val.toString(), "")))
  }

  sendReport(boid_id:Name, report:PwrReport):void {
    // check(false, "finalize report here: " + this.minWeightThreshold().toString())
    const proto = this.protocolsT.requireGet(u64(report.protocol_id), "invalid protocol_id")
    const power:u16 = u16(proto.unitPowerMult * f32(report.units))
    // check(false, proto.unitPowerMult.toString() + " " + report.units.toString() + " " + power.toString())
    if (power == 0) return
    const data = new PowerAddParams(boid_id, power)
    const action = new Action(Name.fromString("boid"), Name.fromString("power.add"), [new PermissionLevel(Name.fromString("boid"), Name.fromString("active"))], data.pack())
    action.send()
  }

  @action("pwrreport")
  pwrReport(oracle:Name, boid_id_scope:Name, report:PwrReport):void {
    requireAuth(oracle)
    const reportId = this.getReportId(report)
    const config = this.getConfig()
    check(report.round >= this.currentRound() - config.reports_finalized_after_rounds, "round is too far in the past")
    check(report.round < this.currentRound(), "report round must target a past round")
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle not registered")
    check(!oracleRow.standby, "oracle is in standby mode, disable standby first to start making reports")
    check(oracleRow.weight > 0, "can't make reports with a weight of 0")
    const protocol = this.protocolsT.requireGet(u64(report.protocol_id), "invalid protocol_id")
    check(protocol.active, "protocol not currently active, can't make report")
    const coreContract = Name.fromString("boid")
    const accountsT:TableStore<Account> = new TableStore<Account>(coreContract, coreContract)
    check(accountsT.exists(boid_id_scope.value), "invalid boid_id_owner")
    let reportSent = false
    let reportCreated = false
    const pwrReportsT = this.pwrReportsT(boid_id_scope)
    const existing = pwrReportsT.get(reportId)
    const global = this.globalT.get()
    this.updateStats(global)
    if (existing) {
      check(!existing.approvals.includes(oracle), "oracle already approved this report")
      check(!existing.reported, "report already reported")
      check(!existing.merged, "report already merged")
      existing.approval_weight += oracleRow.weight
      existing.approvals.push(oracle)
      const checkFinalize = existing.report.round == this.currentRound() - 1
      if (existing.approval_weight >= this.minWeightThreshold(config, global) && (checkFinalize ? this.shouldFinalizeReports(config) : true)) {
        this.sendReport(boid_id_scope, report)
        reportSent = true
        existing.reported = true
        global.reports.reported++
        global.reports.unreported_and_unmerged--
      }
      pwrReportsT.update(existing, this.receiver)
    } else {
      reportCreated = true
      const checkFinalize = report.round == this.currentRound() - 1
      print("\n minThreshold: " + u16(this.minWeightThreshold()).toString())
      print("\n checkFinalize: " + checkFinalize.toString())
      print("\n shouldFinalize: " + this.shouldFinalizeReports(config).toString())
      print("\n weightEnough? " + (oracleRow.weight >= u16(this.minWeightThreshold())).toString())
      const reported = oracleRow.weight >= u16(this.minWeightThreshold()) && (checkFinalize ? this.shouldFinalizeReports(config) : true)
      print("\n reported: " + reported.toString())
      const row = new PwrReportRow(reportId, oracle, report, [oracle], oracleRow.weight, reported)
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

    if (reportSent) {
      if (!existing) return
      for (let i = 0; i < existing.approvals.length; i++) {
        const oracleName = existing.approvals[i]
        let row:Oracle|null = null
        if (oracleName == oracle) row = oracleRow
        else row = this.oraclesT.get(oracleName.value)
        if (!row) continue
        else this.updateOracleStats(row, reportSent, false)
      }
    } else {
      this.updateOracleStats(oracleRow, reportSent, reportCreated)
    }
  }

  updateOracleStats(oracleRow:Oracle, reportSent:boolean, proposed:boolean):void {
    const oStatsT = this.oracleStatsT(oracleRow.account)
    const existingOStats = oStatsT.get(u64(this.currentRound()))
    if (existingOStats) {
      if (reportSent) {
        existingOStats.reports.reported_merged++
        existingOStats.reports.unreported_unmerged--
      } else existingOStats.reports.unreported_unmerged++
      if (proposed) existingOStats.reports.proposed++
      oStatsT.update(existingOStats, this.receiver)
    } else {
      const oracleStatsRow = new OracleStat(this.currentRound(), oracleRow.weight, { proposed: proposed ? 1 : 0, reported_merged: reportSent ? 1 : 0, unreported_unmerged: reportSent ? 0 : 1 })
      oStatsT.store(oracleStatsRow, this.receiver)
    }
  }

  @action("finishreport")
  finishReport(boid_id_scope:Name, pwrreport_id:u64):void {
    const pwrReportsT = this.pwrReportsT(boid_id_scope)
    const existing = pwrReportsT.requireGet(pwrreport_id, "invalid report id or scope")
    const config = this.getConfig()
    const global = this.globalT.get()
    if (existing.report.round == this.currentRound() - 1) check(this.shouldFinalizeReports(config), "report can't be finalized yet, too early in the round")
    check(existing.approval_weight >= this.minWeightThreshold(), "report can't be finalized yet, minimum weight threshold not met")
    check(!existing.merged && !existing.reported, "report already merged or reported")
    this.sendReport(boid_id_scope, existing.report)
    existing.reported = true
    global.reports.reported++
    global.reports.unreported_and_unmerged--

    pwrReportsT.update(existing, this.receiver)
    this.globalT.set(global, this.receiver)

    for (let i = 0; i < existing.approvals.length; i++) {
      const oracleName = existing.approvals[i]
      let row = this.oraclesT.get(oracleName.value)
      if (!row) continue
      else this.updateOracleStats(row, true, false)
    }
  }

  @action("mergereports")
  mergeReports(boid_id_scope:Name, pwrreport_ids:u64[]):void {
    const config = this.getConfig()
    const global = this.globalT.get()
    this.updateStats(global)
    check(this.shouldFinalizeReports(config), "can't finalize/merge reports this early in a round")
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

    // find the median
    targetReports.sort((a:PwrReportRow, b:PwrReportRow) => a.report.units - b.report.units)
    let half = i32(Math.floor(targetReports.length / 2))
    let medianUnits:u32 = 0
    if (targetReports.length % 2) medianUnits = targetReports[half].report.units
    else medianUnits = u32((targetReports[half - 1].report.units + targetReports[half].report.units) / 2)

    //find safe min/max values
    const safeAmount = Math.max((medianUnits * 0.25) + 1, medianUnits)
    const safeMax = u32(medianUnits + safeAmount)
    const safeMin = u32(Math.min(f32(medianUnits) - safeAmount, 1))

    // ensure each report is a safe range from the median
    for (let i = 0; i < targetReports.length; i++) {
      const pwrReport = targetReports[i]
      check(pwrReport.report.units <= safeMax, "report units " + pwrReport.report.units.toString() + " above maximum: " + safeMax.toString())
      check(pwrReport.report.units >= safeMin, "report units " + pwrReport.report.units.toString() + " below required minimum: " + safeMin.toString())
    }

    // aggregate weights and see if it's above the minimum
    aggregateWeight = targetReports.reduce((a:u16, b:PwrReportRow) => a + b.approval_weight, u16(0))
    print("\n min threshold: " + this.minWeightThreshold(config, global).toString())
    print("\n aggregate: " + aggregateWeight.toString())
    check(aggregateWeight >= this.minWeightThreshold(config, global), "aggregate approval_weight isn't high enough " + this.minWeightThreshold(config, global).toString() + " " + aggregateWeight.toString())

    // create or update merged report
    let mergedRow = targetReports[half]
    if (targetReports.length % 2) {
      mergedRow.reported = true
      mergedRow.approvals.push(Name.fromString("merged.boid"))
    } else {
      const newReport:PwrReport = { protocol_id: u8(targetProtocol), round: u16(targetRound), units: medianUnits }
      const report_id = this.getReportId(newReport)
      mergedRow = new PwrReportRow(report_id, Name.fromString("merged.boid"), newReport, [Name.fromString("merged.boid")], aggregateWeight, true, false)
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
          // TODO found an account with multiple reports, need to slash here
          // allOracles.splice(exists, 1)
          check(false, "can't merge multiple reports that share an oracle, should slash: " + oracle.toString())
        }
      }
    }

    // update oracle stats for each oracle
    for (let i = 0; i < allOracles.length; i++) {
      const oracle = allOracles[i]
      const oStatsT = this.oracleStatsT(oracle)
      const existing = oStatsT.get(u64(this.currentRound()))
      if (existing) {
        existing.reports.reported_merged++
        existing.reports.unreported_unmerged--
        oStatsT.update(existing, this.receiver)
      } else {
        const oracleData = this.oraclesT.get(oracle.value)
        if (!oracleData) continue
        const oracleStatsRow = new OracleStat(this.currentRound(), oracleData.weight, { reported_merged: 1, unreported_unmerged: 0, proposed: 0 })
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
