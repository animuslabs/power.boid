import { Action, ActionData, check, Contract, EMPTY_NAME, hasAuth, isAccount, Name, print, requireAuth } from "proton-tsc"
import { Oracle, OracleCollateral, OracleFunds } from "../tables/oracles"
import { GlobalActions } from "./1-global"

@packer
class OracleSetParam extends ActionData {
  constructor(
    public account:Name = EMPTY_NAME,
    public weight:u8 = 0,
    public adding_collateral:u32 = 0
  ) { super() }
}
@packer
class OracleDepositParams extends ActionData {
  constructor(
    public oracle:Name = EMPTY_NAME,
    public depositQuantity:u32 = 0
  ) { super() }
}

@packer
class OracleStandbyParams extends ActionData {
  constructor(
    public oracle:Name = EMPTY_NAME,
    public standby:boolean = true
  ) { super() }
}
@contract
export class OracleActions extends GlobalActions {
  sendOracleDeposit(oracle:Name, depositQuantity:u32):void {
    const data = new OracleDepositParams(oracle, depositQuantity)
    const action = new Action(this.receiver, Name.fromString("oracldeposit"), [this.codePerm], data.pack())
    action.send()
  }

  /**
   * Action triggered when an existing oracle deposits additional collateral. Action is never called externally.
   *
   * @param {Name} oracle oracle must already exist
   * @param {u32} depositQuantity quantity is in whole values of BOID
   * @memberof OracleActions
   */
  @action("oracldeposit")
  oracleDeposit(oracle:Name, depositQuantity:u32):void {
    requireAuth(this.receiver)
    check(depositQuantity > 0, "deposit must be greater than zero")
    const config = this.getConfig()
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    check(oracleRow.collateral.unlocking == 0, "can't deposit funds into an oracle that is unlocking")

    // add the new collateral and push the next available unlock time into the future
    oracleRow.collateral.locked += depositQuantity
    check(oracleRow.collateral.locked >= depositQuantity, "collateral locked max reached")
    oracleRow.collateral.min_unlock_start_round = this.currentRound() + config.unlock_wait_rounds

    // save the current weight and calculate the new weight
    const weightBefore = oracleRow.weight
    const newWeight = this.getOracleWeight(oracleRow.trueCollateral, config)

    // if weight has increased, update the global totals
    if (newWeight > weightBefore) {
      const difference = newWeight - weightBefore
      // adjust global weight for all protocols
      let next = this.protocolsT.first()
      while (next) {
        let proto = next
        let global = this.globalT.requireGet(proto.protocol_id, "global row not found for protocol")
        this.updateStats(u8(proto.protocol_id), global)
        global.expected_active_weight += difference
        check(global.expected_active_weight >= difference, "global expected_active_weight max reached")
        this.globalT.set(global, this.receiver)
        next = this.protocolsT.next(proto)
      }
    }

    // save the updated oracle row
    oracleRow.weight = newWeight
    this.oraclesT.update(oracleRow, this.receiver)
  }

  sendOracleStandby(oracle:Name, standby:boolean):void {
    const data = new OracleStandbyParams(oracle, standby)
    const action = new Action(this.receiver, Name.fromString("setstandby"), [this.codePerm], data.pack())
    action.send()
  }

  /**
   * Action called by oracles or the contract to set an oracle in/out of standby mode.
   *
   * @param {Name} oracle
   * @param {boolean} standby
   */
  @action("setstandby")
  setStandby(oracle:Name, standby:boolean):void {
    if (!hasAuth(this.receiver)) requireAuth(oracle)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const config = this.getConfig()
    check(oracleRow.standby != standby, "nothing to change")
    if (!hasAuth(this.receiver)) check(this.currentRound() - oracleRow.last_standby_toggle_round > config.standby_toggle_interval_rounds, "can't toggle standby this quickly")
    check(oracleRow.collateral.unlocking == 0, "can't toggle standby during unlocking")

    if (standby) {
      oracleRow.standby = standby
      oracleRow.last_standby_toggle_round = this.currentRound()
    } else {
      check(oracleRow.weight > 0, "oracle must have positive weight. add more collateral")
      oracleRow.standby = standby
      oracleRow.expected_active_after_round = this.currentRound() + config.oracle_expected_active_after_rounds
    }

    // adjust global standby for all protocols
    let next = this.protocolsT.first()
    while (next) {
      let proto = next
      let global = this.globalT.requireGet(proto.protocol_id, "global row not found for protocol")
      if (standby) {
        global.expected_active_weight -= oracleRow.weight
        global.standby_oracles++
        check(global.standby_oracles >= 1, "max standy_oracles reached")
        const oracleIndex = global.expected_active_oracles.indexOf(oracle)
        check(oracleIndex > -1, "problem setting oracle standby")
        global.expected_active_oracles.splice(oracleIndex, 1)
      } else {
        global.expected_active_weight += oracleRow.weight
        check(global.expected_active_weight >= oracleRow.weight, "global expected_active_weight max reached")
        global.expected_active_oracles.push(oracle)
        global.standby_oracles--
      }
      this.globalT.set(global, this.receiver)
      next = this.protocolsT.next(proto)
    }

    this.oraclesT.update(oracleRow, this.receiver)
  }

  sendOracleSet(account:Name, weight:u8, adding_collateral:u32):void {
    const data = new OracleSetParam(account, weight, adding_collateral)
    const action = new Action(this.receiver, Name.fromString("oracleset"), [this.codePerm], data.pack())
    action.send()
  }

