import * as _chain from "as-chain";
import { check, Name, Asset, TableStore, print, SAME_PAYER, unpackActionData, ActionData } from "proton-tsc"
import { Assets, TransferNfts, ATOMICASSETS_CONTRACT } from "../../external/atomicassets"
import { ProtoActions } from "./4-protocol"

const boidSym:u64 = 293287707140


@packer(nocodegen)
export class TokenTransfer implements _chain.Packer {
    
  constructor(
        public from:Name = new Name(),
        public to:Name = new Name(),
        public quantity:Asset = new Asset(),
        public memo:string = ""
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from);
        enc.pack(this.to);
        enc.pack(this.quantity);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.from = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.to = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.quantity = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from.getSize();
        size += this.to.getSize();
        size += this.quantity.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}
@contract
export class DepositActions extends ProtoActions {
  @action("transfer", notify)
  ondeposit():void {
    if (this.firstReceiver == Name.fromU64(0xCD20A980F4724000)) {
      let params = unpackActionData<TokenTransfer>()
      if (params.from == this.receiver) return
      if (params.from == Name.fromU64(0xC64D0500F4724000)) return
      if (params.from == Name.fromU64(0x93A7901E8E480000)) return
      check(params.to == this.receiver, "Invalid Deposit")
      check(params.quantity.symbol.value == boidSym, "invalid token symbol")
      check(params.quantity.isValid(), "invalid quantity")
      check(params.quantity.isAmountWithinRange(), "invalid quantity")
      const depositType = params.memo.split(" ")[0]
      if (depositType == "collateral") {
        const weight = u8(params.quantity.amount / u64(5e10))
        check(params.quantity.amount % u64(5e10) == 0, "must deposit collateral in increments of 5m BOID")
        this.sendOracleSet(params.from, weight, u32(params.quantity.amount / u32(1e4)))
      } else check(false, "if depositing oracle collateral must specify 'collateral' as memo")
    }
  }
}
