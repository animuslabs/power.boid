import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"
import { Global, GlobalReports } from "./global"

@packer
export class Reports {
  proposed:u32 = 0
  reported_merged:u32 = 0
  unreported_unmerged:u32 = 0
}

@table("oraclestats")
export class OracleStat extends Table {
  constructor(
    public round:u16 = 0,
    public weight:u8 = 0,
    public reports:Reports = new Reports(),
    public processed:boolean = false
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return u64(this.round)
  }
}
