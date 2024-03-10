const configPayment = {
  collateral_pct_pay_per_round_mult: 0.000075, // 5% APR approximation
  round_bonus_pay_reports: 10,
  round_bonus_pay_proposed: 2,
  reports_proposed_adjust_pwr: 0.42,
  num_oracles_adjust_base: 1.015
};

function calculateOracleEarnings(numReports, proposed, collateral) {
  const roundsPerYear = 675;

  // Base pay
  const basePay = collateral * configPayment.collateral_pct_pay_per_round_mult
  // const basePay = u32(f32(oracleRow.trueCollateral) * config.payment.collateral_pct_pay_per_round_mult)
  console.log(basePay)

  const bonusPay = configPayment.round_bonus_pay_reports * Math.pow(proposed, configPayment.reports_proposed_adjust_pwr) + configPayment.round_bonus_pay_proposed * Math.pow(numReports, configPayment.reports_proposed_adjust_pwr)
  console.log(bonusPay)
  // Total paid per round
  const totalPaidPerRound = basePay + bonusPay;

  // APR calculation
  const totalPaidPerYear = totalPaidPerRound * roundsPerYear;
  const apr = (totalPaidPerYear / collateral) * 100;

  return {
    bonusPay: bonusPay.toFixed(2),
    basePay: basePay.toFixed(2),
    totalPaid: totalPaidPerRound.toFixed(2),
    apr: apr.toFixed(2) + '%'
  };
}

// Example usage
const numReports = 50; // Number of reports made by the oracle
const collateral = 5000000; // Collateral of the oracle
const numProposals = 10
console.log(calculateOracleEarnings(numReports, numProposals, collateral));
