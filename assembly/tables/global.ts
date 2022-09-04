import { Table } from "proton-tsc"

@table("global", singleton)
export class Global extends Table {
  constructor(
    public num_validators:u8 = 0,
    public total_weight:u16 = 0
  ) {
    super()
  }
}
