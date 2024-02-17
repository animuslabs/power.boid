import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"

/**
 * boinccpid links a CPID with a boid_id, scoped by the protocol_id.
 * @extends Table
 */
@table("boinccpids")
export class BoincCPID extends Table {
  constructor(
    // the boid_id associated with this cpid
    public boid_id:Name = EMPTY_NAME,
    // the CPID encoded as bytes
    public cpid_bytes:u8[] = []
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return this.boid_id.value
  }
}
