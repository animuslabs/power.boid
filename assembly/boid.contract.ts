import { check, Contract } from "proton-tsc"
import { OracleActions } from "./actions/2-oracle"
import { PwrReportActions } from "./actions/3-pwrreport"
import { ProtoActions } from "./actions/4-protocol"
import { DepositActions } from "./actions/5-deposit"

@contract
export class BoidPowerContract extends DepositActions {

}
