import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"
import { Global, GlobalReports } from "./global"

@packer
export class Reports {
  // the number of reports proposed this round by this oracle (proposed means reported first)
  proposed:u32 = 0
  // the number of reports that generated boid power either through reaching consensus weight or merging
  reported_merged:u32 = 0
  // the quantity of unreported and unmerged reports this oracle contributed to
  unreported_unmerged:u32 = 0
}

/**
 * This table tracks oracle contributions per round.
 * The table is scoped by the oracle account name.
 * @extends Table
 */
@table("oraclestats")
export class OracleStat extends Table {
  constructor(
    // the round the stats are associated with
    public round:u16 = 0,
    // the weight of the oracle this round
    public weight:u8 = 0,
    // report details this round
    public reports:Reports = new Reports(),
    // the round stats were claimed/slashed already
    public processed:boolean = false
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return u64(this.round)
  }
}