  /**
   * This action is triggered when a new oracle deposits collateral
   *
   * @param {Name} account
   * @param {u8} weight
   * @param {u32} adding_collateral
   * @memberof OracleActions
   */
  @action("oracleset")
  oracleSet(account:Name, weight:u8, adding_collateral:u32):void {
    // TODO, this action originally handled new and existing oracles but now it only needs to handle new oracles
    // still thinking about the best way to organize the actions...
    // The original idea is that arbitrary weight could be added, like from the DAO or other sources of voting
    requireAuth(this.receiver)
    const existing = this.oraclesT.get(account.value)
    const config = this.getConfig()

    if (existing) {
      check(weight != existing.weight, "data is the same, nothing to update")
      check(existing.collateral.unlocking == 0, "can't modify oracle during unlocking")

      existing.collateral.locked += adding_collateral
      existing.collateral.min_unlock_start_round = this.currentRound() + config.unlock_wait_rounds
      existing.weight = weight

      this.oraclesT.update(existing, this.receiver)
    } else {
      check(isAccount(account), "oracle must be existing account")
      const collateralData:OracleCollateral = {
        locked: adding_collateral,
        min_unlock_start_round: this.currentRound() + config.first_unlock_wait_rounds,
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
    }

    // adjust global weight for all protocols
    let next = this.protocolsT.first()
    while (next) {
      let proto = next
      let global = this.globalT.requireGet(proto.protocol_id, "global row not found for protocol")
      if (existing) {
        // update globals with new weight change
        if (weight > existing.weight) {
          global.expected_active_weight += (weight - existing.weight)
          check(global.expected_active_weight >= (weight - existing.weight), "global expected_active_weight max reached")
        } else {
          check(global.expected_active_weight >= (existing.weight - weight), "global expected_active_weight cannot be negative")
          global.expected_active_weight -= (existing.weight - weight)
        }
      } else {
        global.standby_oracles++
        check(global.standby_oracles >= 1, "max standy_oracles reached")
      }
      this.globalT.set(global, this.receiver)
      next = this.protocolsT.next(proto)
    }
  }

  /**
   * oracle can call this to begin withdrawing funds they earned from rewards
   *
   * @param {Name} oracle
   */
  @action("withdrawinit")
  withdrawInit(oracle:Name):void {
    requireAuth(oracle)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    check(oracleRow.funds.withdrawable_after_round == 0, "currently withdrawing, must wait for current withdraw to finish.")
    const config = this.getConfig()
    const funds = oracleRow.funds
    check(funds.unclaimed > 0, "unclaimed funds must be greater than zero")
    funds.withdrawable_after_round = this.currentRound() + config.withdraw_rounds_wait
    funds.withdrawing = funds.unclaimed
    this.oraclesT.update(oracleRow, this.receiver)
  }

  /**
   * After the withdraw waiting period has passed anyone can call this action to push the funds to the oracle
   *
   * @param {Name} oracle
   */
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
    this.sendWholeBoid(Name.fromString("mint.boid"), this.receiver, funds.withdrawing, "power.boid oracle reward mint for " + oracle.toString())
    this.sendWholeBoid(this.receiver, oracle, funds.withdrawing, "power.boid oracle reward")

    // update oracle row
    funds.withdrawing = 0
    this.oraclesT.update(oracleRow, this.receiver)
  }

  /**
   * Oracle can call this action to start unlocking deposited collateral
   *
   * @param {Name} oracle
   */
  @action("unlockinit")
  unlockInit(oracle:Name):void {
    if (!hasAuth(this.receiver)) requireAuth(oracle)
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const config = this.getConfig()
    const coll = oracleRow.collateral

    //check that unlock can be initiated
    check(this.currentRound() > coll.min_unlock_start_round, "can't start unlock yet")
    check(coll.unlocking == 0, "account is already unlocking, must wait for existing unlock to finish")
    check(this.oracleStatsT(oracle).isEmpty(), "oracle still has rows in the oraclestats table, must wait for rows to be cleared")
    check(oracleRow.standby, "oracle must be in standby to be unlocked")
    check(oracleRow.trueCollateral > 0, "no valid collateral to unlock (locked - slashed)")

    // move locked to unlocking and set the future unlock round
    coll.unlocking = oracleRow.trueCollateral
    coll.locked = 0
    coll.unlock_finished_round = this.currentRound() + config.unlock_wait_rounds
    oracleRow.weight = 0

    // update the row
    this.oraclesT.update(oracleRow, this.receiver)
  }

  /**
   * When the unlock waiting period has passed, anyone can call this action to push the funds to the oracle
   *
   * @param {Name} oracle
   */
  @action("unlock")
  unlock(oracle:Name):void {
    // no auth required
    const oracleRow = this.oraclesT.requireGet(oracle.value, "oracle doesn't exist")
    const coll = oracleRow.collateral

    // verify unlock is in progress and can be finished
    check(this.currentRound() >= coll.unlock_finished_round, "unlock is still under progress")
    check(coll.unlocking > 0, "not currently unlocking any funds")

    // send the unlocked funds
    this.sendWholeBoid(this.receiver, oracle, coll.unlocking, "unlocked oracle funds")

    // update the row
    coll.locked = 0
    coll.unlock_finished_round = 0
    coll.unlocking = 0
    this.oraclesT.set(oracleRow, this.receiver)
  }
}
