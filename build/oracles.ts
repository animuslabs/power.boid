import * as _chain from "as-chain";
import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"

// @packer
// export class OracleStats {
//   validReports:u64 = 0
//   invalidReports:u64 = 0
// }


@packer(nocodegen)
export class OracleCollateral implements _chain.Packer {
    
  locked:u32 = 0
  unlocking:u32 = 0
  slashed:u32 = 0
  unlock_finished_round:u16 = 0
  min_unlock_start_round:u16 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u32>(this.locked);
        enc.packNumber<u32>(this.unlocking);
        enc.packNumber<u32>(this.slashed);
        enc.packNumber<u16>(this.unlock_finished_round);
        enc.packNumber<u16>(this.min_unlock_start_round);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.locked = dec.unpackNumber<u32>();
        this.unlocking = dec.unpackNumber<u32>();
        this.slashed = dec.unpackNumber<u32>();
        this.unlock_finished_round = dec.unpackNumber<u16>();
        this.min_unlock_start_round = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        return size;
    }
}


@packer(nocodegen)
export class OracleFunds implements _chain.Packer {
    
  claimed:u32 = 0
  unclaimed:u32 = 0
  withdrawing:u32 = 0
  withdrawable_after_round:u16 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u32>(this.claimed);
        enc.packNumber<u32>(this.unclaimed);
        enc.packNumber<u32>(this.withdrawing);
        enc.packNumber<u16>(this.withdrawable_after_round);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.claimed = dec.unpackNumber<u32>();
        this.unclaimed = dec.unpackNumber<u32>();
        this.withdrawing = dec.unpackNumber<u32>();
        this.withdrawable_after_round = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u16>();
        return size;
    }
}



export class OracleDB extends _chain.MultiIndex<Oracle> {

}

@table("oracles", nocodegen)

export class Oracle implements _chain.MultiIndexValue {
    
  constructor(
    public account:Name = EMPTY_NAME,
    // public boid_id:Name = EMPTY_NAME,
    public weight:u8 = 0,
    // public stats:OracleStats = new OracleStats()
    public collateral:OracleCollateral = new OracleCollateral(),
    public funds:OracleFunds = new OracleFunds(),
    public standby:boolean = true,
    public last_standby_toggle_round:u16 = 0,
    public expected_active_after_round:u16 = 0
  ) {
    
  }

  public get trueCollateral():u32 {
    return this.collateral.locked - this.collateral.slashed
  }

  @primary
  get primary():u64 {
    return this.account.value
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packNumber<u8>(this.weight);
        enc.pack(this.collateral);
        enc.pack(this.funds);
        enc.packNumber<boolean>(this.standby);
        enc.packNumber<u16>(this.last_standby_toggle_round);
        enc.packNumber<u16>(this.expected_active_after_round);
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
        
        {
            let obj = new OracleCollateral();
            dec.unpack(obj);
            this.collateral = obj;
        }
        
        {
            let obj = new OracleFunds();
            dec.unpack(obj);
            this.funds = obj;
        }
        this.standby = dec.unpackNumber<boolean>();
        this.last_standby_toggle_round = dec.unpackNumber<u16>();
        this.expected_active_after_round = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += sizeof<u8>();
        size += this.collateral.getSize();
        size += this.funds.getSize();
        size += sizeof<boolean>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA5CC88AB00000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Oracle.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Oracle.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): OracleDB {
        return new OracleDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
