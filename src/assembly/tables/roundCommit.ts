import { Asset, Table, Name, EMPTY_NAME, ActionData, U128 } from "proton-tsc"

/**
 * This table is scoped based on the oracle account where a report was commited
 * @extends Table
 */
@table("roundcommit")
export class RoundCommit extends Table {
  constructor(
    // round commit primary key
    public round_commit_id:u64 = 0,
    // protocol where a report was commited
    public protocol_id:u8 = 0,
    // round where a report was commited
    public round:u16 = 0,
    // boid_id where a report was commited
    public boid_id:Name = EMPTY_NAME
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return this.round_commit_id
  }

  @secondary
  get byRoundProtocolBoidId():U128 {
    return new U128(this.boid_id.value, (u64(this.protocol_id) << 16) + u64(this.round))
  }
}
