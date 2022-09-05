import * as _chain from "as-chain";
import { Asset, Table, Name, TimePoint } from "proton-tsc"


@packer(nocodegen)
export class ConfigAccount implements _chain.Packer {
    
  purchase_price:u32 = 0
  max_owners:u8 = 0
  max_sponsors:u8 = 0
  max_pwrmods:u8 = 0
  suffix_whitelist:string[] = []
  remove_sponsor_price:u32 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u32>(this.purchase_price);
        enc.packNumber<u8>(this.max_owners);
        enc.packNumber<u8>(this.max_sponsors);
        enc.packNumber<u8>(this.max_pwrmods);
        enc.packStringArray(this.suffix_whitelist)
        enc.packNumber<u32>(this.remove_sponsor_price);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.purchase_price = dec.unpackNumber<u32>();
        this.max_owners = dec.unpackNumber<u8>();
        this.max_sponsors = dec.unpackNumber<u8>();
        this.max_pwrmods = dec.unpackNumber<u8>();
        this.suffix_whitelist = dec.unpackStringArray();
        this.remove_sponsor_price = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u32>();
        size += sizeof<u8>();
        size += sizeof<u8>();
        size += sizeof<u8>();
        size += _chain.calcPackedVarUint32Length(this.suffix_whitelist.length);
        for (let i=0; i<this.suffix_whitelist.length; i++) {
            size += _chain.Utils.calcPackedStringLength(this.suffix_whitelist[i]);
        }

        size += sizeof<u32>();
        return size;
    }
}


@packer(nocodegen)
export class ConfigPower implements _chain.Packer {
    
  round_decay_constant:u16 = 0
  round_decay_mult:f32 = 0
  sponsor_tax_mult:f32 = 0
  powered_stake_mult:f32 = 0
  powered_stake_pwr:f32 = 0
  claim_maximum_elapsed_rounds:u16 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.round_decay_constant);
        enc.packNumber<f32>(this.round_decay_mult);
        enc.packNumber<f32>(this.sponsor_tax_mult);
        enc.packNumber<f32>(this.powered_stake_mult);
        enc.packNumber<f32>(this.powered_stake_pwr);
        enc.packNumber<u16>(this.claim_maximum_elapsed_rounds);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.round_decay_constant = dec.unpackNumber<u16>();
        this.round_decay_mult = dec.unpackNumber<f32>();
        this.sponsor_tax_mult = dec.unpackNumber<f32>();
        this.powered_stake_mult = dec.unpackNumber<f32>();
        this.powered_stake_pwr = dec.unpackNumber<f32>();
        this.claim_maximum_elapsed_rounds = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        size += sizeof<f32>();
        size += sizeof<f32>();
        size += sizeof<f32>();
        size += sizeof<f32>();
        size += sizeof<u16>();
        return size;
    }
}


@packer(nocodegen)
export class ConfigMint implements _chain.Packer {
    
  round_powered_stake_mult:f32 = 0 // inflation from powered stake
  round_power_mult:f32 = 0 // determines inflation from boid power
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<f32>(this.round_powered_stake_mult);
        enc.packNumber<f32>(this.round_power_mult);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.round_powered_stake_mult = dec.unpackNumber<f32>();
        this.round_power_mult = dec.unpackNumber<f32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<f32>();
        size += sizeof<f32>();
        return size;
    }
}

@packer(nocodegen)
export class ConfigAutoAdjust implements _chain.Packer {
    
  target_inflation_per_round:u32 = 0 // for the auto adjust to change inflation based on stats data
  power_mult_max_adjust:f32 = 0 // max the round_power_mult may be adjusted each adjustment action
  powered_stake_mult_max_adjust:f32 = 0 // max the round_powered_stake_mult may be adjusted each adjustment action
  adjustment_interval_rounds:u16 = 0 // how often can the adjust action be called to update inflation
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u32>(this.target_inflation_per_round);
        enc.packNumber<f32>(this.power_mult_max_adjust);
        enc.packNumber<f32>(this.powered_stake_mult_max_adjust);
        enc.packNumber<u16>(this.adjustment_interval_rounds);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.target_inflation_per_round = dec.unpackNumber<u32>();
        this.power_mult_max_adjust = dec.unpackNumber<f32>();
        this.powered_stake_mult_max_adjust = dec.unpackNumber<f32>();
        this.adjustment_interval_rounds = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u32>();
        size += sizeof<f32>();
        size += sizeof<f32>();
        size += sizeof<u16>();
        return size;
    }
}

