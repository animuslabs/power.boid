import { EMPTY_NAME, Name, Table } from "proton-tsc"

/**
 * Protocols represent different data sources that oracles may need to make reports for.
 * Some boid accounts may contribute towards multiple protocols and receive different reports for each one.
 * The protocol has a built in multiplier for determining the rate of generic units to boid power.
 * @extends Table
 */
@table("protocols")
export class Protocol extends Table {
  constructor(
    // the unique id of this protocol
    public protocol_id:u64 = 0,
    // the name of the protocol, just used for readability
    public protocol_name:Name = EMPTY_NAME,
    // when calculating how much power to generate, multiply this by the number of `units` in the power report
    public unitPowerMult:f32 = 0,
    // if the protocol is not active then reports can't be created or finalized for this protocol
    public active:boolean = true
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return this.protocol_id
  }
}
