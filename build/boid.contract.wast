(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i64 (func (result i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i64_i32_i32_i32_i32_=>_i32 (func (param i64 i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_i32_i64_=>_i32 (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "is_account" (func $~lib/as-chain/env/is_account (param i64) (result i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "db_idx64_store" (func $~lib/as-chain/env/db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_find_primary" (func $~lib/as-chain/env/db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_update" (func $~lib/as-chain/env/db_idx64_update (param i32 i64 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $external/atomicassets/base58/BASE_MAP (mut i32) (i32.const 0))
 (global $assembly/boid.contract/BoidPowerContract i32 (i32.const 9))
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
 (data (i32.const 2280) "\01\00\00\00\18\00\00\00a\00t\00o\00m\00i\00c\00a\00s\00s\00e\00t\00s")
 (data (i32.const 2316) ",")
 (data (i32.const 2328) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 2364) "\1c")
 (data (i32.const 2376) "\01")
 (data (i32.const 2396) "\1c")
 (data (i32.const 2408) "\07\00\00\00\0c\00\00\00 \t\00\00\00\00\00\00P\t")
 (data (i32.const 2428) ",")
 (data (i32.const 2440) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 2476) "\1c")
 (data (i32.const 2488) "\07\00\00\00\0c\00\00\00\90\t\00\00\00\00\00\00P\t")
 (data (i32.const 2508) "\8c")
 (data (i32.const 2520) "\01\00\00\00t\00\00\001\002\003\004\005\006\007\008\009\00A\00B\00C\00D\00E\00F\00G\00H\00J\00K\00L\00M\00N\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 2652) "\1c")
 (data (i32.const 2684) "\1c")
 (data (i32.const 2716) "\1c")
 (data (i32.const 2748) "\1c")
 (data (i32.const 2780) "\1c")
 (data (i32.const 2792) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 2812) "\1c")
 (data (i32.const 2844) "\1c")
 (data (i32.const 2876) "\1c")
 (data (i32.const 2908) "\1c")
 (data (i32.const 2920) "\01\00\00\00\08\00\00\00b\00o\00i\00d")
 (data (i32.const 2940) "\\")
 (data (i32.const 2952) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3036) "\\")
 (data (i32.const 3048) "\01\00\00\00D\00\00\00b\00o\00i\00d\00 \00s\00y\00s\00t\00e\00m\00 \00c\00o\00n\00f\00i\00g\00 \00n\00o\00t\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 3132) "\1c")
 (data (i32.const 3164) "\1c")
 (data (i32.const 3196) "<")
 (data (i32.const 3208) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3260) "L")
 (data (i32.const 3272) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3340) "L")
 (data (i32.const 3352) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3420) "<")
 (data (i32.const 3432) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3484) "\\")
 (data (i32.const 3496) "\01\00\00\00F\00\00\00d\00a\00t\00a\00 \00i\00s\00 \00t\00h\00e\00 \00s\00a\00m\00e\00,\00 \00n\00o\00t\00h\00i\00n\00g\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e")
 (data (i32.const 3580) "<")
 (data (i32.const 3592) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3644) "L")
 (data (i32.const 3656) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3724) "l")
 (data (i32.const 3736) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 3836) "\\")
 (data (i32.const 3848) "\01\00\00\00>\00\00\00o\00r\00a\00c\00l\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00e\00x\00i\00s\00t\00i\00n\00g\00 \00a\00c\00c\00o\00u\00n\00t")
 (data (i32.const 3932) "\1c")
 (data (i32.const 3944) "\01\00\00\00\02\00\00\000")
 (data (i32.const 3964) "\\")
 (data (i32.const 3976) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4060) "\1c")
 (data (i32.const 4072) "S\00\00\00\08\00\00\00\02")
 (data (i32.const 4092) "<")
 (data (i32.const 4104) "\01\00\00\00&\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00p\00r\00o\00t\00o\00c\00o\00l\00_\00i\00d")
 (data (i32.const 4156) "<")
 (data (i32.const 4168) "\01\00\00\00*\00\00\00o\00r\00a\00c\00l\00e\00 \00n\00o\00t\00 \00r\00e\00g\00i\00s\00t\00e\00r\00e\00d")
 (data (i32.const 4220) "\\")
 (data (i32.const 4232) "\01\00\00\00F\00\00\00o\00r\00a\00c\00l\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00a\00p\00p\00r\00o\00v\00e\00d\00 \00t\00h\00i\00s\00 \00r\00e\00p\00o\00r\00t")
 (data (i32.const 4316) "L")
 (data (i32.const 4328) "\01\00\00\00.\00\00\00r\00e\00p\00o\00r\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00r\00e\00p\00o\00r\00t\00e\00d")
 (data (i32.const 4396) ",")
 (data (i32.const 4408) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x\00!")
 (data (i32.const 4444) "\1c")
 (data (i32.const 4476) "<")
 (data (i32.const 4488) "\01\00\00\00&\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00i\00d\00 \00p\00r\00o\00v\00i\00d\00e\00d")
 (data (i32.const 4540) "L")
 (data (i32.const 4552) "\01\00\00\00.\00\00\00p\00r\00o\00t\00o\00c\00o\00l\00_\00i\00d\00s\00 \00m\00u\00s\00t\00 \00m\00a\00t\00c\00h")
 (data (i32.const 4620) "<")
 (data (i32.const 4632) "\01\00\00\00\"\00\00\00r\00o\00u\00n\00d\00s\00 \00m\00u\00s\00t\00 \00m\00a\00t\00c\00h")
 (data (i32.const 4684) "\\")
 (data (i32.const 4696) "\01\00\00\00H\00\00\00c\00a\00n\00\'\00t\00 \00m\00e\00r\00g\00e\00 \00r\00e\00p\00o\00r\00t\00s\00 \00a\00l\00r\00e\00a\00d\00y\00 \00r\00e\00p\00o\00r\00t\00e\00d")
 (data (i32.const 4780) "\\")
 (data (i32.const 4792) "\01\00\00\00D\00\00\00c\00a\00n\00\'\00t\00 \00m\00e\00r\00g\00e\00 \00r\00e\00p\00o\00r\00t\00s\00 \00a\00l\00r\00e\00a\00d\00y\00 \00m\00e\00r\00g\00e\00d")
 (data (i32.const 4876) "\1c")
 (data (i32.const 4888) "X\00\00\00\08\00\00\00\03")
 (data (i32.const 4908) ",")
 (data (i32.const 4920) "\01\00\00\00\1a\00\00\00r\00e\00p\00o\00r\00t\00 \00u\00n\00i\00t\00s\00 ")
 (data (i32.const 4956) "<")
 (data (i32.const 4968) "\01\00\00\00 \00\00\00 \00a\00b\00o\00v\00e\00 \00m\00a\00x\00i\00m\00u\00m\00:\00 ")
 (data (i32.const 5020) "L")
 (data (i32.const 5032) "\01\00\00\002\00\00\00 \00b\00e\00l\00o\00w\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00m\00i\00n\00i\00m\00u\00m\00:\00 ")
 (data (i32.const 5100) "\1c")
 (data (i32.const 5112) "Y\00\00\00\08\00\00\00\04")
 (data (i32.const 5132) "l")
 (data (i32.const 5144) "\01\00\00\00V\00\00\00a\00g\00g\00r\00e\00g\00a\00t\00e\00 \00a\00p\00p\00r\00o\00v\00a\00l\00_\00w\00e\00i\00g\00h\00t\00 \00i\00s\00n\00\'\00t\00 \00h\00i\00g\00h\00 \00e\00n\00o\00u\00g\00h")
 (data (i32.const 5244) "\1c")
 (data (i32.const 5276) "<")
 (data (i32.const 5288) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 5340) "<")
 (data (i32.const 5352) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 5404) "<")
 (data (i32.const 5416) "\01\00\00\00\1e\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00D\00e\00p\00o\00s\00i\00t")
 (data (i32.const 5468) "<")
 (data (i32.const 5480) "\01\00\00\00(\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00t\00o\00k\00e\00n\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 5532) "<")
 (data (i32.const 5544) "\01\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y")
 (data (i32.const 5596) "\1c")
 (data (i32.const 5608) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 5628) ",")
 (data (i32.const 5640) "\01\00\00\00\14\00\00\00c\00o\00l\00l\00a\00t\00e\00r\00a\00l")
 (data (i32.const 5676) "|")
 (data (i32.const 5688) "\01\00\00\00`\00\00\00m\00u\00s\00t\00 \00d\00e\00p\00o\00s\00i\00t\00 \00c\00o\00l\00l\00a\00t\00e\00r\00a\00l\00 \00i\00n\00 \00i\00n\00c\00r\00e\00m\00e\00n\00t\00s\00 \00o\00f\00 \005\00m\00 \00B\00O\00I\00D")
 (data (i32.const 5804) "\9c")
 (data (i32.const 5816) "\01\00\00\00\82\00\00\00i\00f\00 \00d\00e\00p\00o\00s\00i\00t\00i\00n\00g\00 \00o\00r\00a\00c\00l\00e\00 \00c\00o\00l\00l\00a\00t\00e\00r\00a\00l\00 \00m\00u\00s\00t\00 \00s\00p\00e\00c\00i\00f\00y\00 \00\'\00c\00o\00l\00l\00a\00t\00e\00r\00a\00l\00\'\00 \00a\00s\00 \00m\00e\00m\00o")
 (data (i32.const 5964) ",")
 (data (i32.const 5976) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 6012) ",")
 (data (i32.const 6024) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (data (i32.const 6060) "<")
 (data (i32.const 6072) "\01\00\00\00\1e\00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 6124) "<")
 (data (i32.const 6136) "\01\00\00\00 \00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (table $0 5 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0 $assembly/actions/3-pwrreport/PwrReportActions#getReportId~anonymous|0 $assembly/actions/3-pwrreport/PwrReportActions#mergeReports~anonymous|0 $assembly/actions/3-pwrreport/PwrReportActions#mergeReports~anonymous|1)
 (export "BoidPowerContract" (global $assembly/boid.contract/BoidPowerContract))
 (export "BoidPowerContract#get:receiver" (func $~lib/as-chain/helpers/Contract#get:receiver))
 (export "BoidPowerContract#set:receiver" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "BoidPowerContract#get:firstReceiver" (func $~lib/as-chain/helpers/Contract#get:firstReceiver))
 (export "BoidPowerContract#set:firstReceiver" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "BoidPowerContract#get:action" (func $~lib/as-chain/helpers/Contract#get:action))
 (export "BoidPowerContract#set:action" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "BoidPowerContract#constructor" (func $assembly/boid.contract/BoidPowerContract#constructor))
 (export "BoidPowerContract#get:oraclesT" (func $assembly/actions/1-global/GlobalActions#get:oraclesT))
 (export "BoidPowerContract#set:oraclesT" (func $~lib/rt/common/OBJECT#set:rtId))
 (export "BoidPowerContract#get:protocolsT" (func $assembly/actions/1-global/GlobalActions#get:protocolsT))
 (export "BoidPowerContract#set:protocolsT" (func $~lib/rt/common/OBJECT#set:rtSize))
 (export "BoidPowerContract#get:statsT" (func $assembly/actions/1-global/GlobalActions#get:statsT))
 (export "BoidPowerContract#set:statsT" (func $assembly/actions/1-global/GlobalActions#set:statsT))
 (export "BoidPowerContract#get:globalT" (func $assembly/actions/1-global/GlobalActions#get:globalT))
 (export "BoidPowerContract#set:globalT" (func $assembly/actions/1-global/GlobalActions#set:globalT))
 (export "BoidPowerContract#get:round" (func $assembly/actions/1-global/GlobalActions#get:round))
 (export "BoidPowerContract#set:round" (func $assembly/actions/1-global/GlobalActions#set:round))
 (export "BoidPowerContract#currentRound" (func $assembly/actions/1-global/GlobalActions#currentRound))
 (export "BoidPowerContract#pwrReportsT" (func $assembly/actions/1-global/GlobalActions#pwrReportsT))
 (export "BoidPowerContract#oracleStatsT" (func $assembly/actions/1-global/GlobalActions#oracleStatsT))
 (export "BoidPowerContract#get:codePerm" (func $assembly/actions/1-global/GlobalActions#get:codePerm))
 (export "BoidPowerContract#set:codePerm" (func $assembly/actions/1-global/GlobalActions#set:codePerm))
 (export "BoidPowerContract#minWeightThreshold" (func $assembly/actions/1-global/GlobalActions#minWeightThreshold))
 (export "BoidPowerContract#updateStats" (func $assembly/actions/1-global/GlobalActions#updateStats))
 (export "BoidPowerContract#sendOracleSet" (func $assembly/actions/2-oracle/OracleActions#sendOracleSet))
 (export "BoidPowerContract#oracleSet" (func $assembly/actions/2-oracle/OracleActions#oracleSet))
 (export "BoidPowerContract#getReportId" (func $assembly/actions/3-pwrreport/PwrReportActions#getReportId))
 (export "BoidPowerContract#sendReport" (func $assembly/actions/3-pwrreport/PwrReportActions#sendReport))
 (export "BoidPowerContract#pwrReport" (func $assembly/actions/3-pwrreport/PwrReportActions#pwrReport))
 (export "BoidPowerContract#mergeReports" (func $assembly/actions/3-pwrreport/PwrReportActions#mergeReports))
 (export "BoidPowerContract#protoSet" (func $assembly/actions/4-protocol/ProtoActions#protoSet))
 (export "BoidPowerContract#ondeposit" (func $assembly/actions/5-deposit/DepositActions#ondeposit))
 (export "apply" (func $assembly/boid.contract/apply))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:~lib/as-chain/name~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 122)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 97)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 91)
    )
   )
  )
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 53)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 49)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 48)
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
    (i32.const 46)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 65535)
 )
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
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
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
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
       (i32.lt_s
        (local.get $1)
        (local.get $2)
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
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
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
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  (i32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
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
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (i32.shr_u
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $__inlined_func$~lib/string/String#concat
   (if
    (i32.eqz
     (local.tee $2
      (i32.add
       (local.tee $3
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.tee $4
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 2384)
     )
     (br $__inlined_func$~lib/string/String#concat)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.get $0)
    (local.get $3)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (local.get $2)
     (local.get $3)
    )
    (local.get $1)
    (local.get $4)
   )
  )
  (local.get $2)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   (drop
    (br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (i32.const 2384)
     (i32.lt_s
      (local.tee $3
       (i32.sub
        (i32.shr_u
         (i32.load offset=16
          (i32.sub
           (local.tee $1
            (local.get $0)
           )
           (i32.const 20)
          )
         )
         (i32.const 2)
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (if (result i32)
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (local.get $0)
      (i32.const 2384)
     )
    )
   )
   (local.set $0
    (i32.const 2384)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 2384)
    )
   )
   (loop $for-loop|0
    (if
     (i32.lt_s
      (local.get $2)
      (local.get $3)
     )
     (block
      (if
       (local.tee $5
        (i32.load
         (i32.add
          (local.get $1)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (local.get $5)
        )
       )
      )
      (if
       (local.get $4)
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (i32.const 2384)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (if (result i32)
    (local.tee $1
     (i32.load
      (i32.add
       (local.get $1)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (call $~lib/string/String.__concat
     (local.get $0)
     (local.get $1)
    )
    (local.get $0)
   )
  )
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.and
          (local.get $1)
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $0)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
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
     (br $while-continue|0)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $1
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
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
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
          (local.get $1)
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
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
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
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
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
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
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
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
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
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
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
     (br $while-continue|0)
    )
   )
  )
  (if
   (local.get $3)
   (i32.store8
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/rt/stub/__new
    (call $~lib/string/String.UTF8.byteLength
     (local.get $0)
     (local.get $1)
    )
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (call $~lib/string/String#get:length
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/as-chain/system/assert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (call $~lib/string/String.UTF8.encode
    (local.get $1)
    (i32.const 1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.or
    (i32.lt_u
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $0)
     )
     (local.get $2)
    )
    (i32.gt_u
     (local.get $2)
     (i32.const 1073741820)
    )
   )
   (unreachable)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/env/eosio_assert
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/system/assert
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.le_u
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (local.get $1)
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/as-chain/name/S2N (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $2
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 13)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (i32.const 2416)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 2416)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $1)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (block
       (local.set $2
        (call $~lib/string/String#charCodeAt
         (local.get $0)
         (local.get $1)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $3
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $2)
             (i32.load
              (i32.const 1056)
             )
            )
            (i32.const 65535)
           )
          )
         )
         (i64.const 65535)
        )
        (block
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (i32.const 2496)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 2496)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $4
      (i64.or
       (local.get $4)
       (select
        (i64.shl
         (i64.and
          (local.get $3)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $2
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $3)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $1)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $4)
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (local.get $1)
  )
  (loop $while-continue|0
   (if
    (local.get $2)
    (block
     (local.set $0
      (i32.add
       (local.tee $1
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $1)
      (local.get $3)
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
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
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
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $start:assembly/boid.contract
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 6188)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/name/EMPTY_NAME
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (local.set $4
   (call $~lib/as-chain/name/S2N
    (i32.const 2288)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $4)
  )
  (local.set $0
   (i32.const 0)
  )
  (if
   (call $~lib/string/String#get:length
    (i32.const 2528)
   )
   (i32.store16
    (call $~lib/rt/stub/__new
     (i32.const 2)
     (i32.const 1)
    )
    (i32.load16_u
     (i32.const 2528)
    )
   )
  )
  (drop
   (call $~lib/string/String#charCodeAt
    (i32.const 2528)
    (i32.const 0)
   )
  )
  (local.set $5
   (i32.load offset=4
    (local.tee $3
     (call $~lib/array/Array<u8>#constructor
      (i32.const 256)
     )
    )
   )
  )
  (local.set $2
   (select
    (i32.const 0)
    (local.tee $1
     (i32.load offset=12
      (local.get $3)
     )
    )
    (i32.gt_s
     (local.get $1)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.gt_s
    (local.get $1)
    (local.get $2)
   )
   (call $~lib/memory/memory.fill
    (i32.add
     (local.get $2)
     (local.get $5)
    )
    (i32.const 255)
    (i32.sub
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (global.set $external/atomicassets/base58/BASE_MAP
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $0)
     (i32.const 58)
    )
    (block
     (if
      (i32.ne
       (i32.load8_u
        (i32.add
         (local.tee $1
          (call $~lib/string/String#charCodeAt
           (i32.const 2528)
           (local.get $0)
          )
         )
         (i32.load offset=4
          (global.get $external/atomicassets/base58/BASE_MAP)
         )
        )
       )
       (i32.const 255)
      )
      (unreachable)
     )
     (i32.store8
      (i32.add
       (local.get $1)
       (i32.load offset=4
        (global.get $external/atomicassets/base58/BASE_MAP)
       )
      )
      (local.get $0)
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $assembly/tables/oracles/Oracle#set:weight (param $0 i32) (param $1 i32)
  (i32.store8 offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round (param $0 i32) (param $1 i32)
  (i32.store16 offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/oracles/OracleCollateral#set:min_unlock_start_round (param $0 i32) (param $1 i32)
  (i32.store16 offset=14
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/oracles/OracleCollateral#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 19)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/oracles/OracleCollateral#set:min_unlock_start_round
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/oracles/OracleFunds#set:last_claim_round (param $0 i32) (param $1 i32)
  (i32.store16 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/oracles/OracleFunds#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 10)
     (i32.const 20)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/oracles/OracleFunds#set:last_claim_round
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/oracles/Oracle#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (block $4of4
   (block $3of4
    (block $2of4
     (block $1of4
      (block $0of4
       (block $outOfRange
        (br_table $0of4 $1of4 $2of4 $3of4 $4of4 $outOfRange
         (global.get $~argumentsLength)
        )
       )
       (unreachable)
      )
      (local.set $0
       (global.get $~lib/as-chain/name/EMPTY_NAME)
      )
     )
     (local.set $1
      (i32.const 0)
     )
    )
    (local.set $2
     (call $assembly/tables/oracles/OracleCollateral#constructor)
    )
   )
   (local.set $4
    (call $assembly/tables/oracles/OracleFunds#constructor)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 16)
    )
   )
   (local.get $0)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $3)
   (local.get $4)
  )
  (local.get $3)
 )
 (func $assembly/tables/oracles/Oracle.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -6499669894181683200)
  )
  (local.get $0)
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (local.tee $4
    (i32.shl
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $4)
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $1)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/protocols/Protocol#set:unitPowerMult (param $0 i32) (param $1 f32)
  (f32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/protocols/Protocol#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 26)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (call $assembly/tables/protocols/Protocol#set:unitPowerMult
   (local.get $1)
   (f32.const 0)
  )
  (local.get $1)
 )
 (func $assembly/tables/protocols/Protocol.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -5915027162309591040)
  )
  (local.get $0)
 )
 (func $assembly/tables/stats/Stat#set:round (param $0 i32) (param $1 i32)
  (i32.store16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/stats/Stat#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 30)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $assembly/tables/global/Global#set:num_validators (param $0 i32) (param $1 i32)
  (i32.store8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/global/Global#set:total_weight (param $0 i32) (param $1 i32)
  (i32.store16 offset=2
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/global/GlobalReports#constructor (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 32)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $0)
   (i64.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $0)
   (i64.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/global/Global#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $3of3
   (block $2of3
    (block $outOfRange
     (br_table $2of3 $2of3 $2of3 $3of3 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $1
    (call $assembly/tables/global/GlobalReports#constructor)
   )
  )
  (call $assembly/tables/global/Global#set:num_validators
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 31)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/global/Global#set:total_weight
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $assembly/tables/stats/Stat.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -4157495357179166720)
  )
  (local.get $0)
 )
 (func $assembly/actions/1-global/GlobalActions#set:statsT (param $0 i32) (param $1 i32)
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#set:globalT (param $0 i32) (param $1 i32)
  (i32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#set:round (param $0 i32) (param $1 i32)
  (i32.store16 offset=28
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 39)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $assembly/actions/1-global/GlobalActions#set:codePerm (param $0 i32) (param $1 i32)
  (i32.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (block (result i32)
       (if
        (i32.eqz
         (local.get $0)
        )
        (local.set $0
         (call $~lib/rt/stub/__new
          (i32.const 36)
          (i32.const 14)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 15)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 21)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/oracles/Oracle#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (local.set $6
   (call $assembly/tables/oracles/Oracle.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/tables/oracles/Oracle.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 25)
    (i32.const 2672)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 22)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (local.set $4
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $5)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 23)
    )
   )
   (local.get $4)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 27)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $assembly/tables/protocols/Protocol#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $6
   (call $assembly/tables/protocols/Protocol.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/tables/protocols/Protocol.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 25)
    (i32.const 2704)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 28)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (local.set $4
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $5)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 29)
    )
   )
   (local.get $4)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 33)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/stats/Stat#constructor
    (i32.const 0)
    (call $assembly/tables/global/Global#constructor@varargs)
   )
  )
  (local.set $6
   (call $assembly/tables/stats/Stat.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/tables/stats/Stat.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 25)
    (i32.const 2736)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 34)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (local.set $4
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $5)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 35)
    )
   )
   (local.get $4)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $assembly/actions/1-global/GlobalActions#set:statsT
   (local.get $0)
   (local.get $2)
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 36)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/global/Global#constructor@varargs)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (i64.const 7235159537265672192)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 25)
    (i32.const 2768)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 37)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (local.set $4
   (i64.load
    (local.get $5)
   )
  )
  (local.set $7
   (i64.load
    (local.get $5)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 38)
    )
   )
   (local.get $4)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (call $assembly/actions/1-global/GlobalActions#set:globalT
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/actions/1-global/GlobalActions#set:round
   (local.get $0)
   (i32.const 0)
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (call $~lib/as-chain/name/S2N
    (i32.const 2800)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (local.get $4)
  )
  (call $assembly/actions/1-global/GlobalActions#set:codePerm
   (local.get $0)
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $2)
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $assembly/boid.contract/BoidPowerContract#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call $assembly/actions/1-global/GlobalActions#constructor
   (if (result i32)
    (block (result i32)
     (if
      (i32.eqz
       (block (result i32)
        (if
         (i32.eqz
          (block (result i32)
           (if
            (i32.eqz
             (block (result i32)
              (if
               (i32.eqz
                (local.get $0)
               )
               (local.set $0
                (call $~lib/rt/stub/__new
                 (i32.const 36)
                 (i32.const 9)
                )
               )
              )
              (local.get $0)
             )
            )
            (local.set $0
             (call $~lib/rt/stub/__new
              (i32.const 36)
              (i32.const 10)
             )
            )
           )
           (local.get $0)
          )
         )
         (local.set $0
          (call $~lib/rt/stub/__new
           (i32.const 36)
           (i32.const 11)
          )
         )
        )
        (local.get $0)
       )
      )
      (local.set $0
       (call $~lib/rt/stub/__new
        (i32.const 36)
        (i32.const 12)
       )
      )
     )
     (local.get $0)
    )
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 36)
     (i32.const 13)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
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
 (func $assembly/actions/1-global/GlobalActions#get:oraclesT (param $0 i32) (result i32)
  (i32.load offset=12
   (local.get $0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#get:protocolsT (param $0 i32) (result i32)
  (i32.load offset=16
   (local.get $0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#get:statsT (param $0 i32) (result i32)
  (i32.load offset=20
   (local.get $0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#get:globalT (param $0 i32) (result i32)
  (i32.load offset=24
   (local.get $0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#get:round (param $0 i32) (result i32)
  (i32.load16_u offset=28
   (local.get $0)
  )
 )
 (func $assembly/tables/external/config/Config#set:nft (param $0 i32) (param $1 i32)
  (i32.store offset=28
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/Config#set:paused (param $0 i32) (param $1 i32)
  (i32.store8 offset=36
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/Config#set:allow_deposits (param $0 i32) (param $1 i32)
  (i32.store8 offset=37
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/Config#set:allow_withdrawals (param $0 i32) (param $1 i32)
  (i32.store8 offset=38
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigAccount#set:max_sponsors (param $0 i32) (param $1 i32)
  (i32.store8 offset=5
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigAccount#set:max_pwrmods (param $0 i32) (param $1 i32)
  (i32.store8 offset=6
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigAccount#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 42)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigAccount#set:max_sponsors
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigAccount#set:max_pwrmods
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 43)
    (i32.const 2832)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/config/ConfigPower#set:round_decay_mult (param $0 i32) (param $1 f32)
  (f32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigPower#set:sponsor_tax_mult (param $0 i32) (param $1 f32)
  (f32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigPower#set:powered_stake_pwr (param $0 i32) (param $1 f32)
  (f32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigPower#set:claim_maximum_elapsed_rounds (param $0 i32) (param $1 i32)
  (i32.store16 offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigPower#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 22)
     (i32.const 44)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:round_decay_mult
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:sponsor_tax_mult
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/protocols/Protocol#set:unitPowerMult
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:powered_stake_pwr
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:claim_maximum_elapsed_rounds
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/config/ConfigMint#set:round_powered_stake_mult (param $0 i32) (param $1 f32)
  (f32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigMint#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/external/config/ConfigMint#set:round_powered_stake_mult
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 45)
    )
   )
   (f32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:round_decay_mult
   (local.get $0)
   (f32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change (param $0 i32) (param $1 i32)
  (i32.store16 offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigTeam#set:owner_future_stake_lock_rounds_required (param $0 i32) (param $1 i32)
  (i32.store16 offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigTeam#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 18)
     (i32.const 46)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/global/Global#set:total_weight
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:owner_future_stake_lock_rounds_required
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/config/ConfigStake#set:extra_stake_min_locked_rounds (param $0 i32) (param $1 i32)
  (i32.store8 offset=1
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigStake#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/global/Global#set:num_validators
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 2)
     (i32.const 47)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigStake#set:extra_stake_min_locked_rounds
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 50)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/time/TimePoint#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 49)
    )
   )
   (call $~lib/as-chain/time/Microseconds#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $assembly/tables/external/config/ConfigTime#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 48)
    )
   )
   (call $~lib/as-chain/time/TimePoint#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/config/ConfigAuth#set:account_max_keys (param $0 i32) (param $1 i32)
  (i32.store8 offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigAuth#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 51)
    )
   )
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 52)
    (i32.const 2864)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigAuth#set:account_max_keys
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/config/ConfigNft#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 2)
     (i32.const 53)
    )
   )
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/config/ConfigAutoAdjust#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 14)
     (i32.const 54)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:round_decay_mult
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:sponsor_tax_mult
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/config/Config#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (block $12of12
   (block $8of12
    (block $7of12
     (block $6of12
      (block $5of12
       (block $4of12
        (block $3of12
         (block $2of12
          (block $1of12
           (block $0of12
            (block $outOfRange
             (br_table $0of12 $1of12 $2of12 $3of12 $4of12 $5of12 $6of12 $7of12 $8of12 $12of12 $12of12 $12of12 $12of12 $outOfRange
              (global.get $~argumentsLength)
             )
            )
            (unreachable)
           )
           (local.set $1
            (call $assembly/tables/external/config/ConfigAccount#constructor)
           )
          )
          (local.set $2
           (call $assembly/tables/external/config/ConfigPower#constructor)
          )
         )
         (local.set $3
          (call $assembly/tables/external/config/ConfigMint#constructor)
         )
        )
        (local.set $4
         (call $assembly/tables/external/config/ConfigTeam#constructor)
        )
       )
       (local.set $5
        (call $assembly/tables/external/config/ConfigStake#constructor)
       )
      )
      (local.set $6
       (call $assembly/tables/external/config/ConfigTime#constructor)
      )
     )
     (local.set $7
      (call $assembly/tables/external/config/ConfigAuth#constructor)
     )
    )
    (local.set $8
     (call $assembly/tables/external/config/ConfigNft#constructor)
    )
   )
   (local.set $9
    (call $assembly/tables/external/config/ConfigAutoAdjust#constructor)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 39)
     (i32.const 41)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $5)
  )
  (call $assembly/actions/1-global/GlobalActions#set:statsT
   (local.get $0)
   (local.get $6)
  )
  (call $assembly/actions/1-global/GlobalActions#set:globalT
   (local.get $0)
   (local.get $7)
  )
  (call $assembly/tables/external/config/Config#set:nft
   (local.get $0)
   (local.get $8)
  )
  (call $assembly/actions/1-global/GlobalActions#set:codePerm
   (local.get $0)
   (local.get $9)
  )
  (call $assembly/tables/external/config/Config#set:paused
   (local.get $0)
   (i32.const 1)
  )
  (call $assembly/tables/external/config/Config#set:allow_deposits
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/external/config/Config#set:allow_withdrawals
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 58)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 59)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
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
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
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
         (local.get $2)
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
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2960)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#unpack@virtual
    (local.get $1)
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
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<bool> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load8_u
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
   (i32.const 1)
  )
  (local.get $1)
 )
 (func $assembly/tables/external/config/Config#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (local.tee $2
    (call $assembly/tables/external/config/ConfigAccount#constructor)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigPower#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigMint#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigTeam#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigStake#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigTime#constructor)
   )
  )
  (call $assembly/actions/1-global/GlobalActions#set:statsT
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigAuth#constructor)
   )
  )
  (call $assembly/actions/1-global/GlobalActions#set:globalT
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigNft#constructor)
   )
  )
  (call $assembly/tables/external/config/Config#set:nft
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigAutoAdjust#constructor)
   )
  )
  (call $assembly/actions/1-global/GlobalActions#set:codePerm
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/tables/external/config/Config#set:paused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/tables/external/config/Config#set:allow_deposits
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/tables/external/config/Config#set:allow_withdrawals
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/time/TimePoint#secSinceEpoch (param $0 i32) (result i32)
  (i32.wrap_i64
   (i64.div_s
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
    (i64.const 1000000)
   )
  )
 )
 (func $assembly/actions/1-global/GlobalActions#currentRound (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (if
   (i32.eqz
    (i32.load16_u offset=28
     (local.get $0)
    )
   )
   (block
    (local.set $4
     (call $~lib/as-chain/name/S2N
      (i32.const 2928)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $3)
     (local.get $4)
    )
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (block $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#getOrNull
     (if
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.tee $2
        (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/external/config/Config>#find (result i32)
         (call $~lib/as-chain/name/Name#set:N
          (local.tee $2
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 55)
           )
          )
          (i64.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $2)
          (i32.const 0)
         )
         (global.set $~argumentsLength
          (i32.const 0)
         )
         (drop
          (call $assembly/tables/external/config/Config#constructor@varargs)
         )
         (call $~lib/as-chain/name/Name#set:N
          (local.tee $5
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 5)
           )
          )
          (i64.const 0)
         )
         (call $~lib/as-chain/name/Name#set:N
          (local.get $5)
          (i64.const 4982871454518345728)
         )
         (call $~lib/as-chain/name/Name#set:N
          (local.get $2)
          (i64.load
           (local.get $5)
          )
         )
         (global.set $~argumentsLength
          (i32.const 3)
         )
         (local.set $6
          (call $~lib/rt/__newArray
           (i32.const 0)
           (i32.const 2)
           (i32.const 25)
           (i32.const 2896)
          )
         )
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $1
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 56)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $1)
          (i32.const 0)
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
          (local.get $1)
          (i64.const -1)
         )
         (local.set $4
          (i64.load
           (local.get $3)
          )
         )
         (local.set $7
          (i64.load
           (local.get $3)
          )
         )
         (local.set $8
          (i64.load
           (local.get $5)
          )
         )
         (call $~lib/as-chain/name/Name#set:N
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 24)
            (i32.const 57)
           )
          )
          (local.get $4)
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
          (local.get $3)
          (local.get $7)
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
          (local.get $3)
          (local.get $8)
         )
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.get $1)
          (local.get $3)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $1)
          (local.get $6)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $2)
          (local.get $1)
         )
         (if
          (i32.ge_s
           (local.tee $2
            (call $~lib/as-chain/env/db_find_i64
             (i64.load
              (local.tee $1
               (i32.load
                (i32.load offset=8
                 (local.get $2)
                )
               )
              )
             )
             (i64.load offset=8
              (local.get $1)
             )
             (i64.load offset=16
              (local.get $1)
             )
             (local.tee $4
              (i64.load
               (local.get $2)
              )
             )
            )
           )
           (i32.const 0)
          )
          (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/external/config/Config>#find
           (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#constructor
            (local.get $1)
            (local.get $2)
            (local.get $4)
            (i32.const 1)
           )
          )
         )
         (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#constructor
          (local.get $1)
          (local.get $2)
          (i64.const 0)
          (i32.const 0)
         )
        )
       )
      )
      (block
       (if
        (i32.eqz
         (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
          (local.get $2)
         )
        )
        (block
         (local.set $1
          (i32.const 0)
         )
         (br $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#getOrNull)
        )
       )
       (drop
        (i32.load
         (local.get $2)
        )
       )
       (local.set $1
        (i32.const 0)
       )
       (if
        (local.tee $2
         (call $~lib/as-chain/env/db_get_i64
          (local.tee $3
           (i32.load offset=4
            (local.get $2)
           )
          )
          (i32.const 0)
          (i32.const 0)
         )
        )
        (block
         (drop
          (call $~lib/as-chain/env/db_get_i64
           (local.get $3)
           (i32.load offset=4
            (local.tee $3
             (call $~lib/array/Array<u8>#constructor
              (local.get $2)
             )
            )
           )
           (local.get $2)
          )
         )
         (global.set $~argumentsLength
          (i32.const 0)
         )
         (drop
          (call $assembly/tables/external/config/Config#unpack
           (local.tee $1
            (call $assembly/tables/external/config/Config#constructor@varargs)
           )
           (local.get $3)
          )
         )
        )
       )
       (br $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#getOrNull)
      )
     )
     (local.set $1
      (i32.const 0)
     )
    )
    (if
     (local.get $1)
     (call $assembly/actions/1-global/GlobalActions#set:round
      (local.get $0)
      (i32.div_u
       (i32.sub
        (call $~lib/as-chain/time/TimePoint#secSinceEpoch
         (call $~lib/as-chain/time/TimePoint#constructor
          (call $~lib/as-chain/env/current_time)
         )
        )
        (call $~lib/as-chain/time/TimePoint#secSinceEpoch
         (i32.load
          (i32.load offset=20
           (local.get $1)
          )
         )
        )
       )
       (i32.load offset=4
        (i32.load offset=20
         (local.get $1)
        )
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.const 0)
      (i32.const 3056)
     )
    )
   )
  )
  (i32.load16_u offset=28
   (local.get $0)
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow#set:reported (param $0 i32) (param $1 i32)
  (i32.store8 offset=18
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow#set:merged (param $0 i32) (param $1 i32)
  (i32.store8 offset=19
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 60)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (local.get $2)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:owner_future_stake_lock_rounds_required
   (local.get $5)
   (local.get $3)
  )
  (call $assembly/tables/pwrreports/PwrReportRow#set:reported
   (local.get $5)
   (local.get $4)
  )
  (call $assembly/tables/pwrreports/PwrReportRow#set:merged
   (local.get $5)
   (i32.const 0)
  )
  (local.get $5)
 )
 (func $assembly/tables/pwrreports/PwrReport#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/global/Global#set:num_validators
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 61)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/global/Global#set:total_weight
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/pwrreports/PwrReportRow#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $6of6
   (block $2of6
    (block $1of6
     (block $outOfRange
      (br_table $1of6 $1of6 $2of6 $6of6 $6of6 $6of6 $6of6 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (local.set $1
     (call $assembly/tables/pwrreports/PwrReport#constructor)
    )
   )
   (local.set $0
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 52)
     (i32.const 3152)
    )
   )
  )
  (call $assembly/tables/pwrreports/PwrReportRow#constructor
   (i64.const 0)
   (local.get $1)
   (local.get $0)
   (i32.const 0)
   (i32.const 0)
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -5823306778392264704)
  )
  (local.get $0)
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 62)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $4)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/pwrreports/PwrReportRow#constructor@varargs)
  )
  (local.set $3
   (local.get $0)
  )
  (local.set $8
   (call $assembly/tables/pwrreports/PwrReportRow.get:tableName)
  )
  (local.set $5
   (i64.and
    (i64.load
     (call $assembly/tables/pwrreports/PwrReportRow.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $0
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 25)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $2
       (call $~lib/rt/stub/__new
        (i32.const 28)
        (i32.const 65)
       )
      )
     )
     (local.set $2
      (call $~lib/rt/stub/__new
       (i32.const 28)
       (i32.const 24)
      )
     )
    )
    (local.get $2)
   )
   (local.get $6)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $2)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $2)
   (local.get $5)
  )
  (i32.store offset=24
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $0)
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 63)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (local.set $5
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i64.load
    (local.get $1)
   )
  )
  (local.set $7
   (i64.load
    (local.get $8)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 64)
    )
   )
   (local.get $5)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $1)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $2)
  )
  (local.get $4)
 )
 (func $assembly/actions/1-global/GlobalActions#pwrReportsT (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#constructor
   (i32.load
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $assembly/tables/oracleStats/OracleStat#set:weight (param $0 i32) (param $1 i32)
  (i32.store8 offset=2
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/oracleStats/OracleStat#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 66)
    )
   )
   (local.get $0)
  )
  (call $assembly/tables/oracleStats/OracleStat#set:weight
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $assembly/tables/oracleStats/Reports#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 67)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/oracleStats/OracleStat#constructor@varargs (result i32)
  (local $0 i32)
  (block $3of3
   (block $2of3
    (block $outOfRange
     (br_table $2of3 $2of3 $2of3 $3of3 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $assembly/tables/oracleStats/Reports#constructor)
   )
  )
  (call $assembly/tables/oracleStats/OracleStat#constructor
   (i32.const 0)
   (i32.const 0)
   (local.get $0)
  )
 )
 (func $assembly/tables/oracleStats/OracleStat.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -6499669893758685184)
  )
  (local.get $0)
 )
 (func $assembly/actions/1-global/GlobalActions#oracleStatsT (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 68)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/oracleStats/OracleStat#constructor@varargs)
  )
  (local.set $4
   (call $assembly/tables/oracleStats/OracleStat.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/tables/oracleStats/OracleStat.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 25)
    (i32.const 3184)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 69)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $0)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
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
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 70)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $1)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $1)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $assembly/actions/1-global/GlobalActions#get:codePerm (param $0 i32) (result i32)
  (i32.load offset=32
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 71)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/global/Global>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/global/Global>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/global/Global>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u16> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load16_u
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
   (i32.const 2)
  )
  (local.get $1)
 )
 (func $assembly/tables/global/Global#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $assembly/tables/global/Global#set:num_validators
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $assembly/tables/global/Global#set:total_weight
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/global/GlobalReports#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#getValue (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/global/Global>#getEx (result i32)
   (drop
    (i32.load
     (local.get $0)
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/global/Global>#getEx
     (i32.const 0)
     (i32.eqz
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $0
         (i32.load offset=4
          (local.get $0)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
    )
   )
   (drop
    (call $~lib/as-chain/env/db_get_i64
     (local.get $0)
     (i32.load offset=4
      (local.tee $0
       (call $~lib/array/Array<u8>#constructor
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (drop
    (call $assembly/tables/global/Global#unpack
     (local.tee $1
      (call $assembly/tables/global/Global#constructor@varargs)
     )
     (local.get $0)
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/global/Global>#find
      (i32.load offset=8
       (local.get $0)
      )
      (i64.load
       (local.get $0)
      )
     )
    )
   )
   (block
    (if
     (i32.eqz
      (local.tee $0
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#getValue
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (return
     (local.get $0)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $assembly/tables/global/Global#constructor@varargs)
 )
 (func $assembly/actions/1-global/GlobalActions#minWeightThreshold (param $0 i32) (result i32)
  (i32.add
   (i32.shl
    (i32.div_u
     (i32.load16_u offset=2
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
       (i32.load offset=24
        (local.get $0)
       )
      )
     )
     (i32.const 3)
    )
    (i32.const 1)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 72)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/tables/stats/Stat#getPrimaryValue (param $0 i32) (result i64)
  (i64.extend_i32_u
   (i32.load16_u
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 73)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $assembly/tables/global/Global#getSize (param $0 i32) (result i32)
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (i32.const 27)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3280)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u16> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 2)
  )
  (i32.store16
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $2
     (call $~lib/as-chain/serializer/Packer#pack@virtual
      (local.get $1)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3360)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $2)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#getBytes (param $0 i32) (result i32)
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
 (func $assembly/tables/stats/Stat#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (call $assembly/tables/global/Global#getSize
       (i32.load offset=4
        (local.get $0)
       )
      )
      (i32.const 2)
     )
    )
   )
   (i32.load16_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
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
      (i32.add
       (i32.load offset=4
        (local.get $0)
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/SecondaryValue#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 74)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 75)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 134217727)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 3)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/tables/stats/Stat#getSecondaryValue (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3440)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $assembly/actions/1-global/GlobalActions#updateStats (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local.set $1
   (i32.load offset=20
    (local.get $0)
   )
  )
  (local.set $2
   (i64.extend_i32_u
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
   )
  )
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find
     (i32.load
      (local.get $1)
     )
     (local.get $2)
    )
   )
   (return)
  )
  (local.set $4
   (i32.load offset=20
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/tables/stats/Stat#constructor
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
  )
  (local.set $0
   (i32.load
    (local.get $0)
   )
  )
  (local.set $2
   (call $assembly/tables/stats/Stat#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find
      (i32.load
       (local.get $4)
      )
      (local.get $2)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $7
   (i32.load
    (local.tee $6
     (i32.load
      (local.get $4)
     )
    )
   )
  )
  (local.set $3
   (call $assembly/tables/stats/Stat#getPrimaryValue
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $0)
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/tables/stats/Stat#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $3)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $3)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $6)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $6)
       )
       (local.get $5)
      )
      (call $assembly/tables/stats/Stat#getPrimaryValue
       (local.get $1)
      )
      (call $assembly/tables/stats/Stat#getSecondaryValue)
      (i64.load
       (local.get $0)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $3
     (call $assembly/tables/stats/Stat#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $6)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
    (local.get $6)
    (select
     (i64.const -2)
     (i64.add
      (local.get $3)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $3)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $2)
    (i64.load offset=8
     (local.get $4)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
    (local.get $4)
    (select
     (i64.const -2)
     (i64.add
      (local.get $2)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $2)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/action/Action#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 78)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u8> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (i32.store8
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (i32.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $assembly/actions/2-oracle/OracleSetParam#pack (param $0 i32) (result i32)
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
      (i32.const 13)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/varint/calcPackedVarUint32Length (param $0 i32) (result i32)
  (local $1 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $0
     (i32.shr_u
      (local.get $0)
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
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
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
    (local.get $0)
    (select
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $2)
     (local.tee $1
      (i32.shr_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/action/Action#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/varint/calcPackedVarUint32Length
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
         )
         (i32.shl
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 4)
         )
        )
        (i32.const 16)
       )
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (i32.load offset=12
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=8
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (local.tee $0
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $2)
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/Action#send (param $0 i32)
  (local $1 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/action/Action#pack
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/env/send_inline
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $assembly/actions/2-oracle/OracleActions#sendOracleSet (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 77)
    )
   )
   (local.get $1)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $3)
  )
  (local.set $3
   (local.get $4)
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const -6499669894000803840)
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 79)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (local.get $4)
    (local.get $1)
    (local.get $2)
    (call $assembly/actions/2-oracle/OracleSetParam#pack
     (local.get $3)
    )
   )
  )
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 80)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/tables/oracles/Oracle#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/oracles/OracleCollateral#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/oracles/OracleFunds#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#getEx (param $0 i32) (param $1 i32) (result i32)
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
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/oracles/Oracle#unpack
    (local.tee $0
     (call $assembly/tables/oracles/Oracle#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 0)
      (i32.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#get
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
 )
 (func $assembly/tables/oracles/Oracle#getPrimaryValue (param $0 i32) (result i64)
  (i64.load
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/tables/oracles/Oracle#pack (param $0 i32) (result i32)
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
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=12
        (local.get $0)
       )
      )
      (i32.const 35)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.get $1)
   )
   (i32.const 3600)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $assembly/tables/oracles/Oracle#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.tee $4
        (local.get $1)
       )
      )
      (i32.const 3664)
     )
     (if
      (i32.load8_u offset=8
       (local.get $4)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#get:primary
       (i64.load offset=16
        (local.get $4)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $7
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
             (local.get $4)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#getEx
          (i32.load
           (local.get $4)
          )
          (i32.load offset=4
           (local.get $4)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
      (local.get $4)
      (call $assembly/tables/oracles/Oracle#getPrimaryValue
       (local.get $7)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
      (local.get $4)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 3744)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load offset=12
    (local.tee $2
     (call $assembly/tables/oracles/Oracle#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $8)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (local.get $5)
      )
     )
     (local.set $2
      (call $assembly/tables/stats/Stat#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/tables/stats/Stat#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
    (local.get $0)
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
 (func $assembly/tables/global/Global#getPrimaryValue (result i64)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 7235159537265672192)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $assembly/tables/global/Global#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $assembly/tables/global/Global#getSize
      (local.get $0)
     )
    )
   )
   (i32.load8_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=2
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/global/Global>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.get $1)
   )
   (i32.const 3600)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (call $assembly/tables/global/Global#getPrimaryValue)
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.get $1)
      )
      (i32.const 3664)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#getValue
        (local.get $1)
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
      (local.get $1)
      (call $assembly/tables/global/Global#getPrimaryValue)
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3744)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i32.load offset=12
    (local.tee $2
     (call $assembly/tables/global/Global#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $6)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $7)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $assembly/tables/stats/Stat#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/tables/stats/Stat#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/global/Global>#find
      (i32.load offset=8
       (local.get $0)
      )
      (i64.load
       (local.get $0)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<assembly/tables/global/Global>#update
    (i32.load offset=8
     (local.get $0)
    )
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (block
    (local.set $3
     (i32.const 0)
    )
    (local.set $5
     (i32.load
      (local.tee $0
       (i32.load offset=8
        (local.get $0)
       )
      )
     )
    )
    (local.set $4
     (call $assembly/tables/global/Global#getPrimaryValue)
    )
    (local.set $6
     (i64.load
      (local.get $2)
     )
    )
    (local.set $7
     (i32.load offset=12
      (local.tee $1
       (call $assembly/tables/global/Global#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#constructor
      (local.get $5)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $5)
       )
       (i64.load offset=16
        (local.get $5)
       )
       (local.get $6)
       (local.get $4)
       (i32.load offset=4
        (local.get $1)
       )
       (local.get $7)
      )
      (local.get $4)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $3)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $0)
         )
         (local.get $3)
        )
        (call $assembly/tables/global/Global#getPrimaryValue)
        (call $assembly/tables/stats/Stat#getSecondaryValue)
        (i64.load
         (local.get $2)
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
    (if
     (i64.ge_u
      (local.tee $4
       (call $assembly/tables/global/Global#getPrimaryValue)
      )
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $4)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $4)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $assembly/actions/2-oracle/OracleActions#oracleSet (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#get
    (i32.load offset=12
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
   )
  )
  (local.set $5
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (if
   (local.get $4)
   (block
    (call $~lib/as-chain/system/check
     (i32.ne
      (local.tee $1
       (i32.and
        (local.get $2)
        (i32.const 255)
       )
      )
      (i32.load8_u offset=4
       (local.get $4)
      )
     )
     (i32.const 3504)
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (i32.load offset=8
      (local.get $4)
     )
     (i32.add
      (local.get $3)
      (i32.load
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (call $assembly/tables/oracles/OracleCollateral#set:min_unlock_start_round
     (i32.load offset=8
      (local.get $4)
     )
     (i32.add
      (call $assembly/actions/1-global/GlobalActions#currentRound
       (local.get $0)
      )
      (i32.const 20)
     )
    )
    (if
     (i32.gt_u
      (local.get $1)
      (i32.load8_u offset=4
       (local.get $4)
      )
     )
     (call $assembly/tables/global/Global#set:total_weight
      (local.get $5)
      (i32.add
       (i32.load16_u offset=2
        (local.get $5)
       )
       (i32.and
        (i32.sub
         (local.get $2)
         (i32.load8_u offset=4
          (local.get $4)
         )
        )
        (i32.const 255)
       )
      )
     )
     (call $assembly/tables/global/Global#set:total_weight
      (local.get $5)
      (i32.sub
       (i32.load16_u offset=2
        (local.get $5)
       )
       (i32.and
        (i32.sub
         (i32.load8_u offset=4
          (local.get $4)
         )
         (local.get $2)
        )
        (i32.const 255)
       )
      )
     )
    )
    (call $assembly/tables/oracles/Oracle#set:weight
     (local.get $4)
     (local.get $2)
    )
    (local.set $2
     (i32.load
      (local.get $0)
     )
    )
    (local.set $1
     (i32.load offset=12
      (local.get $0)
     )
    )
    (local.set $6
     (call $assembly/tables/oracles/Oracle#getPrimaryValue
      (local.get $4)
     )
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
      (local.tee $3
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find
        (i32.load
         (local.get $1)
        )
        (local.get $6)
       )
      )
     )
     (i32.const 1424)
    )
    (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#update
     (i32.load
      (local.get $1)
     )
     (local.get $3)
     (local.get $4)
     (local.get $2)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/env/is_account
      (i64.load
       (local.get $1)
      )
     )
     (i32.const 3856)
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $4
      (call $assembly/tables/oracles/OracleCollateral#constructor)
     )
     (local.get $3)
    )
    (call $assembly/tables/oracles/OracleCollateral#set:min_unlock_start_round
     (local.get $4)
     (i32.add
      (call $assembly/actions/1-global/GlobalActions#currentRound
       (local.get $0)
      )
      (i32.const 20)
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $4)
     (i32.const 0)
    )
    (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
     (local.get $4)
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $4)
     (i32.const 0)
    )
    (global.set $~argumentsLength
     (i32.const 3)
    )
    (local.set $1
     (call $assembly/tables/oracles/Oracle#constructor@varargs
      (local.get $1)
      (local.get $2)
      (local.get $4)
     )
    )
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (local.set $4
     (i32.load offset=12
      (local.get $0)
     )
    )
    (local.set $6
     (call $assembly/tables/oracles/Oracle#getPrimaryValue
      (local.get $1)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find
        (i32.load
         (local.get $4)
        )
        (local.get $6)
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $10
     (i32.load
      (local.tee $9
       (i32.load
        (local.get $4)
       )
      )
     )
    )
    (local.set $7
     (call $assembly/tables/oracles/Oracle#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $11
     (i64.load
      (local.get $3)
     )
    )
    (local.set $13
     (i32.load offset=12
      (local.tee $12
       (call $assembly/tables/oracles/Oracle#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#constructor
      (local.get $10)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $10)
       )
       (i64.load offset=16
        (local.get $10)
       )
       (local.get $11)
       (local.get $7)
       (i32.load offset=4
        (local.get $12)
       )
       (local.get $13)
      )
      (local.get $7)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $8)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $9)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $9)
         )
         (local.get $8)
        )
        (call $assembly/tables/oracles/Oracle#getPrimaryValue
         (local.get $1)
        )
        (call $assembly/tables/stats/Stat#getSecondaryValue)
        (i64.load
         (local.get $3)
        )
       )
       (local.set $8
        (i32.add
         (local.get $8)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $7
       (call $assembly/tables/oracles/Oracle#getPrimaryValue
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $9)
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
      (local.get $9)
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
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
      (local.get $4)
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
    (call $assembly/tables/global/Global#set:total_weight
     (local.get $5)
     (i32.add
      (i32.load16_u offset=2
       (local.get $5)
      )
      (i32.and
       (local.get $2)
       (i32.const 255)
      )
     )
    )
    (call $assembly/tables/global/Global#set:num_validators
     (local.get $5)
     (i32.add
      (i32.load8_u
       (local.get $5)
      )
      (i32.const 1)
     )
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#set
   (i32.load offset=24
    (local.get $0)
   )
   (local.get $5)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packObjectArray<assembly/tables/pwrreports/PwrReport> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (i32.load offset=12
    (local.get $1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (local.get $1)
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $0)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (return
    (i32.const 3952)
   )
  )
  (local.set $3
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.tee $1
       (select
        (select
         (i32.add
          (i32.ge_u
           (local.get $0)
           (i32.const 10)
          )
          (i32.const 1)
         )
         (i32.add
          (i32.add
           (i32.ge_u
            (local.get $0)
            (i32.const 10000)
           )
           (i32.const 3)
          )
          (i32.ge_u
           (local.get $0)
           (i32.const 1000)
          )
         )
         (i32.lt_u
          (local.get $0)
          (i32.const 100)
         )
        )
        (select
         (i32.add
          (i32.ge_u
           (local.get $0)
           (i32.const 1000000)
          )
          (i32.const 6)
         )
         (i32.add
          (i32.add
           (i32.ge_u
            (local.get $0)
            (i32.const 1000000000)
           )
           (i32.const 8)
          )
          (i32.ge_u
           (local.get $0)
           (i32.const 100000000)
          )
         )
         (i32.lt_u
          (local.get $0)
          (i32.const 10000000)
         )
        )
        (i32.lt_u
         (local.get $0)
         (i32.const 100000)
        )
       )
      )
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $3)
     (i32.shl
      (local.tee $1
       (i32.sub
        (local.get $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.rem_u
      (local.get $0)
      (i32.const 10)
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (local.tee $0
     (i32.div_u
      (local.get $0)
      (i32.const 10)
     )
    )
   )
  )
  (local.get $2)
 )
 (func $assembly/actions/3-pwrreport/PwrReportActions#getReportId~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call $~lib/string/String.__concat
   (local.get $0)
   (call $~lib/util/number/utoa32
    (i32.and
     (local.get $1)
     (i32.const 255)
    )
   )
  )
 )
 (func $~lib/util/string/strtol<f64> (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (if
   (i32.eqz
    (local.tee $2
     (call $~lib/string/String#get:length
      (local.get $0)
     )
    )
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (local.set $1
   (i32.load16_u
    (local.get $0)
   )
  )
  (loop $while-continue|0
   (if
    (block $__inlined_func$~lib/util/string/isSpace (result i32)
     (drop
      (br_if $__inlined_func$~lib/util/string/isSpace
       (i32.or
        (i32.eq
         (i32.or
          (local.get $1)
          (i32.const 128)
         )
         (i32.const 160)
        )
        (i32.le_u
         (i32.sub
          (local.get $1)
          (i32.const 9)
         )
         (i32.const 4)
        )
       )
       (i32.lt_u
        (local.get $1)
        (i32.const 5760)
       )
      )
     )
     (drop
      (br_if $__inlined_func$~lib/util/string/isSpace
       (i32.const 1)
       (i32.le_u
        (i32.add
         (local.get $1)
         (i32.const -8192)
        )
        (i32.const 10)
       )
      )
     )
     (drop
      (br_if $__inlined_func$~lib/util/string/isSpace
       (i32.const 1)
       (i32.or
        (i32.or
         (i32.or
          (i32.eq
           (local.get $1)
           (i32.const 5760)
          )
          (i32.eq
           (local.get $1)
           (i32.const 8232)
          )
         )
         (i32.or
          (i32.eq
           (local.get $1)
           (i32.const 8233)
          )
          (i32.eq
           (local.get $1)
           (i32.const 8239)
          )
         )
        )
        (i32.or
         (i32.or
          (i32.eq
           (local.get $1)
           (i32.const 8287)
          )
          (i32.eq
           (local.get $1)
           (i32.const 12288)
          )
         )
         (i32.eq
          (local.get $1)
          (i32.const 65279)
         )
        )
       )
      )
     )
     (i32.const 0)
    )
    (block
     (local.set $1
      (i32.load16_u
       (local.tee $0
        (i32.add
         (local.get $0)
         (i32.const 2)
        )
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
  (local.set $3
   (f64.const 1)
  )
  (if
   (select
    (i32.const 1)
    (i32.eq
     (local.get $1)
     (i32.const 43)
    )
    (i32.eq
     (local.get $1)
     (i32.const 45)
    )
   )
   (local.set $1
    (block (result i32)
     (if
      (i32.eqz
       (local.tee $2
        (i32.sub
         (local.get $2)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (local.set $3
      (select
       (f64.const -1)
       (f64.const 1)
       (i32.eq
        (local.get $1)
        (i32.const 45)
       )
      )
     )
     (i32.load16_u
      (local.tee $0
       (i32.add
        (local.get $0)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (if
   (select
    (i32.gt_s
     (local.get $2)
     (i32.const 2)
    )
    (i32.const 0)
    (i32.eq
     (local.get $1)
     (i32.const 48)
    )
   )
   (block $break|1
    (block $case2|1
     (block $case1|1
      (if
       (i32.ne
        (local.tee $1
         (i32.or
          (i32.load16_u offset=2
           (local.get $0)
          )
          (i32.const 32)
         )
        )
        (i32.const 98)
       )
       (block
        (br_if $case1|1
         (i32.eq
          (local.get $1)
          (i32.const 111)
         )
        )
        (br_if $case2|1
         (i32.eq
          (local.get $1)
          (i32.const 120)
         )
        )
        (br $break|1)
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (i32.const 4)
       )
      )
      (local.set $2
       (i32.sub
        (local.get $2)
        (i32.const 2)
       )
      )
      (local.set $5
       (i32.const 2)
      )
      (br $break|1)
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 4)
      )
     )
     (local.set $2
      (i32.sub
       (local.get $2)
       (i32.const 2)
      )
     )
     (local.set $5
      (i32.const 8)
     )
     (br $break|1)
    )
    (local.set $0
     (i32.add
      (local.get $0)
      (i32.const 4)
     )
    )
    (local.set $2
     (i32.sub
      (local.get $2)
      (i32.const 2)
     )
    )
    (local.set $5
     (i32.const 16)
    )
   )
  )
  (local.set $5
   (select
    (local.get $5)
    (i32.const 10)
    (local.get $5)
   )
  )
  (loop $while-continue|2
   (block $while-break|2
    (local.set $2
     (i32.sub
      (local.tee $1
       (local.get $2)
      )
      (i32.const 1)
     )
    )
    (if
     (local.get $1)
     (block
      (if
       (i32.le_u
        (local.get $5)
        (local.tee $1
         (if (result i32)
          (i32.lt_u
           (i32.sub
            (local.tee $1
             (i32.load16_u
              (local.get $0)
             )
            )
            (i32.const 48)
           )
           (i32.const 10)
          )
          (i32.sub
           (local.get $1)
           (i32.const 48)
          )
          (select
           (i32.sub
            (local.get $1)
            (i32.const 55)
           )
           (select
            (i32.sub
             (local.get $1)
             (i32.const 87)
            )
            (local.get $1)
            (i32.le_u
             (i32.sub
              (local.get $1)
              (i32.const 97)
             )
             (i32.const 25)
            )
           )
           (i32.le_u
            (i32.sub
             (local.get $1)
             (i32.const 65)
            )
            (i32.const 25)
           )
          )
         )
        )
       )
       (block
        (if
         (i64.gt_u
          (i64.sub
           (i64.shl
            (i64.reinterpret_f64
             (local.get $4)
            )
            (i64.const 1)
           )
           (i64.const 2)
          )
          (i64.const -9007199254740994)
         )
         (return
          (f64.const nan:0x8000000000000)
         )
        )
        (br $while-break|2)
       )
      )
      (local.set $4
       (f64.add
        (f64.mul
         (local.get $4)
         (f64.convert_i32_s
          (local.get $5)
         )
        )
        (f64.convert_i32_u
         (local.get $1)
        )
       )
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (i32.const 2)
       )
      )
      (br $while-continue|2)
     )
    )
   )
  )
  (f64.mul
   (local.get $3)
   (local.get $4)
  )
 )
 (func $assembly/actions/3-pwrreport/PwrReportActions#getReportId (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $0
   (call $~lib/as-chain/serializer/Encoder#constructor
    (i32.const 8)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 82)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<assembly/tables/pwrreports/PwrReport>
   (local.get $0)
   (local.get $2)
  )
  (local.set $1
   (i32.const 0)
  )
  (local.set $2
   (i32.const 2384)
  )
  (local.set $4
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/serializer/Encoder#getBytes
      (local.get $0)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (select
      (local.get $4)
      (local.tee $3
       (i32.load offset=12
        (local.get $0)
       )
      )
      (i32.gt_s
       (local.get $3)
       (local.get $4)
      )
     )
    )
    (block
     (local.set $3
      (i32.load8_u
       (i32.add
        (local.get $1)
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
     )
     (global.set $~argumentsLength
      (i32.const 4)
     )
     (local.set $2
      (call_indirect (type $i32_i32_i32_i32_=>_i32)
       (local.get $2)
       (local.get $3)
       (local.get $1)
       (local.get $0)
       (i32.load
        (i32.const 4080)
       )
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
  (i64.trunc_f64_u
   (call $~lib/util/string/strtol<f64>
    (local.get $2)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/protocols/Protocol>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 84)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/protocols/Protocol>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/protocols/Protocol>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
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
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<f32> (param $0 i32) (result f32)
  (local $1 f32)
  (local.set $1
   (f32.load
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
   (i32.const 4)
  )
  (local.get $1)
 )
 (func $assembly/tables/protocols/Protocol#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/tables/protocols/Protocol#set:unitPowerMult
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $assembly/tables/protocols/Protocol#unpack
    (local.tee $0
     (call $assembly/tables/protocols/Protocol#constructor
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $assembly/actions/3-pwrreport/PowerAddParams#pack (param $0 i32) (result i32)
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
      (i32.const 10)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $assembly/actions/3-pwrreport/PwrReportActions#sendReport (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#find
      (i32.load
       (local.tee $0
        (i32.load offset=16
         (local.get $0)
        )
       )
      )
      (i64.extend_i32_u
       (i32.load8_u
        (local.get $2)
       )
      )
     )
    )
   )
   (i32.const 4112)
  )
  (if
   (i32.eqz
    (i32.and
     (local.tee $2
      (i32.trunc_f32_u
       (f32.mul
        (f32.load offset=12
         (if (result i32)
          (local.tee $0
           (call $~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#get
            (i32.load
             (i32.load
              (local.get $0)
             )
            )
            (local.get $3)
           )
          )
          (local.get $0)
          (call $assembly/tables/protocols/Protocol#constructor
           (global.get $~lib/as-chain/name/EMPTY_NAME)
          )
         )
        )
        (f32.convert_i32_u
         (i32.load offset=4
          (local.get $2)
         )
        )
       )
      )
     )
     (i32.const 65535)
    )
   )
   (return)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 6)
     (i32.const 85)
    )
   )
   (local.get $1)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const 4403552865335902208)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const -5964829136831119360)
  )
  (drop
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 79)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (i64.const 4403552865335902208)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (i64.const 3617214756542218240)
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $3)
   (i32.const 0)
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $4)
    (local.get $5)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (call $assembly/actions/3-pwrreport/PowerAddParams#pack
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 86)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.or
     (local.get $1)
     (i32.shl
      (i32.and
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
         (local.get $0)
        )
       )
       (i32.const 127)
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.const 7)
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $3)
     (i32.const 128)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/array/Array<~lib/as-chain/name/Name>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 52)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $3
   (i32.add
    (local.get $1)
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
  (local.set $6
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.get $0)
     (local.tee $4
      (i32.load
       (local.tee $5
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $3)
    (local.get $4)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $3)
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
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $2
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $3
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $0)
      (local.get $4)
     )
     (local.set $0
      (local.get $2)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $1)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.shr_u
     (local.tee $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.shr_u
       (i32.const 1073741820)
       (local.get $2)
      )
     )
     (unreachable)
    )
    (local.set $1
     (i32.shl
      (select
       (local.get $1)
       (i32.const 8)
       (i32.gt_u
        (local.get $1)
        (i32.const 8)
       )
      )
      (local.get $2)
     )
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.tee $2
       (call $~lib/rt/stub/__renew
        (local.tee $4
         (i32.load
          (local.get $0)
         )
        )
        (local.tee $1
         (select
          (local.tee $2
           (select
            (local.tee $2
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 1073741820)
            (i32.lt_u
             (local.get $2)
             (i32.const 1073741820)
            )
           )
          )
          (local.get $1)
          (i32.lt_u
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (local.get $3)
     )
     (i32.const 0)
     (i32.sub
      (local.get $1)
      (local.get $3)
     )
    )
    (if
     (i32.ne
      (local.get $2)
      (local.get $4)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/array/Array<~lib/as-chain/name/Name>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/pwrreports/PwrReport#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/name/Name>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (call $~lib/as-chain/name/Name#set:N
      (local.tee $2
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.const 0)
     )
     (call $~lib/array/Array<~lib/as-chain/name/Name>#__set
      (i32.load offset=12
       (local.get $0)
      )
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
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
  (call $assembly/tables/external/config/ConfigTeam#set:owner_future_stake_lock_rounds_required
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/tables/pwrreports/PwrReportRow#set:reported
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/tables/pwrreports/PwrReportRow#set:merged
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#getEx (param $0 i32) (param $1 i32) (result i32)
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
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/pwrreports/PwrReportRow#unpack
    (local.tee $0
     (call $assembly/tables/pwrreports/PwrReportRow#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/array/Array<~lib/as-chain/name/Name>#indexOf (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (select
    (i32.le_s
     (local.tee $3
      (i32.load offset=12
       (local.get $0)
      )
     )
     (i32.const 0)
    )
    (i32.const 1)
    (local.get $3)
   )
   (return
    (i32.const -1)
   )
  )
  (local.set $0
   (i32.load offset=4
    (local.get $0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_s
     (local.get $2)
     (local.get $3)
    )
    (block
     (if
      (i64.eq
       (i64.load
        (i32.load
         (i32.add
          (local.get $0)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (i64.load
        (local.get $1)
       )
      )
      (return
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<~lib/as-chain/name/Name>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/array/ensureCapacity
   (local.get $0)
   (local.tee $2
    (i32.add
     (local.tee $3
      (i32.load offset=12
       (local.get $0)
      )
     )
     (i32.const 1)
    )
   )
   (i32.const 2)
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $3)
     (i32.const 2)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (local.get $2)
 )
 (func $assembly/tables/pwrreports/PwrReportRow#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
    (i32.const 15)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $1)
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
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (local.get $2)
      (i32.const 4)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<assembly/tables/pwrreports/PwrReport>
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=18
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=19
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i64)
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (i32.const 1)
     (i32.const 3)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (i32.const 1)
    )
   )
  )
  (i64.store
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i32.eqz
    (local.get $1)
   )
   (block
    (local.set $2
     (i64.extend_i32_u
      (i32.load16_u offset=2
       (i32.load offset=8
        (local.get $0)
       )
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $0
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (local.get $2)
    )
    (return
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 4416)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.get $1)
   )
   (i32.const 3600)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.get $1)
      )
      (i32.const 3664)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3744)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $assembly/tables/pwrreports/PwrReportRow#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $assembly/tables/pwrreports/PwrReportRow#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/tables/pwrreports/PwrReportRow#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
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
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find
      (i32.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (i32.const 1424)
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/tables/pwrreports/PwrReportRow#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $4)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/tables/pwrreports/PwrReportRow#getSecondaryValue
       (local.get $1)
       (local.get $3)
      )
      (i64.load
       (local.get $2)
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
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
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
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
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
 (func $assembly/actions/3-pwrreport/PwrReportActions#pwrReport (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $assembly/actions/1-global/GlobalActions#updateStats
   (local.get $0)
  )
  (local.set $8
   (call $assembly/actions/3-pwrreport/PwrReportActions#getReportId
    (local.get $0)
    (local.get $3)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find
      (i32.load
       (local.tee $5
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (i32.const 4176)
  )
  (if
   (i32.eqz
    (local.tee $4
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#get
      (i32.load
       (i32.load
        (local.get $5)
       )
      )
      (local.get $4)
     )
    )
   )
   (local.set $4
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (call $assembly/tables/oracles/Oracle#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $5
   (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#getByKey (result i32)
    (drop
     (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#getByKey
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
        (local.tee $7
         (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find
          (local.tee $6
           (i32.load
            (local.tee $9
             (call $assembly/actions/1-global/GlobalActions#pwrReportsT
              (local.get $0)
              (local.get $2)
             )
            )
           )
          )
          (local.get $8)
         )
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#get
     (i32.load
      (local.get $6)
     )
     (local.get $7)
    )
   )
  )
  (local.set $6
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (if
   (local.get $5)
   (block
    (call $~lib/as-chain/system/check
     (i32.lt_s
      (call $~lib/array/Array<~lib/as-chain/name/Name>#indexOf
       (i32.load offset=12
        (local.get $5)
       )
       (local.get $1)
      )
      (i32.const 0)
     )
     (i32.const 4240)
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (i32.load8_u offset=18
       (local.get $5)
      )
     )
     (i32.const 4336)
    )
    (call $assembly/tables/external/config/ConfigTeam#set:owner_future_stake_lock_rounds_required
     (local.get $5)
     (i32.add
      (i32.load16_u offset=16
       (local.get $5)
      )
      (i32.load8_u offset=4
       (local.get $4)
      )
     )
    )
    (drop
     (call $~lib/array/Array<~lib/as-chain/name/Name>#push
      (i32.load offset=12
       (local.get $5)
      )
      (local.get $1)
     )
    )
    (if
     (i32.ge_u
      (i32.load16_u offset=16
       (local.get $5)
      )
      (i32.and
       (call $assembly/actions/1-global/GlobalActions#minWeightThreshold
        (local.get $0)
       )
       (i32.const 65535)
      )
     )
     (block
      (call $assembly/actions/3-pwrreport/PwrReportActions#sendReport
       (local.get $0)
       (local.get $2)
       (local.get $3)
      )
      (call $assembly/tables/pwrreports/PwrReportRow#set:reported
       (local.get $5)
       (i32.const 1)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
       (i32.load offset=4
        (local.get $6)
       )
       (i64.add
        (i64.load offset=16
         (i32.load offset=4
          (local.get $6)
         )
        )
        (i64.const 1)
       )
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
       (i32.load offset=4
        (local.get $6)
       )
       (i64.sub
        (i64.load offset=8
         (i32.load offset=4
          (local.get $6)
         )
        )
        (i64.const 1)
       )
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#update
     (local.get $9)
     (local.get $5)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (local.set $5
     (i32.ge_u
      (i32.load8_u offset=4
       (local.get $4)
      )
      (i32.and
       (call $assembly/actions/1-global/GlobalActions#minWeightThreshold
        (local.get $0)
       )
       (i32.const 65535)
      )
     )
    )
    (drop
     (i32.load offset=4
      (local.tee $7
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 52)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $7)
     (i32.const 0)
     (local.get $1)
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#store
     (local.get $9)
     (call $assembly/tables/pwrreports/PwrReportRow#constructor
      (local.get $8)
      (local.get $3)
      (local.get $7)
      (i32.load8_u offset=4
       (local.get $4)
      )
      (local.get $5)
     )
     (i32.load
      (local.get $0)
     )
    )
    (if
     (local.get $5)
     (block
      (call $assembly/actions/3-pwrreport/PwrReportActions#sendReport
       (local.get $0)
       (local.get $2)
       (local.get $3)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
       (i32.load offset=4
        (local.get $6)
       )
       (i64.add
        (i64.load offset=16
         (i32.load offset=4
          (local.get $6)
         )
        )
        (i64.const 1)
       )
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
      (i32.load offset=4
       (local.get $6)
      )
      (i64.add
       (i64.load offset=8
        (i32.load offset=4
         (local.get $6)
        )
       )
       (i64.const 1)
      )
     )
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#set
   (i32.load offset=24
    (local.get $0)
   )
   (local.get $6)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i64.load
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 3)
    )
   )
  )
 )
 (func $assembly/actions/3-pwrreport/PwrReportActions#mergeReports~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.load offset=4
    (i32.load offset=8
     (local.get $0)
    )
   )
   (i32.load offset=4
    (i32.load offset=8
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/array/Array<assembly/tables/pwrreports/PwrReportRow>#sort (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.le_s
    (local.tee $1
     (i32.load offset=12
      (local.get $0)
     )
    )
    (i32.const 1)
   )
   (return)
  )
  (local.set $0
   (i32.load offset=4
    (local.get $0)
   )
  )
  (if
   (i32.eq
    (local.get $1)
    (i32.const 2)
   )
   (block
    (local.set $1
     (i32.load offset=4
      (local.get $0)
     )
    )
    (local.set $2
     (i32.load
      (local.get $0)
     )
    )
    (global.set $~argumentsLength
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $i32_i32_=>_i32)
       (local.get $1)
       (local.get $2)
       (i32.load
        (i32.const 4896)
       )
      )
      (i32.const 0)
     )
     (block
      (i32.store offset=4
       (local.get $0)
       (local.get $2)
      )
      (i32.store
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (return)
   )
  )
  (local.set $2
   (local.get $0)
  )
  (local.set $3
   (local.get $1)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (local.set $5
      (i32.load
       (i32.add
        (local.get $2)
        (i32.shl
         (local.get $4)
         (i32.const 2)
        )
       )
      )
     )
     (local.set $0
      (i32.sub
       (local.get $4)
       (i32.const 1)
      )
     )
     (loop $while-continue|1
      (if
       (i32.ge_s
        (local.get $0)
        (i32.const 0)
       )
       (block $while-break|1
        (local.set $6
         (i32.load
          (i32.add
           (local.get $2)
           (i32.shl
            (local.get $0)
            (i32.const 2)
           )
          )
         )
        )
        (global.set $~argumentsLength
         (i32.const 2)
        )
        (br_if $while-break|1
         (i32.ge_s
          (call_indirect (type $i32_i32_=>_i32)
           (local.get $5)
           (local.get $6)
           (i32.load
            (i32.const 4896)
           )
          )
          (i32.const 0)
         )
        )
        (local.set $0
         (i32.sub
          (local.tee $1
           (local.get $0)
          )
          (i32.const 1)
         )
        )
        (i32.store
         (i32.add
          (local.get $2)
          (i32.shl
           (i32.add
            (local.get $1)
            (i32.const 1)
           )
           (i32.const 2)
          )
         )
         (local.get $6)
        )
        (br $while-continue|1)
       )
      )
     )
     (i32.store
      (i32.add
       (local.get $2)
       (i32.shl
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
        (i32.const 2)
       )
      )
      (local.get $5)
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $assembly/actions/3-pwrreport/PwrReportActions#mergeReports~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (local.get $0)
   (i32.load16_u offset=16
    (local.get $1)
   )
  )
 )
 (func $~lib/array/Array<~lib/as-chain/name/Name>#splice (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $4
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (select
          (i32.const 1)
          (local.tee $2
           (i32.sub
            (local.tee $3
             (i32.load offset=12
              (local.get $0)
             )
            )
            (local.tee $1
             (if (result i32)
              (i32.lt_s
               (local.get $1)
               (i32.const 0)
              )
              (select
               (local.tee $1
                (i32.add
                 (local.get $1)
                 (local.get $3)
                )
               )
               (i32.const 0)
               (i32.gt_s
                (local.get $1)
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
           )
          )
          (i32.gt_s
           (local.get $2)
           (i32.const 1)
          )
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 2)
      (i32.const 52)
      (i32.const 0)
     )
    )
   )
   (local.tee $6
    (i32.add
     (local.tee $5
      (i32.load offset=4
       (local.get $0)
      )
     )
     (i32.shl
      (local.get $1)
      (i32.const 2)
     )
    )
   )
   (i32.shl
    (local.get $2)
    (i32.const 2)
   )
  )
  (if
   (i32.ne
    (local.get $3)
    (local.tee $1
     (i32.add
      (local.get $1)
      (local.get $2)
     )
    )
   )
   (call $~lib/memory/memory.copy
    (local.get $6)
    (i32.add
     (local.get $5)
     (i32.shl
      (local.get $1)
      (i32.const 2)
     )
    )
    (i32.shl
     (i32.sub
      (local.get $3)
      (local.get $1)
     )
     (i32.const 2)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.sub
    (local.get $3)
    (local.get $2)
   )
  )
  (local.get $4)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 90)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/tables/oracleStats/OracleStat#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $assembly/tables/oracleStats/OracleStat#set:weight
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/oracleStats/Reports#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#getEx (param $0 i32) (param $1 i32) (result i32)
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
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/oracleStats/OracleStat#unpack
    (local.tee $0
     (call $assembly/tables/oracleStats/OracleStat#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $assembly/tables/oracleStats/OracleStat#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (i32.const 11)
     )
    )
   )
   (i32.load16_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=2
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.get $1)
   )
   (i32.const 3600)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $assembly/tables/stats/Stat#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.tee $4
        (local.get $1)
       )
      )
      (i32.const 3664)
     )
     (if
      (i32.load8_u offset=8
       (local.get $4)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#get:primary
       (i64.load offset=16
        (local.get $4)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $7
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
             (local.get $4)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#getEx
          (i32.load
           (local.get $4)
          )
          (i32.load offset=4
           (local.get $4)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
      (local.get $4)
      (call $assembly/tables/stats/Stat#getPrimaryValue
       (local.get $7)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
      (local.get $4)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 3744)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load offset=12
    (local.tee $2
     (call $assembly/tables/oracleStats/OracleStat#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $8)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (local.get $5)
      )
     )
     (local.set $2
      (call $assembly/tables/stats/Stat#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/tables/stats/Stat#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
    (local.get $0)
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
 (func $assembly/actions/3-pwrreport/PwrReportActions#mergeReports (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 f64)
  (local $15 i64)
  (call $assembly/actions/1-global/GlobalActions#updateStats
   (local.get $0)
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 87)
    (i32.const 4464)
   )
  )
  (local.set $9
   (i32.const -1)
  )
  (local.set $7
   (i32.const -1)
  )
  (local.set $11
   (call $assembly/actions/1-global/GlobalActions#pwrReportsT
    (local.get $0)
    (local.get $1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (local.set $8
      (call $~lib/array/Array<u64>#__get
       (local.get $2)
       (local.get $5)
      )
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.tee $3
        (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find
         (i32.load
          (local.get $11)
         )
         (local.get $8)
        )
       )
      )
      (i32.const 4496)
     )
     (if
      (i32.eqz
       (local.tee $3
        (call $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#get
         (i32.load
          (i32.load
           (local.get $11)
          )
         )
         (local.get $3)
        )
       )
      )
      (local.set $3
       (block (result i32)
        (global.set $~argumentsLength
         (i32.const 0)
        )
        (call $assembly/tables/pwrreports/PwrReportRow#constructor@varargs)
       )
      )
     )
     (if
      (i32.lt_s
       (i32.shr_s
        (i32.shl
         (local.get $9)
         (i32.const 16)
        )
        (i32.const 16)
       )
       (i32.const 0)
      )
      (local.set $9
       (i32.load8_u
        (i32.load offset=8
         (local.get $3)
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eq
        (i32.load8_u
         (i32.load offset=8
          (local.get $3)
         )
        )
        (i32.shr_s
         (i32.shl
          (local.get $9)
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
       (i32.const 4560)
      )
     )
     (if
      (i32.lt_s
       (local.get $7)
       (i32.const 0)
      )
      (local.set $7
       (i32.load16_u offset=2
        (i32.load offset=8
         (local.get $3)
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eq
        (local.get $7)
        (i32.load16_u offset=2
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (i32.const 4640)
      )
     )
     (call $~lib/as-chain/system/check
      (i32.eqz
       (i32.load8_u offset=18
        (local.get $3)
       )
      )
      (i32.const 4704)
     )
     (call $~lib/as-chain/system/check
      (i32.eqz
       (i32.load8_u offset=19
        (local.get $3)
       )
      )
      (i32.const 4800)
     )
     (drop
      (call $~lib/array/Array<~lib/as-chain/name/Name>#push
       (local.get $6)
       (local.get $3)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/array/Array<assembly/tables/pwrreports/PwrReportRow>#sort
   (local.get $6)
  )
  (local.set $3
   (i32.trunc_f64_s
    (f64.floor
     (f64.convert_i32_s
      (i32.div_s
       (i32.load offset=12
        (local.get $6)
       )
       (i32.const 2)
      )
     )
    )
   )
  )
  (local.set $12
   (i32.trunc_f64_u
    (f64.add
     (f64.convert_i32_u
      (local.tee $2
       (if (result i32)
        (i32.and
         (i32.load offset=12
          (local.get $6)
         )
         (i32.const 1)
        )
        (i32.load offset=4
         (i32.load offset=8
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (local.get $6)
           (local.get $3)
          )
         )
        )
        (i32.shr_u
         (i32.add
          (i32.load offset=4
           (i32.load offset=8
            (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
             (local.get $6)
             (i32.sub
              (local.get $3)
              (i32.const 1)
             )
            )
           )
          )
          (i32.load offset=4
           (i32.load offset=8
            (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
             (local.get $6)
             (local.get $3)
            )
           )
          )
         )
         (i32.const 1)
        )
       )
      )
     )
     (local.tee $14
      (f64.max
       (f64.add
        (f64.mul
         (f64.convert_i32_u
          (local.get $2)
         )
         (f64.const 0.25)
        )
        (f64.const 1)
       )
       (f64.convert_i32_u
        (local.get $2)
       )
      )
     )
    )
   )
  )
  (local.set $10
   (i32.trunc_f64_u
    (f64.min
     (f64.sub
      (f64.promote_f32
       (f32.convert_i32_u
        (local.get $2)
       )
      )
      (local.get $14)
     )
     (f64.const 1)
    )
   )
  )
  (loop $for-loop|2
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (local.get $6)
     )
    )
    (block
     (call $~lib/as-chain/system/check
      (i32.ge_u
       (local.get $12)
       (i32.load offset=4
        (i32.load offset=8
         (local.tee $5
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (local.get $6)
           (local.get $4)
          )
         )
        )
       )
      )
      (call $~lib/string/String.__concat
       (call $~lib/string/String.__concat
        (call $~lib/string/String.__concat
         (i32.const 4928)
         (call $~lib/util/number/utoa32
          (i32.load offset=4
           (i32.load offset=8
            (local.get $5)
           )
          )
         )
        )
        (i32.const 4976)
       )
       (call $~lib/util/number/utoa32
        (local.get $12)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.le_u
       (local.get $10)
       (i32.load offset=4
        (i32.load offset=8
         (local.get $5)
        )
       )
      )
      (call $~lib/string/String.__concat
       (call $~lib/string/String.__concat
        (call $~lib/string/String.__concat
         (i32.const 4928)
         (call $~lib/util/number/utoa32
          (i32.load offset=4
           (i32.load offset=8
            (local.get $5)
           )
          )
         )
        )
        (i32.const 5040)
       )
       (call $~lib/util/number/utoa32
        (local.get $10)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|2)
    )
   )
  )
  (local.set $4
   (i32.const 0)
  )
  (local.set $5
   (i32.const 0)
  )
  (local.set $12
   (i32.load offset=12
    (local.get $6)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (select
      (local.get $12)
      (local.tee $10
       (i32.load offset=12
        (local.get $6)
       )
      )
      (i32.gt_s
       (local.get $10)
       (local.get $12)
      )
     )
    )
    (block
     (local.set $10
      (i32.load
       (i32.add
        (i32.load offset=4
         (local.get $6)
        )
        (i32.shl
         (local.get $4)
         (i32.const 2)
        )
       )
      )
     )
     (global.set $~argumentsLength
      (i32.const 4)
     )
     (local.set $5
      (call_indirect (type $i32_i32_i32_i32_=>_i32)
       (local.get $5)
       (local.get $10)
       (local.get $4)
       (local.get $6)
       (i32.load
        (i32.const 5120)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (i32.and
     (local.get $5)
     (i32.const 65535)
    )
    (i32.and
     (call $assembly/actions/1-global/GlobalActions#minWeightThreshold
      (local.get $0)
     )
     (i32.const 65535)
    )
   )
   (i32.const 5152)
  )
  (local.set $4
   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
    (local.get $6)
    (local.get $3)
   )
  )
  (if
   (i32.and
    (i32.load offset=12
     (local.get $6)
    )
    (i32.const 1)
   )
   (block
    (call $assembly/tables/pwrreports/PwrReportRow#set:reported
     (local.get $4)
     (i32.const 1)
    )
    (local.set $3
     (i32.load offset=12
      (local.get $4)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $2
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $2)
     (i64.const -7877141939686764032)
    )
    (drop
     (call $~lib/array/Array<~lib/as-chain/name/Name>#push
      (local.get $3)
      (local.get $2)
     )
    )
   )
   (block
    (call $assembly/tables/global/Global#set:num_validators
     (local.tee $4
      (call $assembly/tables/pwrreports/PwrReport#constructor)
     )
     (local.get $9)
    )
    (call $assembly/tables/global/Global#set:total_weight
     (local.get $4)
     (local.get $7)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $4)
     (local.get $2)
    )
    (local.set $8
     (call $assembly/actions/3-pwrreport/PwrReportActions#getReportId
      (local.get $0)
      (local.get $4)
     )
    )
    (drop
     (i32.load offset=4
      (local.tee $2
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 52)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $3)
     (i64.const -7877141939686764032)
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $2)
     (i32.const 0)
     (local.get $3)
    )
    (local.set $4
     (call $assembly/tables/pwrreports/PwrReportRow#constructor
      (local.get $8)
      (local.get $4)
      (local.get $2)
      (local.get $5)
      (i32.const 1)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#store
     (call $assembly/actions/1-global/GlobalActions#pwrReportsT
      (local.get $0)
      (local.get $1)
     )
     (local.get $4)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (call $assembly/actions/3-pwrreport/PwrReportActions#sendReport
   (local.get $0)
   (local.get $1)
   (i32.load offset=8
    (local.get $4)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 52)
    (i32.const 5264)
   )
  )
  (local.set $4
   (i32.const 0)
  )
  (loop $for-loop|3
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (local.get $6)
     )
    )
    (block
     (call $assembly/tables/pwrreports/PwrReportRow#set:merged
      (local.tee $2
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $6)
        (local.get $4)
       )
      )
      (i32.const 1)
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#update
      (local.get $11)
      (local.get $2)
      (i32.load
       (local.get $0)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (loop $for-loop|4
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=12
          (local.get $2)
         )
        )
       )
       (block
        (drop
         (if (result i32)
          (i32.eq
           (local.tee $7
            (call $~lib/array/Array<~lib/as-chain/name/Name>#indexOf
             (local.get $9)
             (local.tee $3
              (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
               (i32.load offset=12
                (local.get $2)
               )
               (local.get $1)
              )
             )
            )
           )
           (i32.const -1)
          )
          (call $~lib/array/Array<~lib/as-chain/name/Name>#push
           (local.get $9)
           (local.get $3)
          )
          (call $~lib/array/Array<~lib/as-chain/name/Name>#splice
           (local.get $9)
           (local.get $7)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|4)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|3)
    )
   )
  )
  (local.set $4
   (i32.const 0)
  )
  (loop $for-loop|5
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (local.get $9)
     )
    )
    (block
     (local.set $3
      (call $assembly/actions/1-global/GlobalActions#oracleStatsT
       (local.get $0)
       (local.tee $7
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (local.get $9)
         (local.get $4)
        )
       )
      )
     )
     (local.set $8
      (i64.extend_i32_u
       (call $assembly/actions/1-global/GlobalActions#currentRound
        (local.get $0)
       )
      )
     )
     (if
      (local.tee $1
       (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#getByKey (result i32)
        (drop
         (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#getByKey
          (i32.const 0)
          (i32.eqz
           (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
            (local.tee $2
             (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#find
              (local.tee $5
               (i32.load
                (local.get $3)
               )
              )
              (local.get $8)
             )
            )
           )
          )
         )
        )
        (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#get (result i32)
         (local.set $5
          (i32.load
           (local.get $5)
          )
         )
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#get
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
             (local.get $2)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#getEx
          (local.get $5)
          (i32.load offset=4
           (local.get $2)
          )
         )
        )
       )
      )
      (block
       (call $~lib/rt/common/BLOCK#set:mmInfo
        (i32.load offset=4
         (local.get $1)
        )
        (i32.add
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.const 1)
        )
       )
       (call $~lib/rt/common/OBJECT#set:gcInfo
        (i32.load offset=4
         (local.get $1)
        )
        (i32.sub
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.const 1)
        )
       )
       (local.set $2
        (i32.load
         (local.get $0)
        )
       )
       (local.set $8
        (call $assembly/tables/stats/Stat#getPrimaryValue
         (local.get $1)
        )
       )
       (call $~lib/as-chain/system/check
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
         (local.tee $7
          (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#find
           (i32.load
            (local.get $3)
           )
           (local.get $8)
          )
         )
        )
        (i32.const 1424)
       )
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#update
        (i32.load
         (local.get $3)
        )
        (local.get $7)
        (local.get $1)
        (local.get $2)
       )
      )
      (if
       (local.tee $1
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#get
         (i32.load offset=12
          (local.get $0)
         )
         (i64.load
          (local.get $7)
         )
        )
       )
       (block
        (local.set $2
         (call $assembly/actions/1-global/GlobalActions#currentRound
          (local.get $0)
         )
        )
        (local.set $7
         (i32.load8_u offset=4
          (local.get $1)
         )
        )
        (call $~lib/rt/common/BLOCK#set:mmInfo
         (local.tee $1
          (call $assembly/tables/oracleStats/Reports#constructor)
         )
         (i32.const 1)
        )
        (call $~lib/rt/common/OBJECT#set:gcInfo
         (local.get $1)
         (i32.const 0)
        )
        (local.set $1
         (call $assembly/tables/oracleStats/OracleStat#constructor
          (local.get $2)
          (local.get $7)
          (local.get $1)
         )
        )
        (local.set $2
         (i32.load
          (local.get $0)
         )
        )
        (local.set $8
         (call $assembly/tables/stats/Stat#getPrimaryValue
          (local.get $1)
         )
        )
        (call $~lib/as-chain/system/check
         (i32.eqz
          (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
           (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#find
            (i32.load
             (local.get $3)
            )
            (local.get $8)
           )
          )
         )
         (i32.const 1200)
        )
        (local.set $7
         (i32.const 0)
        )
        (local.set $11
         (i32.load
          (local.tee $5
           (i32.load
            (local.get $3)
           )
          )
         )
        )
        (local.set $13
         (call $assembly/tables/stats/Stat#getPrimaryValue
          (local.get $1)
         )
        )
        (local.set $15
         (i64.load
          (local.get $2)
         )
        )
        (local.set $10
         (i32.load offset=12
          (local.tee $12
           (call $assembly/tables/oracleStats/OracleStat#pack
            (local.get $1)
           )
          )
         )
        )
        (drop
         (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#constructor
          (local.get $11)
          (call $~lib/as-chain/env/db_store_i64
           (i64.load offset=8
            (local.get $11)
           )
           (i64.load offset=16
            (local.get $11)
           )
           (local.get $15)
           (local.get $13)
           (i32.load offset=4
            (local.get $12)
           )
           (local.get $10)
          )
          (local.get $13)
          (i32.const 1)
         )
        )
        (loop $for-loop|00
         (if
          (i32.lt_s
           (local.get $7)
           (i32.load offset=12
            (i32.load offset=4
             (local.get $5)
            )
           )
          )
          (block
           (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
            (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
             (i32.load offset=4
              (local.get $5)
             )
             (local.get $7)
            )
            (call $assembly/tables/stats/Stat#getPrimaryValue
             (local.get $1)
            )
            (call $assembly/tables/stats/Stat#getSecondaryValue)
            (i64.load
             (local.get $2)
            )
           )
           (local.set $7
            (i32.add
             (local.get $7)
             (i32.const 1)
            )
           )
           (br $for-loop|00)
          )
         )
        )
        (if
         (i64.ge_u
          (local.tee $13
           (call $assembly/tables/stats/Stat#getPrimaryValue
            (local.get $1)
           )
          )
          (i64.load offset=8
           (local.get $5)
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
          (local.get $5)
          (select
           (i64.const -2)
           (i64.add
            (local.get $13)
            (i64.const 1)
           )
           (i64.ge_u
            (local.get $13)
            (i64.const -2)
           )
          )
         )
        )
        (if
         (i64.ge_u
          (local.get $8)
          (i64.load offset=8
           (local.get $3)
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
          (local.get $3)
          (select
           (i64.const -2)
           (i64.add
            (local.get $8)
            (i64.const 1)
           )
           (i64.ge_u
            (local.get $8)
            (i64.const -2)
           )
          )
         )
        )
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|5)
    )
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (i32.load offset=4
    (local.tee $1
     (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
   )
   (i64.add
    (i64.load offset=16
     (i32.load offset=4
      (local.get $1)
     )
    )
    (i64.const 1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (i32.load offset=4
    (local.get $1)
   )
   (i64.add
    (i64.load
     (i32.load offset=4
      (local.get $1)
     )
    )
    (i64.extend_i32_s
     (i32.load offset=12
      (local.get $6)
     )
    )
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (i32.load offset=4
    (local.get $1)
   )
   (i64.sub
    (i64.load offset=8
     (i32.load offset=4
      (local.get $1)
     )
    )
    (i64.extend_i32_s
     (i32.load offset=12
      (local.get $6)
     )
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#set
   (i32.load offset=24
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/tables/protocols/Protocol#getSize (param $0 i32) (result i32)
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (i32.const 20)
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<f32> (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (f32.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $assembly/tables/protocols/Protocol#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $assembly/tables/protocols/Protocol#getSize
      (local.get $0)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
   (local.get $1)
   (f32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.get $1)
   )
   (i32.const 3600)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/protocols/Protocol>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.get $1)
      )
      (i32.const 3664)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/protocols/Protocol>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/protocols/Protocol>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/protocols/Protocol>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3744)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.tee $2
     (call $assembly/tables/protocols/Protocol#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $6)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $assembly/tables/stats/Stat#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/tables/stats/Stat#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/actions/4-protocol/ProtoActions#protoSet (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (if
   (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#getByKey (result i32)
    (drop
     (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#getByKey
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
        (local.tee $3
         (call $~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#find
          (local.tee $2
           (i32.load
            (i32.load offset=16
             (local.get $0)
            )
           )
          )
          (i64.load
           (local.get $1)
          )
         )
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#get
     (i32.load
      (local.get $2)
     )
     (local.get $3)
    )
   )
   (block
    (local.set $5
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
      (local.tee $2
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#find
        (i32.load
         (local.tee $0
          (i32.load offset=16
           (local.get $0)
          )
         )
        )
        (i64.load
         (local.get $1)
        )
       )
      )
     )
     (i32.const 1424)
    )
    (call $~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#update
     (i32.load
      (local.get $0)
     )
     (local.get $2)
     (local.get $1)
     (local.get $5)
    )
   )
   (block
    (local.set $5
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#find
        (i32.load
         (local.tee $3
          (i32.load offset=16
           (local.get $0)
          )
         )
        )
        (local.tee $6
         (i64.load
          (local.get $1)
         )
        )
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $0
     (i32.const 0)
    )
    (local.set $7
     (i32.load
      (local.tee $2
       (i32.load
        (local.get $3)
       )
      )
     )
    )
    (local.set $4
     (i64.load
      (local.get $1)
     )
    )
    (local.set $8
     (i64.load
      (local.get $5)
     )
    )
    (local.set $10
     (i32.load offset=12
      (local.tee $9
       (call $assembly/tables/protocols/Protocol#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/protocols/Protocol>#constructor
      (local.get $7)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $7)
       )
       (i64.load offset=16
        (local.get $7)
       )
       (local.get $8)
       (local.get $4)
       (i32.load offset=4
        (local.get $9)
       )
       (local.get $10)
      )
      (local.get $4)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $0)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $2)
         )
         (local.get $0)
        )
        (i64.load
         (local.get $1)
        )
        (call $assembly/tables/stats/Stat#getSecondaryValue)
        (i64.load
         (local.get $5)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $4
       (i64.load
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $2)
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
      (local.get $2)
      (select
       (i64.const -2)
       (i64.add
        (local.get $4)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $4)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $6)
      (i64.load offset=8
       (local.get $3)
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
      (local.get $3)
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
  )
 )
 (func $~lib/as-chain/action/readActionData (result i32)
  (local $0 i32)
  (local $1 i32)
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.tee $0
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 93)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/system/check
    (i32.le_s
     (call $~lib/string/String#get:length
      (i32.const 2384)
     )
     (i32.const 7)
    )
    (i32.const 5296)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const 0)
   )
   (loop $for-loop|0
    (if
     (i32.gt_s
      (call $~lib/string/String#get:length
       (i32.const 2384)
      )
      (local.get $1)
     )
     (block
      (call $~lib/as-chain/system/check
       (select
        (i64.le_u
         (local.tee $2
          (i64.extend_i32_s
           (call $~lib/string/String#charCodeAt
            (i32.const 2384)
            (i32.sub
             (i32.sub
              (call $~lib/string/String#get:length
               (i32.const 2384)
              )
              (i32.const 1)
             )
             (local.get $1)
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
       (i32.const 5360)
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.get $0)
       (i64.or
        (local.get $2)
        (i64.load
         (local.get $0)
        )
       )
      )
      (call $~lib/as-chain/name/Name#set:N
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
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.load
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 92)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
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
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $2
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
       (local.get $2)
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
          (local.get $2)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $1)
         (i32.or
          (local.get $4)
          (i32.shl
           (i32.and
            (local.get $2)
            (i32.const 31)
           )
           (i32.const 6)
          )
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
            (local.get $2)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $2
           (i32.or
            (local.get $6)
            (i32.or
             (i32.shl
              (i32.and
               (local.get $2)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $2
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
                 (local.get $2)
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
           (local.get $2)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $1)
           (local.get $2)
          )
          (block
           (i32.store
            (local.get $1)
            (i32.or
             (i32.or
              (i32.shr_u
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 65536)
                )
               )
               (i32.const 10)
              )
              (i32.const 55296)
             )
             (i32.shl
              (i32.or
               (i32.and
                (local.get $2)
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $5)
   (i32.sub
    (local.get $1)
    (local.get $5)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $0)
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
     (local.get $1)
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
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.tee $0
    (i32.load
     (local.get $2)
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $assembly/actions/5-deposit/TokenTransfer#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/asset/Asset#isAmountWithinRange (param $0 i32) (result i32)
  (if (result i32)
   (i64.ge_s
    (i64.load
     (local.get $0)
    )
    (i64.const -4611686018427387903)
   )
   (i64.le_s
    (i64.load
     (local.get $0)
    )
    (i64.const 4611686018427387903)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $3
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
       (local.get $3)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $2)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $2)
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
              (local.get $3)
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
         (local.tee $3
          (i64.shr_u
           (local.get $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $1)
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
          (local.tee $3
           (i64.shr_u
            (local.get $3)
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
  (if (result i32)
   (call $~lib/as-chain/asset/Asset#isAmountWithinRange
    (local.get $0)
   )
   (call $~lib/as-chain/asset/Symbol#isValid
    (i32.load offset=8
     (local.get $0)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (local.set $3
    (i32.sub
     (local.tee $0
      (local.get $3)
     )
     (i32.const 1)
    )
   )
   (if
    (local.get $0)
    (block
     (if
      (i32.ne
       (local.tee $0
        (i32.load16_u
         (local.get $1)
        )
       )
       (local.tee $4
        (i32.load16_u
         (local.get $2)
        )
       )
      )
      (return
       (i32.sub
        (local.get $0)
        (local.get $4)
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
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
  (i32.const 0)
 )
 (func $~lib/string/String#split (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local.set $6
   (call $~lib/string/String#get:length
    (local.get $0)
   )
  )
  (block $folding-inner0
   (if
    (local.tee $8
     (call $~lib/string/String#get:length
      (i32.const 5616)
     )
    )
    (if
     (i32.eqz
      (local.get $6)
     )
     (block
      (i32.store
       (i32.load offset=4
        (local.tee $0
         (call $~lib/rt/__newArray
          (i32.const 1)
          (i32.const 2)
          (i32.const 43)
          (i32.const 0)
         )
        )
       )
       (i32.const 2384)
      )
      (return
       (local.get $0)
      )
     )
    )
    (block
     (br_if $folding-inner0
      (i32.eqz
       (local.get $6)
      )
     )
     (local.set $3
      (i32.load offset=4
       (local.tee $7
        (call $~lib/rt/__newArray
         (local.tee $2
          (select
           (local.get $6)
           (i32.const 2147483647)
           (i32.ne
            (local.get $6)
            (i32.const 2147483647)
           )
          )
         )
         (i32.const 2)
         (i32.const 43)
         (i32.const 0)
        )
       )
      )
     )
     (loop $for-loop|0
      (if
       (i32.gt_s
        (local.get $2)
        (local.get $4)
       )
       (block
        (i32.store16
         (local.tee $1
          (call $~lib/rt/stub/__new
           (i32.const 2)
           (i32.const 1)
          )
         )
         (i32.load16_u
          (i32.add
           (local.get $0)
           (i32.shl
            (local.get $4)
            (i32.const 1)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.shl
           (local.get $4)
           (i32.const 2)
          )
         )
         (local.get $1)
        )
        (local.set $4
         (i32.add
          (local.get $4)
          (i32.const 1)
         )
        )
        (br $for-loop|0)
       )
      )
     )
     (return
      (local.get $7)
     )
    )
   )
   (local.set $5
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 43)
     (i32.const 0)
    )
   )
   (loop $while-continue|1
    (block $__inlined_func$~lib/string/String#indexOf
     (if
      (i32.eqz
       (local.tee $4
        (call $~lib/string/String#get:length
         (i32.const 5616)
        )
       )
      )
      (block
       (local.set $1
        (i32.const 0)
       )
       (br $__inlined_func$~lib/string/String#indexOf)
      )
     )
     (if
      (i32.eqz
       (local.tee $2
        (call $~lib/string/String#get:length
         (local.get $0)
        )
       )
      )
      (block
       (local.set $1
        (i32.const -1)
       )
       (br $__inlined_func$~lib/string/String#indexOf)
      )
     )
     (local.set $1
      (select
       (local.tee $1
        (select
         (local.get $3)
         (i32.const 0)
         (i32.gt_s
          (local.get $3)
          (i32.const 0)
         )
        )
       )
       (local.get $2)
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (local.set $2
      (i32.sub
       (local.get $2)
       (local.get $4)
      )
     )
     (loop $for-loop|00
      (if
       (i32.le_s
        (local.get $1)
        (local.get $2)
       )
       (block
        (br_if $__inlined_func$~lib/string/String#indexOf
         (i32.eqz
          (call $~lib/util/string/compareImpl
           (local.get $0)
           (local.get $1)
           (i32.const 5616)
           (local.get $4)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|00)
       )
      )
     )
     (local.set $1
      (i32.const -1)
     )
    )
    (if
     (i32.xor
      (local.get $1)
      (i32.const -1)
     )
     (block
      (if
       (i32.gt_s
        (local.tee $2
         (i32.sub
          (local.get $1)
          (local.get $3)
         )
        )
        (i32.const 0)
       )
       (block
        (call $~lib/memory/memory.copy
         (local.tee $2
          (call $~lib/rt/stub/__new
           (local.tee $4
            (i32.shl
             (local.get $2)
             (i32.const 1)
            )
           )
           (i32.const 1)
          )
         )
         (i32.add
          (local.get $0)
          (i32.shl
           (local.get $3)
           (i32.const 1)
          )
         )
         (local.get $4)
        )
        (drop
         (call $~lib/array/Array<~lib/as-chain/name/Name>#push
          (local.get $5)
          (local.get $2)
         )
        )
       )
       (drop
        (call $~lib/array/Array<~lib/as-chain/name/Name>#push
         (local.get $5)
         (i32.const 2384)
        )
       )
      )
      (if
       (i32.eq
        (local.tee $7
         (i32.add
          (local.get $7)
          (i32.const 1)
         )
        )
        (i32.const 2147483647)
       )
       (return
        (local.get $5)
       )
      )
      (local.set $3
       (i32.add
        (local.get $1)
        (local.get $8)
       )
      )
      (br $while-continue|1)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/name/Name>#push
       (local.get $5)
       (local.get $0)
      )
     )
     (return
      (local.get $5)
     )
    )
   )
   (if
    (i32.gt_s
     (local.tee $1
      (i32.sub
       (local.get $6)
       (local.get $3)
      )
     )
     (i32.const 0)
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $1
       (call $~lib/rt/stub/__new
        (local.tee $7
         (i32.shl
          (local.get $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.add
       (local.get $0)
       (i32.shl
        (local.get $3)
        (i32.const 1)
       )
      )
      (local.get $7)
     )
     (drop
      (call $~lib/array/Array<~lib/as-chain/name/Name>#push
       (local.get $5)
       (local.get $1)
      )
     )
    )
    (drop
     (call $~lib/array/Array<~lib/as-chain/name/Name>#push
      (local.get $5)
      (i32.const 2384)
     )
    )
   )
   (return
    (local.get $5)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 43)
   (i32.const 0)
  )
 )
 (func $assembly/actions/5-deposit/DepositActions#ondeposit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $1
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const -3665743725357547520)
  )
  (if
   (i64.eq
    (i64.load
     (local.get $1)
    )
    (i64.load
     (local.get $2)
    )
   )
   (block
    (local.set $2
     (call $~lib/as-chain/action/readActionData)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $4
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $4)
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $5
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $5)
     (i64.const 0)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $3
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 91)
      )
     )
     (local.get $4)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $1)
     (local.get $5)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $1)
     (local.get $3)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $1)
     (i32.const 2384)
    )
    (drop
     (call $assembly/actions/5-deposit/TokenTransfer#unpack
      (local.get $1)
      (local.get $2)
     )
    )
    (if
     (i64.eq
      (i64.load
       (i32.load
        (local.get $1)
       )
      )
      (i64.load
       (i32.load
        (local.get $0)
       )
      )
     )
     (return)
    )
    (local.set $2
     (i32.load
      (local.get $1)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $3)
     (i64.const -4157661379333832704)
    )
    (if
     (i64.eq
      (i64.load
       (local.get $2)
      )
      (i64.load
       (local.get $3)
      )
     )
     (return)
    )
    (local.set $2
     (i32.load
      (local.get $1)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $3)
     (i64.const -7807112968112963584)
    )
    (if
     (i64.eq
      (i64.load
       (local.get $2)
      )
      (i64.load
       (local.get $3)
      )
     )
     (return)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=4
        (local.get $1)
       )
      )
      (i64.load
       (i32.load
        (local.get $0)
       )
      )
     )
     (i32.const 5424)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (i32.load offset=8
         (local.get $1)
        )
       )
      )
      (i64.const 293287707140)
     )
     (i32.const 5488)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/asset/Asset#isValid
      (i32.load offset=8
       (local.get $1)
      )
     )
     (i32.const 5552)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/asset/Asset#isAmountWithinRange
      (i32.load offset=8
       (local.get $1)
      )
     )
     (i32.const 5552)
    )
    (if
     (block $__inlined_func$~lib/string/String.__eq (result i32)
      (drop
       (br_if $__inlined_func$~lib/string/String.__eq
        (i32.const 1)
        (i32.eq
         (local.tee $3
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (call $~lib/string/String#split
            (i32.load offset=12
             (local.get $1)
            )
           )
           (i32.const 0)
          )
         )
         (i32.const 5648)
        )
       )
      )
      (drop
       (br_if $__inlined_func$~lib/string/String.__eq
        (i32.const 0)
        (i32.eqz
         (local.get $3)
        )
       )
      )
      (drop
       (br_if $__inlined_func$~lib/string/String.__eq
        (i32.const 0)
        (i32.ne
         (local.tee $2
          (call $~lib/string/String#get:length
           (local.get $3)
          )
         )
         (call $~lib/string/String#get:length
          (i32.const 5648)
         )
        )
       )
      )
      (i32.eqz
       (call $~lib/util/string/compareImpl
        (local.get $3)
        (i32.const 0)
        (i32.const 5648)
        (local.get $2)
       )
      )
     )
     (block
      (local.set $2
       (i32.wrap_i64
        (i64.div_s
         (i64.load
          (i32.load offset=8
           (local.get $1)
          )
         )
         (i64.const 50000000000)
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i64.eqz
        (i64.rem_s
         (i64.load
          (i32.load offset=8
           (local.get $1)
          )
         )
         (i64.const 50000000000)
        )
       )
       (i32.const 5696)
      )
      (call $assembly/actions/2-oracle/OracleActions#sendOracleSet
       (local.get $0)
       (i32.load
        (local.get $1)
       )
       (local.get $2)
       (i32.wrap_i64
        (i64.div_s
         (i64.load
          (i32.load offset=8
           (local.get $1)
          )
         )
         (i64.const 10000)
        )
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.const 0)
      (i32.const 5824)
     )
    )
   )
  )
 )
 (func $assembly/boid.contract/protoSetAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (local.tee $2
    (call $assembly/tables/protocols/Protocol#constructor
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/boid.contract/pwrReportAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/pwrreports/PwrReport#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/boid.contract/mergeReportsAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (drop
   (i32.load offset=4
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $3
      (call $~lib/array/Array<u64>#constructor
       (local.tee $2
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $1)
        )
       )
      )
     )
    )
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
    (local.tee $2
     (i32.shl
      (local.get $2)
      (i32.const 3)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $3)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u32> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load
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
   (i32.const 4)
  )
  (local.get $1)
 )
 (func $assembly/boid.contract/oracleSetAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/boid.contract/ondepositAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (i32.load offset=4
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
 )
 (func $assembly/boid.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $2)
  )
  (local.set $6
   (call $assembly/boid.contract/BoidPowerContract#constructor
    (i32.const 0)
    (local.get $3)
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $7
   (call $~lib/as-chain/action/readActionData)
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
      (i64.const -5915026892678758400)
     )
     (block
      (drop
       (call $assembly/boid.contract/protoSetAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 94)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/actions/4-protocol/ProtoActions#protoSet
       (local.get $6)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -5823306778392657920)
     )
     (block
      (drop
       (call $assembly/boid.contract/pwrReportAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 95)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $5
          (local.get $3)
         )
        )
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $4
       (local.get $3)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/actions/3-pwrreport/PwrReportActions#pwrReport
       (local.get $6)
       (local.get $4)
       (local.get $3)
       (local.get $5)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -7877141693564849280)
     )
     (block
      (drop
       (call $assembly/boid.contract/mergeReportsAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 96)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/actions/3-pwrreport/PwrReportActions#mergeReports
       (local.get $6)
       (local.get $3)
       (local.get $4)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -6499669894000803840)
     )
     (block
      (drop
       (call $assembly/boid.contract/oracleSetAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 97)
           )
          )
          (i32.const 0)
         )
         (call $assembly/tables/oracles/Oracle#set:weight
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/actions/2-oracle/OracleActions#oracleSet
       (local.get $6)
       (local.get $3)
       (i32.load8_u offset=4
        (local.get $4)
       )
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (local.get $0)
    (local.get $1)
   )
   (if
    (i64.eq
     (local.get $2)
     (i64.const -3617168760277827584)
    )
    (block
     (drop
      (call $assembly/boid.contract/ondepositAction#unpack
       (call $~lib/rt/stub/__new
        (i32.const 0)
        (i32.const 98)
       )
       (local.get $7)
      )
     )
     (call $assembly/actions/5-deposit/DepositActions#ondeposit
      (local.get $6)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackName (param $0 i32) (result i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $1)
   )
  )
  (local.set $3
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $1)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 79)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $3)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $6
    (call $~lib/rt/stub/__new
     (local.tee $5
      (i32.shl
       (select
        (local.get $3)
        (i32.const 8)
        (i32.gt_u
         (local.get $3)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (local.get $7)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/action/PermissionLevel#constructor
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $1)
       )
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $1)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/name/Name>#__set
      (i32.load offset=8
       (local.get $0)
      )
      (local.get $4)
      (local.get $2)
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $3
      (call $~lib/array/Array<u8>#constructor
       (local.tee $2
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $1)
        )
       )
      )
     )
    )
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
    (local.get $2)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/tables/external/config/ConfigAccount#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.tee $2
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $2)
   )
  )
  (call $assembly/tables/external/config/ConfigAccount#set:max_sponsors
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $2)
   )
  )
  (call $assembly/tables/external/config/ConfigAccount#set:max_pwrmods
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $2)
   )
  )
  (local.set $3
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 43)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $3)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $6
    (call $~lib/rt/stub/__new
     (local.tee $5
      (i32.shl
       (select
        (local.get $3)
        (i32.const 8)
        (i32.gt_u
         (local.get $3)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (local.get $7)
    )
    (block
     (call $~lib/array/Array<~lib/as-chain/name/Name>#__set
      (local.get $1)
      (local.get $4)
      (call $~lib/as-chain/serializer/Decoder#unpackString
       (local.get $2)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $2)
   )
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (block $folding-inner2
   (block $folding-inner1
    (block $folding-inner0
     (block $default
      (block $case35
       (block $case34
        (block $case33
         (block $case32
          (block $case31
           (block $case30
            (block $case29
             (block $case28
              (block $case27
               (block $case26
                (block $case25
                 (block $case24
                  (block $case23
                   (block $case22
                    (block $case21
                     (block $case20
                      (block $case19
                       (block $case18
                        (block $case17
                         (block $case16
                          (block $case15
                           (block $case14
                            (block $case13
                             (block $case12
                              (block $case11
                               (block $case10
                                (block $case9
                                 (block $case7
                                  (block $case6
                                   (block $case5
                                    (block $case3
                                     (block $case2
                                      (block $case1
                                       (block $case0
                                        (br_table $case15 $default $default $default $default $default $default $default $default $default $default $case20 $default $default $case18 $case19 $default $default $default $default $default $case5 $default $default $default $case35 $case24 $case23 $default $default $default $default $default $default $case13 $default $case34 $case25 $default $case26 $case27 $case29 $case30 $case31 $case12 $case11 $case32 $default $case33 $case28 $default $default $default $default $default $case7 $case6 $default $default $default $default $case22 $case21 $default $default $default $default $default $default $default $default $default $folding-inner0 $case14 $default $default $default $default $default $default $case9 $default $default $default $default $default $case10 $case17 $case16 $case1 $case2 $case3 $folding-inner0 $case0 $default
                                         (i32.sub
                                          (i32.load
                                           (i32.sub
                                            (local.get $0)
                                            (i32.const 8)
                                           )
                                          )
                                          (i32.const 5)
                                         )
                                        )
                                       )
                                       (return
                                        (call $assembly/boid.contract/ondepositAction#unpack
                                         (local.get $0)
                                         (local.get $1)
                                        )
                                       )
                                      )
                                      (return
                                       (call $assembly/boid.contract/protoSetAction#unpack
                                        (local.get $0)
                                        (local.get $1)
                                       )
                                      )
                                     )
                                     (return
                                      (call $assembly/boid.contract/pwrReportAction#unpack
                                       (local.get $0)
                                       (local.get $1)
                                      )
                                     )
                                    )
                                    (return
                                     (call $assembly/boid.contract/mergeReportsAction#unpack
                                      (local.get $0)
                                      (local.get $1)
                                     )
                                    )
                                   )
                                   (return
                                    (call $assembly/tables/protocols/Protocol#unpack
                                     (local.get $0)
                                     (local.get $1)
                                    )
                                   )
                                  )
                                  (call $assembly/tables/global/Global#set:num_validators
                                   (local.get $0)
                                   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
                                    (local.tee $1
                                     (call $~lib/as-chain/serializer/Decoder#constructor
                                      (local.get $1)
                                     )
                                    )
                                   )
                                  )
                                  (call $assembly/tables/global/Global#set:total_weight
                                   (local.get $0)
                                   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                                    (local.get $1)
                                   )
                                  )
                                  (br $folding-inner1)
                                 )
                                 (return
                                  (call $assembly/tables/pwrreports/PwrReportRow#unpack
                                   (local.get $0)
                                   (local.get $1)
                                  )
                                 )
                                )
                                (local.set $1
                                 (call $~lib/as-chain/serializer/Decoder#constructor
                                  (local.get $1)
                                 )
                                )
                                (call $~lib/as-chain/name/Name#set:N
                                 (local.tee $2
                                  (call $~lib/rt/stub/__new
                                   (i32.const 8)
                                   (i32.const 5)
                                  )
                                 )
                                 (i64.const 0)
                                )
                                (call $~lib/as-chain/name/Name#set:N
                                 (local.get $2)
                                 (i64.const 0)
                                )
                                (call $~lib/as-chain/serializer/Decoder#unpack
                                 (local.get $1)
                                 (local.get $2)
                                )
                                (call $~lib/rt/common/BLOCK#set:mmInfo
                                 (local.get $0)
                                 (local.get $2)
                                )
                                (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
                                 (local.get $0)
                                 (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                                  (local.get $1)
                                 )
                                )
                                (br $folding-inner2)
                               )
                               (return
                                (call $assembly/actions/5-deposit/TokenTransfer#unpack
                                 (local.get $0)
                                 (local.get $1)
                                )
                               )
                              )
                              (call $~lib/as-chain/name/Name#set:N
                               (local.get $0)
                               (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                                (local.tee $0
                                 (call $~lib/as-chain/serializer/Decoder#constructor
                                  (local.get $1)
                                 )
                                )
                               )
                              )
                              (return
                               (i32.load offset=4
                                (local.get $0)
                               )
                              )
                             )
                             (call $~lib/as-chain/serializer/Decoder#unpack
                              (local.tee $1
                               (call $~lib/as-chain/serializer/Decoder#constructor
                                (local.get $1)
                               )
                              )
                              (i32.load
                               (local.get $0)
                              )
                             )
                             (br $folding-inner2)
                            )
                            (call $~lib/rt/common/BLOCK#set:mmInfo
                             (local.get $0)
                             (call $~lib/as-chain/serializer/Decoder#unpackName
                              (local.tee $1
                               (call $~lib/as-chain/serializer/Decoder#constructor
                                (local.get $1)
                               )
                              )
                             )
                            )
                            (call $~lib/rt/common/OBJECT#set:gcInfo
                             (local.get $0)
                             (call $~lib/as-chain/serializer/Decoder#unpackName
                              (local.get $1)
                             )
                            )
                            (br $folding-inner2)
                           )
                           (return
                            (call $~lib/as-chain/action/Action#unpack
                             (local.get $0)
                             (local.get $1)
                            )
                           )
                          )
                          (call $~lib/as-chain/name/Name#set:N
                           (local.get $0)
                           (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                            (call $~lib/as-chain/serializer/Decoder#constructor
                             (local.get $1)
                            )
                           )
                          )
                          (return
                           (i32.const 8)
                          )
                         )
                         (call $~lib/as-chain/name/Name#set:N
                          (local.get $0)
                          (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                           (local.tee $1
                            (call $~lib/as-chain/serializer/Decoder#constructor
                             (local.get $1)
                            )
                           )
                          )
                         )
                         (call $~lib/as-chain/system/check
                          (call $~lib/as-chain/asset/Symbol#isValid
                           (local.get $0)
                          )
                          (i32.const 5984)
                         )
                         (br $folding-inner2)
                        )
                        (local.set $4
                         (i64.load
                          (i32.add
                           (i32.load offset=4
                            (i32.load
                             (local.tee $1
                              (call $~lib/as-chain/serializer/Decoder#constructor
                               (local.get $1)
                              )
                             )
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
                         (i32.const 8)
                        )
                        (call $~lib/as-chain/name/Name#set:N
                         (local.get $0)
                         (local.get $4)
                        )
                        (call $~lib/as-chain/serializer/Decoder#unpack
                         (local.get $1)
                         (i32.load offset=8
                          (local.get $0)
                         )
                        )
                        (call $~lib/as-chain/system/check
                         (call $~lib/as-chain/asset/Asset#isValid
                          (local.get $0)
                         )
                         (i32.const 6032)
                        )
                        (return
                         (i32.load offset=4
                          (local.get $1)
                         )
                        )
                       )
                       (call $~lib/rt/common/BLOCK#set:mmInfo
                        (local.get $0)
                        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
                         (local.tee $1
                          (call $~lib/as-chain/serializer/Decoder#constructor
                           (local.get $1)
                          )
                         )
                        )
                       )
                       (call $~lib/rt/common/OBJECT#set:gcInfo
                        (local.get $0)
                        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
                         (local.get $1)
                        )
                       )
                       (call $~lib/rt/common/OBJECT#set:gcInfo2
                        (local.get $0)
                        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
                         (local.get $1)
                        )
                       )
                       (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
                        (local.get $0)
                        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                         (local.get $1)
                        )
                       )
                       (call $assembly/tables/oracles/OracleCollateral#set:min_unlock_start_round
                        (local.get $0)
                        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                         (local.get $1)
                        )
                       )
                       (br $folding-inner2)
                      )
                      (call $~lib/rt/common/BLOCK#set:mmInfo
                       (local.get $0)
                       (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
                        (local.tee $1
                         (call $~lib/as-chain/serializer/Decoder#constructor
                          (local.get $1)
                         )
                        )
                       )
                      )
                      (call $~lib/rt/common/OBJECT#set:gcInfo
                       (local.get $0)
                       (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
                        (local.get $1)
                       )
                      )
                      (call $assembly/tables/oracles/OracleFunds#set:last_claim_round
                       (local.get $0)
                       (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                        (local.get $1)
                       )
                      )
                      (br $folding-inner2)
                     )
                     (return
                      (call $assembly/tables/oracles/Oracle#unpack
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                    )
                    (call $~lib/rt/common/BLOCK#set:mmInfo
                     (local.get $0)
                     (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
                      (local.tee $1
                       (call $~lib/as-chain/serializer/Decoder#constructor
                        (local.get $1)
                       )
                      )
                     )
                    )
                    (br $folding-inner1)
                   )
                   (return
                    (call $assembly/tables/oracleStats/OracleStat#unpack
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                  )
                  (call $~lib/as-chain/name/Name#set:N
                   (local.get $0)
                   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                    (local.tee $1
                     (call $~lib/as-chain/serializer/Decoder#constructor
                      (local.get $1)
                     )
                    )
                   )
                  )
                  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
                   (local.get $0)
                   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                    (local.get $1)
                   )
                  )
                  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
                   (local.get $0)
                   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                    (local.get $1)
                   )
                  )
                  (br $folding-inner2)
                 )
                 (return
                  (call $assembly/tables/global/Global#unpack
                   (local.get $0)
                   (local.get $1)
                  )
                 )
                )
                (return
                 (call $assembly/tables/external/config/ConfigAccount#unpack
                  (local.get $0)
                  (local.get $1)
                 )
                )
               )
               (call $assembly/tables/stats/Stat#set:round
                (local.get $0)
                (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Decoder#constructor
                   (local.get $1)
                  )
                 )
                )
               )
               (call $assembly/tables/external/config/ConfigPower#set:round_decay_mult
                (local.get $0)
                (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
                 (local.get $1)
                )
               )
               (call $assembly/tables/external/config/ConfigPower#set:sponsor_tax_mult
                (local.get $0)
                (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
                 (local.get $1)
                )
               )
               (call $assembly/tables/protocols/Protocol#set:unitPowerMult
                (local.get $0)
                (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
                 (local.get $1)
                )
               )
               (call $assembly/tables/external/config/ConfigPower#set:powered_stake_pwr
                (local.get $0)
                (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
                 (local.get $1)
                )
               )
               (call $assembly/tables/external/config/ConfigPower#set:claim_maximum_elapsed_rounds
                (local.get $0)
                (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                 (local.get $1)
                )
               )
               (br $folding-inner2)
              )
              (call $assembly/tables/external/config/ConfigMint#set:round_powered_stake_mult
               (local.get $0)
               (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
                (local.tee $1
                 (call $~lib/as-chain/serializer/Decoder#constructor
                  (local.get $1)
                 )
                )
               )
              )
              (call $assembly/tables/external/config/ConfigPower#set:round_decay_mult
               (local.get $0)
               (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
                (local.get $1)
               )
              )
              (br $folding-inner2)
             )
             (call $~lib/rt/common/BLOCK#set:mmInfo
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
               (local.tee $1
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $1)
                )
               )
              )
             )
             (call $assembly/tables/external/config/ConfigPower#set:round_decay_mult
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
               (local.get $1)
              )
             )
             (call $assembly/tables/external/config/ConfigPower#set:sponsor_tax_mult
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
               (local.get $1)
              )
             )
             (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
               (local.get $1)
              )
             )
             (br $folding-inner2)
            )
            (call $assembly/tables/stats/Stat#set:round
             (local.get $0)
             (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
              (local.tee $1
               (call $~lib/as-chain/serializer/Decoder#constructor
                (local.get $1)
               )
              )
             )
            )
            (call $assembly/tables/global/Global#set:total_weight
             (local.get $0)
             (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
              (local.get $1)
             )
            )
            (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
             (local.get $0)
             (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
              (local.get $1)
             )
            )
            (call $~lib/rt/common/OBJECT#set:gcInfo2
             (local.get $0)
             (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
              (local.get $1)
             )
            )
            (call $~lib/rt/common/OBJECT#set:rtId
             (local.get $0)
             (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
              (local.get $1)
             )
            )
            (call $assembly/tables/external/config/ConfigTeam#set:owner_future_stake_lock_rounds_required
             (local.get $0)
             (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
              (local.get $1)
             )
            )
            (br $folding-inner2)
           )
           (call $assembly/tables/global/Global#set:num_validators
            (local.get $0)
            (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
             (local.tee $1
              (call $~lib/as-chain/serializer/Decoder#constructor
               (local.get $1)
              )
             )
            )
           )
           (call $assembly/tables/external/config/ConfigStake#set:extra_stake_min_locked_rounds
            (local.get $0)
            (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
             (local.get $1)
            )
           )
           (br $folding-inner2)
          )
          (call $~lib/as-chain/serializer/Decoder#unpack
           (local.tee $1
            (call $~lib/as-chain/serializer/Decoder#constructor
             (local.get $1)
            )
           )
           (local.tee $2
            (call $~lib/as-chain/time/TimePoint#constructor
             (i64.const 0)
            )
           )
          )
          (call $~lib/rt/common/BLOCK#set:mmInfo
           (local.get $0)
           (local.get $2)
          )
          (br $folding-inner1)
         )
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.get $0)
          (call $~lib/array/Array<~lib/as-chain/name/Name>#constructor
           (local.tee $5
            (call $~lib/as-chain/serializer/Decoder#unpackLength
             (local.tee $1
              (call $~lib/as-chain/serializer/Decoder#constructor
               (local.get $1)
              )
             )
            )
           )
          )
         )
         (loop $for-loop|0
          (if
           (i32.lt_s
            (local.get $2)
            (local.get $5)
           )
           (block
            (call $~lib/as-chain/name/Name#set:N
             (local.tee $3
              (call $~lib/rt/stub/__new
               (i32.const 8)
               (i32.const 5)
              )
             )
             (i64.const 0)
            )
            (call $~lib/as-chain/name/Name#set:N
             (local.get $3)
             (i64.const 0)
            )
            (call $~lib/array/Array<~lib/as-chain/name/Name>#__set
             (i32.load
              (local.get $0)
             )
             (local.get $2)
             (local.get $3)
            )
            (call $~lib/as-chain/serializer/Decoder#unpack
             (local.get $1)
             (local.get $3)
            )
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 1)
             )
            )
            (br $for-loop|0)
           )
          )
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $0)
          (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
           (local.get $1)
          )
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $0)
          (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
           (local.get $1)
          )
         )
         (call $assembly/tables/external/config/ConfigAuth#set:account_max_keys
          (local.get $0)
          (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
           (local.get $1)
          )
         )
         (call $~lib/rt/common/OBJECT#set:rtSize
          (local.get $0)
          (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
           (local.get $1)
          )
         )
         (return
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
        (call $assembly/tables/stats/Stat#set:round
         (local.get $0)
         (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
          (local.tee $0
           (call $~lib/as-chain/serializer/Decoder#constructor
            (local.get $1)
           )
          )
         )
        )
        (return
         (i32.load offset=4
          (local.get $0)
         )
        )
       )
       (return
        (call $assembly/tables/external/config/Config#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (call $assembly/tables/stats/Stat#set:round
       (local.get $0)
       (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
        (local.tee $1
         (call $~lib/as-chain/serializer/Decoder#constructor
          (local.get $1)
         )
        )
       )
      )
      (global.set $~argumentsLength
       (i32.const 0)
      )
      (call $~lib/as-chain/serializer/Decoder#unpack
       (local.get $1)
       (local.tee $2
        (call $assembly/tables/global/Global#constructor@varargs)
       )
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $0)
       (local.get $2)
      )
      (br $folding-inner2)
     )
     (unreachable)
    )
    (return
     (call $assembly/boid.contract/oracleSetAction#unpack
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (call $~lib/rt/common/OBJECT#set:gcInfo
    (local.get $0)
    (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
     (local.get $1)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (i32.add
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $2
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
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $2)
    (local.get $1)
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $1)
    )
   )
  )
  (drop
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
 )
 (func $assembly/tables/external/config/ConfigAccount#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (i32.const 7)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=8
          (local.get $0)
         )
         (local.get $2)
        )
       )
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (i32.add
   (local.get $1)
   (i32.const 4)
  )
 )
 (func $assembly/tables/external/config/ConfigTime#getSize (param $0 i32) (result i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.const 12)
 )
 (func $assembly/tables/external/config/ConfigAuth#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 8)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (i32.add
   (local.get $1)
   (i32.const 13)
  )
 )
 (func $assembly/tables/external/config/Config#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (call $assembly/tables/external/config/ConfigAccount#getSize
    (i32.load
     (local.get $0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=12
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=16
    (local.get $0)
   )
  )
  (local.set $1
   (i32.add
    (i32.add
     (call $assembly/tables/external/config/ConfigTime#getSize
      (i32.load offset=20
       (local.get $0)
      )
     )
     (i32.add
      (local.get $1)
      (i32.const 46)
     )
    )
    (call $assembly/tables/external/config/ConfigAuth#getSize
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
  )
  (drop
   (i32.load offset=28
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (local.get $1)
      (i32.const 19)
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
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=28
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=37
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=38
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $folding-inner1
   (block $folding-inner0
    (block $default
     (block $case35
      (block $case34
       (block $case33
        (block $case32
         (block $case31
          (block $case30
           (block $case29
            (block $case28
             (block $case27
              (block $case26
               (block $case25
                (block $case24
                 (block $case23
                  (block $case22
                   (block $case21
                    (block $case20
                     (block $case19
                      (block $case18
                       (block $case17
                        (block $case16
                         (block $case15
                          (block $case14
                           (block $case13
                            (block $case12
                             (block $case11
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
                                         (br_table $case15 $default $default $default $default $default $default $default $default $default $default $case20 $default $default $case18 $case19 $default $default $default $default $default $case5 $default $default $default $case35 $case24 $case23 $default $default $default $default $default $default $case13 $default $case34 $case25 $default $case26 $case27 $case29 $case30 $case31 $case12 $case11 $case32 $default $case33 $case28 $default $default $default $default $default $case7 $case6 $default $default $default $default $case22 $case21 $default $default $default $default $default $default $default $default $default $case8 $case14 $default $default $default $default $default $default $case9 $default $default $default $default $default $case10 $case17 $case16 $case1 $case2 $case3 $case4 $case0 $default
                                          (i32.sub
                                           (i32.load
                                            (i32.sub
                                             (local.get $0)
                                             (i32.const 8)
                                            )
                                           )
                                           (i32.const 5)
                                          )
                                         )
                                        )
                                        (return
                                         (call $~lib/as-chain/serializer/Encoder#getBytes
                                          (call $~lib/as-chain/serializer/Encoder#constructor
                                           (i32.const 0)
                                          )
                                         )
                                        )
                                       )
                                       (if
                                        (i32.eqz
                                         (local.tee $1
                                          (i32.load
                                           (local.get $0)
                                          )
                                         )
                                        )
                                        (unreachable)
                                       )
                                       (local.set $1
                                        (call $~lib/as-chain/serializer/Encoder#constructor
                                         (call $assembly/tables/protocols/Protocol#getSize
                                          (local.get $1)
                                         )
                                        )
                                       )
                                       (if
                                        (i32.eqz
                                         (local.tee $0
                                          (i32.load
                                           (local.get $0)
                                          )
                                         )
                                        )
                                        (unreachable)
                                       )
                                       (call $~lib/as-chain/serializer/Encoder#pack
                                        (local.get $1)
                                        (local.get $0)
                                       )
                                       (br $folding-inner1)
                                      )
                                      (if
                                       (i32.eqz
                                        (i32.load
                                         (local.get $0)
                                        )
                                       )
                                       (unreachable)
                                      )
                                      (if
                                       (i32.eqz
                                        (i32.load offset=4
                                         (local.get $0)
                                        )
                                       )
                                       (unreachable)
                                      )
                                      (if
                                       (i32.eqz
                                        (i32.load offset=8
                                         (local.get $0)
                                        )
                                       )
                                       (unreachable)
                                      )
                                      (local.set $1
                                       (call $~lib/as-chain/serializer/Encoder#constructor
                                        (i32.const 23)
                                       )
                                      )
                                      (if
                                       (i32.eqz
                                        (local.tee $2
                                         (i32.load
                                          (local.get $0)
                                         )
                                        )
                                       )
                                       (unreachable)
                                      )
                                      (call $~lib/as-chain/serializer/Encoder#pack
                                       (local.get $1)
                                       (local.get $2)
                                      )
                                      (if
                                       (i32.eqz
                                        (local.tee $2
                                         (i32.load offset=4
                                          (local.get $0)
                                         )
                                        )
                                       )
                                       (unreachable)
                                      )
                                      (call $~lib/as-chain/serializer/Encoder#pack
                                       (local.get $1)
                                       (local.get $2)
                                      )
                                      (if
                                       (i32.eqz
                                        (local.tee $0
                                         (i32.load offset=8
                                          (local.get $0)
                                         )
                                        )
                                       )
                                       (unreachable)
                                      )
                                      (call $~lib/as-chain/serializer/Encoder#pack
                                       (local.get $1)
                                       (local.get $0)
                                      )
                                      (return
                                       (call $~lib/as-chain/serializer/Encoder#getBytes
                                        (local.get $1)
                                       )
                                      )
                                     )
                                     (if
                                      (i32.eqz
                                       (i32.load
                                        (local.get $0)
                                       )
                                      )
                                      (unreachable)
                                     )
                                     (if
                                      (i32.eqz
                                       (local.tee $1
                                        (i32.load offset=4
                                         (local.get $0)
                                        )
                                       )
                                      )
                                      (unreachable)
                                     )
                                     (local.set $1
                                      (i32.add
                                       (call $~lib/as-chain/varint/calcPackedVarUint32Length
                                        (i32.load offset=12
                                         (local.get $1)
                                        )
                                       )
                                       (i32.const 8)
                                      )
                                     )
                                     (if
                                      (i32.eqz
                                       (local.tee $2
                                        (i32.load offset=4
                                         (local.get $0)
                                        )
                                       )
                                      )
                                      (unreachable)
                                     )
                                     (local.set $1
                                      (call $~lib/as-chain/serializer/Encoder#constructor
                                       (i32.add
                                        (local.get $1)
                                        (i32.shl
                                         (i32.load offset=12
                                          (local.get $2)
                                         )
                                         (i32.const 3)
                                        )
                                       )
                                      )
                                     )
                                     (if
                                      (i32.eqz
                                       (local.tee $2
                                        (i32.load
                                         (local.get $0)
                                        )
                                       )
                                      )
                                      (unreachable)
                                     )
                                     (call $~lib/as-chain/serializer/Encoder#pack
                                      (local.get $1)
                                      (local.get $2)
                                     )
                                     (if
                                      (i32.eqz
                                       (local.tee $0
                                        (i32.load offset=4
                                         (local.get $0)
                                        )
                                       )
                                      )
                                      (unreachable)
                                     )
                                     (call $~lib/as-chain/serializer/Encoder#packLength
                                      (local.get $1)
                                      (i32.load offset=12
                                       (local.get $0)
                                      )
                                     )
                                     (local.set $2
                                      (i32.load offset=4
                                       (local.get $0)
                                      )
                                     )
                                     (local.set $3
                                      (i32.load offset=4
                                       (local.get $1)
                                      )
                                     )
                                     (call $~lib/as-chain/serializer/Encoder#incPos
                                      (local.get $1)
                                      (local.tee $0
                                       (i32.shl
                                        (i32.load offset=12
                                         (local.get $0)
                                        )
                                        (i32.const 3)
                                       )
                                      )
                                     )
                                     (drop
                                      (call $~lib/as-chain/env/memcpy
                                       (i32.add
                                        (local.get $3)
                                        (i32.load offset=4
                                         (i32.load
                                          (local.get $1)
                                         )
                                        )
                                       )
                                       (local.get $2)
                                       (local.get $0)
                                      )
                                     )
                                     (return
                                      (call $~lib/as-chain/serializer/Encoder#getBytes
                                       (local.get $1)
                                      )
                                     )
                                    )
                                    (if
                                     (i32.eqz
                                      (i32.load
                                       (local.get $0)
                                      )
                                     )
                                     (unreachable)
                                    )
                                    (local.set $1
                                     (call $~lib/as-chain/serializer/Encoder#constructor
                                      (i32.const 13)
                                     )
                                    )
                                    (if
                                     (i32.eqz
                                      (local.tee $2
                                       (i32.load
                                        (local.get $0)
                                       )
                                      )
                                     )
                                     (unreachable)
                                    )
                                    (call $~lib/as-chain/serializer/Encoder#pack
                                     (local.get $1)
                                     (local.get $2)
                                    )
                                    (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
                                     (local.get $1)
                                     (i32.load8_u offset=4
                                      (local.get $0)
                                     )
                                    )
                                    (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                                     (local.get $1)
                                     (i32.load offset=8
                                      (local.get $0)
                                     )
                                    )
                                    (br $folding-inner1)
                                   )
                                   (return
                                    (call $assembly/tables/protocols/Protocol#pack
                                     (local.get $0)
                                    )
                                   )
                                  )
                                  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
                                   (local.tee $1
                                    (call $~lib/as-chain/serializer/Encoder#constructor
                                     (i32.const 7)
                                    )
                                   )
                                   (i32.load8_u
                                    (local.get $0)
                                   )
                                  )
                                  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                                   (local.get $1)
                                   (i32.load16_u offset=2
                                    (local.get $0)
                                   )
                                  )
                                  (br $folding-inner0)
                                 )
                                 (return
                                  (call $assembly/tables/pwrreports/PwrReportRow#pack
                                   (local.get $0)
                                  )
                                 )
                                )
                                (return
                                 (call $assembly/actions/2-oracle/OracleSetParam#pack
                                  (local.get $0)
                                 )
                                )
                               )
                               (return
                                (call $assembly/actions/3-pwrreport/PowerAddParams#pack
                                 (local.get $0)
                                )
                               )
                              )
                              (drop
                               (i32.load
                                (local.get $0)
                               )
                              )
                              (drop
                               (i32.load offset=4
                                (local.get $0)
                               )
                              )
                              (drop
                               (i32.load offset=8
                                (local.get $0)
                               )
                              )
                              (call $~lib/as-chain/serializer/Encoder#pack
                               (local.tee $1
                                (call $~lib/as-chain/serializer/Encoder#constructor
                                 (i32.add
                                  (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                                   (i32.load offset=12
                                    (local.get $0)
                                   )
                                  )
                                  (i32.const 32)
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
                              (call $~lib/as-chain/serializer/Encoder#packString
                               (local.get $1)
                               (i32.load offset=12
                                (local.get $0)
                               )
                              )
                              (br $folding-inner1)
                             )
                             (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                              (local.tee $1
                               (call $~lib/as-chain/serializer/Encoder#constructor
                                (i32.const 8)
                               )
                              )
                              (i64.load
                               (local.get $0)
                              )
                             )
                             (br $folding-inner1)
                            )
                            (call $~lib/as-chain/serializer/Encoder#pack
                             (local.tee $1
                              (call $~lib/as-chain/serializer/Encoder#constructor
                               (i32.const 8)
                              )
                             )
                             (i32.load
                              (local.get $0)
                             )
                            )
                            (br $folding-inner1)
                           )
                           (call $~lib/as-chain/serializer/Encoder#packName
                            (local.tee $1
                             (call $~lib/as-chain/serializer/Encoder#constructor
                              (i32.const 16)
                             )
                            )
                            (i32.load
                             (local.get $0)
                            )
                           )
                           (call $~lib/as-chain/serializer/Encoder#packName
                            (local.get $1)
                            (i32.load offset=4
                             (local.get $0)
                            )
                           )
                           (br $folding-inner1)
                          )
                          (return
                           (call $~lib/as-chain/action/Action#pack
                            (local.get $0)
                           )
                          )
                         )
                         (i64.store
                          (i32.load offset=4
                           (local.tee $1
                            (call $~lib/array/Array<u8>#constructor
                             (i32.const 8)
                            )
                           )
                          )
                          (i64.load
                           (local.get $0)
                          )
                         )
                         (return
                          (local.get $1)
                         )
                        )
                        (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                         (local.tee $1
                          (call $~lib/as-chain/serializer/Encoder#constructor
                           (i32.const 8)
                          )
                         )
                         (i64.load
                          (local.get $0)
                         )
                        )
                        (br $folding-inner1)
                       )
                       (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                        (local.tee $1
                         (call $~lib/as-chain/serializer/Encoder#constructor
                          (i32.const 16)
                         )
                        )
                        (i64.load
                         (local.get $0)
                        )
                       )
                       (call $~lib/as-chain/serializer/Encoder#pack
                        (local.get $1)
                        (i32.load offset=8
                         (local.get $0)
                        )
                       )
                       (br $folding-inner1)
                      )
                      (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                       (local.tee $1
                        (call $~lib/as-chain/serializer/Encoder#constructor
                         (i32.const 16)
                        )
                       )
                       (i32.load
                        (local.get $0)
                       )
                      )
                      (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                       (local.get $1)
                       (i32.load offset=4
                        (local.get $0)
                       )
                      )
                      (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                       (local.get $1)
                       (i32.load offset=8
                        (local.get $0)
                       )
                      )
                      (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                       (local.get $1)
                       (i32.load16_u offset=12
                        (local.get $0)
                       )
                      )
                      (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                       (local.get $1)
                       (i32.load16_u offset=14
                        (local.get $0)
                       )
                      )
                      (br $folding-inner1)
                     )
                     (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                      (local.tee $1
                       (call $~lib/as-chain/serializer/Encoder#constructor
                        (i32.const 10)
                       )
                      )
                      (i32.load
                       (local.get $0)
                      )
                     )
                     (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                      (local.get $1)
                      (i32.load offset=4
                       (local.get $0)
                      )
                     )
                     (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                      (local.get $1)
                      (i32.load16_u offset=8
                       (local.get $0)
                      )
                     )
                     (br $folding-inner1)
                    )
                    (return
                     (call $assembly/tables/oracles/Oracle#pack
                      (local.get $0)
                     )
                    )
                   )
                   (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                    (local.tee $1
                     (call $~lib/as-chain/serializer/Encoder#constructor
                      (i32.const 8)
                     )
                    )
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (br $folding-inner0)
                  )
                  (return
                   (call $assembly/tables/oracleStats/OracleStat#pack
                    (local.get $0)
                   )
                  )
                 )
                 (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                  (local.tee $1
                   (call $~lib/as-chain/serializer/Encoder#constructor
                    (i32.const 24)
                   )
                  )
                  (i64.load
                   (local.get $0)
                  )
                 )
                 (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                  (local.get $1)
                  (i64.load offset=8
                   (local.get $0)
                  )
                 )
                 (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                  (local.get $1)
                  (i64.load offset=16
                   (local.get $0)
                  )
                 )
                 (br $folding-inner1)
                )
                (return
                 (call $assembly/tables/global/Global#pack
                  (local.get $0)
                 )
                )
               )
               (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                (local.tee $1
                 (call $~lib/as-chain/serializer/Encoder#constructor
                  (call $assembly/tables/external/config/ConfigAccount#getSize
                   (local.get $0)
                  )
                 )
                )
                (i32.load
                 (local.get $0)
                )
               )
               (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
                (local.get $1)
                (i32.load8_u offset=4
                 (local.get $0)
                )
               )
               (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
                (local.get $1)
                (i32.load8_u offset=5
                 (local.get $0)
                )
               )
               (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
                (local.get $1)
                (i32.load8_u offset=6
                 (local.get $0)
                )
               )
               (drop
                (i32.load offset=4
                 (local.get $1)
                )
               )
               (call $~lib/as-chain/serializer/Encoder#packLength
                (local.get $1)
                (i32.load offset=12
                 (local.tee $3
                  (i32.load offset=8
                   (local.get $0)
                  )
                 )
                )
               )
               (loop $for-loop|0
                (if
                 (i32.lt_s
                  (local.get $2)
                  (i32.load offset=12
                   (local.get $3)
                  )
                 )
                 (block
                  (call $~lib/as-chain/serializer/Encoder#packString
                   (local.get $1)
                   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                    (local.get $3)
                    (local.get $2)
                   )
                  )
                  (local.set $2
                   (i32.add
                    (local.get $2)
                    (i32.const 1)
                   )
                  )
                  (br $for-loop|0)
                 )
                )
               )
               (drop
                (i32.load offset=4
                 (local.get $1)
                )
               )
               (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                (local.get $1)
                (i32.load offset=12
                 (local.get $0)
                )
               )
               (return
                (call $~lib/as-chain/serializer/Encoder#getBytes
                 (local.get $1)
                )
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
               (local.tee $1
                (call $~lib/as-chain/serializer/Encoder#constructor
                 (i32.const 20)
                )
               )
               (i32.load16_u
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
               (local.get $1)
               (f32.load offset=4
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
               (local.get $1)
               (f32.load offset=8
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
               (local.get $1)
               (f32.load offset=12
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
               (local.get $1)
               (f32.load offset=16
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
               (local.get $1)
               (i32.load16_u offset=20
                (local.get $0)
               )
              )
              (br $folding-inner1)
             )
             (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
              (local.tee $1
               (call $~lib/as-chain/serializer/Encoder#constructor
                (i32.const 8)
               )
              )
              (f32.load
               (local.get $0)
              )
             )
             (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
              (local.get $1)
              (f32.load offset=4
               (local.get $0)
              )
             )
             (br $folding-inner1)
            )
            (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
             (local.tee $1
              (call $~lib/as-chain/serializer/Encoder#constructor
               (i32.const 14)
              )
             )
             (i32.load
              (local.get $0)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
             (local.get $1)
             (f32.load offset=4
              (local.get $0)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
             (local.get $1)
             (f32.load offset=8
              (local.get $0)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
             (local.get $1)
             (i32.load16_u offset=12
              (local.get $0)
             )
            )
            (br $folding-inner1)
           )
           (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
            (local.tee $1
             (call $~lib/as-chain/serializer/Encoder#constructor
              (i32.const 16)
             )
            )
            (i32.load16_u
             (local.get $0)
            )
           )
           (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
            (local.get $1)
            (i32.load16_u offset=2
             (local.get $0)
            )
           )
           (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
            (local.get $1)
            (i32.load16_u offset=4
             (local.get $0)
            )
           )
           (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
            (local.get $1)
            (i32.load offset=8
             (local.get $0)
            )
           )
           (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
            (local.get $1)
            (i32.load offset=12
             (local.get $0)
            )
           )
           (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
            (local.get $1)
            (i32.load16_u offset=16
             (local.get $0)
            )
           )
           (br $folding-inner1)
          )
          (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
           (local.tee $1
            (call $~lib/as-chain/serializer/Encoder#constructor
             (i32.const 2)
            )
           )
           (i32.load8_u
            (local.get $0)
           )
          )
          (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
           (local.get $1)
           (i32.load8_u offset=1
            (local.get $0)
           )
          )
          (br $folding-inner1)
         )
         (call $~lib/as-chain/serializer/Encoder#pack
          (local.tee $1
           (call $~lib/as-chain/serializer/Encoder#constructor
            (call $assembly/tables/external/config/ConfigTime#getSize
             (local.get $0)
            )
           )
          )
          (i32.load
           (local.get $0)
          )
         )
         (br $folding-inner0)
        )
        (call $~lib/as-chain/serializer/Encoder#packObjectArray<assembly/tables/pwrreports/PwrReport>
         (local.tee $1
          (call $~lib/as-chain/serializer/Encoder#constructor
           (call $assembly/tables/external/config/ConfigAuth#getSize
            (local.get $0)
           )
          )
         )
         (i32.load
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
         (local.get $1)
         (i32.load offset=4
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
         (local.get $1)
         (i32.load offset=8
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
         (local.get $1)
         (i32.load8_u offset=12
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
         (local.get $1)
         (i32.load offset=16
          (local.get $0)
         )
        )
        (br $folding-inner1)
       )
       (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
        (local.tee $1
         (call $~lib/as-chain/serializer/Encoder#constructor
          (i32.const 2)
         )
        )
        (i32.load16_u
         (local.get $0)
        )
       )
       (br $folding-inner1)
      )
      (return
       (call $assembly/tables/external/config/Config#pack
        (local.get $0)
       )
      )
     )
     (return
      (call $assembly/tables/stats/Stat#pack
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#constructor (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 76)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 65)
   )
   (block
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 6080)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
      (i32.const 0)
     )
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (drop
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_store
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $3)
       (local.get $1)
       (local.get $2)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (return)
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 65)
   )
   (block
    (local.set $2
     (call $~lib/rt/stub/__alloc
      (i32.const 8)
     )
    )
    (local.set $3
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_find_primary
       (i64.load
        (local.get $0)
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $2)
       (local.get $1)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $0
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (i64.load
      (local.get $2)
     )
    )
    (local.set $2
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (local.get $0)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 81)
      )
     )
     (local.get $3)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $2)
    )
    (return
     (local.get $0)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 65)
   )
   (block
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 6144)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
      (i32.const 0)
     )
    )
    (i64.store
     (local.tee $0
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (call $~lib/as-chain/env/db_idx64_update
     (i32.load
      (local.get $1)
     )
     (local.get $3)
     (local.get $0)
    )
    (return)
   )
  )
  (unreachable)
 )
 (func $~start
  (call $start:assembly/boid.contract)
 )
)
