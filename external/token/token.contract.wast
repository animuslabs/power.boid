(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "is_account" (func $~lib/as-chain/env/is_account (param i64) (result i32)))
 (import "env" "require_recipient" (func $~lib/as-chain/env/require_recipient (param i64)))
 (import "env" "has_auth" (func $~lib/as-chain/env/has_auth (param i64) (result i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/mi/SAME_PAYER (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $assembly/token/token.contract/TokenContract i32 (i32.const 7))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1084) " \00\00\00.12345abcdefghijklmnopqrstuvwxyz")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\04\00\00\00\10\00\00\00@\04\00\00@\04\00\00 \00\00\00 ")
 (data (i32.const 1180) "\dc")
 (data (i32.const 1192) "\01\00\00\00\cc\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00i\00f\00 \00y\00o\00u\00 \00w\00i\00s\00h\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1404) "\dc")
 (data (i32.const 1416) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1628) "\dc")
 (data (i32.const 1640) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00r\00e\00m\00o\00v\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1852) "\8c")
 (data (i32.const 1864) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00n\00e\00x\00t\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1996) "\8c")
 (data (i32.const 2008) "\01\00\00\00|\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00p\00r\00e\00v\00i\00o\00u\00s\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2140) "|")
 (data (i32.const 2152) "\01\00\00\00f\00\00\00n\00e\00x\00t\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00i\00s\00 \00a\00t\00 \00a\00u\00t\00o\00i\00n\00c\00r\00e\00m\00e\00n\00t\00 \00l\00i\00m\00i\00t")
 (data (i32.const 2268) ",")
 (data (i32.const 2280) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00u\00p\00p\00l\00y")
 (data (i32.const 2316) "L")
 (data (i32.const 2328) "\01\00\00\006\00\00\00m\00a\00x\00-\00s\00u\00p\00p\00l\00y\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 2396) "<")
 (data (i32.const 2408) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2460) "<")
 (data (i32.const 2472) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2524) "\1c")
 (data (i32.const 2536) "\01")
 (data (i32.const 2556) "\1c")
 (data (i32.const 2588) "\\")
 (data (i32.const 2600) "\01\00\00\00@\00\00\00t\00o\00k\00e\00n\00 \00w\00i\00t\00h\00 \00s\00y\00m\00b\00o\00l\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 2684) "L")
 (data (i32.const 2696) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2764) "L")
 (data (i32.const 2776) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2844) "<")
 (data (i32.const 2856) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 2908) "<")
 (data (i32.const 2920) "\01\00\00\00&\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2972) "L")
 (data (i32.const 2984) "\01\00\00\008\00\00\00m\00e\00m\00o\00 \00h\00a\00s\00 \00m\00o\00r\00e\00 \00t\00h\00a\00n\00 \002\005\006\00 \00b\00y\00t\00e\00s")
 (data (i32.const 3052) "\8c")
 (data (i32.const 3064) "\01\00\00\00v\00\00\00t\00o\00k\00e\00n\00 \00w\00i\00t\00h\00 \00s\00y\00m\00b\00o\00l\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00c\00r\00e\00a\00t\00e\00 \00t\00o\00k\00e\00n\00 \00b\00e\00f\00o\00r\00e\00 \00i\00s\00s\00u\00e")
 (data (i32.const 3196) "\\")
 (data (i32.const 3208) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3292) "l")
 (data (i32.const 3304) "\01\00\00\00V\00\00\00t\00o\00k\00e\00n\00s\00 \00c\00a\00n\00 \00o\00n\00l\00y\00 \00b\00e\00 \00i\00s\00s\00u\00e\00d\00 \00t\00o\00 \00i\00s\00s\00u\00e\00r\00 \00a\00c\00c\00o\00u\00n\00t")
 (data (i32.const 3404) "<")
 (data (i32.const 3416) "\01\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y")
 (data (i32.const 3468) "L")
 (data (i32.const 3480) "\01\00\00\008\00\00\00m\00u\00s\00t\00 \00i\00s\00s\00u\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e\00 \00q\00u\00a\00n\00t\00i\00t\00y")
 (data (i32.const 3548) "L")
 (data (i32.const 3560) "\01\00\00\002\00\00\00s\00y\00m\00b\00o\00l\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 3628) "\\")
 (data (i32.const 3640) "\01\00\00\00B\00\00\00q\00u\00a\00n\00t\00i\00t\00y\00 \00e\00x\00c\00e\00e\00d\00s\00 \00a\00v\00a\00i\00l\00a\00b\00l\00e\00 \00s\00u\00p\00p\00l\00y")
 (data (i32.const 3724) "<")
 (data (i32.const 3736) "\01\00\00\00&\00\00\00s\00y\00m\00b\00o\00l\00 \00n\00o\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e")
 (data (i32.const 3788) "<")
 (data (i32.const 3800) "\01\00\00\00$\00\00\00a\00d\00d\00i\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3852) "<")
 (data (i32.const 3864) "\01\00\00\00\"\00\00\00a\00d\00d\00i\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3916) "<")
 (data (i32.const 3928) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3980) "L")
 (data (i32.const 3992) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 4060) "<")
 (data (i32.const 4072) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 4124) "l")
 (data (i32.const 4136) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 4236) "\1c")
 (data (i32.const 4268) "\\")
 (data (i32.const 4280) "\01\00\00\00@\00\00\00t\00o\00k\00e\00n\00 \00w\00i\00t\00h\00 \00s\00y\00m\00b\00o\00l\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 4364) "L")
 (data (i32.const 4376) "\01\00\00\00:\00\00\00m\00u\00s\00t\00 \00r\00e\00t\00i\00r\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e\00 \00q\00u\00a\00n\00t\00i\00t\00y")
 (data (i32.const 4444) "<")
 (data (i32.const 4456) "\01\00\00\00*\00\00\00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data (i32.const 4508) "<")
 (data (i32.const 4520) "\01\00\00\00(\00\00\00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 4572) "L")
 (data (i32.const 4584) "\01\00\00\00.\00\00\00n\00o\00 \00b\00a\00l\00a\00n\00c\00e\00 \00o\00b\00j\00e\00c\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 4652) "<")
 (data (i32.const 4664) "\01\00\00\00\"\00\00\00o\00v\00e\00r\00d\00r\00a\00w\00n\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 4716) "L")
 (data (i32.const 4728) "\01\00\00\00.\00\00\00c\00a\00n\00n\00o\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00t\00o\00 \00s\00e\00l\00f")
 (data (i32.const 4796) "L")
 (data (i32.const 4808) "\01\00\00\002\00\00\00t\00o\00 \00a\00c\00c\00o\00u\00n\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 4876) "\\")
 (data (i32.const 4888) "\01\00\00\00>\00\00\00m\00u\00s\00t\00 \00t\00r\00a\00n\00s\00f\00e\00r\00 \00p\00o\00s\00i\00t\00i\00v\00e\00 \00q\00u\00a\00n\00t\00i\00t\00y")
 (data (i32.const 4972) "L")
 (data (i32.const 4984) "\01\00\00\008\00\00\00o\00w\00n\00e\00r\00 \00a\00c\00c\00o\00u\00n\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 5052) "<")
 (data (i32.const 5064) "\01\00\00\00*\00\00\00s\00y\00m\00b\00o\00l\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 5116) "\ac")
 (data (i32.const 5128) "\01\00\00\00\96\00\00\00B\00a\00l\00a\00n\00c\00e\00 \00r\00o\00w\00 \00a\00l\00r\00e\00a\00d\00y\00 \00d\00e\00l\00e\00t\00e\00d\00 \00o\00r\00 \00n\00e\00v\00e\00r\00 \00e\00x\00i\00s\00t\00e\00d\00.\00 \00A\00c\00t\00i\00o\00n\00 \00w\00o\00n\00\'\00t\00 \00h\00a\00v\00e\00 \00a\00n\00y\00 \00e\00f\00f\00e\00c\00t\00.")
 (data (i32.const 5292) "l")
 (data (i32.const 5304) "\01\00\00\00Z\00\00\00C\00a\00n\00n\00o\00t\00 \00c\00l\00o\00s\00e\00 \00b\00e\00c\00a\00u\00s\00e\00 \00t\00h\00e\00 \00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00 \00n\00o\00t\00 \00z\00e\00r\00o\00.")
 (data (i32.const 5404) "L")
 (data (i32.const 5416) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 5484) ",")
 (data (i32.const 5496) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 5532) ",")
 (data (i32.const 5544) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (export "TokenContract" (global $assembly/token/token.contract/TokenContract))
 (export "TokenContract#get:receiver" (func $~lib/as-chain/helpers/Contract#get:receiver))
 (export "TokenContract#set:receiver" (func $~lib/as-chain/helpers/Contract#set:receiver))
 (export "TokenContract#get:firstReceiver" (func $~lib/as-chain/helpers/Contract#get:firstReceiver))
 (export "TokenContract#set:firstReceiver" (func $~lib/as-chain/helpers/Contract#set:firstReceiver))
 (export "TokenContract#get:action" (func $~lib/as-chain/helpers/Contract#get:action))
 (export "TokenContract#set:action" (func $~lib/as-chain/helpers/Contract#set:action))
 (export "TokenContract#constructor" (func $assembly/token/token.contract/TokenContract#constructor))
 (export "TokenContract#create" (func $assembly/token/token.contract/TokenContract#create))
 (export "TokenContract#issue" (func $assembly/token/token.contract/TokenContract#issue))
 (export "TokenContract#retire" (func $assembly/token/token.contract/TokenContract#retire))
 (export "TokenContract#transfer" (func $assembly/token/token.contract/TokenContract#transfer))
 (export "TokenContract#open" (func $assembly/token/token.contract/TokenContract#open))
 (export "TokenContract#close" (func $assembly/token/token.contract/TokenContract#close))
 (export "apply" (func $assembly/token/token.contract/apply))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.lt_u
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
    (local.get $0)
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $3
        (local.tee $1
         (i32.shr_u
          (i32.and
           (i32.add
            (i32.sub
             (local.get $0)
             (local.get $1)
            )
            (i32.const 65535)
           )
           (i32.const -65536)
          )
          (i32.const 16)
         )
        )
       )
       (i32.gt_s
        (local.get $2)
        (local.get $3)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (i32.sub
      (i32.and
       (i32.add
        (local.get $0)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
   )
  )
  (i32.store
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (i32.store offset=4
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=8
   (local.get $2)
   (i32.const 0)
  )
  (i32.store offset=12
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=16
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/as-chain/helpers/Contract#set:receiver (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/helpers/Contract#set:firstReceiver (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/helpers/Contract#set:action (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/token/token.contract/TokenContract#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (if
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 7)
      )
     )
    )
    (i32.eqz
     (local.get $0)
    )
   )
   (local.set $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $2)
  )
  (i32.store offset=8
   (local.get $0)
   (local.get $3)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/helpers/Contract#get:receiver (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:firstReceiver (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:action (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $2
       (i64.shr_u
        (i64.load
         (local.get $0)
        )
        (i64.const 8)
       )
      )
     )
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.ne
      (i64.and
       (local.get $2)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $3)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $3)
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i32.eqz
         (select
          (i32.le_u
           (local.tee $0
            (i32.wrap_i64
             (i64.and
              (local.get $2)
              (i64.const 255)
             )
            )
           )
           (i32.const 90)
          )
          (i32.const 0)
          (i32.ge_u
           (local.get $0)
           (i32.const 65)
          )
         )
        )
       )
      )
      (br_if $for-break0
       (i64.eqz
        (i64.and
         (local.tee $2
          (i64.shr_u
           (local.get $2)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (loop $for-loop|1
    (if
     (i32.le_s
      (local.get $1)
      (i32.const 6)
     )
     (block
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i64.ne
         (i64.and
          (local.tee $2
           (i64.shr_u
            (local.get $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/asset/Asset#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (if (result i32)
    (i64.ge_s
     (i64.load
      (local.tee $1
       (local.get $0)
      )
     )
     (i64.const -4611686018427387903)
    )
    (i64.le_s
     (i64.load
      (local.get $1)
     )
     (i64.const 4611686018427387903)
    )
    (i32.const 0)
   )
   (call $~lib/as-chain/asset/Symbol#isValid
    (i32.load offset=8
     (local.get $0)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $6
   (call $~lib/rt/stub/__new
    (block (result i32)
     (local.set $4
      (i32.add
       (local.tee $2
        (local.get $0)
       )
       (i32.load offset=16
        (i32.sub
         (local.get $2)
         (i32.const 20)
        )
       )
      )
     )
     (local.set $3
      (i32.ne
       (local.tee $6
        (local.get $1)
       )
       (i32.const 0)
      )
     )
     (loop $while-continue|0
      (if
       (i32.lt_u
        (local.get $2)
        (local.get $4)
       )
       (block $while-break|0
        (local.set $3
         (if (result i32)
          (i32.lt_u
           (local.tee $5
            (i32.load16_u
             (local.get $2)
            )
           )
           (i32.const 128)
          )
          (block (result i32)
           (br_if $while-break|0
            (i32.and
             (local.get $6)
             (i32.eqz
              (local.get $5)
             )
            )
           )
           (i32.add
            (local.get $3)
            (i32.const 1)
           )
          )
          (if (result i32)
           (i32.lt_u
            (local.get $5)
            (i32.const 2048)
           )
           (i32.add
            (local.get $3)
            (i32.const 2)
           )
           (block (result i32)
            (if
             (select
              (i32.lt_u
               (i32.add
                (local.get $2)
                (i32.const 2)
               )
               (local.get $4)
              )
              (i32.const 0)
              (i32.eq
               (i32.and
                (local.get $5)
                (i32.const 64512)
               )
               (i32.const 55296)
              )
             )
             (if
              (i32.eq
               (i32.and
                (i32.load16_u offset=2
                 (local.get $2)
                )
                (i32.const 64512)
               )
               (i32.const 56320)
              )
              (block
               (local.set $3
                (i32.add
                 (local.get $3)
                 (i32.const 4)
                )
               )
               (local.set $2
                (i32.add
                 (local.get $2)
                 (i32.const 4)
                )
               )
               (br $while-continue|0)
              )
             )
            )
            (i32.add
             (local.get $3)
             (i32.const 3)
            )
           )
          )
         )
        )
        (local.set $2
         (i32.add
          (local.get $2)
          (i32.const 2)
         )
        )
        (br $while-continue|0)
       )
      )
     )
     (local.get $3)
    )
    (i32.const 0)
   )
  )
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (i32.shr_u
      (i32.load offset=16
       (i32.sub
        (local.get $0)
        (i32.const 20)
       )
      )
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (local.set $3
   (local.get $6)
  )
  (loop $while-continue|00
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $3
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $3)
         (local.get $2)
        )
        (i32.add
         (local.get $3)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $3)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $3)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.lt_u
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
            (local.get $4)
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $5
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $3)
             (i32.or
              (i32.or
               (i32.shr_u
                (local.tee $2
                 (i32.or
                  (i32.add
                   (i32.shl
                    (i32.and
                     (local.get $2)
                     (i32.const 1023)
                    )
                    (i32.const 10)
                   )
                   (i32.const 65536)
                  )
                  (i32.and
                   (local.get $5)
                   (i32.const 1023)
                  )
                 )
                )
                (i32.const 18)
               )
               (i32.const 240)
              )
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.get $2)
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
             )
            )
            (local.set $3
             (i32.add
              (local.get $3)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|00)
           )
          )
         )
         (i32.store16
          (local.get $3)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $3)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $3)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|00)
    )
   )
  )
  (if
   (local.get $1)
   (i32.store8
    (local.get $3)
    (i32.const 0)
   )
  )
  (local.get $6)
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/env/eosio_assert
   (i32.eqz
    (i32.eqz
     (local.get $0)
    )
   )
   (block (result i32)
    (local.set $0
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 1)
     )
    )
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (local.set $1
     (i32.load offset=16
      (i32.sub
       (local.get $0)
       (i32.const 20)
      )
     )
    )
    (i32.store
     (local.tee $2
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 11)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (local.get $2)
     (i32.const 0)
    )
    (i32.store offset=8
     (local.get $2)
     (i32.const 0)
    )
    (if
     (i32.or
      (i32.gt_u
       (local.tee $3
        (local.get $1)
       )
       (i32.load offset=16
        (i32.sub
         (local.get $0)
         (i32.const 20)
        )
       )
      )
      (i32.gt_u
       (local.get $1)
       (i32.const 1073741820)
      )
     )
     (unreachable)
    )
    (i32.store
     (local.get $2)
     (local.get $0)
    )
    (i32.store offset=4
     (local.get $2)
     (local.get $0)
    )
    (i32.store offset=8
     (local.get $2)
     (local.get $3)
    )
    (i32.load offset=4
     (local.get $2)
    )
   )
  )
 )
 (func $assembly/token/token.tables/Stat#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 12)
    )
   )
   (local.get $0)
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $1)
  )
  (i32.store offset=8
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/asset/Symbol#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (i64.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 10)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_u
    (i32.shr_u
     (i32.load
      (i32.const 2540)
     )
     (i32.const 1)
    )
    (i32.const 7)
   )
   (i32.const 2416)
  )
  (i64.store
   (local.get $0)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (i32.shr_u
      (i32.load
       (i32.const 2540)
      )
      (i32.const 1)
     )
     (local.get $1)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $2
         (i64.extend_i32_s
          (block $__inlined_func$~lib/string/String#charCodeAt (result i32)
           (drop
            (br_if $__inlined_func$~lib/string/String#charCodeAt
             (i32.const -1)
             (i32.ge_u
              (local.tee $3
               (i32.sub
                (i32.sub
                 (i32.shr_u
                  (i32.load
                   (i32.const 2540)
                  )
                  (i32.const 1)
                 )
                 (i32.const 1)
                )
                (local.get $1)
               )
              )
              (i32.shr_u
               (i32.load
                (i32.const 2540)
               )
               (i32.const 1)
              )
             )
            )
           )
           (i32.load16_u
            (i32.add
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
             (i32.const 2544)
            )
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $2)
        (i64.const 65)
       )
      )
      (i32.const 2480)
     )
     (i64.store
      (local.get $0)
      (i64.or
       (i64.load
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (i64.store
      (local.get $0)
      (i64.shl
       (i64.load
        (local.get $0)
       )
       (i64.const 8)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (i64.store
   (local.get $0)
   (i64.load
    (local.get $0)
   )
  )
  (local.get $0)
 )
 (func $assembly/token/token.tables/Stat#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $outOfRange
       (br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
        (global.get $~argumentsLength)
       )
      )
      (unreachable)
     )
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $0
      (call $~lib/as-chain/asset/Symbol#constructor)
     )
     (i64.store
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 9)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
      (local.get $1)
      (local.get $0)
     )
     (local.set $2
      (local.get $1)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $0
     (call $~lib/as-chain/asset/Symbol#constructor)
    )
    (i64.store
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (local.get $1)
     (local.get $0)
    )
   )
   (if
    (i32.eqz
     (local.tee $0
      (i32.const 0)
     )
    )
    (local.set $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
   )
   (i64.store
    (local.get $0)
    (i64.const 0)
   )
   (i64.store
    (local.get $0)
    (i64.const 0)
   )
  )
  (call $assembly/token/token.tables/Stat#constructor
   (local.get $2)
   (local.get $1)
   (local.get $0)
  )
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (if
    (select
     (i32.and
      (local.get $1)
      (i32.const 3)
     )
     (i32.const 0)
     (local.get $2)
    )
    (block
     (local.set $0
      (i32.add
       (local.tee $3
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $3)
      (block (result i32)
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (local.get $3)
       )
      )
     )
     (local.set $2
      (i32.sub
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.and
     (local.get $0)
     (i32.const 3)
    )
   )
   (block
    (loop $while-continue|1
     (if
      (i32.ge_u
       (local.get $2)
       (i32.const 16)
      )
      (block
       (i32.store
        (local.get $0)
        (i32.load
         (local.get $1)
        )
       )
       (i32.store offset=4
        (local.get $0)
        (i32.load offset=4
         (local.get $1)
        )
       )
       (i32.store offset=8
        (local.get $0)
        (i32.load offset=8
         (local.get $1)
        )
       )
       (i32.store offset=12
        (local.get $0)
        (i32.load offset=12
         (local.get $1)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 16)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 16)
        )
       )
       (local.set $2
        (i32.sub
         (local.get $2)
         (i32.const 16)
        )
       )
       (br $while-continue|1)
      )
     )
    )
    (if
     (i32.and
      (local.get $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (local.get $0)
       (i32.load
        (local.get $1)
       )
      )
      (i32.store offset=4
       (local.get $0)
       (i32.load offset=4
        (local.get $1)
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 8)
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (local.get $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (local.get $0)
       (i32.load
        (local.get $1)
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 4)
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (local.get $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (local.get $0)
       (i32.load16_u
        (local.get $1)
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 2)
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (local.get $2)
      (i32.const 1)
     )
     (block
      (local.set $3
       (local.get $0)
      )
      (i32.store8
       (local.get $3)
       (block (result i32)
        (local.set $3
         (local.get $1)
        )
        (i32.load8_u
         (local.get $3)
        )
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (local.get $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (br_table $case0|2 $case1|2 $case2|2 $break|2
        (i32.sub
         (i32.and
          (local.get $0)
          (i32.const 3)
         )
         (i32.const 1)
        )
       )
      )
      (local.set $4
       (i32.load
        (local.get $1)
       )
      )
      (local.set $0
       (i32.add
        (local.tee $3
         (local.get $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (local.get $3)
       (block (result i32)
        (local.set $1
         (i32.add
          (local.tee $3
           (local.get $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (local.get $3)
        )
       )
      )
      (local.set $0
       (i32.add
        (local.tee $3
         (local.get $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (local.get $3)
       (block (result i32)
        (local.set $1
         (i32.add
          (local.tee $3
           (local.get $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (local.get $3)
        )
       )
      )
      (local.set $0
       (i32.add
        (local.tee $3
         (local.get $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (local.get $3)
       (block (result i32)
        (local.set $1
         (i32.add
          (local.tee $3
           (local.get $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (local.get $3)
        )
       )
      )
      (local.set $2
       (i32.sub
        (local.get $2)
        (i32.const 3)
       )
      )
      (loop $while-continue|3
       (if
        (i32.ge_u
         (local.get $2)
         (i32.const 17)
        )
        (block
         (i32.store
          (local.get $0)
          (i32.or
           (i32.shl
            (local.tee $3
             (i32.load offset=1
              (local.get $1)
             )
            )
            (i32.const 8)
           )
           (i32.shr_u
            (local.get $4)
            (i32.const 24)
           )
          )
         )
         (i32.store offset=4
          (local.get $0)
          (i32.or
           (i32.shl
            (local.tee $4
             (i32.load offset=5
              (local.get $1)
             )
            )
            (i32.const 8)
           )
           (i32.shr_u
            (local.get $3)
            (i32.const 24)
           )
          )
         )
         (i32.store offset=8
          (local.get $0)
          (i32.or
           (i32.shl
            (local.tee $3
             (i32.load offset=9
              (local.get $1)
             )
            )
            (i32.const 8)
           )
           (i32.shr_u
            (local.get $4)
            (i32.const 24)
           )
          )
         )
         (i32.store offset=12
          (local.get $0)
          (i32.or
           (i32.shl
            (local.tee $4
             (i32.load offset=13
              (local.get $1)
             )
            )
            (i32.const 8)
           )
           (i32.shr_u
            (local.get $3)
            (i32.const 24)
           )
          )
         )
         (local.set $1
          (i32.add
           (local.get $1)
           (i32.const 16)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 16)
          )
         )
         (local.set $2
          (i32.sub
           (local.get $2)
           (i32.const 16)
          )
         )
         (br $while-continue|3)
        )
       )
      )
      (br $break|2)
     )
     (local.set $4
      (i32.load
       (local.get $1)
      )
     )
     (local.set $0
      (i32.add
       (local.tee $3
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $3)
      (block (result i32)
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (local.get $3)
       )
      )
     )
     (local.set $0
      (i32.add
       (local.tee $3
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $3)
      (block (result i32)
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (local.get $3)
       )
      )
     )
     (local.set $2
      (i32.sub
       (local.get $2)
       (i32.const 2)
      )
     )
     (loop $while-continue|4
      (if
       (i32.ge_u
        (local.get $2)
        (i32.const 18)
       )
       (block
        (i32.store
         (local.get $0)
         (i32.or
          (i32.shl
           (local.tee $3
            (i32.load offset=2
             (local.get $1)
            )
           )
           (i32.const 16)
          )
          (i32.shr_u
           (local.get $4)
           (i32.const 16)
          )
         )
        )
        (i32.store offset=4
         (local.get $0)
         (i32.or
          (i32.shl
           (local.tee $4
            (i32.load offset=6
             (local.get $1)
            )
           )
           (i32.const 16)
          )
          (i32.shr_u
           (local.get $3)
           (i32.const 16)
          )
         )
        )
        (i32.store offset=8
         (local.get $0)
         (i32.or
          (i32.shl
           (local.tee $3
            (i32.load offset=10
             (local.get $1)
            )
           )
           (i32.const 16)
          )
          (i32.shr_u
           (local.get $4)
           (i32.const 16)
          )
         )
        )
        (i32.store offset=12
         (local.get $0)
         (i32.or
          (i32.shl
           (local.tee $4
            (i32.load offset=14
             (local.get $1)
            )
           )
           (i32.const 16)
          )
          (i32.shr_u
           (local.get $3)
           (i32.const 16)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 16)
         )
        )
        (local.set $0
         (i32.add
          (local.get $0)
          (i32.const 16)
         )
        )
        (local.set $2
         (i32.sub
          (local.get $2)
          (i32.const 16)
         )
        )
        (br $while-continue|4)
       )
      )
     )
     (br $break|2)
    )
    (local.set $4
     (i32.load
      (local.get $1)
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $2
     (i32.sub
      (local.get $2)
      (i32.const 1)
     )
    )
    (loop $while-continue|5
     (if
      (i32.ge_u
       (local.get $2)
       (i32.const 19)
      )
      (block
       (i32.store
        (local.get $0)
        (i32.or
         (i32.shl
          (local.tee $3
           (i32.load offset=3
            (local.get $1)
           )
          )
          (i32.const 24)
         )
         (i32.shr_u
          (local.get $4)
          (i32.const 8)
         )
        )
       )
       (i32.store offset=4
        (local.get $0)
        (i32.or
         (i32.shl
          (local.tee $4
           (i32.load offset=7
            (local.get $1)
           )
          )
          (i32.const 24)
         )
         (i32.shr_u
          (local.get $3)
          (i32.const 8)
         )
        )
       )
       (i32.store offset=8
        (local.get $0)
        (i32.or
         (i32.shl
          (local.tee $3
           (i32.load offset=11
            (local.get $1)
           )
          )
          (i32.const 24)
         )
         (i32.shr_u
          (local.get $4)
          (i32.const 8)
         )
        )
       )
       (i32.store offset=12
        (local.get $0)
        (i32.or
         (i32.shl
          (local.tee $4
           (i32.load offset=15
            (local.get $1)
           )
          )
          (i32.const 24)
         )
         (i32.shr_u
          (local.get $3)
          (i32.const 8)
         )
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 16)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 16)
        )
       )
       (local.set $2
        (i32.sub
         (local.get $2)
         (i32.const 16)
        )
       )
       (br $while-continue|5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (local.get $2)
    (i32.const 16)
   )
   (block
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (local.get $2)
    (i32.const 8)
   )
   (block
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (local.get $2)
    (i32.const 4)
   )
   (block
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (local.get $2)
    (i32.const 2)
   )
   (block
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
    (local.set $0
     (i32.add
      (local.tee $3
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $1
       (i32.add
        (local.tee $3
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (local.get $2)
    (i32.const 1)
   )
   (block
    (local.set $3
     (local.get $0)
    )
    (i32.store8
     (local.get $3)
     (block (result i32)
      (local.set $3
       (local.get $1)
      )
      (i32.load8_u
       (local.get $3)
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $3
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.tee $2
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (if
    (i32.le_u
     (i32.sub
      (i32.sub
       (local.get $1)
       (local.get $2)
      )
      (local.get $3)
     )
     (i32.sub
      (i32.const 0)
      (i32.shl
       (local.get $3)
       (i32.const 1)
      )
     )
    )
    (block
     (call $~lib/util/memory/memcpy
      (local.get $2)
      (local.get $1)
      (local.get $3)
     )
     (br $~lib/util/memory/memmove|inlined.0)
    )
   )
   (if
    (i32.gt_u
     (local.get $1)
     (local.get $2)
    )
    (block
     (if
      (i32.eq
       (i32.and
        (local.get $1)
        (i32.const 7)
       )
       (i32.and
        (local.get $2)
        (i32.const 7)
       )
      )
      (block
       (loop $while-continue|0
        (if
         (i32.and
          (local.get $2)
          (i32.const 7)
         )
         (block
          (br_if $~lib/util/memory/memmove|inlined.0
           (i32.eqz
            (local.get $3)
           )
          )
          (local.set $3
           (i32.sub
            (local.get $3)
            (i32.const 1)
           )
          )
          (local.set $2
           (i32.add
            (local.tee $0
             (local.get $2)
            )
            (i32.const 1)
           )
          )
          (i32.store8
           (local.get $0)
           (block (result i32)
            (local.set $1
             (i32.add
              (local.tee $0
               (local.get $1)
              )
              (i32.const 1)
             )
            )
            (i32.load8_u
             (local.get $0)
            )
           )
          )
          (br $while-continue|0)
         )
        )
       )
       (loop $while-continue|1
        (if
         (i32.ge_u
          (local.get $3)
          (i32.const 8)
         )
         (block
          (i64.store
           (local.get $2)
           (i64.load
            (local.get $1)
           )
          )
          (local.set $3
           (i32.sub
            (local.get $3)
            (i32.const 8)
           )
          )
          (local.set $2
           (i32.add
            (local.get $2)
            (i32.const 8)
           )
          )
          (local.set $1
           (i32.add
            (local.get $1)
            (i32.const 8)
           )
          )
          (br $while-continue|1)
         )
        )
       )
      )
     )
     (loop $while-continue|2
      (if
       (local.get $3)
       (block
        (local.set $2
         (i32.add
          (local.tee $0
           (local.get $2)
          )
          (i32.const 1)
         )
        )
        (i32.store8
         (local.get $0)
         (block (result i32)
          (local.set $1
           (i32.add
            (local.tee $0
             (local.get $1)
            )
            (i32.const 1)
           )
          )
          (i32.load8_u
           (local.get $0)
          )
         )
        )
        (local.set $3
         (i32.sub
          (local.get $3)
          (i32.const 1)
         )
        )
        (br $while-continue|2)
       )
      )
     )
    )
    (block
     (if
      (i32.eq
       (i32.and
        (local.get $1)
        (i32.const 7)
       )
       (i32.and
        (local.get $2)
        (i32.const 7)
       )
      )
      (block
       (loop $while-continue|3
        (if
         (i32.and
          (i32.add
           (local.get $2)
           (local.get $3)
          )
          (i32.const 7)
         )
         (block
          (br_if $~lib/util/memory/memmove|inlined.0
           (i32.eqz
            (local.get $3)
           )
          )
          (i32.store8
           (i32.add
            (local.get $2)
            (local.tee $3
             (i32.sub
              (local.get $3)
              (i32.const 1)
             )
            )
           )
           (i32.load8_u
            (i32.add
             (local.get $1)
             (local.get $3)
            )
           )
          )
          (br $while-continue|3)
         )
        )
       )
       (loop $while-continue|4
        (if
         (i32.ge_u
          (local.get $3)
          (i32.const 8)
         )
         (block
          (i64.store
           (i32.add
            (local.get $2)
            (local.tee $3
             (i32.sub
              (local.get $3)
              (i32.const 8)
             )
            )
           )
           (i64.load
            (i32.add
             (local.get $1)
             (local.get $3)
            )
           )
          )
          (br $while-continue|4)
         )
        )
       )
      )
     )
     (loop $while-continue|5
      (if
       (local.get $3)
       (block
        (i32.store8
         (i32.add
          (local.get $2)
          (local.tee $3
           (i32.sub
            (local.get $3)
            (i32.const 1)
           )
          )
         )
         (i32.load8_u
          (i32.add
           (local.get $1)
           (local.get $3)
          )
         )
        )
        (br $while-continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (call $~lib/rt/stub/__new
    (local.tee $5
     (local.tee $1
      (i32.shl
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $4)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $4)
  )
  (i32.store
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $2)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=12
   (local.get $2)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (i32.store
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 15)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (local.get $3)
   (i64.const -1)
  )
  (local.set $2
   (local.get $0)
  )
  (drop
   (call $assembly/token/token.tables/Stat#constructor@varargs
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
  )
  (i64.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (i64.store
   (local.get $0)
   (i64.const -4157508551318700032)
  )
  (local.set $4
   (local.get $0)
  )
  (i64.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (i64.store
   (local.get $0)
   (i64.const -4157508551318700032)
  )
  (drop
   (i64.load
    (local.get $0)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 19)
    (i32.const 2576)
   )
  )
  (i32.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 16)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 0)
  )
  (i64.store offset=8
   (local.get $0)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (i64.store
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 17)
    )
   )
   (local.get $6)
  )
  (i64.store offset=8
   (local.get $2)
   (local.get $7)
  )
  (i64.store offset=16
   (local.get $2)
   (local.get $8)
  )
  (i32.store
   (local.get $0)
   (local.get $2)
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $5)
  )
  (i32.store
   (local.get $3)
   (local.get $0)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Stat>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (i32.store
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 21)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $4)
   (i32.const 0)
  )
  (i32.store8 offset=8
   (local.get $4)
   (i32.const 0)
  )
  (i64.store offset=16
   (local.get $4)
   (i64.const 0)
  )
  (i32.store
   (local.get $4)
   (local.get $0)
  )
  (i32.store offset=4
   (local.get $4)
   (local.get $1)
  )
  (i64.store offset=16
   (local.get $4)
   (local.get $2)
  )
  (i32.store8 offset=8
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Stat>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Stat>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Stat>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Stat>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Stat>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  (block $~lib/util/memory/memset|inlined.0
   (br_if $~lib/util/memory/memset|inlined.0
    (i32.eqz
     (local.get $1)
    )
   )
   (i32.store8
    (local.get $0)
    (i32.const 0)
   )
   (i32.store8
    (i32.sub
     (local.tee $2
      (i32.add
       (local.get $0)
       (local.get $1)
      )
     )
     (i32.const 1)
    )
    (i32.const 0)
   )
   (br_if $~lib/util/memory/memset|inlined.0
    (i32.le_u
     (local.get $1)
     (i32.const 2)
    )
   )
   (i32.store8 offset=1
    (local.get $0)
    (i32.const 0)
   )
   (i32.store8 offset=2
    (local.get $0)
    (i32.const 0)
   )
   (i32.store8
    (i32.sub
     (local.get $2)
     (i32.const 2)
    )
    (i32.const 0)
   )
   (i32.store8
    (i32.sub
     (local.get $2)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (br_if $~lib/util/memory/memset|inlined.0
    (i32.le_u
     (local.get $1)
     (i32.const 6)
    )
   )
   (i32.store8 offset=3
    (local.get $0)
    (i32.const 0)
   )
   (i32.store8
    (i32.sub
     (local.get $2)
     (i32.const 4)
    )
    (i32.const 0)
   )
   (br_if $~lib/util/memory/memset|inlined.0
    (i32.le_u
     (local.get $1)
     (i32.const 8)
    )
   )
   (i32.store
    (local.tee $0
     (i32.add
      (local.tee $2
       (i32.and
        (i32.sub
         (i32.const 0)
         (local.get $0)
        )
        (i32.const 3)
       )
      )
      (local.get $0)
     )
    )
    (i32.const 0)
   )
   (i32.store
    (i32.sub
     (local.tee $2
      (i32.add
       (local.get $0)
       (local.tee $1
        (i32.and
         (i32.sub
          (local.get $1)
          (local.get $2)
         )
         (i32.const -4)
        )
       )
      )
     )
     (i32.const 4)
    )
    (i32.const 0)
   )
   (br_if $~lib/util/memory/memset|inlined.0
    (i32.le_u
     (local.get $1)
     (i32.const 8)
    )
   )
   (i32.store offset=4
    (local.get $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (local.get $0)
    (i32.const 0)
   )
   (i32.store
    (i32.sub
     (local.get $2)
     (i32.const 12)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.sub
     (local.get $2)
     (i32.const 8)
    )
    (i32.const 0)
   )
   (br_if $~lib/util/memory/memset|inlined.0
    (i32.le_u
     (local.get $1)
     (i32.const 24)
    )
   )
   (i32.store offset=12
    (local.get $0)
    (i32.const 0)
   )
   (i32.store offset=16
    (local.get $0)
    (i32.const 0)
   )
   (i32.store offset=20
    (local.get $0)
    (i32.const 0)
   )
   (i32.store offset=24
    (local.get $0)
    (i32.const 0)
   )
   (i32.store
    (i32.sub
     (local.get $2)
     (i32.const 28)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.sub
     (local.get $2)
     (i32.const 24)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.sub
     (local.get $2)
     (i32.const 20)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.sub
     (local.get $2)
     (i32.const 16)
    )
    (i32.const 0)
   )
   (local.set $0
    (i32.add
     (local.tee $2
      (i32.add
       (i32.and
        (local.get $0)
        (i32.const 4)
       )
       (i32.const 24)
      )
     )
     (local.get $0)
    )
   )
   (local.set $1
    (i32.sub
     (local.get $1)
     (local.get $2)
    )
   )
   (loop $while-continue|0
    (if
     (i32.ge_u
      (local.get $1)
      (i32.const 32)
     )
     (block
      (i64.store
       (local.get $0)
       (i64.const 0)
      )
      (i64.store offset=8
       (local.get $0)
       (i64.const 0)
      )
      (i64.store offset=16
       (local.get $0)
       (i64.const 0)
      )
      (i64.store offset=24
       (local.get $0)
       (i64.const 0)
      )
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.const 32)
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (i32.const 32)
       )
      )
      (br $while-continue|0)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (local.get $1)
   (i32.const 0)
  )
  (i32.store offset=12
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (select
       (local.get $0)
       (i32.const 8)
       (i32.gt_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (i32.store
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $2)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 22)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 0)
  )
  (i32.store
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
   (i32.const 2784)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $3
   (local.get $0)
  )
  (local.set $0
   (block $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual (result i32)
    (block $default
     (block $case10
      (block $case9
       (block $case8
        (block $case7
         (block $case6
          (block $case5
           (block $case4
            (block $case3
             (block $case2
              (block $case1
               (block $case0
                (br_table $case8 $default $default $default $case10 $case9 $default $case7 $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $case6 $default $default $default $default $case0 $case1 $case2 $case3 $case4 $case5 $default
                 (i32.sub
                  (i32.load
                   (i32.sub
                    (local.get $1)
                    (i32.const 8)
                   )
                  )
                  (i32.const 5)
                 )
                )
               )
               (call $~lib/as-chain/serializer/Encoder#pack
                (local.tee $2
                 (call $~lib/as-chain/serializer/Encoder#constructor
                  (block (result i32)
                   (if
                    (i32.eqz
                     (i32.load
                      (local.tee $2
                       (local.tee $0
                        (local.get $1)
                       )
                      )
                     )
                    )
                    (unreachable)
                   )
                   (if
                    (i32.eqz
                     (i32.load offset=4
                      (local.get $2)
                     )
                    )
                    (unreachable)
                   )
                   (i32.const 24)
                  )
                 )
                )
                (if (result i32)
                 (local.tee $1
                  (i32.load
                   (local.get $1)
                  )
                 )
                 (local.get $1)
                 (unreachable)
                )
               )
               (call $~lib/as-chain/serializer/Encoder#pack
                (local.get $2)
                (if (result i32)
                 (local.tee $1
                  (i32.load offset=4
                   (local.get $0)
                  )
                 )
                 (local.get $1)
                 (unreachable)
                )
               )
               (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
                (call $~lib/array/Array<u8>#slice
                 (i32.load
                  (local.get $2)
                 )
                 (i32.const 0)
                 (i32.load offset=4
                  (local.get $2)
                 )
                )
               )
              )
              (call $~lib/as-chain/serializer/Encoder#pack
               (local.tee $2
                (call $~lib/as-chain/serializer/Encoder#constructor
                 (block (result i32)
                  (if
                   (i32.eqz
                    (i32.load
                     (local.tee $2
                      (local.tee $0
                       (local.get $1)
                      )
                     )
                    )
                   )
                   (unreachable)
                  )
                  (if
                   (i32.eqz
                    (i32.load offset=4
                     (local.get $2)
                    )
                   )
                   (unreachable)
                  )
                  (i32.add
                   (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                    (i32.load offset=8
                     (local.get $2)
                    )
                   )
                   (i32.const 24)
                  )
                 )
                )
               )
               (if (result i32)
                (local.tee $1
                 (i32.load
                  (local.get $1)
                 )
                )
                (local.get $1)
                (unreachable)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#pack
               (local.get $2)
               (if (result i32)
                (local.tee $1
                 (i32.load offset=4
                  (local.get $0)
                 )
                )
                (local.get $1)
                (unreachable)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packString
               (local.get $2)
               (i32.load offset=8
                (local.get $0)
               )
              )
              (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
               (call $~lib/array/Array<u8>#slice
                (i32.load
                 (local.get $2)
                )
                (i32.const 0)
                (i32.load offset=4
                 (local.get $2)
                )
               )
              )
             )
             (call $~lib/as-chain/serializer/Encoder#pack
              (local.tee $2
               (call $~lib/as-chain/serializer/Encoder#constructor
                (block (result i32)
                 (if
                  (i32.eqz
                   (i32.load
                    (local.tee $2
                     (local.tee $0
                      (local.get $1)
                     )
                    )
                   )
                  )
                  (unreachable)
                 )
                 (i32.add
                  (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                   (i32.load offset=4
                    (local.get $2)
                   )
                  )
                  (i32.const 16)
                 )
                )
               )
              )
              (if (result i32)
               (local.tee $1
                (i32.load
                 (local.get $1)
                )
               )
               (local.get $1)
               (unreachable)
              )
             )
             (call $~lib/as-chain/serializer/Encoder#packString
              (local.get $2)
              (i32.load offset=4
               (local.get $0)
              )
             )
             (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
              (call $~lib/array/Array<u8>#slice
               (i32.load
                (local.get $2)
               )
               (i32.const 0)
               (i32.load offset=4
                (local.get $2)
               )
              )
             )
            )
            (call $~lib/as-chain/serializer/Encoder#pack
             (local.tee $2
              (call $~lib/as-chain/serializer/Encoder#constructor
               (block (result i32)
                (if
                 (i32.eqz
                  (i32.load
                   (local.tee $2
                    (local.tee $0
                     (local.get $1)
                    )
                   )
                  )
                 )
                 (unreachable)
                )
                (if
                 (i32.eqz
                  (i32.load offset=4
                   (local.get $2)
                  )
                 )
                 (unreachable)
                )
                (if
                 (i32.eqz
                  (i32.load offset=8
                   (local.get $2)
                  )
                 )
                 (unreachable)
                )
                (i32.add
                 (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                  (i32.load offset=12
                   (local.get $2)
                  )
                 )
                 (i32.const 32)
                )
               )
              )
             )
             (if (result i32)
              (local.tee $1
               (i32.load
                (local.get $1)
               )
              )
              (local.get $1)
              (unreachable)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#pack
             (local.get $2)
             (if (result i32)
              (local.tee $1
               (i32.load offset=4
                (local.get $0)
               )
              )
              (local.get $1)
              (unreachable)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#pack
             (local.get $2)
             (if (result i32)
              (local.tee $1
               (i32.load offset=8
                (local.get $0)
               )
              )
              (local.get $1)
              (unreachable)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#packString
             (local.get $2)
             (i32.load offset=12
              (local.get $0)
             )
            )
            (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
             (call $~lib/array/Array<u8>#slice
              (i32.load
               (local.get $2)
              )
              (i32.const 0)
              (i32.load offset=4
               (local.get $2)
              )
             )
            )
           )
           (call $~lib/as-chain/serializer/Encoder#pack
            (local.tee $2
             (call $~lib/as-chain/serializer/Encoder#constructor
              (block (result i32)
               (if
                (i32.eqz
                 (i32.load
                  (local.tee $2
                   (local.tee $0
                    (local.get $1)
                   )
                  )
                 )
                )
                (unreachable)
               )
               (if
                (i32.eqz
                 (i32.load offset=4
                  (local.get $2)
                 )
                )
                (unreachable)
               )
               (if
                (i32.eqz
                 (i32.load offset=8
                  (local.get $2)
                 )
                )
                (unreachable)
               )
               (i32.const 24)
              )
             )
            )
            (if (result i32)
             (local.tee $1
              (i32.load
               (local.get $1)
              )
             )
             (local.get $1)
             (unreachable)
            )
           )
           (call $~lib/as-chain/serializer/Encoder#pack
            (local.get $2)
            (if (result i32)
             (local.tee $1
              (i32.load offset=4
               (local.get $0)
              )
             )
             (local.get $1)
             (unreachable)
            )
           )
           (call $~lib/as-chain/serializer/Encoder#pack
            (local.get $2)
            (if (result i32)
             (local.tee $1
              (i32.load offset=8
               (local.get $0)
              )
             )
             (local.get $1)
             (unreachable)
            )
           )
           (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
            (call $~lib/array/Array<u8>#slice
             (i32.load
              (local.get $2)
             )
             (i32.const 0)
             (i32.load offset=4
              (local.get $2)
             )
            )
           )
          )
          (call $~lib/as-chain/serializer/Encoder#pack
           (local.tee $2
            (call $~lib/as-chain/serializer/Encoder#constructor
             (block (result i32)
              (if
               (i32.eqz
                (i32.load
                 (local.tee $2
                  (local.tee $0
                   (local.get $1)
                  )
                 )
                )
               )
               (unreachable)
              )
              (if
               (i32.eqz
                (i32.load offset=4
                 (local.get $2)
                )
               )
               (unreachable)
              )
              (i32.const 16)
             )
            )
           )
           (if (result i32)
            (local.tee $1
             (i32.load
              (local.get $1)
             )
            )
            (local.get $1)
            (unreachable)
           )
          )
          (call $~lib/as-chain/serializer/Encoder#pack
           (local.get $2)
           (if (result i32)
            (local.tee $1
             (i32.load offset=4
              (local.get $0)
             )
            )
            (local.get $1)
            (unreachable)
           )
          )
          (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
           (call $~lib/array/Array<u8>#slice
            (i32.load
             (local.get $2)
            )
            (i32.const 0)
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
         )
         (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
          (call $assembly/token/token.tables/Account#pack
           (local.get $1)
          )
         )
        )
        (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
         (call $assembly/token/token.tables/Stat#pack
          (local.get $1)
         )
        )
       )
       (i64.store
        (i32.load offset=4
         (local.tee $0
          (call $~lib/array/Array<u8>#constructor
           (i32.const 8)
          )
         )
        )
        (i64.load
         (local.get $1)
        )
       )
       (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
        (local.get $0)
       )
      )
      (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
       (local.tee $0
        (call $~lib/as-chain/serializer/Encoder#constructor
         (i32.const 8)
        )
       )
       (i64.load
        (local.get $1)
       )
      )
      (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
       (call $~lib/array/Array<u8>#slice
        (i32.load
         (local.get $0)
        )
        (i32.const 0)
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
     )
     (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
      (local.tee $0
       (call $~lib/as-chain/serializer/Encoder#constructor
        (i32.const 16)
       )
      )
      (i64.load
       (local.get $1)
      )
     )
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $0)
      (i32.load offset=8
       (local.get $1)
      )
     )
     (br $__inlined_func$~lib/as-chain/serializer/Packer#pack@virtual
      (call $~lib/array/Array<u8>#slice
       (i32.load
        (local.get $0)
       )
       (i32.const 0)
       (i32.load offset=4
        (local.get $0)
       )
      )
     )
    )
    (unreachable)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (i32.load offset=12
     (i32.load
      (local.get $3)
     )
    )
    (i32.add
     (local.tee $1
      (i32.load offset=12
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $3)
     )
    )
   )
   (i32.const 2704)
  )
  (local.set $0
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $3)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $3)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $3)
      )
     )
     (local.get $2)
    )
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $4
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $4)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (local.tee $3
       (select
        (local.tee $4
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $4
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $4)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $4)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
      (i32.const 4)
      (i32.const 0)
     )
    )
   )
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $3)
  )
  (local.get $2)
 )
 (func $assembly/token/token.tables/Stat#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (i32.const 40)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $1)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get (param $0 i32) (result i32)
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $~lib/array/Array<u64>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (i32.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 64)
     (i32.const 0)
    )
   )
   (i32.const 64)
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 64)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/token/token.contract/TokenContract#create (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $3
   (i32.load offset=8
    (local.get $2)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Asset#isValid
    (local.get $2)
   )
   (i32.const 2288)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $2)
    )
    (i64.const 0)
   )
   (i32.const 2336)
  )
  (call $~lib/as-chain/system/check
   (i32.lt_s
    (i32.load offset=4
     (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Stat>#find
      (i32.load
       (local.tee $5
        (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#constructor
         (i32.load
          (local.get $0)
         )
         (block (result i32)
          (local.set $6
           (i64.shr_u
            (i64.load
             (local.get $3)
            )
            (i64.const 8)
           )
          )
          (i64.store
           (local.tee $5
            (call $~lib/rt/stub/__new
             (i32.const 8)
             (i32.const 5)
            )
           )
           (i64.const 0)
          )
          (i64.store
           (local.get $5)
           (local.get $6)
          )
          (local.get $5)
         )
        )
       )
      )
      (i64.shr_u
       (i64.load
        (local.get $3)
       )
       (i64.const 8)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 2608)
  )
  (local.set $1
   (call $assembly/token/token.tables/Stat#constructor
    (block (result i32)
     (local.set $4
      (i32.load offset=8
       (local.get $2)
      )
     )
     (i64.store
      (local.tee $3
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 9)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
      (local.get $3)
      (local.get $4)
     )
     (local.get $3)
    )
    (local.get $2)
    (local.get $1)
   )
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.lt_s
    (i32.load offset=4
     (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Stat>#find
      (i32.load
       (local.tee $0
        (local.get $5)
       )
      )
      (local.tee $6
       (i64.shr_u
        (i64.load
         (i32.load offset=8
          (i32.load
           (local.get $1)
          )
         )
        )
        (i64.const 8)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 1200)
  )
  (local.set $4
   (i32.load
    (local.tee $3
     (i32.load
      (local.get $5)
     )
    )
   )
  )
  (local.set $7
   (i64.shr_u
    (i64.load
     (i32.load offset=8
      (i32.load
       (local.get $1)
      )
     )
    )
    (i64.const 8)
   )
  )
  (local.set $9
   (i64.load
    (local.get $2)
   )
  )
  (local.set $8
   (call $assembly/token/token.tables/Stat#pack
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Stat>#constructor
    (local.get $4)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $4)
     )
     (i64.load offset=16
      (local.get $4)
     )
     (local.get $9)
     (local.get $7)
     (i32.load offset=4
      (local.get $8)
     )
     (i32.load offset=12
      (local.get $8)
     )
    )
    (local.get $7)
    (i32.const 1)
   )
  )
  (if
   (i32.gt_s
    (i32.load offset=12
     (i32.load offset=4
      (local.get $3)
     )
    )
    (i32.const 0)
   )
   (block
    (local.set $3
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
      (i32.load offset=4
       (local.get $3)
      )
     )
    )
    (drop
     (i64.load
      (i32.load offset=8
       (i32.load
        (local.get $1)
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i32.const 0)
     (i32.const 2864)
    )
    (local.set $1
     (call $~lib/array/Array<u64>#constructor)
    )
    (i32.store
     (local.tee $4
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 23)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (local.get $4)
     (local.get $1)
    )
    (drop
     (i64.load
      (local.get $2)
     )
    )
    (drop
     (i32.load
      (i32.sub
       (local.get $3)
       (i32.const 8)
      )
     )
    )
    (unreachable)
   )
  )
  (if
   (i64.ge_u
    (local.tee $7
     (i64.shr_u
      (i64.load
       (i32.load offset=8
        (i32.load
         (local.get $1)
        )
       )
      )
      (i64.const 8)
     )
    )
    (i64.load offset=8
     (local.get $3)
    )
   )
   (i64.store offset=8
    (local.get $3)
    (select
     (i64.const -2)
     (i64.add
      (local.get $7)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $7)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $5)
    )
   )
   (i64.store offset=8
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 26)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 0)
  )
  (i32.store
   (local.get $1)
   (local.get $0)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
   (i32.const 3216)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (block $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual (result i32)
    (local.set $0
     (call $~lib/array/Array<u8>#slice
      (i32.load
       (local.get $0)
      )
      (i32.load offset=4
       (local.get $0)
      )
      (i32.load offset=12
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (block $default
     (block $case10
      (block $case9
       (block $case8
        (block $case7
         (block $case6
          (block $case5
           (block $case4
            (block $case3
             (block $case2
              (block $case1
               (block $case0
                (br_table $case8 $default $default $default $case10 $case9 $default $case7 $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $case6 $default $default $default $default $case0 $case1 $case2 $case3 $case4 $case5 $default
                 (i32.sub
                  (i32.load
                   (i32.sub
                    (local.get $1)
                    (i32.const 8)
                   )
                  )
                  (i32.const 5)
                 )
                )
               )
               (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
                (call $assembly/token/token.contract/createAction#unpack
                 (local.get $1)
                 (local.get $0)
                )
               )
              )
              (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
               (call $assembly/token/token.contract/issueAction#unpack
                (local.get $1)
                (local.get $0)
               )
              )
             )
             (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
              (call $assembly/token/token.contract/retireAction#unpack
               (local.get $1)
               (local.get $0)
              )
             )
            )
            (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
             (call $assembly/token/token.contract/transferAction#unpack
              (local.get $1)
              (local.get $0)
             )
            )
           )
           (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
            (call $assembly/token/token.contract/openAction#unpack
             (local.get $1)
             (local.get $0)
            )
           )
          )
          (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
           (call $assembly/token/token.contract/closeAction#unpack
            (local.get $1)
            (local.get $0)
           )
          )
         )
         (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
          (call $assembly/token/token.tables/Account#unpack
           (local.get $1)
           (local.get $0)
          )
         )
        )
        (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
         (call $assembly/token/token.tables/Stat#unpack
          (local.get $1)
          (local.get $0)
         )
        )
       )
       (i64.store
        (local.get $1)
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
         (call $~lib/as-chain/serializer/Decoder#constructor
          (local.get $0)
         )
        )
       )
       (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
        (i32.const 8)
       )
      )
      (i64.store
       (local.get $1)
       (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
        (local.tee $0
         (call $~lib/as-chain/serializer/Decoder#constructor
          (local.get $0)
         )
        )
       )
      )
      (call $~lib/as-chain/system/check
       (call $~lib/as-chain/asset/Symbol#isValid
        (local.get $1)
       )
       (i32.const 5504)
      )
      (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
       (i32.load offset=4
        (local.get $0)
       )
      )
     )
     (local.set $3
      (i64.load
       (i32.add
        (i32.load offset=4
         (i32.load
          (local.tee $2
           (local.tee $0
            (call $~lib/as-chain/serializer/Decoder#constructor
             (local.get $0)
            )
           )
          )
         )
        )
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
     )
     (call $~lib/as-chain/serializer/Decoder#incPos
      (local.get $2)
      (i32.const 8)
     )
     (i64.store
      (local.get $1)
      (local.get $3)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $0)
      (i32.load offset=8
       (local.get $1)
      )
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/asset/Asset#isValid
       (local.get $1)
      )
      (i32.const 5552)
     )
     (br $__inlined_func$~lib/as-chain/serializer/Packer#unpack@virtual
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
  )
 )
 (func $assembly/token/token.tables/Stat#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $3
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (block (result i32)
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Symbol#constructor)
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (local.get $2)
     (local.get $1)
    )
    (local.tee $1
     (local.get $2)
    )
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $3)
   (block (result i32)
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Symbol#constructor)
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (local.get $2)
     (local.get $1)
    )
    (local.tee $1
     (local.get $2)
    )
   )
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $3)
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (i32.const 0)
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (local.get $1)
   )
  )
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $3)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Stat>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/token/token.tables/Stat#unpack
    (local.tee $0
     (call $assembly/token/token.tables/Stat#constructor@varargs
      (block (result i32)
       (global.set $~argumentsLength
        (i32.const 0)
       )
       (i32.const 0)
      )
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (i32.ge_s
    (i32.load offset=4
     (local.tee $3
      (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Stat>#find
       (i32.load
        (local.get $0)
       )
       (local.get $1)
      )
     )
    )
    (i32.const 0)
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Stat>#get (result i32)
   (if
    (local.tee $0
     (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Stat>#get (result i32)
      (local.set $0
       (i32.load
        (i32.load
         (local.get $0)
        )
       )
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Stat>#get
        (i32.const 0)
        (i32.lt_s
         (i32.load offset=4
          (local.get $3)
         )
         (i32.const 0)
        )
       )
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Stat>#getEx
       (local.get $0)
       (i32.load offset=4
        (local.get $3)
       )
      )
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Stat>#get
     (local.get $0)
    )
   )
   (call $assembly/token/token.tables/Stat#constructor@varargs
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
  )
 )
 (func $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (i32.ge_s
    (i32.load offset=4
     (local.tee $3
      (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Stat>#find
       (i32.load
        (local.get $0)
       )
       (i64.shr_u
        (i64.load
         (i32.load offset=8
          (i32.load
           (local.get $1)
          )
         )
        )
        (i64.const 8)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 1424)
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_s
    (i32.load offset=4
     (local.tee $0
      (local.get $3)
     )
    )
    (i32.const 0)
   )
   (i32.const 3936)
  )
  (local.set $5
   (i64.shr_u
    (i64.load
     (i32.load offset=8
      (i32.load
       (local.tee $3
        (local.get $1)
       )
      )
     )
    )
    (i64.const 8)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Stat>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (i32.ge_s
       (i32.load offset=4
        (local.tee $1
         (local.get $0)
        )
       )
       (i32.const 0)
      )
      (i32.const 4000)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Stat>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (i64.store offset=16
      (local.get $1)
      (i64.shr_u
       (i64.load
        (i32.load offset=8
         (i32.load
          (if (result i32)
           (local.tee $6
            (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Stat>#getValue (result i32)
             (drop
              (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Stat>#getValue
               (i32.const 0)
               (i32.lt_s
                (i32.load offset=4
                 (local.tee $6
                  (local.get $1)
                 )
                )
                (i32.const 0)
               )
              )
             )
             (call $~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Stat>#getEx
              (i32.load
               (local.get $6)
              )
              (i32.load offset=4
               (local.get $6)
              )
             )
            )
           )
           (local.get $6)
           (unreachable)
          )
         )
        )
       )
       (i64.const 8)
      )
     )
     (i32.store8 offset=8
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
    (local.get $5)
   )
   (i32.const 4144)
  )
  (drop
   (i32.load
    (local.get $4)
   )
  )
  (local.set $7
   (i64.load
    (local.get $2)
   )
  )
  (local.set $3
   (call $assembly/token/token.tables/Stat#pack
    (local.get $3)
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $3)
   )
   (i32.load offset=12
    (local.get $3)
   )
  )
  (if
   (i32.gt_s
    (i32.load offset=12
     (i32.load offset=4
      (local.get $4)
     )
    )
    (i32.const 0)
   )
   (block
    (drop
     (i32.load
      (i32.sub
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $4)
        )
       )
       (i32.const 8)
      )
     )
    )
    (unreachable)
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $4)
    )
   )
   (i64.store offset=8
    (local.get $4)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/token/token.tables/Account#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
   (i64.store
    (local.tee $1
     (call $~lib/rt/stub/__new
      (i32.const 12)
      (i32.const 9)
     )
    )
    (i64.const 0)
   )
   (i32.store offset=8
    (local.get $1)
    (local.get $0)
   )
   (local.set $0
    (local.get $1)
   )
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 28)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (i32.store
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 29)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (local.get $3)
   (i64.const -1)
  )
  (local.set $2
   (local.get $0)
  )
  (drop
   (call $assembly/token/token.tables/Account#constructor@varargs
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
  )
  (i64.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (i64.store
   (local.get $0)
   (i64.const 3607749779137757184)
  )
  (local.set $4
   (local.get $0)
  )
  (i64.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (i64.store
   (local.get $0)
   (i64.const 3607749779137757184)
  )
  (drop
   (i64.load
    (local.get $0)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 19)
    (i32.const 4256)
   )
  )
  (i32.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 30)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 0)
  )
  (i64.store offset=8
   (local.get $0)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (i64.store
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 31)
    )
   )
   (local.get $6)
  )
  (i64.store offset=8
   (local.get $2)
   (local.get $7)
  )
  (i64.store offset=16
   (local.get $2)
   (local.get $8)
  )
  (i32.store
   (local.get $0)
   (local.get $2)
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $5)
  )
  (i32.store
   (local.get $3)
   (local.get $0)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Account>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (i32.store
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $4)
   (i32.const 0)
  )
  (i32.store8 offset=8
   (local.get $4)
   (i32.const 0)
  )
  (i64.store offset=16
   (local.get $4)
   (i64.const 0)
  )
  (i32.store
   (local.get $4)
   (local.get $0)
  )
  (i32.store offset=4
   (local.get $4)
   (local.get $1)
  )
  (i64.store offset=16
   (local.get $4)
   (local.get $2)
  )
  (i32.store8 offset=8
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Account>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Account>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/token/token.tables/Account#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (block (result i32)
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $3
     (call $~lib/as-chain/asset/Symbol#constructor)
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (local.get $2)
     (local.get $3)
    )
    (local.get $2)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/token/token.tables/Account#unpack
    (local.tee $0
     (call $assembly/token/token.tables/Account#constructor@varargs
      (block (result i32)
       (global.set $~argumentsLength
        (i32.const 0)
       )
       (i32.const 0)
      )
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.lt_s
    (i32.load offset=4
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#get (result i32)
   (local.set $0
    (i32.load
     (local.get $0)
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#get
     (i32.const 0)
     (i32.lt_s
      (i32.load offset=4
       (local.get $2)
      )
      (i32.const 0)
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#getEx
    (local.get $0)
    (i32.load offset=4
     (local.get $2)
    )
   )
  )
 )
 (func $assembly/token/token.tables/Account#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (i32.const 16)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $1)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (i32.lt_s
    (i32.load offset=4
     (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.shr_u
        (i64.load
         (i32.load offset=8
          (i32.load
           (local.get $1)
          )
         )
        )
        (i64.const 8)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 1200)
  )
  (local.set $4
   (i32.load
    (local.tee $3
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $5
   (i64.shr_u
    (i64.load
     (i32.load offset=8
      (i32.load
       (local.get $1)
      )
     )
    )
    (i64.const 8)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (call $assembly/token/token.tables/Account#pack
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Account>#constructor
    (local.get $4)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $4)
     )
     (i64.load offset=16
      (local.get $4)
     )
     (local.get $8)
     (local.get $5)
     (i32.load offset=4
      (local.get $7)
     )
     (i32.load offset=12
      (local.get $7)
     )
    )
    (local.get $5)
    (i32.const 1)
   )
  )
  (if
   (i32.gt_s
    (i32.load offset=12
     (i32.load offset=4
      (local.get $3)
     )
    )
    (i32.const 0)
   )
   (block
    (local.set $3
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
      (i32.load offset=4
       (local.get $3)
      )
     )
    )
    (drop
     (i64.load
      (i32.load offset=8
       (i32.load
        (local.get $1)
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i32.const 0)
     (i32.const 2864)
    )
    (local.set $1
     (call $~lib/array/Array<u64>#constructor)
    )
    (i32.store
     (local.tee $4
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 23)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (local.get $4)
     (local.get $1)
    )
    (drop
     (i64.load
      (local.get $2)
     )
    )
    (drop
     (i32.load
      (i32.sub
       (local.get $3)
       (i32.const 8)
      )
     )
    )
    (unreachable)
   )
  )
  (if
   (i64.ge_u
    (local.tee $5
     (i64.shr_u
      (i64.load
       (i32.load offset=8
        (i32.load
         (local.get $1)
        )
       )
      )
      (i64.const 8)
     )
    )
    (i64.load offset=8
     (local.get $3)
    )
   )
   (i64.store offset=8
    (local.get $3)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (i64.store offset=8
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (i32.ge_s
    (i32.load offset=4
     (local.tee $3
      (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#find
       (i32.load
        (local.get $0)
       )
       (i64.shr_u
        (i64.load
         (i32.load offset=8
          (i32.load
           (local.get $1)
          )
         )
        )
        (i64.const 8)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 1424)
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_s
    (i32.load offset=4
     (local.tee $0
      (local.get $3)
     )
    )
    (i32.const 0)
   )
   (i32.const 3936)
  )
  (local.set $5
   (i64.shr_u
    (i64.load
     (i32.load offset=8
      (i32.load
       (local.tee $3
        (local.get $1)
       )
      )
     )
    )
    (i64.const 8)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Account>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (i32.ge_s
       (i32.load offset=4
        (local.tee $1
         (local.get $0)
        )
       )
       (i32.const 0)
      )
      (i32.const 4000)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Account>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (i64.store offset=16
      (local.get $1)
      (i64.shr_u
       (i64.load
        (i32.load offset=8
         (i32.load
          (if (result i32)
           (local.tee $6
            (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Account>#getValue (result i32)
             (drop
              (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/token/token.tables/Account>#getValue
               (i32.const 0)
               (i32.lt_s
                (i32.load offset=4
                 (local.tee $6
                  (local.get $1)
                 )
                )
                (i32.const 0)
               )
              )
             )
             (call $~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#getEx
              (i32.load
               (local.get $6)
              )
              (i32.load offset=4
               (local.get $6)
              )
             )
            )
           )
           (local.get $6)
           (unreachable)
          )
         )
        )
       )
       (i64.const 8)
      )
     )
     (i32.store8 offset=8
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
    (local.get $5)
   )
   (i32.const 4144)
  )
  (drop
   (i32.load
    (local.get $4)
   )
  )
  (local.set $7
   (i64.load
    (local.get $2)
   )
  )
  (local.set $3
   (call $assembly/token/token.tables/Account#pack
    (local.get $3)
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $3)
   )
   (i32.load offset=12
    (local.get $3)
   )
  )
  (if
   (i32.gt_s
    (i32.load offset=12
     (i32.load offset=4
      (local.get $4)
     )
    )
    (i32.const 0)
   )
   (block
    (drop
     (i32.load
      (i32.sub
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $4)
        )
       )
       (i32.const 8)
      )
     )
    )
    (unreachable)
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $4)
    )
   )
   (i64.store offset=8
    (local.get $4)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/token/token.contract/TokenContract#addBalance (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (if
   (local.tee $0
    (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#getByKey
     (i32.load
      (local.tee $1
       (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#constructor
        (i32.load
         (local.get $0)
        )
        (local.get $1)
       )
      )
     )
     (i64.shr_u
      (i64.load
       (i32.load offset=8
        (local.get $2)
       )
      )
      (i64.const 8)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $4
         (i32.load
          (local.get $0)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
     (i32.const 3744)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $5
       (i64.add
        (i64.load
         (local.get $4)
        )
        (i64.load
         (local.get $2)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 3808)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $5)
      (i64.const 4611686018427387903)
     )
     (i32.const 3872)
    )
    (local.set $6
     (local.get $5)
    )
    (local.set $5
     (i64.load
      (i32.load offset=8
       (local.get $4)
      )
     )
    )
    (i64.store
     (local.tee $2
      (call $~lib/as-chain/asset/Symbol#constructor)
     )
     (local.get $5)
    )
    (i64.store
     (local.tee $4
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (local.get $6)
    )
    (i32.store offset=8
     (local.get $4)
     (local.get $2)
    )
    (i32.store
     (local.get $0)
     (local.get $4)
    )
    (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#update
     (local.get $1)
     (local.get $0)
     (local.get $3)
    )
   )
   (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#store
    (local.get $1)
    (block (result i32)
     (i32.store
      (local.tee $0
       (call $~lib/rt/stub/__new
        (i32.const 4)
        (i32.const 28)
       )
      )
      (local.get $2)
     )
     (local.get $0)
    )
    (local.get $3)
   )
  )
 )
 (func $assembly/token/token.contract/TokenContract#issue (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Symbol#isValid
    (local.tee $4
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
   (i32.const 2928)
  )
  (call $~lib/as-chain/system/check
   (i32.le_u
    (i32.shr_u
     (i32.load offset=16
      (i32.sub
       (local.get $3)
       (i32.const 20)
      )
     )
     (i32.const 1)
    )
    (i32.const 256)
   )
   (i32.const 2992)
  )
  (call $~lib/as-chain/system/check
   (block (result i32)
    (local.set $3
     (i32.load offset=8
      (local.tee $4
       (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#requireGet
        (local.tee $6
         (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#constructor
          (i32.load
           (local.get $0)
          )
          (block (result i32)
           (local.set $5
            (i64.shr_u
             (i64.load
              (local.get $4)
             )
             (i64.const 8)
            )
           )
           (i64.store
            (local.tee $6
             (call $~lib/rt/stub/__new
              (i32.const 8)
              (i32.const 5)
             )
            )
            (i64.const 0)
           )
           (i64.store
            (local.get $6)
            (local.get $5)
           )
           (local.get $6)
          )
         )
        )
        (i64.shr_u
         (i64.load
          (local.get $4)
         )
         (i64.const 8)
        )
        (i32.const 3072)
       )
      )
     )
    )
    (i64.eq
     (i64.load
      (local.get $1)
     )
     (i64.load
      (local.get $3)
     )
    )
   )
   (i32.const 3312)
  )
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (i32.load offset=8
     (local.get $4)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Asset#isValid
    (local.get $2)
   )
   (i32.const 3424)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $2)
    )
    (i64.const 0)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $2)
     )
    )
    (i64.load
     (i32.load offset=8
      (i32.load
       (local.get $4)
      )
     )
    )
   )
   (i32.const 3568)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (i64.load
     (local.get $2)
    )
    (i64.sub
     (i64.load
      (i32.load offset=4
       (local.get $4)
      )
     )
     (i64.load
      (i32.load
       (local.get $4)
      )
     )
    )
   )
   (i32.const 3648)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $1
       (i32.load
        (local.get $4)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
   (i32.const 3744)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $5
     (i64.add
      (i64.load
       (local.get $1)
      )
      (i64.load
       (local.get $2)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 3808)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $5)
    (i64.const 4611686018427387903)
   )
   (i32.const 3872)
  )
  (local.set $7
   (local.get $5)
  )
  (local.set $5
   (i64.load
    (i32.load offset=8
     (local.get $1)
    )
   )
  )
  (i64.store
   (local.tee $1
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
   (local.get $5)
  )
  (local.set $3
   (local.get $1)
  )
  (i64.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 9)
    )
   )
   (local.get $7)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $3)
  )
  (i32.store
   (local.get $4)
   (local.get $1)
  )
  (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#update
   (local.get $6)
   (local.get $4)
   (global.get $~lib/as-chain/mi/SAME_PAYER)
  )
  (call $assembly/token/token.contract/TokenContract#addBalance
   (local.get $0)
   (i32.load offset=8
    (local.get $4)
   )
   (local.get $2)
   (i32.load offset=8
    (local.get $4)
   )
  )
 )
 (func $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (i32.ge_s
    (i32.load offset=4
     (local.tee $3
      (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#find
       (i32.load
        (local.get $0)
       )
       (local.get $1)
      )
     )
    )
    (i32.const 0)
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#get (result i32)
   (if
    (local.tee $0
     (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#get (result i32)
      (local.set $0
       (i32.load
        (i32.load
         (local.get $0)
        )
       )
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#get
        (i32.const 0)
        (i32.lt_s
         (i32.load offset=4
          (local.get $3)
         )
         (i32.const 0)
        )
       )
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/token/token.tables/Account>#getEx
       (local.get $0)
       (i32.load offset=4
        (local.get $3)
       )
      )
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#get
     (local.get $0)
    )
   )
   (call $assembly/token/token.tables/Account#constructor@varargs
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
  )
 )
 (func $assembly/token/token.contract/TokenContract#subBalance (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (i32.load
      (local.tee $0
       (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#requireGet
        (local.tee $5
         (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#constructor
          (i32.load
           (local.get $0)
          )
          (local.get $1)
         )
        )
        (i64.shr_u
         (i64.load
          (i32.load offset=8
           (local.get $2)
          )
         )
         (i64.const 8)
        )
        (i32.const 4592)
       )
      )
     )
    )
    (i64.load
     (local.get $2)
    )
   )
   (i32.const 4672)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $3
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
   (i32.const 3744)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $4
     (i64.sub
      (i64.load
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 4464)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $4)
    (i64.const 4611686018427387903)
   )
   (i32.const 4528)
  )
  (local.set $6
   (local.get $4)
  )
  (local.set $4
   (i64.load
    (i32.load offset=8
     (local.get $3)
    )
   )
  )
  (i64.store
   (local.tee $2
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
   (local.get $4)
  )
  (i64.store
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 9)
    )
   )
   (local.get $6)
  )
  (i32.store offset=8
   (local.get $3)
   (local.get $2)
  )
  (i32.store
   (local.get $0)
   (local.get $3)
  )
  (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#update
   (local.get $5)
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/token/token.contract/TokenContract#retire (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Symbol#isValid
    (local.tee $3
     (i32.load offset=8
      (local.get $1)
     )
    )
   )
   (i32.const 2928)
  )
  (call $~lib/as-chain/system/check
   (i32.le_u
    (i32.shr_u
     (i32.load offset=16
      (i32.sub
       (local.get $2)
       (i32.const 20)
      )
     )
     (i32.const 1)
    )
    (i32.const 256)
   )
   (i32.const 2992)
  )
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (i32.load offset=8
     (local.tee $3
      (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#requireGet
       (local.tee $2
        (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#constructor
         (i32.load
          (local.get $0)
         )
         (block (result i32)
          (local.set $5
           (i64.shr_u
            (i64.load
             (local.get $3)
            )
            (i64.const 8)
           )
          )
          (if
           (i32.eqz
            (local.tee $2
             (i32.const 0)
            )
           )
           (local.set $2
            (call $~lib/rt/stub/__new
             (i32.const 8)
             (i32.const 5)
            )
           )
          )
          (i64.store
           (local.get $2)
           (i64.const 0)
          )
          (i64.store
           (local.get $2)
           (local.get $5)
          )
          (local.get $2)
         )
        )
       )
       (i64.shr_u
        (i64.load
         (local.get $3)
        )
        (i64.const 8)
       )
       (i32.const 4288)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Asset#isValid
    (local.get $1)
   )
   (i32.const 3424)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $1)
    )
    (i64.const 0)
   )
   (i32.const 4384)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $1)
     )
    )
    (i64.load
     (i32.load offset=8
      (i32.load
       (local.get $3)
      )
     )
    )
   )
   (i32.const 3568)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $4
       (i32.load
        (local.get $3)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $1)
     )
    )
   )
   (i32.const 3744)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $5
     (i64.sub
      (i64.load
       (local.get $4)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 4464)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $5)
    (i64.const 4611686018427387903)
   )
   (i32.const 4528)
  )
  (local.set $6
   (local.get $5)
  )
  (local.set $5
   (i64.load
    (i32.load offset=8
     (local.get $4)
    )
   )
  )
  (i64.store
   (local.tee $4
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
   (local.get $5)
  )
  (local.set $7
   (local.get $4)
  )
  (i64.store
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 9)
    )
   )
   (local.get $6)
  )
  (i32.store offset=8
   (local.get $4)
   (local.get $7)
  )
  (i32.store
   (local.get $3)
   (local.get $4)
  )
  (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#update
   (local.get $2)
   (local.get $3)
   (global.get $~lib/as-chain/mi/SAME_PAYER)
  )
  (call $assembly/token/token.contract/TokenContract#subBalance
   (local.get $0)
   (i32.load offset=8
    (local.get $3)
   )
   (local.get $1)
  )
 )
 (func $assembly/token/token.contract/TokenContract#transfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (i64.ne
    (i64.load
     (local.get $1)
    )
    (i64.load
     (local.get $2)
    )
   )
   (i32.const 4736)
  )
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/env/is_account
    (i64.load
     (local.get $2)
    )
   )
   (i32.const 4816)
  )
  (local.set $5
   (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#requireGet
    (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#constructor
     (i32.load
      (local.get $0)
     )
     (block (result i32)
      (local.set $7
       (i64.shr_u
        (i64.load
         (local.tee $6
          (i32.load offset=8
           (local.get $3)
          )
         )
        )
        (i64.const 8)
       )
      )
      (i64.store
       (local.tee $5
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 5)
        )
       )
       (i64.const 0)
      )
      (i64.store
       (local.get $5)
       (local.get $7)
      )
      (local.get $5)
     )
    )
    (i64.shr_u
     (i64.load
      (local.get $6)
     )
     (i64.const 8)
    )
    (i32.const 4288)
   )
  )
  (call $~lib/as-chain/env/require_recipient
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/as-chain/env/require_recipient
   (i64.load
    (local.get $2)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Asset#isValid
    (local.get $3)
   )
   (i32.const 3424)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $3)
    )
    (i64.const 0)
   )
   (i32.const 4896)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $3)
     )
    )
    (i64.load
     (i32.load offset=8
      (i32.load
       (local.get $5)
      )
     )
    )
   )
   (i32.const 3568)
  )
  (call $~lib/as-chain/system/check
   (i32.le_u
    (i32.shr_u
     (i32.load offset=16
      (i32.sub
       (local.get $4)
       (i32.const 20)
      )
     )
     (i32.const 1)
    )
    (i32.const 256)
   )
   (i32.const 2992)
  )
  (local.set $4
   (select
    (local.get $2)
    (local.get $1)
    (call $~lib/as-chain/env/has_auth
     (i64.load
      (local.get $2)
     )
    )
   )
  )
  (call $assembly/token/token.contract/TokenContract#subBalance
   (local.get $0)
   (local.get $1)
   (local.get $3)
  )
  (call $assembly/token/token.contract/TokenContract#addBalance
   (local.get $0)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $assembly/token/token.contract/TokenContract#open (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $3)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/env/is_account
    (i64.load
     (local.get $1)
    )
   )
   (i32.const 4992)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (i32.load
       (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#requireGet
        (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Stat>#constructor
         (i32.load
          (local.get $0)
         )
         (block (result i32)
          (local.set $5
           (i64.shr_u
            (i64.load
             (local.get $2)
            )
            (i64.const 8)
           )
          )
          (i64.store
           (local.tee $4
            (call $~lib/rt/stub/__new
             (i32.const 8)
             (i32.const 5)
            )
           )
           (i64.const 0)
          )
          (i64.store
           (local.get $4)
           (local.get $5)
          )
          (local.get $4)
         )
        )
        (i64.shr_u
         (i64.load
          (local.get $2)
         )
         (i64.const 8)
        )
        (i32.const 5072)
       )
      )
     )
    )
    (i64.load
     (local.get $2)
    )
   )
   (i32.const 3568)
  )
  (if
   (i32.eqz
    (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#getByKey
     (i32.load
      (local.tee $0
       (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#constructor
        (i32.load
         (local.get $0)
        )
        (local.get $1)
       )
      )
     )
     (i64.shr_u
      (i64.load
       (local.get $2)
      )
      (i64.const 8)
     )
    )
   )
   (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#store
    (local.get $0)
    (block (result i32)
     (i64.store
      (local.tee $0
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 9)
       )
      )
      (i64.const 0)
     )
     (i32.store offset=8
      (local.get $0)
      (local.get $2)
     )
     (i32.store
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 4)
        (i32.const 28)
       )
      )
      (local.get $0)
     )
     (local.get $1)
    )
    (local.get $3)
   )
  )
 )
 (func $assembly/token/token.contract/TokenContract#close (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eqz
    (i64.load
     (i32.load
      (local.tee $1
       (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#requireGet
        (local.tee $0
         (call $assembly/modules/store/store/TableStore<assembly/token/token.tables/Account>#constructor
          (i32.load
           (local.get $0)
          )
          (local.get $1)
         )
        )
        (i64.shr_u
         (i64.load
          (local.get $2)
         )
         (i64.const 8)
        )
        (i32.const 5136)
       )
      )
     )
    )
   )
   (i32.const 5312)
  )
  (call $~lib/as-chain/system/check
   (i32.ge_s
    (i32.load offset=4
     (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $3
       (i64.shr_u
        (i64.load
         (i32.load offset=8
          (i32.load
           (local.get $1)
          )
         )
        )
        (i64.const 8)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 1648)
  )
  (call $~lib/as-chain/system/check
   (i32.ge_s
    (i32.load offset=4
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/token/token.tables/Account>#find
       (local.tee $1
        (i32.load
         (local.get $0)
        )
       )
       (local.get $3)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 5424)
  )
  (drop
   (i32.load
    (local.get $1)
   )
  )
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $2)
   )
  )
  (if
   (i32.gt_s
    (i32.load offset=12
     (i32.load offset=4
      (local.get $1)
     )
    )
    (i32.const 0)
   )
   (block
    (drop
     (i32.load
      (i32.sub
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $1)
        )
       )
       (i32.const 8)
      )
     )
    )
    (unreachable)
   )
  )
  (if
   (i64.eq
    (local.get $3)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (i64.store offset=8
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $assembly/token/token.contract/createAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $2
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (i32.const 0)
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (local.get $1)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (block (result i32)
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Symbol#constructor)
    )
    (i64.store
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (local.get $3)
     (local.get $1)
    )
    (local.tee $1
     (local.get $3)
    )
   )
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $1
   (local.get $0)
  )
  (loop $while-continue|0
   (local.set $4
    (i32.load8_u
     (i32.add
      (i32.load offset=4
       (i32.load
        (local.get $1)
       )
      )
      (i32.load offset=4
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/serializer/Decoder#incPos
    (local.get $1)
    (i32.const 1)
   )
   (local.set $2
    (i32.or
     (local.get $2)
     (i32.shl
      (i32.and
       (local.get $4)
       (i32.const 127)
      )
      (local.get $3)
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 7)
    )
   )
   (local.set $5
    (i32.add
     (local.get $5)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $4)
     (i32.const 128)
    )
   )
  )
  (local.set $2
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
    (i32.add
     (local.tee $1
      (local.get $2)
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (if
   (i32.lt_u
    (local.tee $3
     (i32.add
      (local.tee $0
       (i32.load
        (local.get $2)
       )
      )
      (local.tee $1
       (i32.load offset=16
        (i32.sub
         (local.get $0)
         (i32.const 20)
        )
       )
      )
     )
    )
    (local.get $0)
   )
   (unreachable)
  )
  (local.set $2
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|00
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $1
      (i32.load8_u
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.and
       (local.get $1)
       (i32.const 128)
      )
      (block
       (br_if $while-break|0
        (i32.eq
         (local.get $0)
         (local.get $3)
        )
       )
       (local.set $4
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 63)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if
        (i32.eq
         (i32.and
          (local.get $1)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $2)
         (i32.or
          (i32.shl
           (i32.and
            (local.get $1)
            (i32.const 31)
           )
           (i32.const 6)
          )
          (local.get $4)
         )
        )
        (block
         (br_if $while-break|0
          (i32.eq
           (local.get $0)
           (local.get $3)
          )
         )
         (local.set $6
          (i32.and
           (i32.load8_u
            (local.get $0)
           )
           (i32.const 63)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (local.get $1)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $1
           (i32.or
            (i32.or
             (i32.shl
              (i32.and
               (local.get $1)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
            (local.get $6)
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $1
            (i32.or
             (i32.and
              (i32.load8_u
               (local.get $0)
              )
              (i32.const 63)
             )
             (i32.or
              (i32.or
               (i32.shl
                (i32.and
                 (local.get $1)
                 (i32.const 7)
                )
                (i32.const 18)
               )
               (i32.shl
                (local.get $4)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $6)
               (i32.const 6)
              )
             )
            )
           )
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $1)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $2)
           (local.get $1)
          )
          (block
           (i32.store
            (local.get $2)
            (i32.or
             (i32.shl
              (i32.or
               (i32.and
                (local.tee $1
                 (i32.sub
                  (local.get $1)
                  (i32.const 65536)
                 )
                )
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
             (i32.or
              (i32.shr_u
               (local.get $1)
               (i32.const 10)
              )
              (i32.const 55296)
             )
            )
           )
           (local.set $2
            (i32.add
             (local.get $2)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $2)
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 2)
      )
     )
     (br $while-continue|00)
    )
   )
  )
  (if
   (i32.gt_u
    (local.tee $6
     (i32.sub
      (local.get $2)
      (local.tee $0
       (local.get $5)
      )
     )
    )
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (local.get $6)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (select
     (i32.eqz
      (i32.and
       (local.tee $0
        (i32.sub
         (local.get $0)
         (i32.const 16)
        )
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $4
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.tee $5
      (i32.load
       (local.tee $3
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
     (local.get $0)
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $1)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $1)
    (local.get $5)
   )
   (if
    (local.get $4)
    (block
     (if
      (i32.gt_u
       (local.get $1)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (i32.store
      (local.get $3)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $1
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $1
          (i32.shl
           (local.get $5)
           (i32.const 1)
          )
         )
         (i32.lt_u
          (local.get $1)
          (local.get $2)
         )
        )
       )
      )
      (local.get $0)
      (local.get $5)
     )
     (local.set $0
      (local.get $1)
     )
    )
   )
   (if
    (local.get $4)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (i32.store
      (local.get $3)
      (local.get $2)
     )
    )
   )
  )
  (i32.store offset=16
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $6)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $assembly/token/token.contract/issueAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $2
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (i32.const 0)
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (local.get $1)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (block (result i32)
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Symbol#constructor)
    )
    (i64.store
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (local.get $3)
     (local.get $1)
    )
    (local.tee $1
     (local.get $3)
    )
   )
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
  (i32.store offset=8
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $2)
   )
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/token/token.contract/retireAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (block (result i32)
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $3
     (call $~lib/as-chain/asset/Symbol#constructor)
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (local.get $2)
     (local.get $3)
    )
    (local.get $2)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $2)
  )
  (i32.store offset=4
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/token/token.contract/transferAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $2
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (i32.const 0)
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (local.get $1)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (i32.const 0)
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (local.get $1)
   )
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (block (result i32)
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Symbol#constructor)
    )
    (i64.store
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 9)
      )
     )
     (i64.const 0)
    )
    (i32.store offset=8
     (local.get $3)
     (local.get $1)
    )
    (local.tee $1
     (local.get $3)
    )
   )
  )
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
  (i32.store offset=12
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $2)
   )
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/token/token.contract/openAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $2
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (i32.const 0)
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (local.get $1)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.tee $1
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (i32.const 0)
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (local.get $1)
   )
  )
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/token/token.contract/closeAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $2
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (i32.const 0)
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (i64.store
     (local.get $1)
     (i64.const 0)
    )
    (local.get $1)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.tee $1
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/token/token.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local.set $5
   (call $assembly/token/token.contract/TokenContract#constructor
    (i32.const 0)
    (block (result i32)
     (i64.store
      (local.tee $3
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (i64.store
      (local.get $3)
      (local.get $0)
     )
     (local.get $3)
    )
    (block (result i32)
     (local.set $7
      (local.get $1)
     )
     (if
      (i32.eqz
       (local.tee $3
        (i32.const 0)
       )
      )
      (local.set $3
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
     )
     (i64.store
      (local.get $3)
      (i64.const 0)
     )
     (i64.store
      (local.get $3)
      (local.get $7)
     )
     (local.get $3)
    )
    (block (result i32)
     (local.set $7
      (local.get $2)
     )
     (if
      (i32.eqz
       (local.tee $3
        (i32.const 0)
       )
      )
      (local.set $3
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
     )
     (i64.store
      (local.get $3)
      (i64.const 0)
     )
     (i64.store
      (local.get $3)
      (local.get $7)
     )
     (local.get $3)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $4
      (call $~lib/array/Array<u8>#constructor
       (local.tee $3
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $3)
   )
  )
  (local.set $6
   (local.get $4)
  )
  (if
   (i64.eq
    (local.get $0)
    (local.get $1)
   )
   (block
    (if
     (i64.eq
      (local.get $2)
      (i64.const 5031766152489992192)
     )
     (block
      (drop
       (call $assembly/token/token.contract/createAction#unpack
        (block (result i32)
         (i32.store
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 33)
           )
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (call $assembly/token/token.contract/TokenContract#create
       (local.get $5)
       (if (result i32)
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (if (result i32)
        (local.tee $3
         (i32.load offset=4
          (local.get $4)
         )
        )
        (local.get $3)
        (unreachable)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 8516769789752901632)
     )
     (block
      (drop
       (call $assembly/token/token.contract/issueAction#unpack
        (block (result i32)
         (i32.store
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 34)
           )
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (local.get $3)
          (i32.const 0)
         )
         (i32.store offset=8
          (local.get $3)
          (i32.const 2544)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (call $assembly/token/token.contract/TokenContract#issue
       (local.get $5)
       (if (result i32)
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (if (result i32)
        (local.tee $3
         (i32.load offset=4
          (local.get $4)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4993669930013425664)
     )
     (block
      (drop
       (call $assembly/token/token.contract/retireAction#unpack
        (block (result i32)
         (i32.store
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 35)
           )
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (local.get $3)
          (i32.const 2544)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (call $assembly/token/token.contract/TokenContract#retire
       (local.get $5)
       (if (result i32)
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (i32.load offset=4
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -3617168760277827584)
     )
     (block
      (drop
       (call $assembly/token/token.contract/transferAction#unpack
        (block (result i32)
         (i32.store
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 36)
           )
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (local.get $3)
          (i32.const 0)
         )
         (i32.store offset=8
          (local.get $3)
          (i32.const 0)
         )
         (i32.store offset=12
          (local.get $3)
          (i32.const 2544)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (call $assembly/token/token.contract/TokenContract#transfer
       (local.get $5)
       (if (result i32)
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (if (result i32)
        (local.tee $3
         (i32.load offset=4
          (local.get $4)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (if (result i32)
        (local.tee $3
         (i32.load offset=8
          (local.get $4)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (i32.load offset=12
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -6533262907872903168)
     )
     (block
      (drop
       (call $assembly/token/token.contract/openAction#unpack
        (block (result i32)
         (i32.store
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 37)
           )
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (local.get $3)
          (i32.const 0)
         )
         (i32.store offset=8
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (call $assembly/token/token.contract/TokenContract#open
       (local.get $5)
       (if (result i32)
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (if (result i32)
        (local.tee $3
         (i32.load offset=4
          (local.get $4)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (if (result i32)
        (local.tee $3
         (i32.load offset=8
          (local.get $4)
         )
        )
        (local.get $3)
        (unreachable)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4929617502180212736)
     )
     (block
      (drop
       (call $assembly/token/token.contract/closeAction#unpack
        (block (result i32)
         (i32.store
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 38)
           )
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (call $assembly/token/token.contract/TokenContract#close
       (local.get $5)
       (if (result i32)
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
        (local.get $3)
        (unreachable)
       )
       (if (result i32)
        (local.tee $3
         (i32.load offset=4
          (local.get $4)
         )
        )
        (local.get $3)
        (unreachable)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=16
    (i32.sub
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
     (i32.const 20)
    )
   )
  )
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $2
     (i32.shr_u
      (local.get $2)
      (i32.const 7)
     )
    )
   )
  )
  (i32.add
   (local.get $1)
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $4
   (local.get $0)
  )
  (local.set $2
   (i32.load offset=16
    (i32.sub
     (local.tee $1
      (call $~lib/string/String.UTF8.encode
       (local.get $1)
       (i32.const 0)
      )
     )
     (i32.const 20)
    )
   )
  )
  (loop $while-continue|0
   (local.set $6
    (i32.load offset=4
     (local.tee $3
      (local.get $4)
     )
    )
   )
   (call $~lib/as-chain/serializer/Encoder#incPos
    (local.get $3)
    (i32.const 1)
   )
   (i32.store8
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $3)
      )
     )
     (local.get $6)
    )
    (select
     (i32.or
      (local.tee $3
       (i32.and
        (local.get $2)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $3)
     (local.tee $2
      (i32.shr_u
       (local.get $2)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $5
    (i32.add
     (local.get $5)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $2)
   )
  )
  (local.set $4
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.load offset=16
    (i32.sub
     (local.get $1)
     (i32.const 20)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $4)
    (local.get $1)
    (i32.load offset=16
     (i32.sub
      (local.get $1)
      (i32.const 20)
     )
    )
   )
  )
  (drop
   (i32.load offset=16
    (i32.sub
     (local.get $1)
     (i32.const 20)
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u64> (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (i64.store
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (local.get $2)
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u64> (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (local.get $1)
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 5580)
  )
  (global.set $~lib/as-chain/mi/SAME_PAYER
   (block (result i32)
    (i64.store
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (i64.store
     (local.get $0)
     (i64.const 0)
    )
    (local.get $0)
   )
  )
 )
)
