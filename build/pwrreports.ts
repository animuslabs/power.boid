import * as _chain from "as-chain";
import { Asset, Table, Name, EMPTY_NAME, ActionData } from "proton-tsc"


@packer(nocodegen)
export class PwrReport implements _chain.Packer {
    
  protocol_id:u8 = 0
  round:u16 = 0
  units:u32 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u8>(this.protocol_id);
        enc.packNumber<u16>(this.round);
        enc.packNumber<u32>(this.units);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.protocol_id = dec.unpackNumber<u8>();
        this.round = dec.unpackNumber<u16>();
        this.units = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u8>();
        size += sizeof<u16>();
        size += sizeof<u32>();
        return size;
    }
}



export class PwrReportRowDB extends _chain.MultiIndex<PwrReportRow> {
    get byRoundDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }

    
    updateByRound(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("pwrreports", nocodegen)

export class PwrReportRow implements _chain.MultiIndexValue {
    
  constructor(
    public report_id:u64 = 0,
    public proposer:Name = EMPTY_NAME,
    public report:PwrReport = new PwrReport(),
    public approvals:Name[] = [],
    public approval_weight:u16 = 0,
    public reported:boolean = false,
    public merged:boolean = false
  ) {
    
  }

  @primary
  get primary():u64 {
    return this.report_id
  }

  @secondary
  get byRound():u64 {
    return u64(this.report.round)
  }

  set byRound(value:u64) {
    this.report.round = value
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.report_id);
        enc.pack(this.proposer);
        enc.pack(this.report);
        enc.packObjectArray(this.approvals);
        enc.packNumber<u16>(this.approval_weight);
        enc.packNumber<boolean>(this.reported);
        enc.packNumber<boolean>(this.merged);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.report_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.proposer = obj;
        }
        
        {
            let obj = new PwrReport();
            dec.unpack(obj);
            this.report = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.approvals = new Array<Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new Name();
            this.approvals[i] = obj;
            dec.unpack(obj);
        }
    }

        this.approval_weight = dec.unpackNumber<u16>();
        this.reported = dec.unpackNumber<boolean>();
        this.merged = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.proposer.getSize();
        size += this.report.getSize();
        size += _chain.calcPackedVarUint32Length(this.approvals.length);
        for (let i=0; i<this.approvals.length; i++) {
            size += this.approvals[i].getSize();
        }

        size += sizeof<u16>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xAF2F755697CE0000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return PwrReportRow.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return PwrReportRow.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.byRound);
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
                return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
        }
    }

    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        switch (i) {
            case 0: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byRound = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): PwrReportRowDB {
        return new PwrReportRowDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
