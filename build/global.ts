import * as _chain from "as-chain";
import { Table } from "proton-tsc"


@packer(nocodegen)
export class GlobalReports implements _chain.Packer {
    
  merged:u64 = 0
  unreported_and_unmerged:u64 = 0
  reported:u64 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.merged);
        enc.packNumber<u64>(this.unreported_and_unmerged);
        enc.packNumber<u64>(this.reported);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.merged = dec.unpackNumber<u64>();
        this.unreported_and_unmerged = dec.unpackNumber<u64>();
        this.reported = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}


export class GlobalDB extends _chain.MultiIndex<Global> {

}

@table("global", singleton, nocodegen)

export class Global implements _chain.MultiIndexValue {
    
  constructor(
    public num_validators:u8 = 0,
    public total_weight:u16 = 0,
    public reports:GlobalReports = new GlobalReports()
  ) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u8>(this.num_validators);
        enc.packNumber<u16>(this.total_weight);
        enc.pack(this.reports);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.num_validators = dec.unpackNumber<u8>();
        this.total_weight = dec.unpackNumber<u16>();
        
        {
            let obj = new GlobalReports();
            dec.unpack(obj);
            this.reports = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u8>();
        size += sizeof<u16>();
        size += this.reports.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x6468734400000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Global.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Global.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x6468734400000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<Global> {
        return new _chain.Singleton<Global>(code, scope, this.tableName);
    }
}
