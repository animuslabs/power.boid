import * as _protocols from './tables/protocols';
import * as _pwrreports from './tables/pwrreports';
import * as _config from './tables/config';
import * as _chain from "as-chain";
import { check, Contract } from "proton-tsc"
import { OracleActions } from "./actions/2-oracle"
import { PwrReportActions } from "./actions/3-pwrreport"
import { ProtoActions } from "./actions/4-protocol"
import { DepositActions } from "./actions/5-deposit"
import { OStatsActions } from "./actions/6-ostats"

@contract
export class BoidPowerContract extends OStatsActions {

}


class handleOStatAction implements _chain.Packer {
    constructor (
        public oracle: _chain.Name | null = null,
        public round: u16 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle!);
        enc.packNumber<u16>(this.round);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle! = obj;
        }
        this.round = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle!.getSize();
        size += sizeof<u16>();
        return size;
    }
}

class payOracleAction implements _chain.Packer {
    constructor (
        public oracle: _chain.Name | null = null,
        public basePay: u32 = 0,
        public bonusPay: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle!);
        enc.packNumber<u32>(this.basePay);
        enc.packNumber<u32>(this.bonusPay);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle! = obj;
        }
        this.basePay = dec.unpackNumber<u32>();
        this.bonusPay = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle!.getSize();
        size += sizeof<u32>();
        size += sizeof<u32>();
        return size;
    }
}

class slashOracleAction implements _chain.Packer {
    constructor (
        public oracle: _chain.Name | null = null,
        public quantity: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle!);
        enc.packNumber<u32>(this.quantity);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle! = obj;
        }
        this.quantity = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle!.getSize();
        size += sizeof<u32>();
        return size;
    }
}

class ondepositAction implements _chain.Packer {
    constructor (
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        return size;
    }
}

class protoSetAction implements _chain.Packer {
    constructor (
        public protocol: _protocols.Protocol | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.protocol!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _protocols.Protocol();
            dec.unpack(obj);
            this.protocol! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.protocol!.getSize();
        return size;
    }
}

class pwrReportAction implements _chain.Packer {
    constructor (
        public oracle: _chain.Name | null = null,
        public boid_id_scope: _chain.Name | null = null,
        public report: _pwrreports.PwrReport | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle!);
        enc.pack(this.boid_id_scope!);
        enc.pack(this.report!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.boid_id_scope! = obj;
        }
        
        {
            let obj = new _pwrreports.PwrReport();
            dec.unpack(obj);
            this.report! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle!.getSize();
        size += this.boid_id_scope!.getSize();
        size += this.report!.getSize();
        return size;
    }
}

class mergeReportsAction implements _chain.Packer {
    constructor (
        public boid_id_scope: _chain.Name | null = null,
        public pwrreport_ids: Array<u64> | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.boid_id_scope!);
        enc.packNumberArray<u64>(this.pwrreport_ids!)
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.boid_id_scope! = obj;
        }
        this.pwrreport_ids! = dec.unpackNumberArray<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.boid_id_scope!.getSize();
        size += _chain.calcPackedVarUint32Length(this.pwrreport_ids!.length);size += sizeof<u64>()*this.pwrreport_ids!.length;
        return size;
    }
}

class setStandbyAction implements _chain.Packer {
    constructor (
        public oracle: _chain.Name | null = null,
        public standby: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle!);
        enc.packNumber<boolean>(this.standby);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle! = obj;
        }
        this.standby = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle!.getSize();
        size += sizeof<boolean>();
        return size;
    }
}

class oracleSetAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public weight: u8 = 0,
        public adding_collateral: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u8>(this.weight);
        enc.packNumber<u32>(this.adding_collateral);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.weight = dec.unpackNumber<u8>();
        this.adding_collateral = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u8>();
        size += sizeof<u32>();
        return size;
    }
}

class withdrawInitAction implements _chain.Packer {
    constructor (
        public oracle: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle!.getSize();
        return size;
    }
}

class withdrawEndAction implements _chain.Packer {
    constructor (
        public oracle: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle!.getSize();
        return size;
    }
}

class configSetAction implements _chain.Packer {
    constructor (
        public config: _config.Config | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.config!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _config.Config();
            dec.unpack(obj);
            this.config! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.config!.getSize();
        return size;
    }
}

class statsCleanupAction implements _chain.Packer {
    constructor (
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new BoidPowerContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x69A698AA98C9B200) {//handleostat
            const args = new handleOStatAction();
            args.unpack(actionData);
            mycontract.handleOStat(args.oracle!,args.round);
        }
		if (action == 0xA9BD4B9911500000) {//payoracle
            const args = new payOracleAction();
            args.unpack(actionData);
            mycontract.payOracle(args.oracle!,args.basePay,args.bonusPay);
        }
		if (action == 0xC44D86D2E6445400) {//slashoracle
            const args = new slashOracleAction();
            args.unpack(actionData);
            mycontract.slashOracle(args.oracle!,args.quantity);
        }
		
		if (action == 0xADE99A6159000000) {//protoset
            const args = new protoSetAction();
            args.unpack(actionData);
            mycontract.protoSet(args.protocol!);
        }
		if (action == 0xAF2F755697C80000) {//pwrreport
            const args = new pwrReportAction();
            args.unpack(actionData);
            mycontract.pwrReport(args.oracle!,args.boid_id_scope!,args.report!);
        }
		if (action == 0x92AEC55D55A5F380) {//mergereports
            const args = new mergeReportsAction();
            args.unpack(actionData);
            mycontract.mergeReports(args.boid_id_scope!,args.pwrreport_ids!);
        }
		if (action == 0xC2B38C9A693F8000) {//setstandby
            const args = new setStandbyAction();
            args.unpack(actionData);
            mycontract.setStandby(args.oracle!,args.standby);
        }
		if (action == 0xA5CC88AB0AC80000) {//oracleset
            const args = new oracleSetAction();
            args.unpack(actionData);
            mycontract.oracleSet(args.account!,args.weight,args.adding_collateral);
        }
		if (action == 0xE3B2D4DCDC74DD90) {//withdrawinit
            const args = new withdrawInitAction();
            args.unpack(actionData);
            mycontract.withdrawInit(args.oracle!);
        }
		if (action == 0xE3B2D4DCDC000000) {//withdraw
            const args = new withdrawEndAction();
            args.unpack(actionData);
            mycontract.withdrawEnd(args.oracle!);
        }
		if (action == 0x4526B7330AC80000) {//configset
            const args = new configSetAction();
            args.unpack(actionData);
            mycontract.configSet(args.config!);
        }
		if (action == 0xC64D9C222A34C000) {//statsclean
            const args = new statsCleanupAction();
            args.unpack(actionData);
            mycontract.statsCleanup();
        }
	}
  
	if (receiver != firstReceiver) {
		if (action == 0xCDCD3C2D57000000) {//transfer
            const args = new ondepositAction();
            args.unpack(actionData);
            mycontract.ondeposit();
        }
	}
	return;
}
