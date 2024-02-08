import { ActionData, Symbol, Asset, check, Contract, currentTimeSec, InlineAction, Name, PermissionLevel, requireAuth, Singleton, TableStore, print, Table, EMPTY_NAME, Action } from "proton-tsc"
import { Oracle } from "../tables/oracles"
import { Global } from "../tables/global"
import { Protocol } from "../tables/protocols"
import { PwrReportRow } from "../tables/pwrreports"
import * as boid from "../tables/external/config"
import { Stat } from "../tables/stats"
import { OracleStat } from "../tables/oracleStats"
import { Config } from "../tables/config"
import { TokenTransfer } from "./5-deposit"
import { RoundCommit } from "../tables/roundCommit"
export const boidSym:u64 = 293287707140

@contract
export class GlobalActions extends Contract {
  // references to commonly used tables
  oraclesT:TableStore<Oracle> = new TableStore<Oracle>(this.receiver, this.receiver)
  protocolsT:TableStore<Protocol> = new TableStore<Protocol>(this.receiver, this.receiver)
  statsT:TableStore<Stat> = new TableStore<Stat>(this.receiver, this.receiver)
  globalT:Singleton<Global> = new Singleton<Global>(this.receiver)
  configT:Singleton<Config> = new Singleton<Config>(this.receiver)

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

  codePerm:PermissionLevel = new PermissionLevel(this.receiver, Name.fromString("active"))

  /** Determine the minimum weight required for consensus */
  minWeightThreshold(config:Config = this.getConfig(), global:Global = this.globalT.get()):u16 {
    return u16(Math.min(u32(Math.max(global.expected_active_weight * config.consensus.min_pct, config.consensus.min_weight)), u16.MAX_VALUE))
  }

  /** Adds active oracle to global row, does not update table */
  markOracleActive(oracleRow:Oracle, global:Global = this.globalT.get()):void {
    if (!global.active_oracles.includes(oracleRow.account)) {
      global.active_oracles.push(oracleRow.account)
      global.active_weight += oracleRow.weight
      check(global.active_weight >= oracleRow.weight, "global active_weight max reached")
    }
  }

  /**
   * Update the stats table if an entry has not been written for the current round.
   * Reads data from the previous round and calculates differences.
   * The data is used when calculating rewards and slash actions.
   */
  updateStats(currentGlobal:Global = this.globalT.get(), config:Config = this.getConfig()):boolean {
    const existing = this.statsT.exists(u64(this.currentRound()))
    if (existing) return false
    const statsBefore = this.statsT.get(this.currentRound() - 1)
    // generates blank stats row for first round or if a round was missed
    if (!statsBefore) this.statsT.store(new Stat(this.currentRound(), this.globalT.get(), u32(currentGlobal.reports.reported), u32(currentGlobal.reports.unreported_and_unmerged), u32(currentGlobal.reports.proposed), u32(currentGlobal.rewards_paid), u32(currentGlobal.reports.proposed)), this.receiver)
    else {
      const unreported = currentGlobal.reports.unreported_and_unmerged
      const beforeUnreported = statsBefore.starting_global.reports.unreported_and_unmerged
      const roundUnreported = unreported > beforeUnreported ? unreported - beforeUnreported : 0
      const roundReported = currentGlobal.reports.reported - statsBefore.starting_global.reports.reported
      const roundProposed = currentGlobal.reports.proposed - statsBefore.starting_global.reports.proposed
      const mintedSince = currentGlobal.rewards_paid - statsBefore.starting_global.rewards_paid
      const validProposed = currentGlobal.reports.proposed - statsBefore.starting_global.reports.unreported_and_unmerged
      this.statsT.store(new Stat(this.currentRound(), this.globalT.get(), u32(roundReported), u32(roundUnreported), u32(roundProposed), u32(mintedSince), u32(validProposed)), this.receiver)
    }
    currentGlobal.active_oracles = []
    currentGlobal.active_weight = 0
    this.globalT.set(currentGlobal, this.receiver)

    // delete old rows
    const firstRow = this.statsT.first()
    if (!firstRow) return true
    const deleteBeforeRound = u16(Math.max(i32(this.currentRound()) - i32(1) - config.keep_finalized_stats_rows, 0))
    print("\n DeleteBeforeRound: " + deleteBeforeRound.toString())
    if (firstRow.round < deleteBeforeRound) this.statsT.remove(firstRow)
    const nextRow = this.statsT.first()
    if (!nextRow) return true
    if (nextRow.round < deleteBeforeRound) this.statsT.remove(nextRow)
    return true
  }

  /** Does basic checks and sets the config row  */
  @action("configset")
  configSet(config:Config):void {
    requireAuth(this.receiver)
    check(config.slashLow.slash_quantity_collateral_pct >= 0, "slash_quantity_collateral_pct must be greater than or equal zero")
    check(config.slashLow.slash_quantity_collateral_pct <= f32(1), "slash_quantity_collateral_pct must be less or equal to 100%")
    check(config.slashMed.slash_quantity_collateral_pct >= 0, "slash_quantity_collateral_pct must be greater than or equal zero")
    check(config.slashMed.slash_quantity_collateral_pct <= f32(1), "slash_quantity_collateral_pct must be less or equal to 100%")
    check(config.slashHigh.slash_quantity_collateral_pct >= 0, "slash_quantity_collateral_pct must be greater than or equal zero")
    check(config.slashHigh.slash_quantity_collateral_pct <= f32(1), "slash_quantity_collateral_pct must be less or equal to 100%")
    check(config.reports_accumulate_weight_round_pct >= 0, "reports_accumulate_weight_round_pct must be higher or equal zero")
    check(config.reports_accumulate_weight_round_pct <= f32(1), "reports_accumulate_weight_round_pct must be less or equal to 100%")
    check(config.payment.collateral_pct_pay_per_round >= 0, "collateral_pct_pay_per_round must be higher or equal zero")
    check(config.consensus.min_pct >= 0, "min_consensus_pct must be higher or equal zero")
    check(config.consensus.min_pct <= f32(1), "min_consensus_pct must be less or equal to 100%")
    check(config.merge_deviation_pct >= 0, "merge_deviation_pct must be higher or equal zero")
    check(config.merge_deviation_pct <= f32(1), "merge_deviation_pct must be less or equal to 100%")
    check(config.min_pay_report_share_threshold >= 0, "min_pay_report_share_threshold must be higher or equal zero")
    check(config.min_pay_report_share_threshold <= f32(1), "min_pay_report_share_threshold must be less or equal to 100%")
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

  shouldFinalizeReports(round:u16, config:Config = this.getConfig()):boolean {
    if (round < this.currentRound() - 1) return true
    const roundProgress = (this.currentRoundFloat() % f32(this.currentRound()))
    print("\n currentRoundFloat: " + this.currentRoundFloat().toString())
    print("\n currentRound: " + this.currentRound().toString())
    print("\n roundProgress: " + roundProgress.toString())
    return roundProgress > config.reports_accumulate_weight_round_pct
  }

  getConfig():Config {
    const config = this.configT.get()
    check(!config.paused, "contract paused or not initialized")
    return config
  }

  @action("roundstats")
  roundStats():void {
    check(this.updateStats(), "action already performed this round")
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
