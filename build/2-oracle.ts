import * as _chain from "as-chain";
import { Action, ActionData, check, Contract, EMPTY_NAME, hasAuth, isAccount, Name, requireAuth } from "proton-tsc"
import { Oracle, OracleCollateral, OracleFunds } from "../tables/oracles"
import { Stat } from "../tables/stats"
import { GlobalActions } from "./1-global"


@packer(nocodegen)
class OracleSetParam implements _chain.Packer {
    
  constructor(
    public account:Name = EMPTY_NAME,
    public weight:u8 = 0,
    public adding_collateral:u32 = 0
  ) {  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packNumber<u8>(this.weight);
        enc.packNumber<u32>(this.adding_collateral);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.account = obj;
        }
        this.weight = dec.unpackNumber<u8>();
        this.adding_collateral = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += sizeof<u8>();
        size += sizeof<u32>();
        return size;
    }
}
@contract
export class OracleActions extends GlobalActions {
  sendOracleSet(account:Name, weight:u8, adding_collateral:u32):void {
    const data = new OracleSetParam(account, weight, adding_collateral)
    const action = new Action(this.receiver, Name.fromU64(0xA5CC88AB0AC80000), [this.codePerm], data.pack())
    action.send()
  }

  @action("setstandby")
  setStandby(oracle:Name, standby:boolean):void {
    if (!hasAuth(this.receiver)) requireAuth(oracle)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const global = this.globalT.get()
    const config = this.getConfig()
    check(oracleRow.standby != standby, "nothing to change")
    check(this.currentRound() - oracleRow.last_standby_toggle_round > config.standby_toggle_interval_rounds, "can't toggle standby this quickly")
    if (standby) {
      oracleRow.standby = standby
      oracleRow.last_standby_toggle_round = this.currentRound()
      global.total_weight -= oracleRow.weight
    } else {
      oracleRow.standby = standby
      oracleRow.expected_active_after_round = this.currentRound() + 2
      global.total_weight += oracleRow.weight
    }
    this.globalT.set(global, this.receiver)
    this.oraclesT.update(oracleRow, this.receiver)
  }

  @action("oracleset")
  oracleSet(account:Name, weight:u8, adding_collateral:u32):void {
    requireAuth(this.receiver)
    const existing = this.oraclesT.get(account.value)
    const global = this.globalT.get()
    const config = this.getConfig()
    if (existing) {
      check(weight != existing.weight, "data is the same, nothing to update")
      existing.collateral.locked += adding_collateral
      existing.collateral.min_unlock_start_round = this.currentRound() + config.unlock_wait_rounds

      // update globals with new weight change
      if (weight > existing.weight) {
        global.total_weight += (weight - existing.weight)
      } else {
        global.total_weight -= (existing.weight - weight)
      }
      existing.weight = weight

      this.oraclesT.update(existing, this.receiver)
    } else {
      check(isAccount(account), "oracle must be existing account")
      const collateralData:OracleCollateral = {
        locked: adding_collateral,
        min_unlock_start_round: this.currentRound() + 20,
        slashed: 0,
        unlock_finished_round: 0,
        unlocking: 0
      }
      const fundsData:OracleFunds = {
        claimed: 0,
        withdrawable_after_round: 0,
        withdrawing: 0,
        unclaimed: 0
      }
      const row = new Oracle(account, weight, collateralData, fundsData, true)
      this.oraclesT.store(row, this.receiver)
      global.total_weight += weight
      global.num_validators++
    }
    this.globalT.set(global, this.receiver)
  }

  @action("withdrawinit")
  withdrawInit(oracle:Name):void {
    requireAuth(oracle)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    check(oracleRow.funds.withdrawable_after_round == 0, "currently withdrawing, must wait for current withdraw to finish.")
    const config = this.configT.get()
    const funds = oracleRow.funds
    funds.withdrawable_after_round = this.currentRound() + config.withdraw_rounds_wait
    funds.withdrawing = funds.unclaimed
    this.oraclesT.update(oracleRow, this.receiver)
  }

  @action("withdraw")
  withdrawEnd(oracle:Name):void {
    // authentication is not needed
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const funds = oracleRow.funds

    // make sure withdraw is allowed
    check(funds.withdrawable_after_round != 0, "call withdrawinit first")
    check(funds.withdrawable_after_round < this.currentRound(), "can't withdraw funds yet")

    // update oracle funds
    funds.withdrawable_after_round = 0
    funds.claimed += funds.withdrawing
    funds.unclaimed -= funds.withdrawing

    // mint tokens and then send to the oracle acct
    this.sendWholeBoid(Name.fromU64(0x93A7901E8E480000), this.receiver, funds.withdrawing, "power.boid oracle reward mint for " + oracle.toString())
    this.sendWholeBoid(this.receiver, oracle, funds.withdrawing, "power.boid oracle reward")

    // update oracle row
    funds.withdrawing = 0
    this.oraclesT.update(oracleRow, this.receiver)
  }
}
