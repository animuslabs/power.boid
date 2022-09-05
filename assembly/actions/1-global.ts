import { ActionData, check, Contract, currentTimeSec, Name, PermissionLevel, Singleton, TableStore } from "proton-tsc"
import { Oracle } from "../tables/oracles"
import { Global } from "../tables/global"
import { Protocol } from "../tables/protocols"
import { PwrReportRow } from "../tables/pwrreports"
import { Config } from "../tables/external/config"
import { Stat } from "../tables/stats"
import { OracleStat } from "../tables/oracleStats"

@contract
export class GlobalActions extends Contract {
  oraclesT:TableStore<Oracle> = new TableStore<Oracle>(this.receiver, this.receiver)
  protocolsT:TableStore<Protocol> = new TableStore<Protocol>(this.receiver, this.receiver)
  statsT:TableStore<Stat> = new TableStore<Stat>(this.receiver, this.receiver)
  globalT:Singleton<Global> = new Singleton<Global>(this.receiver)

  round:u16 = 0
  currentRound():u16 {
    if (this.round == 0) {
      const config = new Singleton<Config>(Name.fromString("boid")).getOrNull()
      if (!config) check(false, "boid system config not initialized")
      else this.round = u16((currentTimeSec() - config.time.rounds_start.secSinceEpoch()) / config.time.round_length_sec)
    }
    return this.round
  }

  pwrReportsT(boid_id:Name):TableStore<PwrReportRow> {
    return new TableStore<PwrReportRow>(this.receiver, boid_id)
  }

  oracleStatsT(oracle_scope:Name):TableStore<OracleStat> {
    return new TableStore<OracleStat>(this.receiver, oracle_scope)
  }

  codePerm:PermissionLevel = new PermissionLevel(this.receiver, Name.fromString("active"))
  minWeightThreshold():u16 {
    const global = this.globalT.get()
    return u16((global.total_weight / 3 * 2) + 1)
  }

  updateStats():void {
    const existing = this.statsT.exists(u64(this.currentRound()))
    if (existing) return
    this.statsT.store(new Stat(this.currentRound(), this.globalT.get()), this.receiver)
  }
}
