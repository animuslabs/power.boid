import { check, Name, requireAuth } from "proton-tsc"
import { PwrConfig } from "../tables/config"
import { OStatsActions } from "./6-ostats"

/**
 *These actions clear tables or clean them within some limits.
 */
export class TableCleanActions extends OStatsActions {
  loopOraclesClear(num:i32 = 50):void {
    const oracles = this.oraclesT
    for (let i = 0; i < num; i++) {
      let row = oracles.first()
      if (row) oracles.remove(row)
      else break
    }
  }

  loopReportsClear(scope:Name, num:i32 = 50):void {
    const reports = this.pwrReportsT(scope)
    for (let i = 0; i < num; i++) {
      let row = reports.first()
      if (row) reports.remove(row)
      else break
    }
  }

  loopCommitsClear(scope:Name, num:i32 = 50):void {
    const reports = this.roundCommitT(scope)
    for (let i = 0; i < num; i++) {
      let row = reports.first()
      if (row) reports.remove(row)
      else break
    }
  }

  loopOstatsClear(scope:Name, num:i32 = 50):void {
    const reports = this.oracleStatsT(scope)
    for (let i = 0; i < num; i++) {
      let row = reports.first()
      if (row) reports.remove(row)
      else break
    }
  }

  loopBoincClear(num:i32 = 50):void {
    const reports = this.boincMetaT
    for (let i = 0; i < num; i++) {
      let row = reports.first()
      if (row) reports.remove(row)
      else break
    }
  }

  loopProtocolsClear(num:i32 = 50):void {
    const oracles = this.protocolsT
    for (let i = 0; i < num; i++) {
      let row = oracles.first()
      if (row) oracles.remove(row)
      else break
    }
  }

  loopOstatsCleanup(scope:Name, olderThan:u32):void {
    const tbl = this.oracleStatsT(scope)
    let next = tbl.first()
    if (!next) {
      check(false, "no rows to clean")
      return
    }
    check(next && next.round < olderThan, "no rows to clean")
    for (let i = 0; i < 50; i++) {
      let row = next
      if (row && row.round < olderThan) {
        next = tbl.next(row)
        tbl.remove(row)
      } else break
    }
  }

  loopReportsCleanup(scope:Name, olderThan:u32):void {
    const tbl = this.pwrReportsT(scope)
    let next = tbl.first()
    if (!next) {
      check(false, "no rows to clean")
      return
    }
    for (let i = 0; i < 100; i++) {
      let row = next
      if (!row) break
      if (row && row.report.round < olderThan) {
        next = tbl.next(row)
        tbl.remove(row)
      } else break
    }
  }

  // CLEAR ACTIONS for emptying an entire table

  @action("commitsclear")
  commitsClear(scope:Name):void {
    requireAuth(this.receiver)
    this.loopCommitsClear(scope)
  }

  @action("boincclear")
  boincClear():void {
    requireAuth(this.receiver)
    this.loopBoincClear()
  }

  @action("oraclesclear")
  oraclesClear():void {
    requireAuth(this.receiver)
    this.loopOraclesClear()
  }

  @action("protoclear")
  protocolsClear():void {
    requireAuth(this.receiver)
    this.loopProtocolsClear()
  }

  @action("reportsclear")
  reportsClear(scope:Name):void {
    requireAuth(this.receiver)
    this.loopReportsClear(scope)
  }

  @action("ostatsclear")
  ostatsclear(scope:Name):void {
    requireAuth(this.receiver)
    this.loopOstatsClear(scope)
  }

  @action("configclear")
  configClear():void {
    requireAuth(this.receiver)
    this.configT.remove()
  }

  @action("globalclear")
  globalClear():void {
    requireAuth(this.receiver)
    this.globalT.remove()
  }

  // CLEAN Actions, removes based on round

  @action("commitsclean")
  roundCommitsCleanup(scope:Name, round:u16):void {
    const config:PwrConfig = this.getConfig()
    const minRound = Math.max(i32(this.currentRound() - 1) - config.keep_finalized_stats_rows, 0)
    check(minRound != 0, "can't cleanup commits yet")
    check(round < minRound, "specified round isn't elligible to be deleted, must be older than: " + minRound.toString())
    this.loopRoundCommitsCleanup(round, this.roundCommitT(scope), true)
  }

  @action("ostatsclean")
  oStatsClean(scope:Name):void {
    const config = this.getConfig()
    const cleanupOlder = u32(Math.max(i32(this.currentRound() - 1) - config.keep_finalized_stats_rows, 0))
    check(cleanupOlder != 0, "can't cleanup oStats yet")
    this.loopOstatsCleanup(scope, cleanupOlder)
  }

  @action("reportsclean")
  reportsClean(scope:Name):void {
    const config = this.getConfig()
    const cleanupOlder = u32(Math.max(i32(this.currentRound() - 1) - config.keep_finalized_stats_rows, 0))
    check(cleanupOlder != 0, "can't cleanup reports yet")
    this.loopReportsCleanup(scope, cleanupOlder)
  }
}
