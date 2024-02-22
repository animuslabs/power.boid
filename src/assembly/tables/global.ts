import { Name, Table } from "proton-tsc"

@table("global", singleton)
export class PwrGlobal extends Table {
  constructor(
    public reporting_round:u16 = 0,
    /** this vector is cleared at the start of each round and the first time an oracle makes a report during the round they are added */
    public active_oracles:Name[] = [],
    /** this list is only modified when oracles go in/out of standby, if oracles are not in standby they are expected to be active each round. */
    public expected_active_oracles:Name[] = [],
    /** the cumulative consensus weight of the expected active oracles */
    public expected_active_weight:u16 = 0,
    /** the actual amount of active weight, reset at the start of each round and cumulated the first time a unique oracle makes a report */
    public active_weight:u16 = 0
  ) {
    super()
  }
}
