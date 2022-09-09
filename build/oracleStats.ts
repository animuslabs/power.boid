import * as _chain from "as-chain";
import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"
import { Global, GlobalReports } from "./global"


@packer(nocodegen)
export class Reports implements _chain.Packer {
    
  proposed:u32 = 0
  reported_merged:u32 = 0
  unreported_unmerged:u32 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u32>(this.proposed);
        enc.packNumber<u32>(this.reported_merged);
        enc.packNumber<u32>(this.unreported_unmerged);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.proposed = dec.unpackNumber<u32>();
        this.reported_merged = dec.unpackNumber<u32>();
        this.unreported_unmerged = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u32>();
        return size;
    }
}



export class OracleStatDB extends _chain.MultiIndex<OracleStat> {

}

@table("oraclestats", nocodegen)

export class OracleStat implements _chain.MultiIndexValue {
    
  constructor(
    public round:u16 = 0,
    public weight:u8 = 0,
    public reports:Reports = new Reports(),
    public processed:boolean = false
  ) {
    
  }

  @primary
  get primary():u64 {
    return u64(this.round)
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.round);
        enc.packNumber<u8>(this.weight);
        enc.pack(this.reports);
        enc.packNumber<boolean>(this.processed);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.round = dec.unpackNumber<u16>();
        this.weight = dec.unpackNumber<u8>();
        
        {
            let obj = new Reports();
            dec.unpack(obj);
            this.reports = obj;
        }
        this.processed = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        size += sizeof<u8>();
        size += this.reports.getSize();
        size += sizeof<boolean>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA5CC88AB19367000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return OracleStat.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return OracleStat.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): OracleStatDB {
        return new OracleStatDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
