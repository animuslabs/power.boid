import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"

@table("protocols")
export class Protocol extends Table {
  constructor(
    public protocol_id:u64 = 0,
    public protocol_name:Name = EMPTY_NAME,
    public unitPowerMult:f32 = 0
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return this.protocol_id
  }
}
