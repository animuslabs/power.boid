import { check, Name, requireAuth } from "proton-tsc"
import { OracleStat } from "../tables/oracleStats"
import { TableCleanActions } from "./7-tableclean"

export class SlashActions extends TableCleanActions {
  /**
   * Triggered by other contract actions, this action slashes some oracle collateral.
   * Requires contract auth.
   * @param {Name} oracle
   * @param {u32} quantity quantity is calculated by whatever parent action is calling slashoracle inline
   */
  @action("slashoracle")
  slashOracle(oracle:Name, quantity:u32):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    check(!oracleRow.standby, "can't slash an oracle in standby")
    check(quantity > 0, "quantity must be higher than zero")
    oracleRow.collateral.slashed += quantity
    check(oracleRow.collateral.slashed >= quantity, "max collateral slashed reached")
    const weightBefore = oracleRow.weight
    // save oracle row
    this.oraclesT.update(oracleRow, this.receiver)
  }

  @action("slashlow")
  slashOracleLow(oracle:Name):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    check(!oracleRow.standby, "can't slash an oracle in standby")
    const config = this.getConfig()
    const pctQuantity = u32(f32(oracleRow.trueCollateral) * (config.slashLow.slash_quantity_collateral_pct / 100))
    const quantity = pctQuantity + config.slashLow.slash_quantity_static
    oracleRow.collateral.slashed += quantity
    check(oracleRow.collateral.slashed >= quantity, "max collateral slashed reached")
    const weightBefore = oracleRow.weight
    // save oracle row
    this.oraclesT.update(oracleRow, this.receiver)
  }

  @action("slashmed")
  slashOracleMed(oracle:Name):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    check(!oracleRow.standby, "can't slash an oracle in standby")
    const config = this.getConfig()
    const pctQuantity = u32(f32(oracleRow.trueCollateral) * (config.slashMed.slash_quantity_collateral_pct / 100))
    const quantity = pctQuantity + config.slashMed.slash_quantity_static
    oracleRow.collateral.slashed += quantity
    check(oracleRow.collateral.slashed >= quantity, "max collateral slashed reached")
    const weightBefore = oracleRow.weight
    // save oracle row
    this.oraclesT.update(oracleRow, this.receiver)
  }

  @action("slashhigh")
  slashOracleHigh(oracle:Name):void {
    requireAuth(this.receiver)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    check(!oracleRow.standby, "can't slash an oracle in standby")
    const config = this.getConfig()
    const pctQuantity = u32(f32(oracleRow.trueCollateral) * (config.slashHigh.slash_quantity_collateral_pct / 100))
    const quantity = pctQuantity + config.slashHigh.slash_quantity_static
    oracleRow.collateral.slashed += quantity
    check(oracleRow.collateral.slashed >= quantity, "max collateral slashed reached")
    const weightBefore = oracleRow.weight
    // save oracle row
    this.oraclesT.update(oracleRow, this.receiver)
  }
}
