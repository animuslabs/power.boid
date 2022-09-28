import { check, Name, requireAuth } from "proton-tsc"
import { OStatsActions } from "./6-ostats"

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
    let next = tbl.first()
    for (let i = 0; i < 50; i++) {
      let row = next
      if (row && row.report.round < olderThan) {
        next = tbl.next(row)
        tbl.remove(row)
      } else break
    }
  }

  loopOstatsCleanup(scope:Name, olderThan:u32):void {
    const tbl = this.oracleStatsT(scope)
    let next = tbl.first()
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

  @action("statsclean")
  statsCleanup():void {
    const config = this.getConfig()
    const cleanupOlder = u32(Math.max(this.currentRound() - config.reports_finalized_after_rounds - config.keep_finalized_stats_rows, 0))
    this.loopStatsCleanup(cleanupOlder)
  }

  @action("reportsclean")
  reportsCleanup(scope:Name):void {
    const config = this.getConfig()
    const minRetain = Math.max(config.reports_finalized_after_rounds, config.standby_toggle_interval_rounds)
    const cleanupOlder = u32(Math.max(this.currentRound() - minRetain - config.keep_finalized_stats_rows, 0))
    check(cleanupOlder != 0, "can't cleanup reports yet")
    this.loopReportsCleanup(scope, cleanupOlder)
  }

  @action("ostatsclean")
  oStatsClean(scope:Name):void {
    const config = this.getConfig()
    const minRetain = Math.max(config.reports_finalized_after_rounds, config.standby_toggle_interval_rounds)
    const cleanupOlder = u32(Math.max(i32(this.currentRound()) - minRetain - config.keep_finalized_stats_rows, 0))
    check(cleanupOlder != 0, "can't cleanup oStats yet")
    this.loopOstatsCleanup(scope, cleanupOlder)
  }
}
