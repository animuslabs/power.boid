# power.boid

## Overview
This contract coordinates oracle nodes which are responsible for reporting all off-chain activities which reward Boid Power. Oracle operators run the node software which generates `Power Reports` each round. Reports aggregate consensus weight, when the weight threshold has been reached then the report is `reported` or `merged` with similar reports which triggers an inline `power.add` action on the main `boid` system contract.

The goal is that the registration of oracles could be done in a permissionless way by requiring BOID stake or some other reputation system determined by the DAO for oracles (maybe teams could vote for oracles to give them weight also). The system should be able to support dozens of active oracles and there is no requirement for oracles to make reports for every boid account for every round. As the userbase of Boid grows, adding more oracles could help with scalability by making reports of segments of the userbase.

The activity of each oracle is tracked in the `oraclestats` table and rewards or slashing actions are triggered based on various metrics. The idea is that good actors will earn fair payment based on their contribution and inactive or malicious oracles will lose portions of their deposited collateral (slashed) and if they continue to behave poorly then automatically set to `standby`. While most slashing/rewards can be totally automated, it should be expected that there will be false slash events, in these limited circumstances the DAO should be able to reverse slash events. Additionally there is some malicious actions which can't be automatically detected, in which case the DAO should be able to force an oracle into standby or force subjective slashing events.

## Development

```sh
cd src
yarn
yarn dev
```

## Testing

```sh
cd tests
yarn
yarn test:all
```
