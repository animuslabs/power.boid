import { Table } from "proton-tsc"

/**
 * BoincMeta represents data which configures the behavior of protocols which use BOINC .
 * @extends Table
 */
@table("boincmeta")
export class BoincMeta extends Table {
  constructor(
    // protocol_id should match the associated protocol in the protocols table
    public protocol_id:u64 = 0,
    // the url of the BOINC server, used by the validators as the base for querying the project api
    public url:string = "",
    // the team ID for the boid team on this project
    public teamId:u64 = 0,
    // Additional information may be added here in the future
    public meta:u8[] = []
  ) {
    super()
  }

  @primary
  get primary():u64 {
    return this.protocol_id
  }
}
