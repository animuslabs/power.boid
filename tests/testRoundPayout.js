export function calculateBonusAndAPR(roundBonusPayReports, roundBonusPayProposed, reportsProposedAdjustPwr,numOraclesAdjustBase,collateralPctPay, reportedOrMerged, proposed, investedAmount, periodsPerYear,activeOracles) {
    // Calculate the bonus payment
    let bonusPay = roundBonusPayReports * Math.pow(reportedOrMerged, reportsProposedAdjustPwr) + roundBonusPayProposed * Math.pow(proposed, reportsProposedAdjustPwr);
    bonusPay = bonusPay / Math.pow(numOraclesAdjustBase, activeOracles);
    // bonusPay = bonusPay / activeOracles

    // Calculate APR based on the bonus and invested amount
    let basePay = collateralPctPay * investedAmount;
    // let apr = (basePay  / investedAmount) * periodsPerYear * 100; // Multiply by 100 to convert to percentage
    let apr = ((basePay+bonusPay)  / investedAmount) * periodsPerYear * 100; // Multiply by 100 to convert to percentage
    return { bonusPay, apr, basePay };
}

// Configuration
const configPayment = {
    collateral_pct_pay_per_round_mult: 0.000037075, // 2.5% APR
    round_bonus_pay_reports: 10,
    round_bonus_pay_proposed: 2,
    reports_proposed_adjust_pwr: .42,
    num_oracles_adjust_base:1.015
  }
// Additional Parameters
const activeOracles = 20
const oracleCollateral = 5000000
const periodsPerYear = 674.31 // for calculating oracle collateral APR

// Scenarios
const scenarios = [100,500, 1000, 2050, 5000, 10000, 100000];
const proposedReports = 200; // Assuming constant for simplicity

// Calculate and print the bonus and APR for each scenario
scenarios.forEach(reportedOrMerged => {
    const {bonusPay, apr,basePay} = calculateBonusAndAPR(
        configPayment.round_bonus_pay_reports,
        configPayment.round_bonus_pay_proposed,
        configPayment.reports_proposed_adjust_pwr,
        configPayment.num_oracles_adjust_base,
        configPayment.collateral_pct_pay_per_round_mult,
        reportedOrMerged,
        proposedReports,
        oracleCollateral,
        periodsPerYear,
        activeOracles
    );

    console.log(`Reported/Merged: ${reportedOrMerged}, Bonus: ${bonusPay.toLocaleString(undefined, {maximumFractionDigits: 2})}, Base: ${ basePay } APR: ${apr.toFixed(2)}%, total paid: ${(bonusPay*activeOracles).toLocaleString()}`);
});
