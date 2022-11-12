// generated by @greymass/abi2core

import {
    Asset,
    Bytes,
    Float32,
    Float64,
    Int16,
    Int32,
    Int64,
    Int8,
    Name,
    PublicKey,
    Struct,
    TimePoint,
    UInt16,
    UInt32,
    UInt64,
    UInt8,
    Variant,
} from '@greymass/eosio'

@Struct.type('AccountAuth')
export class AccountAuth extends Struct {
    @Struct.field(PublicKey, {array: true}) keys!: PublicKey[]
    @Struct.field(UInt8) nonce!: UInt8
}

@Struct.type('AccountPowerMod')
export class AccountPowerMod extends Struct {
    @Struct.field(UInt8) pwr_multiplier!: UInt8
    @Struct.field(UInt16) pwr_add_per_round!: UInt16
    @Struct.field(UInt16) expires_round!: UInt16
    @Struct.field(UInt32) aggregate_pwr_remaining!: UInt32
}

@Struct.type('AccountPower')
export class AccountPower extends Struct {
    @Struct.field(UInt16) last_claimed_round!: UInt16
    @Struct.field(UInt16) rating!: UInt16
    @Struct.field(AccountPowerMod, {array: true}) mods!: AccountPowerMod[]
}

@Struct.type('TokenUnstake')
export class TokenUnstake extends Struct {
    @Struct.field(UInt16) redeemable_after_round!: UInt16
    @Struct.field(UInt32) quantity!: UInt32
}

@Struct.type('AccountStake')
export class AccountStake extends Struct {
    @Struct.field(TokenUnstake, {array: true}) unstaking!: TokenUnstake[]
    @Struct.field(UInt32) self_staked!: UInt32
    @Struct.field(UInt16) received_delegated_stake!: UInt16
}

@Struct.type('AccountTeam')
export class AccountTeam extends Struct {
    @Struct.field(UInt16) team_id!: UInt16
    @Struct.field(UInt16) last_edit_round!: UInt16
    @Struct.field(UInt8) team_tax_mult!: UInt8
    @Struct.field(UInt32) team_cumulative_contribution!: UInt32
}

@Struct.type('AtomicFormat')
export class AtomicFormat extends Struct {
    @Struct.field('string') name!: string
    @Struct.field('string') type!: string
}

@Struct.type('Config')
export class Config extends Struct {
    @Struct.field('bool') paused!: boolean
    @Struct.field(UInt32) min_consensus_weight!: UInt32
    @Struct.field(Float32) min_consensus_pct!: Float32
    @Struct.field(Float32) collateral_pct_pay_per_round!: Float32
    @Struct.field(UInt32) round_bonus_pay_reports!: UInt32
    @Struct.field(UInt32) round_bonus_pay_proposed!: UInt32
    @Struct.field(Float32) slash_threshold_pct!: Float32
    @Struct.field(UInt32) slash_quantity_static!: UInt32
    @Struct.field(Float32) slash_quantity_collateral_pct!: Float32
    @Struct.field(UInt16) withdraw_rounds_wait!: UInt16
    @Struct.field(UInt32) keep_finalized_stats_rows!: UInt32
    @Struct.field(UInt8) reports_finalized_after_rounds!: UInt8
    @Struct.field(UInt16) unlock_wait_rounds!: UInt16
    @Struct.field(UInt16) first_unlock_wait_rounds!: UInt16
    @Struct.field(UInt16) standby_toggle_interval_rounds!: UInt16
    @Struct.field(Float32) weight_collateral_pwr!: Float32
    @Struct.field(UInt32) oracle_collateral_deposit_increment!: UInt32
    @Struct.field(Float32) reports_accumulate_weight_round_pct!: Float32
    @Struct.field(Float32) weight_collateral_divisor!: Float32
    @Struct.field(Float32) merge_deviation_pct!: Float32
    @Struct.field(UInt16) oracle_expected_active_after_rounds!: UInt16
    @Struct.field(Float32) min_pay_report_share_threshold!: Float32
}

