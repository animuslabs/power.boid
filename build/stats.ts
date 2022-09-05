import * as _chain from "as-chain";
import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"
import { Global } from "./global"



export class StatDB extends _chain.MultiIndex<Stat> {

}

@table("stats", nocodegen)

export class Stat implements _chain.MultiIndexValue {
    
  constructor(
    public round:u16 = 0,
    public starting_global:Global = new Global()
  ) {
    
  }

  @primary
  get primary():u64 {
    return u64(this.round)
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.round);
        enc.pack(this.starting_global);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.round = dec.unpackNumber<u16>();
        
        {
            let obj = new Global();
            dec.unpack(obj);
            this.starting_global = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        size += this.starting_global.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC64D9C0000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Stat.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Stat.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): StatDB {
        return new StatDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
