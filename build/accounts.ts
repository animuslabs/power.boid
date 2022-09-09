import * as _chain from "as-chain";

import { Asset, Table, Name, PublicKey } from "proton-tsc"


@packer(nocodegen)
export class TokenUnstake implements _chain.Packer {
    
  redeemable_after_round:u16 = 0
  quantity:u32 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.redeemable_after_round);
        enc.packNumber<u32>(this.quantity);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.redeemable_after_round = dec.unpackNumber<u16>();
        this.quantity = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        size += sizeof<u32>();
        return size;
    }
}


@packer(nocodegen)
export class AccountStake implements _chain.Packer {
    
  unstaking:TokenUnstake[] = []
  self_staked:u32 = 0 // whole BOID quality staked to the account, BOID earned from power claiming is also added here.
  received_delegated_stake:u16 = 0 // stake delegated to this account (could be self delegated also) delegated stakes are counted in incremenets of 10k so
  get totalStake():u32 {
    return u32(this.self_staked + (this.received_delegated_stake * u32(10000)))
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packObjectArray(this.unstaking);
        enc.packNumber<u32>(this.self_staked);
        enc.packNumber<u16>(this.received_delegated_stake);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
    {
        let length = <i32>dec.unpackLength();
        this.unstaking = new Array<TokenUnstake>(length)
        for (let i=0; i<length; i++) {
            let obj = new TokenUnstake();
            this.unstaking[i] = obj;
            dec.unpack(obj);
        }
    }

        this.self_staked = dec.unpackNumber<u32>();
        this.received_delegated_stake = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.calcPackedVarUint32Length(this.unstaking.length);
        for (let i=0; i<this.unstaking.length; i++) {
            size += this.unstaking[i].getSize();
        }

        size += sizeof<u32>();
        size += sizeof<u16>();
        return size;
    }
}


@packer(nocodegen)
export class AccountPowerMod implements _chain.Packer {
    
  pwr_multiplier:u8 = 0
  pwr_add_per_round:u16 = 0
  expires_round:u16 = 0
  aggregate_pwr_remaining:u32 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u8>(this.pwr_multiplier);
        enc.packNumber<u16>(this.pwr_add_per_round);
        enc.packNumber<u16>(this.expires_round);
        enc.packNumber<u32>(this.aggregate_pwr_remaining);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.pwr_multiplier = dec.unpackNumber<u8>();
        this.pwr_add_per_round = dec.unpackNumber<u16>();
        this.expires_round = dec.unpackNumber<u16>();
        this.aggregate_pwr_remaining = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u8>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u32>();
        return size;
    }
}


@packer(nocodegen)
export class AccountPower implements _chain.Packer {
    
  last_claimed_round:u16 = 0
  rating:u16 = 0
  mods:AccountPowerMod[] = []
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.last_claimed_round);
        enc.packNumber<u16>(this.rating);
        enc.packObjectArray(this.mods);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.last_claimed_round = dec.unpackNumber<u16>();
        this.rating = dec.unpackNumber<u16>();
        
    {
        let length = <i32>dec.unpackLength();
        this.mods = new Array<AccountPowerMod>(length)
        for (let i=0; i<length; i++) {
            let obj = new AccountPowerMod();
            this.mods[i] = obj;
            dec.unpack(obj);
        }
    }

        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += _chain.calcPackedVarUint32Length(this.mods.length);
        for (let i=0; i<this.mods.length; i++) {
            size += this.mods[i].getSize();
        }

        return size;
    }
}


@packer(nocodegen)
export class AccountTeam implements _chain.Packer {
    
  team_id:u16 = 0 // user is on this team, from teams table
  last_edit_round:u16 = 0 // used to track when was the last time the team or tax_pct was changed
  team_tax_mult:u8 = 0 // percent of account earnings which are paid to the team, calculated by
  team_cumulative_contribution:u32 = 0 // cumulative amount the account has sent to their current team, resets on team change
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.team_id);
        enc.packNumber<u16>(this.last_edit_round);
        enc.packNumber<u8>(this.team_tax_mult);
        enc.packNumber<u32>(this.team_cumulative_contribution);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.team_id = dec.unpackNumber<u16>();
        this.last_edit_round = dec.unpackNumber<u16>();
        this.team_tax_mult = dec.unpackNumber<u8>();
        this.team_cumulative_contribution = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u8>();
        size += sizeof<u32>();
        return size;
    }
}

