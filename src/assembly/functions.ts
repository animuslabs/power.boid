import { EMPTY_NAME, Name } from "proton-tsc"
import { PwrReport, PwrReportRow } from "./tables/pwrreports"
import { PwrGlobal } from "./tables/global"

@packer
class TryFinalizeReportParams {
  report:PwrReportRow = new PwrReportRow()
  minWeightThreashold:u16 = 0
  shouldFinalizeReport:boolean = false
  sendReport:(boid_id:Name, report:PwrReport) =>void = () => {}
  boid_id:Name = EMPTY_NAME
  global:PwrGlobal = new PwrGlobal()
}
export function tryFinalizeReport(params:TryFinalizeReportParams):boolean {
  const { report, minWeightThreashold, shouldFinalizeReport, sendReport, boid_id, global } = params
  if (report.approval_weight >= minWeightThreashold && shouldFinalizeReport) {
    sendReport(boid_id, report.report)
    global.reports.reported++
    global.reports.unreported_and_unmerged--
    report.reported = true
    return true
  } else return false
}
