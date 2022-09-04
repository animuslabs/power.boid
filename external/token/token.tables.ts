import * as _chain from "as-chain";
import { Asset, Name, Table, TableStore, Symbol } from "..";

/**
 * Tables
 */


export class AccountDB extends _chain.MultiIndex<Account> {

}

@table("accounts", nocodegen)

export class Account implements _chain.MultiIndexValue {
    
    constructor (
        public balance: Asset = new Asset()
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.balance.symbol.code();
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.balance);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.balance = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.balance.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x32114D4F38000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indexes: _chain.IDXDB[] = [
        ];
        return indexes;
    }

    getTableName(): _chain.Name {
        return Account.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Account.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name): AccountDB {
        return new AccountDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class StatDB extends _chain.MultiIndex<Stat> {

}

@table("stat", nocodegen)

export class Stat implements _chain.MultiIndexValue {
    
    constructor (
       public supply: Asset = new Asset(),
       public max_supply: Asset =  new Asset(),
       public issuer: Name = new Name(),
    ) {
        
    }

    @primary
    get primary(): u64 {
        return this.supply.symbol.code();
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.supply);
        enc.pack(this.max_supply);
        enc.pack(this.issuer);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.supply = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.max_supply = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.issuer = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.supply.getSize();
        size += this.max_supply.getSize();
        size += this.issuer.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC64D900000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indexes: _chain.IDXDB[] = [
        ];
        return indexes;
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


    static new(code: _chain.Name, scope: _chain.Name): StatDB {
        return new StatDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}