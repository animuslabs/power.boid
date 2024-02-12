export let config = {
  paused: false,
  consensus: {
    min_weight: 2,
    min_weight_pct: 0.66,
    merge_deviation_pct: 0.25
  },
  payment: {
    collateral_pct_pay_per_round_mult: 0.00007415,
    round_bonus_pay_reports: 10,
    round_bonus_pay_proposed: 2,
    reports_proposed_adjust_pwr: .42,
    num_oracles_adjust_base:1.015
  },
  slashLow: {
    slash_quantity_static: 500000,
    slash_quantity_collateral_pct: 5,
  },
  slashMed: {
    slash_quantity_static: 1000000,
    slash_quantity_collateral_pct: 10,
  },
  slashHigh: {
    slash_quantity_static: 1500000,
    slash_quantity_collateral_pct: 25,
  },
  waits: {
    withdraw_rounds_wait: 5,
    collateral_unlock_wait_rounds: 10
  },
  collateral: {
    oracle_collateral_deposit_increment: 1_000_000,
    oracle_collateral_minimum: 5_000_000
  },
  keep_finalized_stats_rows: 10,
  standby_toggle_interval_rounds: 5,
  min_pay_report_share_threshold: 0.10,
  reports_accumulate_weight_round_pct: 0.20
}