@Struct.type('ConfigAccount')
export class ConfigAccount extends Struct {
    @Struct.field(UInt32) invite_price!: UInt32
    @Struct.field(UInt32) premium_purchase_price!: UInt32
    @Struct.field(UInt8) max_premium_prefix!: UInt8
    @Struct.field(UInt8) max_owners!: UInt8
    @Struct.field(UInt8) max_sponsors!: UInt8
    @Struct.field(UInt8) max_pwrmods!: UInt8
    @Struct.field(Name, {array: true}) suffix_whitelist!: Name[]
    @Struct.field(UInt32) remove_sponsor_price!: UInt32
    @Struct.field(UInt8) sponsor_max_invite_codes!: UInt8
    @Struct.field(UInt16) invite_code_expire_rounds!: UInt16
}

@Struct.type('ConfigAuth')
export class ConfigAuth extends Struct {
    @Struct.field(Name, {array: true}) key_actions_whitelist!: Name[]
    @Struct.field(UInt32) key_account_max_stake!: UInt32
    @Struct.field(UInt32) key_account_max_balance!: UInt32
    @Struct.field(UInt8) account_max_keys!: UInt8
    @Struct.field(UInt32) worker_max_bill_per_action!: UInt32
}

@Struct.type('ConfigAutoAdjust')
export class ConfigAutoAdjust extends Struct {
    @Struct.field(UInt32) target_inflation_per_round!: UInt32
    @Struct.field(Float32) power_mult_max_adjust!: Float32
    @Struct.field(Float32) powered_stake_mult_max_adjust!: Float32
    @Struct.field(UInt16) adjustment_interval_rounds!: UInt16
    @Struct.field(UInt16) max_check_rounds!: UInt16
}

@Struct.type('ConfigMint')
export class ConfigMint extends Struct {
    @Struct.field(Float32) round_powered_stake_mult!: Float32
    @Struct.field(Float32) round_power_mult!: Float32
}

@Struct.type('ConfigNft')
export class ConfigNft extends Struct {
    @Struct.field(UInt16) boid_id_maximum_nfts!: UInt16
    @Struct.field(Name, {array: true}) whitelist_collections!: Name[]
}

@Struct.type('ConfigPower')
export class ConfigPower extends Struct {
    @Struct.field(UInt16) round_decay_constant!: UInt16
    @Struct.field(Float32) round_decay_mult!: Float32
    @Struct.field(Float32) sponsor_tax_mult!: Float32
    @Struct.field(Float32) powered_stake_mult!: Float32
    @Struct.field(Float32) powered_stake_pwr!: Float32
    @Struct.field(UInt16) claim_maximum_elapsed_rounds!: UInt16
    @Struct.field(UInt16) soft_max_pwr_add!: UInt16
    @Struct.field(Float32) dev_fund_tax_mult!: Float32
}

@Struct.type('ConfigStake')
export class ConfigStake extends Struct {
    @Struct.field(UInt8) unstake_rounds!: UInt8
    @Struct.field(UInt8) extra_stake_min_locked_rounds!: UInt8
}

@Struct.type('ConfigTeam')
export class ConfigTeam extends Struct {
    @Struct.field(UInt16) change_min_rounds!: UInt16
    @Struct.field(UInt16) edit_team_min_rounds!: UInt16
    @Struct.field(UInt16) team_edit_max_pct_change!: UInt16
    @Struct.field(UInt32) buy_team_cost!: UInt32
    @Struct.field(UInt32) owner_stake_required!: UInt32
    @Struct.field(UInt16) owner_future_stake_lock_rounds_required!: UInt16
}

@Struct.type('ConfigTime')
export class ConfigTime extends Struct {
    @Struct.field(TimePoint) rounds_start!: TimePoint
    @Struct.field(UInt32) round_length_sec!: UInt32
}

@Struct.type('ExtendedSymbol')
export class ExtendedSymbol extends Struct {
    @Struct.field(Asset.Symbol) sym!: Asset.Symbol
    @Struct.field(Name) contract!: Name
}

@Struct.type('GlobalReports')
export class GlobalReports extends Struct {
    @Struct.field(UInt64) merged!: UInt64
    @Struct.field(UInt64) unreported_and_unmerged!: UInt64
    @Struct.field(UInt64) reported!: UInt64
    @Struct.field(UInt64) proposed!: UInt64
}