@packer(nocodegen)
export class ConfigTeam implements _chain.Packer {
    
  change_min_rounds:u16 = 0 // minimum rounds an account must wait before changing teams
  edit_team_min_rounds:u16 = 0 //minimum rounds a team owner must wait before chaning teams
  team_edit_max_pct_change:u16 = 0 // maximum that team tax and owner cut can be adjusted (up or down) with each edit
  buy_team_cost:u32 = 0 // BOID required to create a team
  owner_stake_required:u32 = 0 // BOID stake required to create a team
  owner_future_stake_lock_rounds_required:u16 = 0 // owner must have some BOID stake locked for this amount of time
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.change_min_rounds);
        enc.packNumber<u16>(this.edit_team_min_rounds);
        enc.packNumber<u16>(this.team_edit_max_pct_change);
        enc.packNumber<u32>(this.buy_team_cost);
        enc.packNumber<u32>(this.owner_stake_required);
        enc.packNumber<u16>(this.owner_future_stake_lock_rounds_required);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.change_min_rounds = dec.unpackNumber<u16>();
        this.edit_team_min_rounds = dec.unpackNumber<u16>();
        this.team_edit_max_pct_change = dec.unpackNumber<u16>();
        this.buy_team_cost = dec.unpackNumber<u32>();
        this.owner_stake_required = dec.unpackNumber<u32>();
        this.owner_future_stake_lock_rounds_required = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u16>();
        return size;
    }
}


@packer(nocodegen)
export class ConfigStake implements _chain.Packer {
    
  unstake_rounds:u8 = 0
  extra_stake_min_locked_rounds:u8 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u8>(this.unstake_rounds);
        enc.packNumber<u8>(this.extra_stake_min_locked_rounds);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.unstake_rounds = dec.unpackNumber<u8>();
        this.extra_stake_min_locked_rounds = dec.unpackNumber<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u8>();
        size += sizeof<u8>();
        return size;
    }
}


@packer(nocodegen)
export class ConfigTime implements _chain.Packer {
    
  rounds_start:TimePoint = new TimePoint()
  round_length_sec:u32 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.rounds_start);
        enc.packNumber<u32>(this.round_length_sec);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new TimePoint();
            dec.unpack(obj);
            this.rounds_start = obj;
        }
        this.round_length_sec = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.rounds_start.getSize();
        size += sizeof<u32>();
        return size;
    }
}


@packer(nocodegen)
export class ConfigAuth implements _chain.Packer {
    
  // actions must be whitelisted in order for key authentication to be used on that action
  key_actions_whitelist:Name[] = []
  // NOT IMPLEMENTED: in the future we might limit the stake/balance of accounts that don't have an owner account attached (key only accts)
  key_account_max_stake:u32 = 0
  // NOT IMPLEMENTED: in the future we might limit the stake/balance of accounts that don't have an owner account attached (key only accts)
  key_account_max_balance:u32 = 0
  // max number of keys that can be registered for authentication on a boid account
  account_max_keys:u8 = 0
  // NOT IMPLEMENTED: The idea is that workers that pass along actions for key accounts
  // could optionally bill the account to prevent spam.
  worker_max_bill_per_action:u32 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packObjectArray(this.key_actions_whitelist);
        enc.packNumber<u32>(this.key_account_max_stake);
        enc.packNumber<u32>(this.key_account_max_balance);
        enc.packNumber<u8>(this.account_max_keys);
        enc.packNumber<u32>(this.worker_max_bill_per_action);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
    {
        let length = <i32>dec.unpackLength();
        this.key_actions_whitelist = new Array<Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new Name();
            this.key_actions_whitelist[i] = obj;
            dec.unpack(obj);
        }
    }

        this.key_account_max_stake = dec.unpackNumber<u32>();
        this.key_account_max_balance = dec.unpackNumber<u32>();
        this.account_max_keys = dec.unpackNumber<u8>();
        this.worker_max_bill_per_action = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.calcPackedVarUint32Length(this.key_actions_whitelist.length);
        for (let i=0; i<this.key_actions_whitelist.length; i++) {
            size += this.key_actions_whitelist[i].getSize();
        }

        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u8>();
        size += sizeof<u32>();
        return size;
    }
}

@packer(nocodegen)
export class PowerClaimLog implements _chain.Packer {
    
