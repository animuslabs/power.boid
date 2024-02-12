import { Contract, Singleton } from "proton-tsc"
// import { OracleActions } from "./actions/2-oracle"
// import { PwrReportActions } from "./actions/3-pwrreport"
// import { ProtoActions } from "./actions/4-protocol"
// import { DepositActions } from "./actions/5-deposit"
// import { OStatsActions } from "./actions/6-ostats"
import { SlashActions } from "./actions/8-slash"

@contract
export class BoidPowerContract extends SlashActions {
}
