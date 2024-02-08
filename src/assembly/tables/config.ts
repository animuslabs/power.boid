import { Table } from "proton-tsc"

/** Configuration parameters associated with consensus */
@packer
export class ConsensusConfig {
  /**The minimum weight required to confirm a report, this is to help protect from and instance where many oracles may go into standby at once. */
  public min_weight:u32 = 0
  /** The minimum percentage of all weight required to confirm a report, overridden by min_consensus_weight */
  public min_pct:f32 = 0
}

@packer
export class PaymentConfig {
  /**  percentage of collateral is paid each round as long as the oracle was active that round */
  public collateral_pct_pay_per_round:f32 = 0
  /**  total paid each round based on reports made by each oracle, split proportionally */
  public round_bonus_pay_reports:u32 = 0
  /** total paid each round based on proposals made by each oracle, split proportionally */
  public round_bonus_pay_proposed:u32 = 0
}

@packer
export class SlashConfig {
  /**  The static quantity (whole BOID from collateral) of tokens slashed when a slash action happens */
  public slash_quantity_static:u32 = 0
  /** The percentage of oracle collateral slashed when a slash action happens, additive with the static_quantity */
  public slash_quantity_collateral_pct:f32 = 0
}

@packer
export class WaitConfig {
  // how long an oracle needs to wait when withdrawing oracle reward funds
  public withdraw_rounds_wait:u16 = 0
  // when the oracle is unlocking their locked collateral they must wait this many rounds to receive their funds
  public collateral_unlock_wait_rounds:u16 = 0
}
@packer
export class CollateralConfig {
  /**  oracle collateral deposits must be divisible by this number */
  public oracle_collateral_deposit_increment:u32 = 0
  /**  minimum quantity of collateral required to register as an oracle */
  public oracle_collateral_minimum:u32 = 0
}

@table("config", singleton)
export class Config extends Table {
  constructor(
    /**  pauses most contract actions, for use during contract upgrades */
    public paused:boolean = true,
    public consensus = new ConsensusConfig(),
    public payment = new PaymentConfig(),
    public slashLow = new SlashConfig(),
    public slashMed = new SlashConfig(),
    public slashHigh = new SlashConfig(),
    public waits = new WaitConfig(),
    public collateral = new CollateralConfig(),
    /**  how many stats rows (counted after the finalization round) should always be kept when running the stats cleanup action */
    public keep_finalized_stats_rows:u32 = 0,
    /** for calculating median acceptable deviation */
    public merge_deviation_pct:f32 = 0,
    /** when an oracle is toggling standby, they must wait this many rounds before they can do it again */
    public standby_toggle_interval_rounds:u16 = 0,
    /** min report share threshold to receive pay */
    public min_pay_report_share_threshold:f32 = 0,
    /** percentage of the round (starting from beginning of the round) when reports accumulate weight but don't finalize, the purpose is to give all oracles a chance to make a report */
    public reports_accumulate_weight_round_pct:f32 = 0
  ) {
    super()
  }
}
