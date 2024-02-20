import { ActionData, Symbol, Asset, check, Contract, currentTimeSec, InlineAction, Name, PermissionLevel, requireAuth, Singleton, TableStore, print, Table, EMPTY_NAME, Action } from "proton-tsc"
import { Oracle } from "../tables/oracles"
import { PwrGlobal } from "../tables/global"
import { Protocol } from "../tables/protocols"
import { PwrReportRow } from "../tables/pwrreports"
import * as boid from "../tables/external/config"
import { OracleStat } from "../tables/oracleStats"
import { PwrConfig } from "../tables/config"
import { TokenTransfer } from "./5-deposit"
import { RoundCommit } from "../tables/roundCommit"
import { BoincMeta } from "../tables/boincMeta"

export const boidSym:u64 = 293287707140

@contract
export class GlobalActions extends Contract {
  // references to commonly used tables
  oraclesT:TableStore<Oracle> = new TableStore<Oracle>(this.receiver, this.receiver)
  protocolsT:TableStore<Protocol> = new TableStore<Protocol>(this.receiver, this.receiver)
  boincMetaT:TableStore<BoincMeta> = new TableStore<BoincMeta>(this.receiver, this.receiver)
  globalT:Singleton<PwrGlobal> = new Singleton<PwrGlobal>(this.receiver)
  configT:Singleton<PwrConfig> = new Singleton<PwrConfig>(this.receiver)

  round:u16 = 0
  roundFloat:f32 = 0

  /** for calculating the current round, copied logic from system contract */
  currentRound():u16 {
    if (this.round == 0) {
      const config = new Singleton<boid.Config>(Name.fromString("boid")).getOrNull()
      if (!config) check(false, "boid system config not initialized")
      else this.round = u16((currentTimeSec() - config.time.rounds_start_sec_since_epoch) / config.time.round_length_sec)
    }
    return this.round
  }

  /** Determines the progress of the current round as a f32 */
  currentRoundFloat():f32 {
    const config = new Singleton<boid.Config>(Name.fromString("boid")).getOrNull()
    if (!config) {
      check(false, "boid system config not initialized")
      return 0
    } else return f32(currentTimeSec() - config.time.rounds_start_sec_since_epoch) / f32(config.time.round_length_sec)
  }

  pwrReportsT(boid_id:Name):TableStore<PwrReportRow> {
    return new TableStore<PwrReportRow>(this.receiver, boid_id)
  }

  oracleStatsT(oracle_scope:Name):TableStore<OracleStat> {
    return new TableStore<OracleStat>(this.receiver, oracle_scope)
  }

  roundCommitT(oracle_scope:Name):TableStore<RoundCommit> {
    return new TableStore<RoundCommit>(this.receiver, oracle_scope)
  }

  loopRoundCommitsCleanup(olderThan:u32, tbl:TableStore<RoundCommit>):void {
    let next = tbl.first()
    if (!next) {
      // check(false, "no rows to clean")
      return
    }
    // check(next && next.round < olderThan, "no rows to clean")
    for (let i = 0; i < 50; i++) {
      let row = next
      if (row && row.round < olderThan) {
        next = tbl.next(row)
        tbl.remove(row)
      } else break
    }
  }

  codePerm:PermissionLevel = new PermissionLevel(this.receiver, Name.fromString("active"))

  /** Determine the minimum weight required for consensus */
  minWeightThreshold(config:PwrConfig = this.getConfig(), global:PwrGlobal = this.globalT.get()):u16 {
    return u16(Math.min(u32(Math.max(global.expected_active_weight * config.consensus.min_weight_pct, config.consensus.min_weight)), u16.MAX_VALUE))
  }

  /** Adds active oracle to global row, does not update table */
  markOracleActive(oracleRow:Oracle, global:PwrGlobal):void {
    if (!global.active_oracles.includes(oracleRow.account)) {
      global.active_oracles.push(oracleRow.account)
      global.active_weight += oracleRow.weight
      check(global.active_weight >= oracleRow.weight, "global active_weight max reached")
    }
  }

