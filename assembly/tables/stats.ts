import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"
import { Global } from "./global"

@table("stats")
export class Stat extends Table {
  constructor(
    public round:u16 = 0,
    public starting_global:Global = new Global(),
    public reported_since_previous:u32 = 0,
    public unreported_unmerged_since_previous:u32 = 0,
    public proposed_since_previous:u32 = 0,
    public rewarded_since_previous:u32 = 0
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return u64(this.round)
  }
}
