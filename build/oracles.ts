import * as _chain from "as-chain";
import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"

// @packer
// export class OracleStats {
//   validReports:u64 = 0
//   invalidReports:u64 = 0
// }



export class OracleDB extends _chain.MultiIndex<Oracle> {

}

@table("oracles", nocodegen)

export class Oracle implements _chain.MultiIndexValue {
    
  constructor(
    public account:Name = EMPTY_NAME,
    // public boid_id:Name = EMPTY_NAME,
    public weight:u8 = 0
    // public stats:OracleStats = new OracleStats()
  ) {
    
  }

  @primary
  get primary():u64 {
    return this.account.value
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packNumber<u8>(this.weight);
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
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += sizeof<u8>();
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
