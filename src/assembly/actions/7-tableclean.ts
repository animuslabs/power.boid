import { RoundCommit } from "../tables/roundCommit"
import { check, Name, requireAuth, Table, TableStore } from "proton-tsc"
import { PwrConfig } from "../tables/config"
import { OStatsActions } from "./6-ostats"
import { OracleStat } from "../tables/oracleStats"

/**
 *These actions clear tables or clean them within some limits.
 */
export class TableCleanActions extends OStatsActions {
  loopStatsCleanup(olderThan:u32):void {
    let next = this.statsT.first()
    for (let i = 0; i < 50; i++) {
      let row = next
      if (row && row.round < olderThan) {
        next = this.statsT.next(row)
        this.statsT.remove(row)
      } else break
    }
  }

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

  loopProtocolsClear(num:i32 = 50):void {
    const oracles = this.protocolsT
    for (let i = 0; i < num; i++) {
      let row = oracles.first()
      if (row) oracles.remove(row)
      else break
    }
  }

  loopReportsCleanup(scope:Name, olderThan:u32):void {
    const tbl = this.pwrReportsT(scope)
    let next = tbl.getBySecondaryU64(u64(olderThan - 1), 0)
    if (!next) {
      check(false, "no rows to clean")
      return
    }
    check(next && next.report.round < olderThan, "no rows to clean" + next.report.round.toString())
    for (let i = 0; i < 50; i++) {
      let row = next
      if (row && row.report.round < olderThan) {
        next = tbl.previousBySecondaryU64(row, 0)
        tbl.remove(row)
      } else break
    }
  }

  loopRoundCommitsCleanup(scope:Name, olderThan:u32):void {
    const tbl:TableStore<RoundCommit> = this.roundCommitT(scope)
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

  // CLEAR ACTIONS for emptying an entire table

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

  @action("statsclear")
  statsClear():void {
    requireAuth(this.receiver)
    for (let i = 0; i < 100; i++) {
      const row = this.statsT.first()
      if (!row) continue
      this.statsT.remove(row)
    }
  }

  // CLEAN Actions, removes based on round

  @action("statsclean")
  statsCleanup():void {
    this.statsClean()
  }

  statsClean(config:PwrConfig = this.getConfig()):void {
    const cleanupOlder = u32(Math.max(i32(this.currentRound()) - config.keep_finalized_stats_rows, 0))
    this.loopStatsCleanup(cleanupOlder)
  }

  @action("reportsclean")
  reportsCleanup(scope:Name):void {
    const config = this.getConfig()
    this.statsClean(config)
    const cleanupOlder = u32(Math.max(i32(this.currentRound()) - config.keep_finalized_stats_rows, 0))
    check(cleanupOlder != 0, "can't cleanup reports yet")
    this.loopReportsCleanup(scope, cleanupOlder)
  }

  @action("commitsclean")
  roundCommitsCleanup(scope:Name):void {
    const config:PwrConfig = this.getConfig()
    this.statsClean(config)
    const cleanupOlder = u32(Math.max(i32(this.currentRound()) - config.keep_finalized_stats_rows, 0))
    check(cleanupOlder != 0, "can't cleanup commits yet")
    this.loopRoundCommitsCleanup(scope, cleanupOlder)
  }

  @action("ostatsclean")
  oStatsClean(scope:Name):void {
    const config = this.getConfig()
    this.statsClean(config)
    const cleanupOlder = u32(Math.max(i32(this.currentRound()) - config.keep_finalized_stats_rows, 0))
    check(cleanupOlder != 0, "can't cleanup oStats yet")
    this.loopOstatsCleanup(scope, cleanupOlder)
  }

  // delete reports for rounds other than the current one
  @action("cpidrepclean")
  cpidReportsClean(boid_id_scope:Name):void {
    const round = this.currentRound()
    const reportsT = this.cpidReportsT(boid_id_scope)
    let next = reportsT.first()
    for (let i = 0; i < 50; i++) {
      const row = next
      if (!row) break
      if (row.round == round) break
      else {
        next = reportsT.next(row)
        reportsT.remove(row)
      }
    }
  }
}
