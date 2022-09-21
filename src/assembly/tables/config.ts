import { Table } from "proton-tsc"

@table("config", singleton)
export class Config extends Table {
  constructor(
    // pauses most contract actions, for use during contract upgrades
    public paused:boolean = true,
    // the minimum weight required to confirm a report
    public min_consensus_weight:u32 = 0,
    // the minimum percentage of all weight required to confirm a report
    public min_consensus_pct:f32 = 0,
    // percentage of collateral is paid each round as long as the oracle was active that round
    public collateral_pct_pay_per_round:f32 = 0,
    // total paid each round based on reports made by each oracle, split proportionally
    public round_bonus_pay_reports:u32 = 0,
    // total paid each round based on proposals made by each oracle, split proportionally
    public round_bonus_pay_proposed:u32 = 0,
    // the threshold of unconfirmed reports (percentage of total for a round) required to automatically slash an oracle
    public slash_threshold_pct:f32 = 0,
    // a static quantity (whole BOID from collateral) of tokens slashed when a slash action happens
    public slash_quantity_static:u32 = 0,
    // the percentage of oracle collateral slashed when a slash action happens, additive with the static_quantity
    public slash_quantity_collateral_pct:f32 = 0,
    // how long an oracle needs to wait when withdrawing oracle reward funds
    public withdraw_rounds_wait:u16 = 0,
    // how many stats rows should always be kept when running the stats cleanup action
    public keep_stats_rows:u32 = 0,
    // reports can be reported and updated for this many rounds after the current round before they are "final"
    public reports_finalized_after_rounds:u8 = 0,
    // when the oracle is unlocking their locked collateral they must wait this many rounds to receive their funds
    public unlock_wait_rounds:u16 = 0,
    // when an oracle is toggling standby, they must wait this many rounds before they can do it again
    public standby_toggle_interval_rounds:u16 = 0,
    // raise collateral to this power to calculate oracle weight
    public weight_collateral_pwr:f32 = 0,
    // oracle collateral deposits must be divisible by this number
    public oracle_collateral_deposit_increment:u32 = 0,
    // percentage of the round (starting from beginning of the round) when reports accumulate weight but don't finalize, the purpose is to give all oracles a chance to make a report
    public reports_accumulate_weight_round_pct:f32 = 0,
    // for calculating weight from collateral
    public weight_collateral_divisor:f32 = 0
  ) {
    super()
  }
}
