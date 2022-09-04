import { ActionData, check, Contract, currentTimeSec, Name, PermissionLevel, Singleton, TableStore } from "proton-tsc"
import { Oracle } from "../tables/oracles"
import { Global } from "../tables/global"
import { Protocol } from "../tables/protocols"
import { PwrReportRow } from "../tables/pwrreports"

@contract
export class GlobalActions extends Contract {
  oraclesT:TableStore<Oracle> = new TableStore<Oracle>(this.receiver, this.receiver)
  protocolsT:TableStore<Protocol> = new TableStore<Protocol>(this.receiver, this.receiver)
  globalT:Singleton<Global> = new Singleton<Global>(this.receiver)

  round:u16 = 0
  currentRound():u16 {
    if (this.round == 0) {
      this.round = u16((currentTimeSec() - 0) / 30000)
    }
    return this.round
  }

  pwrReportsT(boid_id:Name):TableStore<PwrReportRow> {
    return new TableStore<PwrReportRow>(this.receiver, boid_id)
  }

  codePerm:PermissionLevel = new PermissionLevel(this.receiver, Name.fromString("active"))
  minWeightThreshold():u16 {
    const global = this.globalT.get()
    return u16((global.total_weight / 3 * 2) + 1)
  }
}
