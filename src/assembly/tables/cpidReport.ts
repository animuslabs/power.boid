import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"
/**
 * scoped by the boid_id
*/
@table("cpidreports")
export class CPIDReport extends Table {
  constructor(
    public protocol_id:u8 = 0,
    public cpid_bytes:u8[] = [],
    public round:u16 = 0,
    public approvals:Name[] = [],
    public approval_weight:u16 = 0
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return u64(this.protocol_id + this.round)
  }
}