@Struct.type('Global')
export class Global extends Struct {
    @Struct.field(Name, {array: true}) active_oracles!: Name[]
    @Struct.field(Name, {array: true}) expected_active_oracles!: Name[]
    @Struct.field(UInt8) standby_oracles!: UInt8
    @Struct.field(UInt16) expected_active_weight!: UInt16
    @Struct.field(GlobalReports) reports!: GlobalReports
    @Struct.field(UInt64) rewards_paid!: UInt64
    @Struct.field(UInt16) active_weight!: UInt16
}

@Struct.type('OracleCollateral')
export class OracleCollateral extends Struct {
    @Struct.field(UInt32) locked!: UInt32
    @Struct.field(UInt32) unlocking!: UInt32
    @Struct.field(UInt32) slashed!: UInt32
    @Struct.field(UInt16) unlock_finished_round!: UInt16
    @Struct.field(UInt16) min_unlock_start_round!: UInt16
}

@Struct.type('OracleFunds')
export class OracleFunds extends Struct {
    @Struct.field(UInt32) claimed!: UInt32
    @Struct.field(UInt32) unclaimed!: UInt32
    @Struct.field(UInt32) withdrawing!: UInt32
    @Struct.field(UInt16) withdrawable_after_round!: UInt16
}

@Struct.type('Oracle')
export class Oracle extends Struct {
    @Struct.field(Name) account!: Name
    @Struct.field(UInt8) weight!: UInt8
    @Struct.field(OracleCollateral) collateral!: OracleCollateral
    @Struct.field(OracleFunds) funds!: OracleFunds
    @Struct.field('bool') standby!: boolean
    @Struct.field(UInt16) last_standby_toggle_round!: UInt16
    @Struct.field(UInt16) expected_active_after_round!: UInt16
}

@Struct.type('Reports')
export class Reports extends Struct {
    @Struct.field(UInt32) proposed!: UInt32
    @Struct.field(UInt32) reported_merged!: UInt32
    @Struct.field(UInt32) unreported_unmerged!: UInt32
}

@Struct.type('OracleStat')
export class OracleStat extends Struct {
    @Struct.field(UInt16) round!: UInt16
    @Struct.field(UInt8) weight!: UInt8
    @Struct.field(Reports) reports!: Reports
    @Struct.field('bool') processed!: boolean
}

@Struct.type('Protocol')
export class Protocol extends Struct {
    @Struct.field(UInt64) protocol_id!: UInt64
    @Struct.field(Name) protocol_name!: Name
    @Struct.field(Float32) unitPowerMult!: Float32
    @Struct.field('bool') active!: boolean
}

@Struct.type('PwrReport')
export class PwrReport extends Struct {
    @Struct.field(UInt8) protocol_id!: UInt8
    @Struct.field(UInt16) round!: UInt16
    @Struct.field(UInt32) units!: UInt32
}

@Struct.type('PwrReportRow')
export class PwrReportRow extends Struct {
    @Struct.field(Name) proposer!: Name
    @Struct.field(PwrReport) report!: PwrReport
    @Struct.field(Name, {array: true}) approvals!: Name[]
    @Struct.field(UInt16) approval_weight!: UInt16
    @Struct.field('bool') reported!: boolean
    @Struct.field('bool') merged!: boolean
}

@Struct.type('RoundCommit')
export class RoundCommit extends Struct {
    @Struct.field(UInt64) round_commit_id!: UInt64
    @Struct.field(UInt8) protocol_id!: UInt8
    @Struct.field(UInt16) round!: UInt16
    @Struct.field(Name) boid_id!: Name
}

@Struct.type('Stat')
export class Stat extends Struct {
    @Struct.field(UInt16) round!: UInt16
    @Struct.field(Global) starting_global!: Global
    @Struct.field(UInt32) reported_since_previous!: UInt32
    @Struct.field(UInt32) unreported_unmerged_since_previous!: UInt32
    @Struct.field(UInt32) proposed_since_previous!: UInt32
    @Struct.field(UInt32) rewarded_since_previous!: UInt32
    @Struct.field(UInt32) valid_proposed_since_previous!: UInt32
}

