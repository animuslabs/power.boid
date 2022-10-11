import { check, Name, Asset, TableStore, print, SAME_PAYER, unpackActionData, ActionData } from "proton-tsc"
import { Assets, TransferNfts, ATOMICASSETS_CONTRACT } from "../../external/atomicassets"
import { ProtoActions } from "./4-protocol"

const boidSym:u64 = 293287707140

@packer
export class TokenTransfer extends ActionData {
  constructor(
        public from:Name = new Name(),
        public to:Name = new Name(),
        public quantity:Asset = new Asset(),
        public memo:string = ""
  ) {
    super()
  }
}
@contract
export class DepositActions extends ProtoActions {
  /**
   * notify transfer, listens for BOID deposits and calls inline actions to handle collateral for oracles.
   */
  @action("transfer", notify)
  ondeposit():void {
    if (this.firstReceiver == Name.fromString("token.boid")) {
      let params = unpackActionData<TokenTransfer>()
      if (params.from == this.receiver) return
      if (params.from == Name.fromString("stake.boid")) return
      if (params.from == Name.fromString("mint.boid")) return
      check(params.to == this.receiver, "Invalid Deposit")
      check(params.quantity.symbol.value == boidSym, "invalid token symbol")
      check(params.quantity.isValid(), "invalid quantity")
      check(params.quantity.isAmountWithinRange(), "invalid quantity")
      const depositType = params.memo.split(" ")[0]
      if (depositType == "collateral") {
        const config = this.getConfig()
        const quantity = u32(params.quantity.amount / u32(1e4))
        check(quantity % config.oracle_collateral_deposit_increment == 0, "must deposit collateral in correct increments")

        // if oracle exists call oracldeposit otherwise call oracleset
        if (this.oraclesT.exists(params.from.value)) this.sendOracleDeposit(params.from, quantity)
        else this.sendOracleSet(params.from, this.getOracleWeight(quantity, config), quantity)
      } else check(false, "if depositing oracle collateral must specify 'collateral' as memo")
    }
  }
}
