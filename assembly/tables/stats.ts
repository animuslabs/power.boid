import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"
import { Global } from "./global"

@table("stats")
export class Stat extends Table {
  constructor(
    public round:u16 = 0,
    public starting_global:Global = new Global()
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return u64(this.round)
  }
}
