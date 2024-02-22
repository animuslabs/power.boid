import { Table, Name, EMPTY_NAME, U128 } from "proton-tsc"

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

  static getByRoundProtocolBoidId(boid_id:Name, protocol_id:u8, round:u16):U128 {
    return new U128(boid_id.value, (u64(protocol_id) << 16) + u64(round))
  }

  @primary
  get primary():u64 {
    return this.round_commit_id
  }

  @secondary
  get byRound():u64 {
    return u64(this.round)
  }

  set byRound(value:u64) {
    this.round = u16(value)
  }

  @secondary
  get byRoundProtocolBoidId():U128 {
    return RoundCommit.getByRoundProtocolBoidId(this.boid_id, this.protocol_id, this.round)
  }

  set byRoundProtocolBoidId(value:U128) {
    this.boid_id = new Name(value.lo)
    this.round = u16(value.hi)
    this.protocol_id = u8(value.hi >> 16)
  }
}