@packer(nocodegen)
export class AccountAuth implements _chain.Packer {
    
  keys:PublicKey[] = [] // pubkeys that can be used to control this boid account
  nonce:u32 = 0 // incremented by the auth action when a pubkey is used to prevent replays
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packObjectArray(this.keys);
        enc.packNumber<u32>(this.nonce);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
    {
        let length = <i32>dec.unpackLength();
        this.keys = new Array<PublicKey>(length)
        for (let i=0; i<length; i++) {
            let obj = new PublicKey();
            this.keys[i] = obj;
            dec.unpack(obj);
        }
    }

        this.nonce = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.calcPackedVarUint32Length(this.keys.length);
        for (let i=0; i<this.keys.length; i++) {
            size += this.keys[i].getSize();
        }

        size += sizeof<u32>();
        return size;
    }
}



export class AccountDB extends _chain.MultiIndex<Account> {

}

@table("accounts", noabigen, nocodegen)

export class Account implements _chain.MultiIndexValue {
    
  constructor(
    public boid_id:Name = new Name(),
    // The owners are native chain accounts that can authorize actions on behalf of this boid account. Owner accounts can only be added/removed by other Owners on the account.
    public owners:Name[] = [],
    public auth:AccountAuth = new AccountAuth(),
    public sponsors:Name[] = [],
    public stake:AccountStake = new AccountStake(),
    public power:AccountPower = new AccountPower(),
    public team:AccountTeam = new AccountTeam(),
    public social_ipfs_json:string = "",
    public balance:u32 = 0,
    public nft_balance:u16 = 0
  ) {
    
  }

    @primary
  get primary():u64 {
    return this.boid_id.value
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.boid_id);
        enc.packObjectArray(this.owners);
        enc.pack(this.auth);
        enc.packObjectArray(this.sponsors);
        enc.pack(this.stake);
        enc.pack(this.power);
        enc.pack(this.team);
        enc.packString(this.social_ipfs_json);
        enc.packNumber<u32>(this.balance);
        enc.packNumber<u16>(this.nft_balance);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.boid_id = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.owners = new Array<Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new Name();
            this.owners[i] = obj;
            dec.unpack(obj);
        }
    }

        
        {
            let obj = new AccountAuth();
            dec.unpack(obj);
            this.auth = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.sponsors = new Array<Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new Name();
            this.sponsors[i] = obj;
            dec.unpack(obj);
        }
    }

        
        {
            let obj = new AccountStake();
            dec.unpack(obj);
            this.stake = obj;
        }
        
        {
            let obj = new AccountPower();
            dec.unpack(obj);
            this.power = obj;
        }
        
        {
            let obj = new AccountTeam();
            dec.unpack(obj);
            this.team = obj;
        }
        this.social_ipfs_json = dec.unpackString();
        this.balance = dec.unpackNumber<u32>();
        this.nft_balance = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.boid_id.getSize();
        size += _chain.calcPackedVarUint32Length(this.owners.length);
        for (let i=0; i<this.owners.length; i++) {
            size += this.owners[i].getSize();
        }

        size += this.auth.getSize();
        size += _chain.calcPackedVarUint32Length(this.sponsors.length);
        for (let i=0; i<this.sponsors.length; i++) {
            size += this.sponsors[i].getSize();
        }

        size += this.stake.getSize();
        size += this.power.getSize();
        size += this.team.getSize();
        size += _chain.Utils.calcPackedStringLength(this.social_ipfs_json);
        size += sizeof<u32>();
        size += sizeof<u16>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x32114D4F38000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): AccountDB {
        return new AccountDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