  before:u16 = 0
  after:u16 = 0
  from_mods:u16 = 0
  decayed:u16 = 0
  rounds:u16 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.before);
        enc.packNumber<u16>(this.after);
        enc.packNumber<u16>(this.from_mods);
        enc.packNumber<u16>(this.decayed);
        enc.packNumber<u16>(this.rounds);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.before = dec.unpackNumber<u16>();
        this.after = dec.unpackNumber<u16>();
        this.from_mods = dec.unpackNumber<u16>();
        this.decayed = dec.unpackNumber<u16>();
        this.rounds = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        return size;
    }
}


@packer(nocodegen)
export class MintLog implements _chain.Packer {
    
  account:u32 = 0
  team:u32 = 0
  team_owner:u32 = 0
  overstake:u32 = 0
  total:u32 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u32>(this.account);
        enc.packNumber<u32>(this.team);
        enc.packNumber<u32>(this.team_owner);
        enc.packNumber<u32>(this.overstake);
        enc.packNumber<u32>(this.total);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.account = dec.unpackNumber<u32>();
        this.team = dec.unpackNumber<u32>();
        this.team_owner = dec.unpackNumber<u32>();
        this.overstake = dec.unpackNumber<u32>();
        this.total = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u32>();
        size += sizeof<u32>();
        return size;
    }
}


@packer(nocodegen)
export class ConfigNft implements _chain.Packer {
    
  boid_id_maximum_nfts:u16 = 0
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u16>(this.boid_id_maximum_nfts);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.boid_id_maximum_nfts = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u16>();
        return size;
    }
}



export class ConfigDB extends _chain.MultiIndex<Config> {

}

@table("config", singleton, noabigen, nocodegen)

export class Config implements _chain.MultiIndexValue {
    
  constructor(
    public account:ConfigAccount = new ConfigAccount(),
    public power:ConfigPower = new ConfigPower(),
    public mint:ConfigMint = new ConfigMint(),
    public team:ConfigTeam = new ConfigTeam(),
    public stake:ConfigStake = new ConfigStake(),
    public time:ConfigTime = new ConfigTime(),
    public auth:ConfigAuth = new ConfigAuth(),
    public nft:ConfigNft = new ConfigNft(),
    public auto:ConfigAutoAdjust = new ConfigAutoAdjust(),
    public paused:boolean = true,
    public allow_deposits:boolean = false,
    public allow_withdrawals:boolean = false
  ) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.pack(this.power);
        enc.pack(this.mint);
        enc.pack(this.team);
        enc.pack(this.stake);
        enc.pack(this.time);
        enc.pack(this.auth);
        enc.pack(this.nft);
        enc.pack(this.auto);
        enc.packNumber<boolean>(this.paused);
        enc.packNumber<boolean>(this.allow_deposits);
        enc.packNumber<boolean>(this.allow_withdrawals);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new ConfigAccount();
            dec.unpack(obj);
            this.account = obj;
        }
        
        {
            let obj = new ConfigPower();
            dec.unpack(obj);
            this.power = obj;
        }
        
        {
            let obj = new ConfigMint();
            dec.unpack(obj);
            this.mint = obj;
        }
        
        {
            let obj = new ConfigTeam();
            dec.unpack(obj);
            this.team = obj;
        }
        
        {
            let obj = new ConfigStake();
            dec.unpack(obj);
            this.stake = obj;
        }
        
        {
            let obj = new ConfigTime();
            dec.unpack(obj);
            this.time = obj;
        }
        
        {
            let obj = new ConfigAuth();
            dec.unpack(obj);
            this.auth = obj;
        }
        
        {
            let obj = new ConfigNft();
            dec.unpack(obj);
            this.nft = obj;
        }
        
        {
            let obj = new ConfigAutoAdjust();
            dec.unpack(obj);
            this.auto = obj;
        }
        this.paused = dec.unpackNumber<boolean>();
        this.allow_deposits = dec.unpackNumber<boolean>();
        this.allow_withdrawals = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += this.power.getSize();
        size += this.mint.getSize();
        size += this.team.getSize();
        size += this.stake.getSize();
        size += this.time.getSize();
        size += this.auth.getSize();
        size += this.nft.getSize();
        size += this.auto.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x4526B73000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Config.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Config.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x4526B73000000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<Config> {
        return new _chain.Singleton<Config>(code, scope, this.tableName);
    }
}
