import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"
import { Global } from "./global"

/**
 * This table is updated each round by comparing the global table with the previous stats round
 * @extends Table
 */
@table("stats")
export class Stat extends Table {
  constructor(
    // the round when this row was created
    public round:u16 = 0,
    // a copy of the global table when this row was created
    public starting_global:Global = new Global(),
    // the difference between the current global and the previous round stats row
    public reported_since_previous:u32 = 0,
    // the difference between the current global and the previous round stats row
    public unreported_unmerged_since_previous:u32 = 0,
    // the difference between the current global and the previous round stats row
    public proposed_since_previous:u32 = 0,
    // the difference between the current global and the previous round stats row
    public rewarded_since_previous:u32 = 0,
    // the difference between the current global and the previous round stats row
    public valid_proposed_since_previous:u32 = 0
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return u64(this.round)
  }
}
