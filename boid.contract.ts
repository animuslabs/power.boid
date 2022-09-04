import * as _chain from "as-chain";
import { check, Contract } from "proton-tsc"
import { OracleActions } from "./actions/2-oracle"
import { PwrReportActions } from "./actions/3-pwrreport"

@contract
export class BoidPowerContract extends PwrReportActions {

}


class pwrReportAction implements _chain.Packer {
    constructor (
        public oracle: _chain.Name | null = null,
        public boid_id_owner: _chain.Name | null = null,
        public report:  | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle!);
        enc.pack(this.boid_id_owner!);
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
            this.boid_id_owner! = obj;
        }
        
        {
            let obj = new ();
            dec.unpack(obj);
            this.report! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle!.getSize();
        size += this.boid_id_owner!.getSize();
        size += this.report!.getSize();
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
		if (action == 0xAF2F755697C80000) {//pwrreport
            const args = new pwrReportAction();
            args.unpack(actionData);
            mycontract.pwrReport(args.oracle!,args.boid_id_owner!,args.report!);
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
