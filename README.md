# power.boid

## Overview
This contract coordinates oracle nodes which are responsible for reporting all off-chain activities which reward Boid Power. Oracle operators run the node software which generates `Power Reports` each round. Reports aggregate consensus weight, when the weight threshold has been reached then the report is `reported` or `merged` with similar reports which triggers an inline `power.add` action on the main `boid` system contract.

The goal is that the registration of oracles could be done in a permissionless way by requiring BOID stake or some other reputation system determined by the DAO for oracles (maybe teams could vote for oracles to give them weight also). The system should be able to support dozens of active oracles and there is no requirement for oracles to make reports for every boid account for every round. As the userbase of Boid grows, adding more oracles could help with scalability by making reports of segments of the userbase.

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
