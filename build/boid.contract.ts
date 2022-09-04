import * as _protocols from './tables/protocols';
import * as _pwrreports from './tables/pwrreports';
import * as _chain from "as-chain";
import { check, Contract } from "proton-tsc"
import { OracleActions } from "./actions/2-oracle"
import { PwrReportActions } from "./actions/3-pwrreport"
import { ProtoActions } from "./actions/4-protocol"

@contract
export class BoidPowerContract extends ProtoActions {

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

class oracleSetAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public weight: u8 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u8>(this.weight);
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
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u8>();
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
		if (action == 0xA5CC88AB0AC80000) {//oracleset
            const args = new oracleSetAction();
            args.unpack(actionData);
            mycontract.oracleSet(args.account!,args.weight);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
