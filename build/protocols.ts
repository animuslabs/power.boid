import * as _chain from "as-chain";
import { Asset, Table, Name, EMPTY_NAME } from "proton-tsc"



export class ProtocolDB extends _chain.MultiIndex<Protocol> {

}

@table("protocols", nocodegen)

export class Protocol implements _chain.MultiIndexValue {
    
  constructor(
    public protocol_id:u64 = 0,
    public protocol_name:Name = EMPTY_NAME,
    public unitPowerMult:f32 = 0
  ) {
    
  }

  @primary
  get primary():u64 {
    return this.protocol_id
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.protocol_id);
        enc.pack(this.protocol_name);
        enc.packNumber<f32>(this.unitPowerMult);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.protocol_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.protocol_name = obj;
        }
        this.unitPowerMult = dec.unpackNumber<f32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.protocol_name.getSize();
        size += sizeof<f32>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xADE99A2291C00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Protocol.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Protocol.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ProtocolDB {
        return new ProtocolDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