  /** Does basic checks and sets the config row  */
  @action("configset")
  configSet(config:PwrConfig):void {
    requireAuth(this.receiver)
    check(config.slashLow.slash_quantity_collateral_pct >= 0, "slash_quantity_collateral_pct must be greater than or equal zero")
    check(config.slashLow.slash_quantity_collateral_pct <= f32(100), "slash_quantity_collateral_pct must be less or equal to 100%")
    check(config.slashMed.slash_quantity_collateral_pct >= 0, "slash_quantity_collateral_pct must be greater than or equal zero")
    check(config.slashMed.slash_quantity_collateral_pct <= f32(100), "slash_quantity_collateral_pct must be less or equal to 100%")
    check(config.slashHigh.slash_quantity_collateral_pct >= 0, "slash_quantity_collateral_pct must be greater than or equal zero")
    check(config.slashHigh.slash_quantity_collateral_pct <= f32(100), "slash_quantity_collateral_pct must be less or equal to 100%")
    check(config.reports_accumulate_weight_round_pct >= 0, "reports_accumulate_weight_round_pct must be higher or equal zero")
    check(config.reports_accumulate_weight_round_pct <= f32(1), "reports_accumulate_weight_round_pct must be less or equal to 100%")
    check(config.payment.collateral_pct_pay_per_round_mult >= 0, "collateral_pct_pay_per_round_mult must be higher or equal zero")
    check(config.payment.collateral_pct_pay_per_round_mult <= 1, "collateral_pct_pay_per_round_mult must be less")
    check(config.consensus.min_weight_pct >= 0, "min_consensus_pct must be higher or equal zero")
    check(config.consensus.min_weight_pct <= f32(1), "min_consensus_pct must be less or equal to 100%")
    check(config.consensus.merge_deviation_pct >= 0, "merge_deviation_pct must be higher or equal zero")
    check(config.consensus.merge_deviation_pct <= f32(1), "merge_deviation_pct must be less or equal to 100%")
    this.configT.set(config, this.receiver)
  }

  /** send whole quantities of BOID */
  sendWholeBoid(from:Name, to:Name, whole_quantity:u32, memo:string):void {
    const action = new InlineAction<TokenTransfer>("transfer").act(Name.fromString("token.boid"), new PermissionLevel(from))
    const actionParams = new TokenTransfer(from, to, new Asset(whole_quantity * u64(1e4), Symbol.fromU64(boidSym)), memo)
    action.send(actionParams)
  }

  //DEBUG
  @action("thisround")
  thisRound():void {
    check(false, this.currentRoundFloat().toString())
    // check(false, (this.currentRoundFloat() % f32(this.currentRound())).toString())
  }

  //DEBUG
  @action("finalround")
  finalRound():void {
    check(false, (this.currentRound() - 1).toString())
    // check(false, (this.currentRoundFloat() % f32(this.currentRound())).toString())
  }

  /**
   * Update the stats table if an entry has not been written for the current round.
   * Reads data from the previous round and calculates differences.
   * The data is used when calculating rewards and slash actions.
   */
  updateGlobal(currentGlobal:PwrGlobal = this.globalT.get(), config:PwrConfig = this.getConfig()):boolean {
    if (currentGlobal.round == this.currentRound()) return false
    currentGlobal.active_oracles = []
    currentGlobal.active_weight = 0
    currentGlobal.round = this.currentRound()
    this.globalT.set(currentGlobal, this.receiver)
    return true
  }

  shouldFinalizeReports(round:u16, config:PwrConfig = this.getConfig()):boolean {
    if (round < this.currentRound() - 1) return true
    const roundProgress = (this.currentRoundFloat() % f32(this.currentRound()))
    print("\n currentRoundFloat: " + this.currentRoundFloat().toString())
    print("\n currentRound: " + this.currentRound().toString())
    print("\n roundProgress: " + roundProgress.toString())
    return roundProgress > config.reports_accumulate_weight_round_pct
  }

  getConfig():PwrConfig {
    const config = this.configT.get()
    check(!config.paused, "contract paused or not initialized")
    return config
  }

  sendSlashOracle(oracle:Name, quantity:u32):void {
    const data = new SlashOracleParams(oracle, quantity)
    const action = new Action(this.receiver, Name.fromString("slashoracle"), [this.codePerm], data.pack())
    action.send()
  }
}

@packer
export class SlashOracleParams extends ActionData {
  constructor(
    public oracle:Name = EMPTY_NAME,
    public quantity:u32 = 0
  ) { super() }
}