@Struct.type('commitsclean')
export class Commitsclean extends Struct {
    @Struct.field(Name) scope!: Name
}

@Struct.type('configclear')
export class Configclear extends Struct {
}

@Struct.type('configset')
export class Configset extends Struct {
    @Struct.field(Config) config!: Config
}

@Struct.type('finalround')
export class Finalround extends Struct {
}

@Struct.type('finishreport')
export class Finishreport extends Struct {
    @Struct.field(Name) boid_id_scope!: Name
    @Struct.field(UInt64, {array: true}) pwrreport_ids!: UInt64[]
}

@Struct.type('globalclear')
export class Globalclear extends Struct {
}

@Struct.type('handleostat')
export class Handleostat extends Struct {
    @Struct.field(Name) oracle!: Name
    @Struct.field(UInt16) round!: UInt16
}

@Struct.type('oracldeposit')
export class Oracldeposit extends Struct {
    @Struct.field(Name) oracle!: Name
    @Struct.field(UInt32) depositQuantity!: UInt32
}

@Struct.type('oraclesclear')
export class Oraclesclear extends Struct {
}

@Struct.type('oracleset')
export class Oracleset extends Struct {
    @Struct.field(Name) account!: Name
    @Struct.field(UInt8) weight!: UInt8
    @Struct.field(UInt32) adding_collateral!: UInt32
}

@Struct.type('ostatsclean')
export class Ostatsclean extends Struct {
    @Struct.field(Name) scope!: Name
}

@Struct.type('payoracle')
export class Payoracle extends Struct {
    @Struct.field(Name) oracle!: Name
    @Struct.field(UInt32) basePay!: UInt32
    @Struct.field(UInt32) bonusPay!: UInt32
}

@Struct.type('protoclear')
export class Protoclear extends Struct {
}

@Struct.type('protoset')
export class Protoset extends Struct {
    @Struct.field(Protocol) protocol!: Protocol
}

@Struct.type('pwrreport')
export class Pwrreport extends Struct {
    @Struct.field(Name) oracle!: Name
    @Struct.field(Name) boid_id_scope!: Name
    @Struct.field(PwrReport) report!: PwrReport
}

@Struct.type('reportsclean')
export class Reportsclean extends Struct {
    @Struct.field(Name) scope!: Name
}

@Struct.type('reportsclear')
export class Reportsclear extends Struct {
    @Struct.field(Name) scope!: Name
}

@Struct.type('roundstats')
export class Roundstats extends Struct {
}

@Struct.type('setstandby')
export class Setstandby extends Struct {
    @Struct.field(Name) oracle!: Name
    @Struct.field('bool') standby!: boolean
}

@Struct.type('slashabsent')
export class Slashabsent extends Struct {
    @Struct.field(Name) oracle!: Name
    @Struct.field(UInt16) round!: UInt16
}

@Struct.type('slashoracle')
export class Slashoracle extends Struct {
    @Struct.field(Name) oracle!: Name
    @Struct.field(UInt32) quantity!: UInt32
}

@Struct.type('statsclean')
export class Statsclean extends Struct {
}

@Struct.type('statsclear')
export class Statsclear extends Struct {
}

@Struct.type('thisround')
export class Thisround extends Struct {
}

@Struct.type('unlock')
export class Unlock extends Struct {
    @Struct.field(Name) oracle!: Name
}

@Struct.type('unlockinit')
export class Unlockinit extends Struct {
    @Struct.field(Name) oracle!: Name
}

@Struct.type('withdraw')
export class Withdraw extends Struct {
    @Struct.field(Name) oracle!: Name
}

@Struct.type('withdrawinit')
export class Withdrawinit extends Struct {
    @Struct.field(Name) oracle!: Name
}

@Variant.type('AtomicValue', [Int8, Int16, Int32, Int64, UInt8, UInt16, UInt32, UInt64, Float32, Float64, string, {type: Int8, array: true}, {type: Int16, array: true}, {type: Int32, array: true}, {type: Int64, array: true}, Bytes, {type: UInt16, array: true}, {type: UInt32, array: true}, {type: UInt64, array: true}, {type: Float32, array: true}, {type: Float64, array: true}, string[]])
class AtomicValue extends Variant {}
