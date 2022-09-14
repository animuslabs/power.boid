(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $none_=>_i64 (func (result i64)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $none_=>_none (func))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $f32_=>_i32 (func (param f32) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i64_i32_i32_i32_i32_i32_=>_i32 (func (param i64 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_i32_i64_i32_i64_i32_=>_i32 (func (param i64 i32 i64 i32 i64 i32) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i32_i64_=>_i32 (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $f32_f32_=>_f32 (func (param f32 f32) (result f32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "prints_l" (func $~lib/as-chain/env/prints_l (param i32 i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_next_i64" (func $~lib/as-chain/env/db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "has_auth" (func $~lib/as-chain/env/has_auth (param i64) (result i32)))
 (import "env" "is_account" (func $~lib/as-chain/env/is_account (param i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "db_idx64_store" (func $~lib/as-chain/env/db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_find_primary" (func $~lib/as-chain/env/db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_update" (func $~lib/as-chain/env/db_idx64_update (param i32 i64 i32)))
 (import "env" "db_idx64_remove" (func $~lib/as-chain/env/db_idx64_remove (param i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $external/atomicassets/base58/BASE_MAP (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
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
 (data (i32.const 2812) "\1c")
 (data (i32.const 2844) "\1c")
 (data (i32.const 2856) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 2876) "\1c")
 (data (i32.const 2908) "\1c")
 (data (i32.const 2940) "\1c")
 (data (i32.const 2972) "\1c")
 (data (i32.const 2984) "\01\00\00\00\08\00\00\00b\00o\00i\00d")
 (data (i32.const 3004) "\\")
 (data (i32.const 3016) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3100) "\\")
 (data (i32.const 3112) "\01\00\00\00D\00\00\00b\00o\00i\00d\00 \00s\00y\00s\00t\00e\00m\00 \00c\00o\00n\00f\00i\00g\00 \00n\00o\00t\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 3196) "\1c")
 (data (i32.const 3228) "\1c")
 (data (i32.const 3260) "<")
 (data (i32.const 3272) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3324) "L")
 (data (i32.const 3336) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3404) "L")
 (data (i32.const 3416) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3484) "<")
 (data (i32.const 3496) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3548) "<")
 (data (i32.const 3560) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3612) "L")
 (data (i32.const 3624) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3692) "l")
 (data (i32.const 3704) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 3804) ",")
 (data (i32.const 3816) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 3852) ",")
 (data (i32.const 3864) "\01\00\00\00\14\00\00\00t\00o\00k\00e\00n\00.\00b\00o\00i\00d")
 (data (i32.const 3900) "<")
 (data (i32.const 3912) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 3964) "<")
 (data (i32.const 3976) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 4028) "\1c")
 (data (i32.const 4040) "\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 4060) "\1c")
 (data (i32.const 4072) "\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 4092) ",")
 (data (i32.const 4104) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 4140) ",")
 (data (i32.const 4152) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 4248) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 4944) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 5120) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 5164) "<")
 (data (i32.const 5176) "\01\00\00\00*\00\00\00\n\00 \00c\00u\00r\00r\00e\00n\00t\00R\00o\00u\00n\00d\00F\00l\00o\00a\00t\00:\00 ")
 (data (i32.const 5228) "<")
 (data (i32.const 5240) "\01\00\00\00 \00\00\00\n\00 \00c\00u\00r\00r\00e\00n\00t\00R\00o\00u\00n\00d\00:\00 ")
 (data (i32.const 5292) "\1c")
 (data (i32.const 5304) "\01\00\00\00\02\00\00\000")
 (data (i32.const 5324) "\\")
 (data (i32.const 5336) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 5420) "<")
 (data (i32.const 5432) "\01\00\00\00\"\00\00\00\n\00 \00r\00o\00u\00n\00d\00P\00r\00o\00g\00r\00e\00s\00s\00:\00 ")
 (data (i32.const 5484) "\\")
 (data (i32.const 5496) "\01\00\00\00D\00\00\00c\00o\00n\00t\00r\00a\00c\00t\00 \00p\00a\00u\00s\00e\00d\00 \00o\00r\00 \00n\00o\00t\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 5580) "L")
 (data (i32.const 5592) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 5660) "\\")
 (data (i32.const 5672) "\01\00\00\00F\00\00\00a\00c\00t\00i\00o\00n\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00e\00r\00f\00o\00r\00m\00e\00d\00 \00t\00h\00i\00s\00 \00r\00o\00u\00n\00d")
 (data (i32.const 5756) "L")
 (data (i32.const 5768) "\01\00\00\00.\00\00\00c\00a\00n\00\'\00t\00 \00c\00l\00e\00a\00n\00u\00p\00 \00s\00t\00a\00t\00s\00 \00y\00e\00t")
 (data (i32.const 5836) "L")
 (data (i32.const 5848) "\01\00\00\002\00\00\00c\00a\00n\00\'\00t\00 \00c\00l\00e\00a\00n\00u\00p\00 \00r\00e\00p\00o\00r\00t\00s\00 \00y\00e\00t")
 (data (i32.const 5916) "\\")
 (data (i32.const 5928) "\01\00\00\00B\00\00\00d\00e\00p\00o\00s\00i\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00g\00r\00e\00a\00t\00e\00r\00 \00t\00h\00a\00n\00 \00z\00e\00r\00o")
 (data (i32.const 6012) "<")
 (data (i32.const 6024) "\01\00\00\00(\00\00\00o\00r\00a\00c\00l\00e\00 \00d\00o\00e\00s\00n\00\'\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 6076) "<")
 (data (i32.const 6088) "\01\00\00\00\"\00\00\00n\00o\00t\00h\00i\00n\00g\00 \00t\00o\00 \00c\00h\00a\00n\00g\00e")
 (data (i32.const 6140) "\\")
 (data (i32.const 6152) "\01\00\00\00B\00\00\00c\00a\00n\00\'\00t\00 \00t\00o\00g\00g\00l\00e\00 \00s\00t\00a\00n\00d\00b\00y\00 \00t\00h\00i\00s\00 \00q\00u\00i\00c\00k\00l\00y")
 (data (i32.const 6236) "\\")
 (data (i32.const 6248) "\01\00\00\00J\00\00\00c\00a\00n\00\'\00t\00 \00t\00o\00g\00g\00l\00e\00 \00s\00t\00a\00n\00d\00b\00y\00 \00d\00u\00r\00i\00n\00g\00 \00u\00n\00l\00o\00c\00k\00i\00n\00g")
 (data (i32.const 6332) "\\")
 (data (i32.const 6344) "\01\00\00\00F\00\00\00d\00a\00t\00a\00 \00i\00s\00 \00t\00h\00e\00 \00s\00a\00m\00e\00,\00 \00n\00o\00t\00h\00i\00n\00g\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e")
 (data (i32.const 6428) "\\")
 (data (i32.const 6440) "\01\00\00\00H\00\00\00c\00a\00n\00\'\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00r\00a\00c\00l\00e\00 \00d\00u\00r\00i\00n\00g\00 \00u\00n\00l\00o\00c\00k\00i\00n\00g")
 (data (i32.const 6524) "\\")
 (data (i32.const 6536) "\01\00\00\00>\00\00\00o\00r\00a\00c\00l\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00e\00x\00i\00s\00t\00i\00n\00g\00 \00a\00c\00c\00o\00u\00n\00t")
 (data (i32.const 6620) "\9c")
 (data (i32.const 6632) "\01\00\00\00\80\00\00\00c\00u\00r\00r\00e\00n\00t\00l\00y\00 \00w\00i\00t\00h\00d\00r\00a\00w\00i\00n\00g\00,\00 \00m\00u\00s\00t\00 \00w\00a\00i\00t\00 \00f\00o\00r\00 \00c\00u\00r\00r\00e\00n\00t\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00t\00o\00 \00f\00i\00n\00i\00s\00h\00.")
 (data (i32.const 6780) "l")
 (data (i32.const 6792) "\01\00\00\00R\00\00\00c\00l\00a\00i\00m\00a\00b\00l\00e\00 \00f\00u\00n\00d\00s\00 \00m\00u\00s\00t\00 \00b\00e\00 \00g\00r\00e\00a\00t\00e\00r\00 \00t\00h\00a\00n\00 \00z\00e\00r\00o")
 (data (i32.const 6892) "L")
 (data (i32.const 6904) "\01\00\00\00.\00\00\00c\00a\00l\00l\00 \00w\00i\00t\00h\00d\00r\00a\00w\00i\00n\00i\00t\00 \00f\00i\00r\00s\00t")
 (data (i32.const 6972) "L")
 (data (i32.const 6984) "\01\00\00\000\00\00\00c\00a\00n\00\'\00t\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00f\00u\00n\00d\00s\00 \00y\00e\00t")
 (data (i32.const 7052) "\\")
 (data (i32.const 7064) "\01\00\00\00D\00\00\00p\00o\00w\00e\00r\00.\00b\00o\00i\00d\00 \00o\00r\00a\00c\00l\00e\00 \00r\00e\00w\00a\00r\00d\00 \00m\00i\00n\00t\00 \00f\00o\00r\00 ")
 (data (i32.const 7148) "L")
 (data (i32.const 7160) "\01\00\00\000\00\00\00p\00o\00w\00e\00r\00.\00b\00o\00i\00d\00 \00o\00r\00a\00c\00l\00e\00 \00r\00e\00w\00a\00r\00d")
 (data (i32.const 7228) "<")
 (data (i32.const 7240) "\01\00\00\00,\00\00\00c\00a\00n\00\'\00t\00 \00s\00t\00a\00r\00t\00 \00u\00n\00l\00o\00c\00k\00 \00y\00e\00t")
 (data (i32.const 7292) "\9c")
 (data (i32.const 7304) "\01\00\00\00\8a\00\00\00a\00c\00c\00o\00u\00n\00t\00 \00i\00s\00 \00a\00l\00r\00e\00a\00d\00y\00 \00u\00n\00l\00o\00c\00k\00i\00n\00g\00,\00 \00m\00u\00s\00t\00 \00w\00a\00i\00t\00 \00f\00o\00r\00 \00e\00x\00i\00s\00t\00i\00n\00g\00 \00u\00n\00l\00o\00c\00k\00 \00t\00o\00 \00f\00i\00n\00i\00s\00h")
 (data (i32.const 7452) "\bc")
 (data (i32.const 7464) "\01\00\00\00\a0\00\00\00o\00r\00a\00c\00l\00e\00 \00s\00t\00i\00l\00l\00 \00h\00a\00s\00 \00r\00o\00w\00s\00 \00i\00n\00 \00t\00h\00e\00 \00o\00r\00a\00c\00l\00e\00s\00t\00a\00t\00s\00 \00t\00a\00b\00l\00e\00,\00 \00m\00u\00s\00t\00 \00w\00a\00i\00t\00 \00f\00o\00r\00 \00r\00o\00w\00s\00 \00t\00o\00 \00b\00e\00 \00c\00l\00e\00a\00r\00e\00d")
 (data (i32.const 7644) "l")
 (data (i32.const 7656) "\01\00\00\00P\00\00\00o\00r\00a\00c\00l\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00s\00t\00a\00n\00d\00b\00y\00 \00t\00o\00 \00b\00e\00 \00u\00n\00l\00o\00c\00k\00e\00d")
 (data (i32.const 7756) "L")
 (data (i32.const 7768) "\01\00\00\00<\00\00\00u\00n\00l\00o\00c\00k\00 \00i\00s\00 \00s\00t\00i\00l\00l\00 \00u\00n\00d\00e\00r\00 \00p\00r\00o\00g\00r\00e\00s\00s")
 (data (i32.const 7836) "\\")
 (data (i32.const 7848) "\01\00\00\00B\00\00\00n\00o\00t\00 \00c\00u\00r\00r\00e\00n\00t\00l\00y\00 \00u\00n\00l\00o\00c\00k\00i\00n\00g\00 \00a\00n\00y\00 \00f\00u\00n\00d\00s")
 (data (i32.const 7932) "<")
 (data (i32.const 7944) "\01\00\00\00*\00\00\00u\00n\00l\00o\00c\00k\00e\00d\00 \00o\00r\00a\00c\00l\00e\00 \00f\00u\00n\00d\00s")
 (data (i32.const 7996) "\1c")
 (data (i32.const 8008) "b\00\00\00\08\00\00\00\02")
 (data (i32.const 8028) "<")
 (data (i32.const 8040) "\01\00\00\00&\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00p\00r\00o\00t\00o\00c\00o\00l\00_\00i\00d")
 (data (i32.const 8092) "L")
 (data (i32.const 8104) "\01\00\00\008\00\00\00r\00o\00u\00n\00d\00 \00i\00s\00 \00t\00o\00o\00 \00f\00a\00r\00 \00i\00n\00 \00t\00h\00e\00 \00p\00a\00s\00t")
 (data (i32.const 8172) "\\")
 (data (i32.const 8184) "\01\00\00\00J\00\00\00r\00e\00p\00o\00r\00t\00 \00r\00o\00u\00n\00d\00 \00m\00u\00s\00t\00 \00t\00a\00r\00g\00e\00t\00 \00a\00 \00p\00a\00s\00t\00 \00r\00o\00u\00n\00d")
 (data (i32.const 8268) "<")
 (data (i32.const 8280) "\01\00\00\00*\00\00\00o\00r\00a\00c\00l\00e\00 \00n\00o\00t\00 \00r\00e\00g\00i\00s\00t\00e\00r\00e\00d")
 (data (i32.const 8332) "\ac")
 (data (i32.const 8344) "\01\00\00\00\90\00\00\00o\00r\00a\00c\00l\00e\00 \00i\00s\00 \00i\00n\00 \00s\00t\00a\00n\00d\00b\00y\00 \00m\00o\00d\00e\00,\00 \00d\00i\00s\00a\00b\00l\00e\00 \00s\00t\00a\00n\00d\00b\00y\00 \00f\00i\00r\00s\00t\00 \00t\00o\00 \00s\00t\00a\00r\00t\00 \00m\00a\00k\00i\00n\00g\00 \00r\00e\00p\00o\00r\00t\00s")
 (data (i32.const 8508) "\\")
 (data (i32.const 8520) "\01\00\00\00J\00\00\00c\00a\00n\00\'\00t\00 \00m\00a\00k\00e\00 \00r\00e\00p\00o\00r\00t\00s\00 \00w\00i\00t\00h\00 \00a\00 \00w\00e\00i\00g\00h\00t\00 \00o\00f\00 \000")
 (data (i32.const 8604) "\1c")
 (data (i32.const 8636) "\1c")
 (data (i32.const 8668) "\1c")
 (data (i32.const 8700) "\1c")
 (data (i32.const 8732) "\1c")
 (data (i32.const 8764) "\1c")
 (data (i32.const 8796) "<")
 (data (i32.const 8808) "\01\00\00\00*\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00b\00o\00i\00d\00_\00i\00d\00_\00o\00w\00n\00e\00r")
 (data (i32.const 8860) "\\")
 (data (i32.const 8872) "\01\00\00\00F\00\00\00o\00r\00a\00c\00l\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00a\00p\00p\00r\00o\00v\00e\00d\00 \00t\00h\00i\00s\00 \00r\00e\00p\00o\00r\00t")
 (data (i32.const 8956) "L")
 (data (i32.const 8968) "\01\00\00\00.\00\00\00r\00e\00p\00o\00r\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00r\00e\00p\00o\00r\00t\00e\00d")
 (data (i32.const 9036) "<")
 (data (i32.const 9048) "\01\00\00\00*\00\00\00r\00e\00p\00o\00r\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00m\00e\00r\00g\00e\00d")
 (data (i32.const 9100) ",")
 (data (i32.const 9112) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x\00!")
 (data (i32.const 9148) "L")
 (data (i32.const 9160) "\01\00\00\004\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00r\00e\00p\00o\00r\00t\00 \00i\00d\00 \00o\00r\00 \00s\00c\00o\00p\00e")
 (data (i32.const 9228) "|")
 (data (i32.const 9240) "\01\00\00\00j\00\00\00r\00e\00p\00o\00r\00t\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00f\00i\00n\00a\00l\00i\00z\00e\00d\00 \00y\00e\00t\00,\00 \00t\00o\00o\00 \00e\00a\00r\00l\00y\00 \00i\00n\00 \00t\00h\00e\00 \00r\00o\00u\00n\00d")
 (data (i32.const 9356) "\9c")
 (data (i32.const 9368) "\01\00\00\00~\00\00\00r\00e\00p\00o\00r\00t\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00f\00i\00n\00a\00l\00i\00z\00e\00d\00 \00y\00e\00t\00,\00 \00m\00i\00n\00i\00m\00u\00m\00 \00w\00e\00i\00g\00h\00t\00 \00t\00h\00r\00e\00s\00h\00o\00l\00d\00 \00n\00o\00t\00 \00m\00e\00t")
 (data (i32.const 9516) "|")
 (data (i32.const 9528) "\01\00\00\00d\00\00\00c\00a\00n\00\'\00t\00 \00f\00i\00n\00a\00l\00i\00z\00e\00/\00m\00e\00r\00g\00e\00 \00r\00e\00p\00o\00r\00t\00s\00 \00t\00h\00i\00s\00 \00e\00a\00r\00l\00y\00 \00i\00n\00 \00a\00 \00r\00o\00u\00n\00d")
 (data (i32.const 9644) "\1c")
 (data (i32.const 9676) "<")
 (data (i32.const 9688) "\01\00\00\00&\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00i\00d\00 \00p\00r\00o\00v\00i\00d\00e\00d")
 (data (i32.const 9740) "L")
 (data (i32.const 9752) "\01\00\00\00.\00\00\00p\00r\00o\00t\00o\00c\00o\00l\00_\00i\00d\00s\00 \00m\00u\00s\00t\00 \00m\00a\00t\00c\00h")
 (data (i32.const 9820) "<")
 (data (i32.const 9832) "\01\00\00\00\"\00\00\00r\00o\00u\00n\00d\00s\00 \00m\00u\00s\00t\00 \00m\00a\00t\00c\00h")
 (data (i32.const 9884) "\\")
 (data (i32.const 9896) "\01\00\00\00H\00\00\00c\00a\00n\00\'\00t\00 \00m\00e\00r\00g\00e\00 \00r\00e\00p\00o\00r\00t\00s\00 \00a\00l\00r\00e\00a\00d\00y\00 \00r\00e\00p\00o\00r\00t\00e\00d")
 (data (i32.const 9980) "\\")
 (data (i32.const 9992) "\01\00\00\00D\00\00\00c\00a\00n\00\'\00t\00 \00m\00e\00r\00g\00e\00 \00r\00e\00p\00o\00r\00t\00s\00 \00a\00l\00r\00e\00a\00d\00y\00 \00m\00e\00r\00g\00e\00d")
 (data (i32.const 10076) "\1c")
 (data (i32.const 10088) "w\00\00\00\08\00\00\00\03")
 (data (i32.const 10108) ",")
 (data (i32.const 10120) "\01\00\00\00\1a\00\00\00r\00e\00p\00o\00r\00t\00 \00u\00n\00i\00t\00s\00 ")
 (data (i32.const 10156) "<")
 (data (i32.const 10168) "\01\00\00\00 \00\00\00 \00a\00b\00o\00v\00e\00 \00m\00a\00x\00i\00m\00u\00m\00:\00 ")
 (data (i32.const 10220) "L")
 (data (i32.const 10232) "\01\00\00\002\00\00\00 \00b\00e\00l\00o\00w\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00m\00i\00n\00i\00m\00u\00m\00:\00 ")
 (data (i32.const 10300) "\1c")
 (data (i32.const 10312) "x\00\00\00\08\00\00\00\04")
 (data (i32.const 10332) "<")
 (data (i32.const 10344) "\01\00\00\00\"\00\00\00\n\00 \00m\00i\00n\00 \00t\00h\00r\00e\00s\00h\00o\00l\00d\00:\00 ")
 (data (i32.const 10396) ",")
 (data (i32.const 10408) "\01\00\00\00\1a\00\00\00\n\00 \00a\00g\00g\00r\00e\00g\00a\00t\00e\00:\00 ")
 (data (i32.const 10444) "l")
 (data (i32.const 10456) "\01\00\00\00X\00\00\00a\00g\00g\00r\00e\00g\00a\00t\00e\00 \00a\00p\00p\00r\00o\00v\00a\00l\00_\00w\00e\00i\00g\00h\00t\00 \00i\00s\00n\00\'\00t\00 \00h\00i\00g\00h\00 \00e\00n\00o\00u\00g\00h\00 ")
 (data (i32.const 10556) "\1c")
 (data (i32.const 10568) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 10588) "\1c")
 (data (i32.const 10620) "\9c")
 (data (i32.const 10632) "\01\00\00\00\82\00\00\00c\00a\00n\00\'\00t\00 \00m\00e\00r\00g\00e\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00r\00e\00p\00o\00r\00t\00s\00 \00t\00h\00a\00t\00 \00s\00h\00a\00r\00e\00 \00a\00n\00 \00o\00r\00a\00c\00l\00e\00,\00 \00s\00h\00o\00u\00l\00d\00 \00s\00l\00a\00s\00h\00:\00 ")
 (data (i32.const 10780) "<")
 (data (i32.const 10792) "\01\00\00\00\1e\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00D\00e\00p\00o\00s\00i\00t")
 (data (i32.const 10844) "<")
 (data (i32.const 10856) "\01\00\00\00(\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00t\00o\00k\00e\00n\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 10908) "<")
 (data (i32.const 10920) "\01\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y")
 (data (i32.const 10972) ",")
 (data (i32.const 10984) "\01\00\00\00\14\00\00\00c\00o\00l\00l\00a\00t\00e\00r\00a\00l")
 (data (i32.const 11020) "l")
 (data (i32.const 11032) "\01\00\00\00Z\00\00\00m\00u\00s\00t\00 \00d\00e\00p\00o\00s\00i\00t\00 \00c\00o\00l\00l\00a\00t\00e\00r\00a\00l\00 \00i\00n\00 \00c\00o\00r\00r\00e\00c\00t\00 \00i\00n\00c\00r\00e\00m\00e\00n\00t\00s")
 (data (i32.const 11132) "\9c")
 (data (i32.const 11144) "\01\00\00\00\82\00\00\00i\00f\00 \00d\00e\00p\00o\00s\00i\00t\00i\00n\00g\00 \00o\00r\00a\00c\00l\00e\00 \00c\00o\00l\00l\00a\00t\00e\00r\00a\00l\00 \00m\00u\00s\00t\00 \00s\00p\00e\00c\00i\00f\00y\00 \00\'\00c\00o\00l\00l\00a\00t\00e\00r\00a\00l\00\'\00 \00a\00s\00 \00m\00e\00m\00o")
 (data (i32.const 11292) "|")
 (data (i32.const 11304) "\01\00\00\00^\00\00\00c\00a\00n\00\'\00t\00 \00p\00r\00o\00c\00e\00s\00s\00 \00t\00h\00i\00s\00 \00r\00o\00u\00n\00d\00 \00y\00e\00t\00,\00 \00n\00o\00t\00 \00y\00e\00t\00 \00f\00i\00n\00a\00l\00i\00z\00e\00d")
 (data (i32.const 11420) "L")
 (data (i32.const 11432) "\01\00\00\004\00\00\00o\00S\00t\00a\00t\00s\00 \00r\00o\00u\00n\00d\00 \00d\00o\00e\00s\00n\00\'\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 11500) "\\")
 (data (i32.const 11512) "\01\00\00\00@\00\00\00r\00o\00u\00n\00d\00 \00s\00t\00a\00t\00s\00 \00i\00s\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00r\00o\00c\00e\00s\00s\00e\00d")
 (data (i32.const 11596) "L")
 (data (i32.const 11608) "\01\00\00\00:\00\00\00r\00o\00u\00n\00d\00 \00s\00t\00a\00t\00s\00 \00n\00o\00t\00 \00y\00e\00t\00 \00a\00v\00a\00i\00l\00a\00b\00l\00e")
 (data (i32.const 11676) "<")
 (data (i32.const 11688) "\01\00\00\00&\00\00\00\n\00 \00u\00n\00r\00e\00p\00o\00r\00t\00e\00d\00S\00h\00a\00r\00e\00:\00 ")
 (data (i32.const 11740) "L")
 (data (i32.const 11752) "\01\00\00\000\00\00\00\n\00 \00r\00e\00p\00o\00r\00t\00e\00d\00S\00i\00n\00c\00e\00P\00r\00e\00v\00i\00o\00u\00s\00 ")
 (data (i32.const 11820) "L")
 (data (i32.const 11832) "\01\00\00\000\00\00\00\n\00 \00p\00r\00o\00p\00o\00s\00e\00d\00S\00i\00n\00c\00e\00P\00r\00e\00v\00i\00o\00u\00s\00 ")
 (data (i32.const 11900) "<")
 (data (i32.const 11912) "\01\00\00\00(\00\00\00\n\00 \00p\00r\00e\00v\00i\00o\00u\00s\00P\00r\00o\00p\00o\00s\00e\00d\00:\00 ")
 (data (i32.const 11964) "<")
 (data (i32.const 11976) "\01\00\00\00(\00\00\00\n\00 \00p\00r\00e\00v\00i\00o\00u\00s\00R\00e\00p\00o\00r\00t\00e\00d\00:\00 ")
 (data (i32.const 12028) "L")
 (data (i32.const 12040) "\01\00\00\004\00\00\00\n\00 \00o\00r\00a\00c\00l\00e\00 \00r\00e\00p\00o\00r\00t\00e\00d\00/\00m\00e\00r\00g\00e\00d\00:\00 ")
 (data (i32.const 12108) "<")
 (data (i32.const 12120) "\01\00\00\00\"\00\00\00\n\00 \00v\00a\00l\00i\00d\00P\00r\00o\00p\00o\00s\00e\00d\00:\00 ")
 (data (i32.const 12172) "L")
 (data (i32.const 12184) "\01\00\00\00.\00\00\00\n\00 \00g\00l\00o\00b\00a\00l\00V\00a\00l\00i\00d\00P\00r\00o\00p\00o\00s\00e\00d\00:\00 ")
 (data (i32.const 12252) "<")
 (data (i32.const 12264) "\01\00\00\00(\00\00\00\n\00 \00a\00c\00t\00i\00v\00e\00V\00a\00l\00i\00d\00a\00t\00o\00r\00s\00:\00 ")
 (data (i32.const 12316) "<")
 (data (i32.const 12328) "\01\00\00\00\"\00\00\00\n\00 \00r\00e\00p\00o\00r\00t\00e\00d\00S\00h\00a\00r\00e\00:\00 ")
 (data (i32.const 12380) "<")
 (data (i32.const 12392) "\01\00\00\00\"\00\00\00\n\00 \00p\00r\00o\00p\00o\00s\00e\00d\00S\00h\00a\00r\00e\00:\00 ")
 (data (i32.const 12444) "L")
 (data (i32.const 12456) "\01\00\00\00:\00\00\00\n\00 \00o\00r\00a\00c\00l\00e\00B\00o\00n\00u\00s\00R\00e\00p\00o\00r\00t\00e\00d\00P\00a\00y\00o\00u\00t\00:\00 ")
 (data (i32.const 12524) "L")
 (data (i32.const 12536) "\01\00\00\00:\00\00\00\n\00 \00o\00r\00a\00c\00l\00e\00B\00o\00n\00u\00s\00P\00r\00o\00p\00o\00s\00e\00d\00P\00a\00y\00o\00u\00t\00:\00 ")
 (data (i32.const 12604) "\\")
 (data (i32.const 12616) "\01\00\00\00D\00\00\00c\00a\00n\00\'\00t\00 \00f\00i\00n\00d\00 \00o\00r\00a\00c\00l\00e\00 \00i\00n\00 \00o\00r\00a\00c\00l\00e\00s\00 \00t\00a\00b\00l\00e")
 (data (i32.const 12700) "\\")
 (data (i32.const 12712) "\01\00\00\00@\00\00\00c\00a\00n\00\'\00t\00 \00s\00l\00a\00s\00h\00 \00a\00n\00 \00o\00r\00a\00c\00l\00e\00 \00i\00n\00 \00s\00t\00a\00n\00d\00b\00y")
 (data (i32.const 12796) "l")
 (data (i32.const 12808) "\01\00\00\00N\00\00\00m\00u\00s\00t\00 \00i\00n\00c\00l\00u\00d\00e\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \00t\00w\00o\00 \00p\00w\00r\00r\00e\00p\00o\00r\00t\00_\00i\00d\00s")
 (data (i32.const 12908) "<")
 (data (i32.const 12920) "\01\00\00\00$\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00r\00e\00p\00o\00r\00t\00I\00d\00:\00 ")
 (data (i32.const 12972) "|")
 (data (i32.const 12984) "\01\00\00\00d\00\00\00T\00h\00i\00s\00 \00r\00e\00p\00o\00r\00t\00 \00w\00a\00s\00n\00\'\00t\00 \00a\00p\00p\00r\00o\00v\00e\00d\00 \00b\00y\00 \00t\00h\00e\00 \00t\00a\00r\00g\00e\00t\00 \00o\00r\00a\00c\00l\00e\00:\00 ")
 (data (i32.const 13100) "<")
 (data (i32.const 13112) "\01\00\00\00 \00\00\00o\00r\00a\00c\00l\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 13164) "|")
 (data (i32.const 13176) "\01\00\00\00j\00\00\00o\00r\00a\00c\00l\00e\00 \00i\00s\00 \00i\00n\00 \00s\00t\00a\00n\00d\00b\00y\00,\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00s\00l\00a\00s\00h\00e\00d\00 \00f\00o\00r\00 \00i\00n\00a\00c\00t\00i\00v\00i\00t\00y")
 (data (i32.const 13292) "l")
 (data (i32.const 13304) "\01\00\00\00\\\00\00\00o\00r\00a\00c\00l\00e\00 \00i\00s\00 \00n\00o\00t\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00o\00 \00b\00e\00 \00a\00c\00t\00i\00v\00e\00 \00t\00h\00i\00s\00 \00r\00o\00u\00n\00d")
 (data (i32.const 13404) "\8c")
 (data (i32.const 13416) "\01\00\00\00z\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00r\00o\00u\00n\00d\00 \00s\00p\00e\00c\00i\00f\00i\00e\00d\00,\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00f\00o\00r\00e\00 \00t\00h\00e\00 \00f\00i\00n\00a\00l\00i\00z\00e\00d\00 \00r\00o\00u\00n\00d\00:\00 ")
 (data (i32.const 13548) "\9c")
 (data (i32.const 13560) "\01\00\00\00\84\00\00\00s\00t\00a\00t\00s\00 \00r\00o\00w\00 \00e\00x\00i\00s\00t\00s\00 \00f\00o\00r\00 \00t\00h\00i\00s\00 \00o\00r\00a\00c\00l\00e\00 \00o\00n\00 \00t\00h\00i\00s\00 \00r\00o\00u\00n\00d\00,\00 \00n\00o\00 \00s\00l\00a\00s\00h\00i\00n\00g\00 \00n\00e\00e\00d\00e\00d")
 (data (i32.const 13708) ",")
 (data (i32.const 13720) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 13756) ",")
 (data (i32.const 13768) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (data (i32.const 13804) ",")
 (data (i32.const 13816) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00a\00t\00a\00 \00s\00i\00z\00e")
 (data (i32.const 13852) "L")
 (data (i32.const 13864) "\01\00\00\00.\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00p\00u\00b\00l\00i\00c\00 \00k\00e\00y\00 \00t\00y\00p\00e")
 (data (i32.const 13932) "<")
 (data (i32.const 13944) "\01\00\00\00\1e\00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 13996) "<")
 (data (i32.const 14008) "\01\00\00\00 \00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
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
 (export "BoidPowerContract#set:statsT" (func $assembly/tables/stats/Stat#set:rewarded_since_previous))
 (export "BoidPowerContract#get:globalT" (func $assembly/actions/1-global/GlobalActions#get:globalT))
 (export "BoidPowerContract#set:globalT" (func $assembly/tables/stats/Stat#set:valid_proposed_since_previous))
 (export "BoidPowerContract#get:configT" (func $assembly/actions/1-global/GlobalActions#get:configT))
 (export "BoidPowerContract#set:configT" (func $assembly/tables/config/Config#set:slash_quantity_static))
 (export "BoidPowerContract#get:round" (func $assembly/actions/1-global/GlobalActions#get:round))
 (export "BoidPowerContract#set:round" (func $assembly/actions/1-global/GlobalActions#set:round))
 (export "BoidPowerContract#get:roundFloat" (func $assembly/actions/1-global/GlobalActions#get:roundFloat))
 (export "BoidPowerContract#set:roundFloat" (func $assembly/actions/1-global/GlobalActions#set:roundFloat))
 (export "BoidPowerContract#currentRound" (func $assembly/actions/1-global/GlobalActions#currentRound))
 (export "BoidPowerContract#currentRoundFloat" (func $assembly/actions/1-global/GlobalActions#currentRoundFloat))
 (export "BoidPowerContract#pwrReportsT" (func $assembly/actions/1-global/GlobalActions#pwrReportsT))
 (export "BoidPowerContract#oracleStatsT" (func $assembly/actions/1-global/GlobalActions#oracleStatsT))
 (export "BoidPowerContract#get:codePerm" (func $assembly/actions/1-global/GlobalActions#get:codePerm))
 (export "BoidPowerContract#set:codePerm" (func $assembly/tables/config/Config#set:keep_stats_rows))
 (export "BoidPowerContract#minWeightThreshold" (func $assembly/actions/1-global/GlobalActions#minWeightThreshold@varargs))
 (export "BoidPowerContract#markOracleActive" (func $assembly/actions/1-global/GlobalActions#markOracleActive@varargs))
 (export "BoidPowerContract#updateStats" (func $assembly/actions/1-global/GlobalActions#updateStats))
 (export "BoidPowerContract#configSet" (func $assembly/actions/1-global/GlobalActions#configSet))
 (export "BoidPowerContract#sendWholeBoid" (func $assembly/actions/1-global/GlobalActions#sendWholeBoid))
 (export "BoidPowerContract#thisRound" (func $assembly/actions/1-global/GlobalActions#thisRound))
 (export "BoidPowerContract#shouldFinalizeReports" (func $assembly/actions/1-global/GlobalActions#shouldFinalizeReports@varargs))
 (export "BoidPowerContract#findSlashQuantity" (func $assembly/actions/1-global/GlobalActions#findSlashQuantity@varargs))
 (export "BoidPowerContract#getConfig" (func $assembly/actions/1-global/GlobalActions#getConfig))
 (export "BoidPowerContract#loopStatsCleanup" (func $assembly/actions/1-global/GlobalActions#loopStatsCleanup))
 (export "BoidPowerContract#roundStats" (func $assembly/actions/1-global/GlobalActions#roundStats))
 (export "BoidPowerContract#statsCleanup" (func $assembly/actions/1-global/GlobalActions#statsCleanup))
 (export "BoidPowerContract#loopReportsCleanup" (func $assembly/actions/1-global/GlobalActions#loopReportsCleanup))
 (export "BoidPowerContract#getOracleWeight" (func $assembly/actions/1-global/GlobalActions#getOracleWeight))
 (export "BoidPowerContract#reportsCleanup" (func $assembly/actions/1-global/GlobalActions#reportsCleanup))
 (export "BoidPowerContract#sendOracleDeposit" (func $assembly/actions/2-oracle/OracleActions#sendOracleDeposit))
 (export "BoidPowerContract#oracleDeposit" (func $assembly/actions/2-oracle/OracleActions#oracleDeposit))
 (export "BoidPowerContract#sendOracleStandby" (func $assembly/actions/2-oracle/OracleActions#sendOracleStandby))
 (export "BoidPowerContract#setStandby" (func $assembly/actions/2-oracle/OracleActions#setStandby))
 (export "BoidPowerContract#sendOracleSet" (func $assembly/actions/2-oracle/OracleActions#sendOracleSet))
 (export "BoidPowerContract#oracleSet" (func $assembly/actions/2-oracle/OracleActions#oracleSet))
 (export "BoidPowerContract#withdrawInit" (func $assembly/actions/2-oracle/OracleActions#withdrawInit))
 (export "BoidPowerContract#withdrawEnd" (func $assembly/actions/2-oracle/OracleActions#withdrawEnd))
 (export "BoidPowerContract#unlockOracle" (func $assembly/actions/2-oracle/OracleActions#unlockOracle))
 (export "BoidPowerContract#unlockEnd" (func $assembly/actions/2-oracle/OracleActions#unlockEnd))
 (export "BoidPowerContract#getReportId" (func $assembly/actions/3-pwrreport/PwrReportActions#getReportId))
 (export "BoidPowerContract#sendReport" (func $assembly/actions/3-pwrreport/PwrReportActions#sendReport))
 (export "BoidPowerContract#pwrReport" (func $assembly/actions/3-pwrreport/PwrReportActions#pwrReport))
 (export "BoidPowerContract#updateOracleStats" (func $assembly/actions/3-pwrreport/PwrReportActions#updateOracleStats))
 (export "BoidPowerContract#finishReport" (func $assembly/actions/3-pwrreport/PwrReportActions#finishReport))
 (export "BoidPowerContract#mergeReports" (func $assembly/actions/3-pwrreport/PwrReportActions#mergeReports))
 (export "BoidPowerContract#protoSet" (func $assembly/actions/4-protocol/ProtoActions#protoSet))
 (export "BoidPowerContract#ondeposit" (func $assembly/actions/5-deposit/DepositActions#ondeposit))
 (export "BoidPowerContract#handleOStat" (func $assembly/actions/6-ostats/OStatsActions#handleOStat))
 (export "BoidPowerContract#sendPayOracle" (func $assembly/actions/6-ostats/OStatsActions#sendPayOracle))
 (export "BoidPowerContract#payOracle" (func $assembly/actions/6-ostats/OStatsActions#payOracle))
 (export "BoidPowerContract#sendSlashOracle" (func $assembly/actions/6-ostats/OStatsActions#sendSlashOracle))
 (export "BoidPowerContract#slashOracle" (func $assembly/actions/6-ostats/OStatsActions#slashOracle))
 (export "BoidPowerContract#slashMulti" (func $assembly/actions/6-ostats/OStatsActions#slashMulti))
 (export "BoidPowerContract#slashAbsent" (func $assembly/actions/6-ostats/OStatsActions#slashAbsent))
 (export "apply" (func $assembly/boid.contract/apply))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
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
 (func $~lib/dataview/DataView#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $2
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $0)
    )
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
  (local.get $1)
 )
 (func $~lib/as-chain/system/assert (param $0 i32) (param $1 i32)
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
  (call $~lib/as-chain/env/eosio_assert
   (i32.const 0)
   (i32.load offset=4
    (call $~lib/dataview/DataView#constructor@varargs
     (local.get $0)
    )
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
 (func $~lib/array/Array<u8>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store8
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
 )
 (func $start:assembly/boid.contract
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 14060)
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
     (call $~lib/array/Array<u8>#__uset
      (global.get $external/atomicassets/base58/BASE_MAP)
      (local.get $1)
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
 (func $assembly/tables/oracles/Oracle#set:standby (param $0 i32) (param $1 i32)
  (i32.store8 offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/oracles/Oracle#set:last_standby_toggle_round (param $0 i32) (param $1 i32)
  (i32.store16 offset=18
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/oracles/Oracle#set:expected_active_after_round (param $0 i32) (param $1 i32)
  (i32.store16 offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/oracles/Oracle#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 22)
     (i32.const 17)
    )
   )
   (local.get $0)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
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
  (call $assembly/tables/oracles/Oracle#set:standby
   (local.get $4)
   (i32.const 1)
  )
  (call $assembly/tables/oracles/Oracle#set:last_standby_toggle_round
   (local.get $4)
   (i32.const 0)
  )
  (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
   (local.get $4)
   (i32.const 0)
  )
  (local.get $4)
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
     (i32.const 20)
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
 (func $assembly/tables/oracles/OracleFunds#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 14)
     (i32.const 21)
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
  (local.get $0)
 )
 (func $assembly/tables/oracles/Oracle#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $7of7
   (block $3of7
    (block $2of7
     (block $0of7
      (block $outOfRange
       (br_table $0of7 $2of7 $2of7 $3of7 $7of7 $7of7 $7of7 $7of7 $outOfRange
        (global.get $~argumentsLength)
       )
      )
      (unreachable)
     )
     (local.set $0
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.set $2
     (call $assembly/tables/oracles/OracleCollateral#constructor)
    )
   )
   (local.set $1
    (call $assembly/tables/oracles/OracleFunds#constructor)
   )
  )
  (call $assembly/tables/oracles/Oracle#constructor
   (local.get $0)
   (i32.const 0)
   (local.get $2)
   (local.get $1)
  )
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
     (i32.const 27)
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
 (func $assembly/tables/stats/Stat#set:rewarded_since_previous (param $0 i32) (param $1 i32)
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/stats/Stat#set:valid_proposed_since_previous (param $0 i32) (param $1 i32)
  (i32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/stats/Stat#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 28)
     (i32.const 31)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $7)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $7)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $7)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $7)
   (local.get $4)
  )
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
   (local.get $7)
   (local.get $5)
  )
  (call $assembly/tables/stats/Stat#set:valid_proposed_since_previous
   (local.get $7)
   (local.get $6)
  )
  (local.get $7)
 )
 (func $assembly/tables/global/Global#set:standby_validators (param $0 i32) (param $1 i32)
  (i32.store8 offset=5
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/global/Global#set:expected_active_weight (param $0 i32) (param $1 i32)
  (i32.store16 offset=6
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/global/Global#set:active_weight (param $0 i32) (param $1 i32)
  (i32.store16 offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/global/GlobalReports#set:proposed (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/global/GlobalReports#constructor (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 32)
     (i32.const 34)
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
  (call $assembly/tables/global/GlobalReports#set:proposed
   (local.get $0)
   (i64.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/global/Global#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (block $7of7
   (block $4of7
    (block $0of7
     (block $outOfRange
      (br_table $0of7 $4of7 $4of7 $4of7 $4of7 $7of7 $7of7 $7of7 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (local.set $2
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 33)
      (i32.const 2736)
     )
    )
   )
   (local.set $1
    (call $assembly/tables/global/GlobalReports#constructor)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 26)
     (i32.const 32)
    )
   )
   (local.get $2)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/global/Global#set:standby_validators
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/global/Global#set:expected_active_weight
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $0)
   (i64.const 0)
  )
  (call $assembly/tables/global/Global#set:active_weight
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/stats/Stat#constructor@varargs (result i32)
  (local $0 i32)
  (block $7of7
   (block $1of7
    (block $outOfRange
     (br_table $1of7 $1of7 $7of7 $7of7 $7of7 $7of7 $7of7 $7of7 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $0
    (call $assembly/tables/global/Global#constructor@varargs)
   )
  )
  (call $assembly/tables/stats/Stat#constructor
   (i32.const 0)
   (local.get $0)
   (i32.const 0)
   (i32.const 0)
   (i32.const 0)
   (i32.const 0)
   (i32.const 0)
  )
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
 (func $assembly/tables/config/Config#set:paused (param $0 i32) (param $1 i32)
  (i32.store8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:min_consensus_pct (param $0 i32) (param $1 f32)
  (f32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:slash_threshold_pct (param $0 i32) (param $1 f32)
  (f32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:slash_quantity_static (param $0 i32) (param $1 i32)
  (i32.store offset=28
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:slash_quantity_collateral_pct (param $0 i32) (param $1 f32)
  (f32.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:withdraw_rounds_wait (param $0 i32) (param $1 i32)
  (i32.store16 offset=36
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:keep_stats_rows (param $0 i32) (param $1 i32)
  (i32.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:reports_finalized_after_rounds (param $0 i32) (param $1 i32)
  (i32.store8 offset=44
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:unlock_wait_rounds (param $0 i32) (param $1 i32)
  (i32.store16 offset=46
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:standby_toggle_interval_rounds (param $0 i32) (param $1 i32)
  (i32.store16 offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:weight_collateral_pwr (param $0 i32) (param $1 f32)
  (f32.store offset=52
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:oracle_collateral_deposit_increment (param $0 i32) (param $1 i32)
  (i32.store offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#set:reports_accumulate_weight_round_pct (param $0 i32) (param $1 f32)
  (f32.store offset=60
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/config/Config#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/config/Config#set:paused
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 64)
     (i32.const 41)
    )
   )
   (i32.const 1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:min_consensus_pct
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/protocols/Protocol#set:unitPowerMult
   (local.get $0)
   (f32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:slash_threshold_pct
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/config/Config#set:slash_quantity_static
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:slash_quantity_collateral_pct
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/config/Config#set:withdraw_rounds_wait
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:keep_stats_rows
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:reports_finalized_after_rounds
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:unlock_wait_rounds
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:standby_toggle_interval_rounds
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:weight_collateral_pwr
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/config/Config#set:oracle_collateral_deposit_increment
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:reports_accumulate_weight_round_pct
   (local.get $0)
   (f32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/config/Config#getTableName (param $0 i32) (result i32)
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
   (i64.const 4982871454518345728)
  )
  (local.get $0)
 )
 (func $assembly/actions/1-global/GlobalActions#set:round (param $0 i32) (param $1 i32)
  (i32.store16 offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#set:roundFloat (param $0 i32) (param $1 f32)
  (f32.store offset=36
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
     (i32.const 45)
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
          (i32.const 44)
          (i32.const 15)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 16)
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
     (i32.const 22)
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
    (i32.const 26)
    (i32.const 2672)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 23)
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
     (i32.const 24)
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
     (i32.const 28)
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
    (i32.const 26)
    (i32.const 2704)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 29)
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
     (i32.const 30)
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
     (i32.const 35)
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
   (call $assembly/tables/stats/Stat#constructor@varargs)
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
    (i32.const 26)
    (i32.const 2768)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 36)
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
     (i32.const 37)
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
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
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
     (i32.const 38)
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
    (i32.const 26)
    (i32.const 2800)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 39)
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
     (i32.const 40)
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
  (call $assembly/tables/stats/Stat#set:valid_proposed_since_previous
   (local.get $0)
   (local.get $2)
  )
  (local.set $3
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
     (i32.const 42)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.load
    (local.tee $5
     (call $assembly/tables/config/Config#getTableName
      (call $assembly/tables/config/Config#constructor)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 26)
    (i32.const 2832)
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
     (i32.const 44)
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
  (call $assembly/tables/config/Config#set:slash_quantity_static
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/actions/1-global/GlobalActions#set:round
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/actions/1-global/GlobalActions#set:roundFloat
   (local.get $0)
   (f32.const 0)
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (call $~lib/as-chain/name/S2N
    (i32.const 2864)
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
  (call $assembly/tables/config/Config#set:keep_stats_rows
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
                (block (result i32)
                 (if
                  (i32.eqz
                   (local.get $0)
                  )
                  (local.set $0
                   (call $~lib/rt/stub/__new
                    (i32.const 44)
                    (i32.const 9)
                   )
                  )
                 )
                 (local.get $0)
                )
               )
               (local.set $0
                (call $~lib/rt/stub/__new
                 (i32.const 44)
                 (i32.const 10)
                )
               )
              )
              (local.get $0)
             )
            )
            (local.set $0
             (call $~lib/rt/stub/__new
              (i32.const 44)
              (i32.const 11)
             )
            )
           )
           (local.get $0)
          )
         )
         (local.set $0
          (call $~lib/rt/stub/__new
           (i32.const 44)
           (i32.const 12)
          )
         )
        )
        (local.get $0)
       )
      )
      (local.set $0
       (call $~lib/rt/stub/__new
        (i32.const 44)
        (i32.const 13)
       )
      )
     )
     (local.get $0)
    )
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 44)
     (i32.const 14)
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
 (func $assembly/actions/1-global/GlobalActions#get:configT (param $0 i32) (result i32)
  (i32.load offset=28
   (local.get $0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#get:round (param $0 i32) (result i32)
  (i32.load16_u offset=32
   (local.get $0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#get:roundFloat (param $0 i32) (result f32)
  (f32.load offset=36
   (local.get $0)
  )
 )
 (func $assembly/tables/external/config/Config#set:auto (param $0 i32) (param $1 i32)
  (i32.store offset=32
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
     (i32.const 48)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/global/Global#set:standby_validators
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
    (i32.const 49)
    (i32.const 2896)
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
 (func $assembly/tables/external/config/ConfigPower#set:powered_stake_pwr (param $0 i32) (param $1 f32)
  (f32.store offset=16
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
     (i32.const 50)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:round_decay_mult
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/config/Config#set:min_consensus_pct
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
  (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
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
     (i32.const 51)
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
 (func $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds (param $0 i32) (param $1 i32)
  (i32.store16 offset=2
   (local.get $0)
   (local.get $1)
  )
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
     (i32.const 52)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
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
  (call $assembly/tables/config/Config#set:paused
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 2)
     (i32.const 53)
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
     (i32.const 56)
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
     (i32.const 55)
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
     (i32.const 54)
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
     (i32.const 57)
    )
   )
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 33)
    (i32.const 2928)
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
     (i32.const 58)
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
     (i32.const 59)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigPower#set:round_decay_mult
   (local.get $0)
   (f32.const 0)
  )
  (call $assembly/tables/config/Config#set:min_consensus_pct
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
     (i32.const 47)
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
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
   (local.get $0)
   (local.get $6)
  )
  (call $assembly/tables/stats/Stat#set:valid_proposed_since_previous
   (local.get $0)
   (local.get $7)
  )
  (call $assembly/tables/config/Config#set:slash_quantity_static
   (local.get $0)
   (local.get $8)
  )
  (call $assembly/tables/external/config/Config#set:auto
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
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $1
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 60)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (i32.const 0)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (i64.load
    (local.tee $4
     (call $assembly/tables/config/Config#getTableName
      (call $assembly/tables/external/config/Config#constructor@varargs)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 26)
    (i32.const 2960)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 61)
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
  (local.set $6
   (i64.load
    (local.get $0)
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
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 62)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
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
     (i32.const 63)
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
     (i32.const 64)
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
    (i32.const 3024)
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
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigAuth#constructor)
   )
  )
  (call $assembly/tables/stats/Stat#set:valid_proposed_since_previous
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigNft#constructor)
   )
  )
  (call $assembly/tables/config/Config#set:slash_quantity_static
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/config/ConfigAutoAdjust#constructor)
   )
  )
  (call $assembly/tables/external/config/Config#set:auto
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
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#getOrNull (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $0
     (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/external/config/Config>#find (result i32)
      (if
       (i32.ge_s
        (local.tee $0
         (call $~lib/as-chain/env/db_find_i64
          (i64.load
           (local.tee $1
            (i32.load
             (i32.load offset=8
              (local.get $0)
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
          (local.tee $3
           (i64.load
            (local.get $0)
           )
          )
         )
        )
        (i32.const 0)
       )
       (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/external/config/Config>#find
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#constructor
         (local.get $1)
         (local.get $0)
         (local.get $3)
         (i32.const 1)
        )
       )
      )
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#constructor
       (local.get $1)
       (local.get $0)
       (i64.const 0)
       (i32.const 0)
      )
     )
    )
   )
   (block
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#getValue
     (if
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
        (local.tee $1
         (local.get $0)
        )
       )
      )
      (block
       (local.set $0
        (i32.const 0)
       )
       (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#getValue)
      )
     )
     (drop
      (i32.load
       (local.get $1)
      )
     )
     (local.set $0
      (i32.const 0)
     )
     (if
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $2
         (i32.load offset=4
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
      (block
       (drop
        (call $~lib/as-chain/env/db_get_i64
         (local.get $2)
         (i32.load offset=4
          (local.tee $2
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
        (call $assembly/tables/external/config/Config#unpack
         (local.tee $0
          (call $assembly/tables/external/config/Config#constructor@varargs)
         )
         (local.get $2)
        )
       )
      )
     )
    )
    (return
     (local.get $0)
    )
   )
  )
  (i32.const 0)
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
 (func $~lib/as-chain/system/currentTimeSec (result i32)
  (call $~lib/as-chain/time/TimePoint#secSinceEpoch
   (call $~lib/as-chain/time/TimePoint#constructor
    (call $~lib/as-chain/env/current_time)
   )
  )
 )
 (func $assembly/actions/1-global/GlobalActions#currentRound (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (if
   (i32.eqz
    (i32.load16_u offset=32
     (local.get $0)
    )
   )
   (block
    (local.set $2
     (call $~lib/as-chain/name/S2N
      (i32.const 2992)
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
     (local.get $2)
    )
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (if
     (local.tee $1
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#getOrNull
       (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#constructor@varargs
        (local.get $1)
       )
      )
     )
     (call $assembly/actions/1-global/GlobalActions#set:round
      (local.get $0)
      (i32.div_u
       (i32.sub
        (call $~lib/as-chain/system/currentTimeSec)
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
      (i32.const 3120)
     )
    )
   )
  )
  (i32.load16_u offset=32
   (local.get $0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#currentRoundFloat (param $0 i32) (result f32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/name/S2N
    (i32.const 2992)
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
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (if (result f32)
   (local.tee $0
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#getOrNull
     (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/external/config/Config>#constructor@varargs
      (local.get $0)
     )
    )
   )
   (f32.div
    (f32.convert_i32_u
     (i32.sub
      (call $~lib/as-chain/system/currentTimeSec)
      (call $~lib/as-chain/time/TimePoint#secSinceEpoch
       (i32.load
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
     )
    )
    (f32.convert_i32_u
     (i32.load offset=4
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
   )
   (block (result f32)
    (call $~lib/as-chain/system/check
     (i32.const 0)
     (i32.const 3120)
    )
    (f32.const 0)
   )
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow#set:reported (param $0 i32) (param $1 i32)
  (i32.store8 offset=22
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow#set:merged (param $0 i32) (param $1 i32)
  (i32.store8 offset=23
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/pwrreports/PwrReportRow#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 65)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $6)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $6)
   (local.get $3)
  )
  (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
   (local.get $6)
   (local.get $4)
  )
  (call $assembly/tables/pwrreports/PwrReportRow#set:reported
   (local.get $6)
   (local.get $5)
  )
  (call $assembly/tables/pwrreports/PwrReportRow#set:merged
   (local.get $6)
   (i32.const 0)
  )
  (local.get $6)
 )
 (func $assembly/tables/pwrreports/PwrReport#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/config/Config#set:paused
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 66)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/pwrreports/PwrReportRow#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $7of7
   (block $3of7
    (block $2of7
     (block $1of7
      (block $outOfRange
       (br_table $1of7 $1of7 $2of7 $3of7 $7of7 $7of7 $7of7 $7of7 $outOfRange
        (global.get $~argumentsLength)
       )
      )
      (unreachable)
     )
     (local.set $0
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.set $2
     (call $assembly/tables/pwrreports/PwrReport#constructor)
    )
   )
   (local.set $1
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 33)
     (i32.const 3216)
    )
   )
  )
  (call $assembly/tables/pwrreports/PwrReportRow#constructor
   (i64.const 0)
   (local.get $0)
   (local.get $2)
   (local.get $1)
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
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 67)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $3)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/tables/pwrreports/PwrReportRow#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $8
   (call $assembly/tables/pwrreports/PwrReportRow.get:tableName)
  )
  (local.set $4
   (i64.and
    (i64.load
     (call $assembly/tables/pwrreports/PwrReportRow.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $7
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 26)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $5
   (i64.load
    (local.get $0)
   )
  )
  (local.set $6
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
        (i32.const 70)
       )
      )
     )
     (local.set $2
      (call $~lib/rt/stub/__new
       (i32.const 28)
       (i32.const 25)
      )
     )
    )
    (local.get $2)
   )
   (local.get $5)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $2)
   (local.get $4)
  )
  (call $assembly/tables/stats/Stat#set:valid_proposed_since_previous
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $7)
   (i32.const 0)
   (local.get $2)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (local.set $4
   (i64.load
    (local.get $0)
   )
  )
  (local.set $5
   (i64.load
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $8)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 69)
    )
   )
   (local.get $4)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $0)
   (local.get $5)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $0)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
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
 (func $assembly/tables/oracleStats/OracleStat#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 9)
     (i32.const 71)
    )
   )
   (local.get $0)
  )
  (call $assembly/tables/oracleStats/OracleStat#set:weight
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $assembly/tables/oracleStats/Reports#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 72)
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
  (local.get $0)
 )
 (func $assembly/tables/oracleStats/OracleStat#constructor@varargs (result i32)
  (local $0 i32)
  (block $4of4
   (block $2of4
    (block $outOfRange
     (br_table $2of4 $2of4 $2of4 $4of4 $4of4 $outOfRange
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
   (i32.const 0)
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
     (i32.const 73)
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
    (i32.const 26)
    (i32.const 3248)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 74)
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
     (i32.const 75)
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
  (i32.load offset=40
   (local.get $0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#minWeightThreshold (param $0 i32) (param $1 i32) (result i32)
  (i32.trunc_f64_u
   (f64.max
    (f64.promote_f32
     (f32.mul
      (f32.convert_i32_u
       (i32.load16_u offset=6
        (local.get $1)
       )
      )
      (f32.load offset=8
       (local.get $0)
      )
     )
    )
    (f64.convert_i32_u
     (i32.load offset=4
      (local.get $0)
     )
    )
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
 (func $~lib/array/Array<~lib/as-chain/name/Name>#includes (param $0 i32) (param $1 i32) (result i32)
  (i32.ge_s
   (call $~lib/array/Array<~lib/as-chain/name/Name>#indexOf
    (local.get $0)
    (local.get $1)
   )
   (i32.const 0)
  )
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
 (func $~lib/array/Array<~lib/as-chain/name/Name>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/array/ensureCapacity
   (local.get $0)
   (local.tee $3
    (i32.add
     (local.tee $2
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
     (local.get $2)
     (i32.const 2)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#markOracleActive (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $~lib/array/Array<~lib/as-chain/name/Name>#includes
     (i32.load
      (local.get $1)
     )
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (call $~lib/array/Array<~lib/as-chain/name/Name>#push
     (i32.load
      (local.get $1)
     )
     (i32.load
      (local.get $0)
     )
    )
    (call $assembly/tables/global/Global#set:active_weight
     (local.get $1)
     (i32.add
      (i32.load16_u offset=24
       (local.get $1)
      )
      (i32.load8_u offset=4
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 76)
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
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/global/Global>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 77)
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
     (i32.const 33)
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
 (func $assembly/tables/global/Global#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/name/Name>#constructor
    (local.tee $4
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
     (local.get $4)
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
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/tables/global/Global#set:standby_validators
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/tables/global/Global#set:expected_active_weight
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
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/tables/global/Global#set:active_weight
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
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
 (func $assembly/tables/stats/Stat#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $assembly/tables/stats/Stat#set:valid_proposed_since_previous
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $assembly/tables/stats/Stat#unpack
    (local.tee $0
     (call $assembly/tables/stats/Stat#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#get (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
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
     (i32.const 78)
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
 (func $~lib/array/Array<~lib/as-chain/name/Name>#__get (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/tables/global/Global#getSize (param $0 i32) (result i32)
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (i32.add
   (local.get $1)
   (i32.const 46)
  )
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
    (i32.const 3344)
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
    (i32.const 3424)
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
      (i32.const 22)
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryValue#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 79)
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
     (i32.const 80)
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
   (i32.const 3504)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/stats/Stat>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local.set $4
   (call $assembly/tables/stats/Stat#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find
      (i32.load
       (local.get $0)
      )
      (local.get $4)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $7
   (i32.load
    (local.tee $6
     (i32.load
      (local.get $0)
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
    (local.get $2)
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
       (local.get $2)
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
 (func $assembly/actions/1-global/GlobalActions#updateStats (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (if
   (block (result i32)
    (local.set $1
     (i32.load offset=20
      (local.get $0)
     )
    )
    (local.set $3
     (i64.extend_i32_u
      (call $assembly/actions/1-global/GlobalActions#currentRound
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find
      (i32.load
       (local.get $1)
      )
      (local.get $3)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (if
   (block (result i32)
    (local.set $2
     (i32.load offset=20
      (local.get $0)
     )
    )
    (local.set $3
     (i64.extend_i32_u
      (i32.and
       (i32.sub
        (call $assembly/actions/1-global/GlobalActions#currentRound
         (local.get $0)
        )
        (i32.const 1)
       )
       (i32.const 65535)
      )
     )
    )
    (i32.eqz
     (local.tee $2
      (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#getByKey (result i32)
       (drop
        (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#getByKey
         (i32.const 0)
         (i32.eqz
          (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
           (local.tee $4
            (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find
             (local.tee $2
              (i32.load
               (local.get $2)
              )
             )
             (local.get $3)
            )
           )
          )
         )
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#get
        (i32.load
         (local.get $2)
        )
        (local.get $4)
       )
      )
     )
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/stats/Stat>#store
    (i32.load offset=20
     (local.get $0)
    )
    (call $assembly/tables/stats/Stat#constructor
     (call $assembly/actions/1-global/GlobalActions#currentRound
      (local.get $0)
     )
     (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
      (i32.load offset=24
       (local.get $0)
      )
     )
     (i32.wrap_i64
      (i64.load offset=16
       (i32.load offset=8
        (local.get $1)
       )
      )
     )
     (i32.wrap_i64
      (i64.load offset=8
       (i32.load offset=8
        (local.get $1)
       )
      )
     )
     (i32.wrap_i64
      (i64.load offset=24
       (i32.load offset=8
        (local.get $1)
       )
      )
     )
     (i32.wrap_i64
      (i64.load offset=16
       (local.get $1)
      )
     )
     (i32.wrap_i64
      (i64.load offset=24
       (i32.load offset=8
        (local.get $1)
       )
      )
     )
    )
    (i32.load
     (local.get $0)
    )
   )
   (block
    (local.set $3
     (i64.sub
      (i64.load offset=16
       (i32.load offset=8
        (local.get $1)
       )
      )
      (i64.load offset=16
       (i32.load offset=8
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
     )
    )
    (local.set $5
     (i64.sub
      (i64.load offset=8
       (i32.load offset=8
        (local.get $1)
       )
      )
      (i64.load offset=8
       (i32.load offset=8
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
     )
    )
    (local.set $6
     (i64.sub
      (i64.load offset=24
       (i32.load offset=8
        (local.get $1)
       )
      )
      (i64.load offset=24
       (i32.load offset=8
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
     )
    )
    (local.set $7
     (i64.sub
      (i64.load offset=16
       (local.get $1)
      )
      (i64.load offset=16
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
    )
    (local.set $8
     (i64.sub
      (i64.load offset=24
       (i32.load offset=8
        (local.get $1)
       )
      )
      (i64.load offset=8
       (i32.load offset=8
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/stats/Stat>#store
     (i32.load offset=20
      (local.get $0)
     )
     (call $assembly/tables/stats/Stat#constructor
      (call $assembly/actions/1-global/GlobalActions#currentRound
       (local.get $0)
      )
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
       (i32.load offset=24
        (local.get $0)
       )
      )
      (i32.wrap_i64
       (local.get $3)
      )
      (i32.wrap_i64
       (local.get $5)
      )
      (i32.wrap_i64
       (local.get $6)
      )
      (i32.wrap_i64
       (local.get $7)
      )
      (i32.wrap_i64
       (local.get $8)
      )
     )
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 82)
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
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/config/Config>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/config/Config>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/config/Config>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/tables/config/Config#getPrimaryValue (result i64)
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
   (i64.const 4982871454518345728)
  )
  (i64.load
   (local.get $0)
  )
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
 (func $assembly/tables/config/Config#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $assembly/tables/config/Config#set:paused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
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
  (call $assembly/tables/config/Config#set:min_consensus_pct
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
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:slash_threshold_pct
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:slash_quantity_static
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:slash_quantity_collateral_pct
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:withdraw_rounds_wait
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:keep_stats_rows
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:reports_finalized_after_rounds
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:unlock_wait_rounds
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:standby_toggle_interval_rounds
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:weight_collateral_pwr
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:oracle_collateral_deposit_increment
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:reports_accumulate_weight_round_pct
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#getValue (param $0 i32) (result i32)
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
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/config/Config>#getEx (result i32)
   (drop
    (i32.load
     (local.get $0)
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/config/Config>#getEx
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
   (drop
    (call $assembly/tables/config/Config#unpack
     (local.tee $1
      (call $assembly/tables/config/Config#constructor)
     )
     (local.get $0)
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<bool> (param $0 i32) (param $1 i32)
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
 (func $assembly/tables/config/Config#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 56)
    )
   )
   (i32.load8_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=4
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
   (local.get $1)
   (f32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=28
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
   (local.get $1)
   (f32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=44
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=46
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
   (local.get $1)
   (f32.load offset=52
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
   (local.get $1)
   (f32.load offset=60
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/config/Config>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.get $1)
   )
   (i32.const 3568)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (call $assembly/tables/config/Config#getPrimaryValue)
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.get $1)
      )
      (i32.const 3632)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#getValue
        (local.get $1)
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
      (local.get $1)
      (call $assembly/tables/config/Config#getPrimaryValue)
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
   (i32.const 3712)
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
     (call $assembly/tables/config/Config#pack
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
 (func $assembly/actions/1-global/GlobalActions#configSet (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/config/Config>#find
      (i32.load offset=8
       (local.tee $2
        (i32.load offset=28
         (local.get $0)
        )
       )
      )
      (i64.load
       (local.get $2)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<assembly/tables/config/Config>#update
    (i32.load offset=8
     (local.get $2)
    )
    (local.get $0)
    (local.get $1)
    (local.get $4)
   )
   (block
    (local.set $0
     (i32.const 0)
    )
    (local.set $5
     (i32.load
      (local.tee $2
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
    )
    (local.set $3
     (call $assembly/tables/config/Config#getPrimaryValue)
    )
    (local.set $6
     (i64.load
      (local.get $4)
     )
    )
    (local.set $7
     (i32.load offset=12
      (local.tee $1
       (call $assembly/tables/config/Config#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#constructor
      (local.get $5)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $5)
       )
       (i64.load offset=16
        (local.get $5)
       )
       (local.get $6)
       (local.get $3)
       (i32.load offset=4
        (local.get $1)
       )
       (local.get $7)
      )
      (local.get $3)
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
        (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
         (i32.load offset=4
          (local.get $2)
         )
         (local.get $0)
        )
        (call $assembly/tables/config/Config#getPrimaryValue)
        (call $assembly/tables/stats/Stat#getSecondaryValue)
        (i64.load
         (local.get $4)
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
      (local.tee $3
       (call $assembly/tables/config/Config#getPrimaryValue)
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
   )
  )
 )
 (func $assembly/actions/5-deposit/TokenTransfer#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 84)
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
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 85)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/Symbol#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 86)
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
   (i32.const 3920)
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
      (i32.const 3984)
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
  (local.get $0)
 )
 (func $~lib/as-chain/action/Action#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 90)
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
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
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
 (func $assembly/actions/5-deposit/TokenTransfer#pack (param $0 i32) (result i32)
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
       (i32.load offset=4
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
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
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
 (func $assembly/actions/1-global/GlobalActions#sendWholeBoid (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 87)
    )
   )
   (i32.const 0)
  )
  (local.set $6
   (call $~lib/as-chain/name/S2N
    (i32.const 3824)
   )
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
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $5)
  )
  (local.set $6
   (call $~lib/as-chain/name/S2N
    (i32.const 3872)
   )
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
   (local.get $6)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $6
   (call $~lib/as-chain/name/S2N
    (i32.const 2864)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $7)
   (local.get $6)
  )
  (local.set $7
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $1)
    (local.get $7)
   )
  )
  (local.set $8
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 88)
    )
   )
   (local.get $8)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
   (i64.const 293287707140)
  )
  (local.set $2
   (call $assembly/actions/5-deposit/TokenTransfer#constructor
    (local.get $1)
    (local.get $2)
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.mul
      (i64.extend_i32_u
       (local.get $3)
      )
      (i64.const 10000)
     )
     (local.get $5)
    )
    (local.get $4)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $1
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 89)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $1)
   (i32.const 0)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load
     (local.get $0)
    )
    (local.get $1)
    (call $assembly/actions/5-deposit/TokenTransfer#pack
     (local.get $2)
    )
   )
  )
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
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
 (func $~lib/util/number/genDigits (param $0 i64) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32) (result i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local.set $8
   (i64.sub
    (local.get $2)
    (local.get $0)
   )
  )
  (local.set $6
   (i64.and
    (local.get $2)
    (local.tee $11
     (i64.sub
      (local.tee $10
       (i64.shl
        (i64.const 1)
        (i64.extend_i32_s
         (local.tee $9
          (i32.sub
           (i32.const 0)
           (local.get $3)
          )
         )
        )
       )
      )
      (i64.const 1)
     )
    )
   )
  )
  (local.set $7
   (call $~lib/util/number/decimalCount32
    (local.tee $1
     (i32.wrap_i64
      (i64.shr_u
       (local.get $2)
       (i64.extend_i32_s
        (local.get $9)
       )
      )
     )
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.gt_s
     (local.get $7)
     (i32.const 0)
    )
    (block
     (block $break|1
      (block $case10|1
       (block $case9|1
        (block $case8|1
         (block $case7|1
          (block $case6|1
           (block $case5|1
            (block $case4|1
             (block $case3|1
              (block $case2|1
               (block $case1|1
                (block $case0|1
                 (br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case0|1 $case10|1
                  (i32.sub
                   (local.get $7)
                   (i32.const 1)
                  )
                 )
                )
                (local.set $3
                 (i32.div_u
                  (local.get $1)
                  (i32.const 1000000000)
                 )
                )
                (local.set $1
                 (i32.rem_u
                  (local.get $1)
                  (i32.const 1000000000)
                 )
                )
                (br $break|1)
               )
               (local.set $3
                (i32.div_u
                 (local.get $1)
                 (i32.const 100000000)
                )
               )
               (local.set $1
                (i32.rem_u
                 (local.get $1)
                 (i32.const 100000000)
                )
               )
               (br $break|1)
              )
              (local.set $3
               (i32.div_u
                (local.get $1)
                (i32.const 10000000)
               )
              )
              (local.set $1
               (i32.rem_u
                (local.get $1)
                (i32.const 10000000)
               )
              )
              (br $break|1)
             )
             (local.set $3
              (i32.div_u
               (local.get $1)
               (i32.const 1000000)
              )
             )
             (local.set $1
              (i32.rem_u
               (local.get $1)
               (i32.const 1000000)
              )
             )
             (br $break|1)
            )
            (local.set $3
             (i32.div_u
              (local.get $1)
              (i32.const 100000)
             )
            )
            (local.set $1
             (i32.rem_u
              (local.get $1)
              (i32.const 100000)
             )
            )
            (br $break|1)
           )
           (local.set $3
            (i32.div_u
             (local.get $1)
             (i32.const 10000)
            )
           )
           (local.set $1
            (i32.rem_u
             (local.get $1)
             (i32.const 10000)
            )
           )
           (br $break|1)
          )
          (local.set $3
           (i32.div_u
            (local.get $1)
            (i32.const 1000)
           )
          )
          (local.set $1
           (i32.rem_u
            (local.get $1)
            (i32.const 1000)
           )
          )
          (br $break|1)
         )
         (local.set $3
          (i32.div_u
           (local.get $1)
           (i32.const 100)
          )
         )
         (local.set $1
          (i32.rem_u
           (local.get $1)
           (i32.const 100)
          )
         )
         (br $break|1)
        )
        (local.set $3
         (i32.div_u
          (local.get $1)
          (i32.const 10)
         )
        )
        (local.set $1
         (i32.rem_u
          (local.get $1)
          (i32.const 10)
         )
        )
        (br $break|1)
       )
       (local.set $3
        (local.get $1)
       )
       (local.set $1
        (i32.const 0)
       )
       (br $break|1)
      )
      (local.set $3
       (i32.const 0)
      )
     )
     (if
      (i32.or
       (local.get $3)
       (local.get $5)
      )
      (local.set $5
       (block (result i32)
        (i32.store16
         (i32.add
          (i32.shl
           (local.get $5)
           (i32.const 1)
          )
          (i32.const 4192)
         )
         (i32.add
          (i32.and
           (local.get $3)
           (i32.const 65535)
          )
          (i32.const 48)
         )
        )
        (i32.add
         (local.get $5)
         (i32.const 1)
        )
       )
      )
     )
     (local.set $7
      (i32.sub
       (local.get $7)
       (i32.const 1)
      )
     )
     (if
      (i64.le_u
       (local.tee $0
        (i64.add
         (local.get $6)
         (i64.shl
          (i64.extend_i32_u
           (local.get $1)
          )
          (i64.extend_i32_s
           (local.get $9)
          )
         )
        )
       )
       (local.get $4)
      )
      (block
       (global.set $~lib/util/number/_K
        (i32.add
         (local.get $7)
         (global.get $~lib/util/number/_K)
        )
       )
       (local.set $2
        (i64.shl
         (i64.load32_u
          (i32.add
           (i32.shl
            (local.get $7)
            (i32.const 2)
           )
           (i32.const 5120)
          )
         )
         (i64.extend_i32_s
          (local.get $9)
         )
        )
       )
       (local.set $1
        (i32.load16_u
         (local.tee $3
          (i32.add
           (i32.shl
            (local.get $5)
            (i32.const 1)
           )
           (i32.const 4190)
          )
         )
        )
       )
       (loop $while-continue|3
        (if
         (select
          (select
           (i32.const 1)
           (i64.gt_u
            (i64.sub
             (local.get $8)
             (local.get $0)
            )
            (i64.sub
             (local.tee $6
              (i64.add
               (local.get $0)
               (local.get $2)
              )
             )
             (local.get $8)
            )
           )
           (i64.lt_u
            (local.get $6)
            (local.get $8)
           )
          )
          (i32.const 0)
          (select
           (i64.le_u
            (local.get $2)
            (i64.sub
             (local.get $4)
             (local.get $0)
            )
           )
           (i32.const 0)
           (i64.lt_u
            (local.get $0)
            (local.get $8)
           )
          )
         )
         (block
          (local.set $1
           (i32.sub
            (local.get $1)
            (i32.const 1)
           )
          )
          (local.set $0
           (i64.add
            (local.get $0)
            (local.get $2)
           )
          )
          (br $while-continue|3)
         )
        )
       )
       (i32.store16
        (local.get $3)
        (local.get $1)
       )
       (return
        (local.get $5)
       )
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (loop $while-continue|4
   (local.set $4
    (i64.mul
     (local.get $4)
     (i64.const 10)
    )
   )
   (if
    (i64.ne
     (i64.or
      (local.tee $2
       (i64.shr_u
        (local.tee $0
         (i64.mul
          (local.get $6)
          (i64.const 10)
         )
        )
        (i64.extend_i32_s
         (local.get $9)
        )
       )
      )
      (i64.extend_i32_s
       (local.get $5)
      )
     )
     (i64.const 0)
    )
    (local.set $5
     (block (result i32)
      (i32.store16
       (i32.add
        (i32.shl
         (local.get $5)
         (i32.const 1)
        )
        (i32.const 4192)
       )
       (i32.add
        (i32.and
         (i32.wrap_i64
          (local.get $2)
         )
         (i32.const 65535)
        )
        (i32.const 48)
       )
      )
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
    )
   )
   (local.set $7
    (i32.sub
     (local.get $7)
     (i32.const 1)
    )
   )
   (br_if $while-continue|4
    (i64.le_u
     (local.get $4)
     (local.tee $6
      (i64.and
       (local.get $0)
       (local.get $11)
      )
     )
    )
   )
  )
  (global.set $~lib/util/number/_K
   (i32.add
    (local.get $7)
    (global.get $~lib/util/number/_K)
   )
  )
  (local.set $0
   (local.get $6)
  )
  (local.set $2
   (i64.mul
    (local.get $8)
    (i64.load32_u
     (i32.add
      (i32.shl
       (i32.sub
        (i32.const 0)
        (local.get $7)
       )
       (i32.const 2)
      )
      (i32.const 5120)
     )
    )
   )
  )
  (local.set $1
   (i32.load16_u
    (local.tee $3
     (i32.add
      (i32.shl
       (local.get $5)
       (i32.const 1)
      )
      (i32.const 4190)
     )
    )
   )
  )
  (loop $while-continue|6
   (if
    (select
     (select
      (i32.const 1)
      (i64.gt_u
       (i64.sub
        (local.get $2)
        (local.get $0)
       )
       (i64.sub
        (local.tee $6
         (i64.add
          (local.get $0)
          (local.get $10)
         )
        )
        (local.get $2)
       )
      )
      (i64.gt_u
       (local.get $2)
       (local.get $6)
      )
     )
     (i32.const 0)
     (select
      (i64.le_u
       (local.get $10)
       (i64.sub
        (local.get $4)
        (local.get $0)
       )
      )
      (i32.const 0)
      (i64.lt_u
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (block
     (local.set $1
      (i32.sub
       (local.get $1)
       (i32.const 1)
      )
     )
     (local.set $0
      (i64.add
       (local.get $0)
       (local.get $10)
      )
     )
     (br $while-continue|6)
    )
   )
  )
  (i32.store16
   (local.get $3)
   (local.get $1)
  )
  (local.get $5)
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.rem_u
      (local.get $1)
      (i32.const 10)
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (local.tee $1
     (i32.div_u
      (local.get $1)
      (i32.const 10)
     )
    )
   )
  )
 )
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (local.get $2)
   )
   (block
    (i32.store
     (i32.add
      (local.get $0)
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 3145774)
    )
    (return
     (i32.add
      (local.get $1)
      (i32.const 2)
     )
    )
   )
  )
  (if (result i32)
   (select
    (i32.le_s
     (local.tee $3
      (i32.add
       (local.get $1)
       (local.get $2)
      )
     )
     (i32.const 21)
    )
    (i32.const 0)
    (i32.le_s
     (local.get $1)
     (local.get $3)
    )
   )
   (block (result i32)
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $1)
       (local.get $3)
      )
      (block
       (i32.store16
        (i32.add
         (local.get $0)
         (i32.shl
          (local.get $1)
          (i32.const 1)
         )
        )
        (i32.const 48)
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
    (i32.store
     (i32.add
      (local.get $0)
      (i32.shl
       (local.get $3)
       (i32.const 1)
      )
     )
     (i32.const 3145774)
    )
    (i32.add
     (local.get $3)
     (i32.const 2)
    )
   )
   (if (result i32)
    (select
     (i32.le_s
      (local.get $3)
      (i32.const 21)
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $3)
      (i32.const 0)
     )
    )
    (block (result i32)
     (call $~lib/memory/memory.copy
      (i32.add
       (local.tee $0
        (i32.add
         (local.get $0)
         (i32.shl
          (local.get $3)
          (i32.const 1)
         )
        )
       )
       (i32.const 2)
      )
      (local.get $0)
      (i32.shl
       (i32.sub
        (i32.const 0)
        (local.get $2)
       )
       (i32.const 1)
      )
     )
     (i32.store16
      (local.get $0)
      (i32.const 46)
     )
     (i32.add
      (local.get $1)
      (i32.const 1)
     )
    )
    (if (result i32)
     (select
      (i32.le_s
       (local.get $3)
       (i32.const 0)
      )
      (i32.const 0)
      (i32.gt_s
       (local.get $3)
       (i32.const -6)
      )
     )
     (block (result i32)
      (call $~lib/memory/memory.copy
       (i32.add
        (local.get $0)
        (i32.shl
         (local.tee $3
          (i32.sub
           (i32.const 2)
           (local.get $3)
          )
         )
         (i32.const 1)
        )
       )
       (local.get $0)
       (i32.shl
        (local.get $1)
        (i32.const 1)
       )
      )
      (i32.store
       (local.get $0)
       (i32.const 3014704)
      )
      (local.set $2
       (i32.const 2)
      )
      (loop $for-loop|1
       (if
        (i32.lt_s
         (local.get $2)
         (local.get $3)
        )
        (block
         (i32.store16
          (i32.add
           (local.get $0)
           (i32.shl
            (local.get $2)
            (i32.const 1)
           )
          )
          (i32.const 48)
         )
         (local.set $2
          (i32.add
           (local.get $2)
           (i32.const 1)
          )
         )
         (br $for-loop|1)
        )
       )
      )
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (if (result i32)
      (i32.eq
       (local.get $1)
       (i32.const 1)
      )
      (block (result i32)
       (i32.store16 offset=2
        (local.get $0)
        (i32.const 101)
       )
       (call $~lib/util/number/utoa_dec_simple<u32>
        (i32.add
         (local.tee $1
          (local.get $0)
         )
         (i32.const 4)
        )
        (block (result i32)
         (if
          (local.tee $2
           (i32.lt_s
            (local.tee $0
             (i32.sub
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 0)
           )
          )
          (local.set $0
           (i32.sub
            (i32.const 0)
            (local.get $0)
           )
          )
         )
         (local.get $0)
        )
        (local.tee $0
         (i32.add
          (call $~lib/util/number/decimalCount32
           (local.get $0)
          )
          (i32.const 1)
         )
        )
       )
       (i32.store16 offset=4
        (local.get $1)
        (select
         (i32.const 45)
         (i32.const 43)
         (local.get $2)
        )
       )
       (i32.add
        (local.get $0)
        (i32.const 2)
       )
      )
      (block (result i32)
       (call $~lib/memory/memory.copy
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
        (i32.add
         (local.get $0)
         (i32.const 2)
        )
        (i32.sub
         (local.tee $2
          (i32.shl
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.const 2)
        )
       )
       (i32.store16 offset=2
        (local.get $0)
        (i32.const 46)
       )
       (i32.store16 offset=2
        (local.tee $0
         (i32.add
          (local.get $0)
          (local.get $2)
         )
        )
        (i32.const 101)
       )
       (call $~lib/util/number/utoa_dec_simple<u32>
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 4)
        )
        (block (result i32)
         (if
          (local.tee $3
           (i32.lt_s
            (local.tee $0
             (i32.sub
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 0)
           )
          )
          (local.set $0
           (i32.sub
            (i32.const 0)
            (local.get $0)
           )
          )
         )
         (local.get $0)
        )
        (local.tee $0
         (i32.add
          (call $~lib/util/number/decimalCount32
           (local.get $0)
          )
          (i32.const 1)
         )
        )
       )
       (i32.store16 offset=4
        (local.get $2)
        (select
         (i32.const 45)
         (i32.const 43)
         (local.get $3)
        )
       )
       (i32.add
        (i32.add
         (local.get $0)
         (local.get $1)
        )
        (i32.const 2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/util/number/dtoa_core (param $0 f64) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local.set $2
   (i32.wrap_i64
    (i64.clz
     (local.tee $3
      (i64.add
       (i64.shl
        (local.tee $1
         (i64.add
          (i64.shl
           (i64.extend_i32_u
            (i32.ne
             (local.tee $6
              (i32.wrap_i64
               (i64.shr_u
                (i64.and
                 (local.tee $3
                  (i64.reinterpret_f64
                   (if (result f64)
                    (local.tee $8
                     (f64.lt
                      (local.get $0)
                      (f64.const 0)
                     )
                    )
                    (block (result f64)
                     (i32.store16
                      (i32.const 4192)
                      (i32.const 45)
                     )
                     (f64.neg
                      (local.get $0)
                     )
                    )
                    (local.get $0)
                   )
                  )
                 )
                 (i64.const 9218868437227405312)
                )
                (i64.const 52)
               )
              )
             )
             (i32.const 0)
            )
           )
           (i64.const 52)
          )
          (i64.and
           (local.get $3)
           (i64.const 4503599627370495)
          )
         )
        )
        (i64.const 1)
       )
       (i64.const 1)
      )
     )
    )
   )
  )
  (global.set $~lib/util/number/_frc_plus
   (i64.shl
    (local.get $3)
    (i64.extend_i32_s
     (local.get $2)
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.sub
     (local.tee $6
      (i32.sub
       (select
        (local.get $6)
        (i32.const 1)
        (local.get $6)
       )
       (i32.const 1075)
      )
     )
     (i32.const 1)
    )
    (local.get $2)
   )
  )
  (global.set $~lib/util/number/_frc_minus
   (i64.shl
    (i64.sub
     (i64.shl
      (local.get $1)
      (i64.extend_i32_s
       (local.tee $7
        (i32.add
         (i64.eq
          (local.get $1)
          (i64.const 4503599627370496)
         )
         (i32.const 1)
        )
       )
      )
     )
     (i64.const 1)
    )
    (i64.extend_i32_s
     (i32.sub
      (i32.sub
       (local.get $6)
       (local.get $7)
      )
      (local.get $2)
     )
    )
   )
  )
  (global.set $~lib/util/number/_exp
   (local.get $2)
  )
  (global.set $~lib/util/number/_K
   (i32.sub
    (i32.const 348)
    (local.tee $7
     (i32.shl
      (local.tee $2
       (i32.add
        (i32.shr_s
         (i32.add
          (local.tee $2
           (i32.trunc_f64_s
            (local.tee $0
             (f64.add
              (f64.mul
               (f64.convert_i32_s
                (i32.sub
                 (i32.const -61)
                 (global.get $~lib/util/number/_exp)
                )
               )
               (f64.const 0.30102999566398114)
              )
              (f64.const 347)
             )
            )
           )
          )
          (f64.ne
           (local.get $0)
           (f64.convert_i32_s
            (local.get $2)
           )
          )
         )
         (i32.const 3)
        )
        (i32.const 1)
       )
      )
      (i32.const 3)
     )
    )
   )
  )
  (global.set $~lib/util/number/_frc_pow
   (i64.load
    (i32.add
     (local.get $7)
     (i32.const 4248)
    )
   )
  )
  (global.set $~lib/util/number/_exp_pow
   (i32.load16_s
    (i32.add
     (i32.shl
      (local.get $2)
      (i32.const 1)
     )
     (i32.const 4944)
    )
   )
  )
  (local.set $3
   (i64.shr_u
    (local.tee $4
     (global.get $~lib/util/number/_frc_pow)
    )
    (i64.const 32)
   )
  )
  (local.set $5
   (i64.add
    (i64.mul
     (local.tee $4
      (i64.and
       (local.get $4)
       (i64.const 4294967295)
      )
     )
     (local.tee $10
      (i64.shr_u
       (local.tee $5
        (global.get $~lib/util/number/_frc_plus)
       )
       (i64.const 32)
      )
     )
    )
    (i64.shr_u
     (i64.mul
      (local.get $4)
      (local.tee $11
       (i64.and
        (local.get $5)
        (i64.const 4294967295)
       )
      )
     )
     (i64.const 32)
    )
   )
  )
  (i32.add
   (call $~lib/util/number/prettify
    (i32.add
     (i32.shl
      (local.get $8)
      (i32.const 1)
     )
     (i32.const 4192)
    )
    (i32.sub
     (call $~lib/util/number/genDigits
      (i64.add
       (i64.add
        (i64.mul
         (local.get $3)
         (local.tee $9
          (i64.shr_u
           (local.tee $1
            (i64.shl
             (local.get $1)
             (i64.extend_i32_s
              (local.tee $2
               (i32.wrap_i64
                (i64.clz
                 (local.get $1)
                )
               )
              )
             )
            )
           )
           (i64.const 32)
          )
         )
        )
        (i64.shr_u
         (local.tee $9
          (i64.add
           (i64.mul
            (local.get $4)
            (local.get $9)
           )
           (i64.shr_u
            (i64.mul
             (local.get $4)
             (local.tee $1
              (i64.and
               (local.get $1)
               (i64.const 4294967295)
              )
             )
            )
            (i64.const 32)
           )
          )
         )
         (i64.const 32)
        )
       )
       (i64.shr_u
        (i64.add
         (i64.add
          (i64.mul
           (local.get $1)
           (local.get $3)
          )
          (i64.and
           (local.get $9)
           (i64.const 4294967295)
          )
         )
         (i64.const 2147483647)
        )
        (i64.const 32)
       )
      )
      (i32.sub
       (i32.add
        (local.tee $7
         (global.get $~lib/util/number/_exp_pow)
        )
        (i32.sub
         (local.get $6)
         (local.get $2)
        )
       )
       (i32.const -64)
      )
      (local.tee $1
       (i64.sub
        (i64.add
         (i64.add
          (i64.mul
           (local.get $3)
           (local.get $10)
          )
          (i64.shr_u
           (local.get $5)
           (i64.const 32)
          )
         )
         (i64.shr_u
          (i64.add
           (i64.add
            (i64.mul
             (local.get $3)
             (local.get $11)
            )
            (i64.and
             (local.get $5)
             (i64.const 4294967295)
            )
           )
           (i64.const 2147483647)
          )
          (i64.const 32)
         )
        )
        (i64.const 1)
       )
      )
      (i32.sub
       (i32.add
        (local.get $7)
        (global.get $~lib/util/number/_exp)
       )
       (i32.const -64)
      )
      (i64.sub
       (local.get $1)
       (i64.add
        (i64.add
         (i64.add
          (i64.mul
           (local.get $3)
           (local.tee $5
            (i64.shr_u
             (local.tee $1
              (global.get $~lib/util/number/_frc_minus)
             )
             (i64.const 32)
            )
           )
          )
          (i64.shr_u
           (local.tee $1
            (i64.add
             (i64.mul
              (local.get $4)
              (local.get $5)
             )
             (i64.shr_u
              (i64.mul
               (local.get $4)
               (local.tee $4
                (i64.and
                 (local.get $1)
                 (i64.const 4294967295)
                )
               )
              )
              (i64.const 32)
             )
            )
           )
           (i64.const 32)
          )
         )
         (i64.shr_u
          (i64.add
           (i64.add
            (i64.mul
             (local.get $3)
             (local.get $4)
            )
            (i64.and
             (local.get $1)
             (i64.const 4294967295)
            )
           )
           (i64.const 2147483647)
          )
          (i64.const 32)
         )
        )
        (i64.const 1)
       )
      )
      (local.get $8)
     )
     (local.get $8)
    )
    (global.get $~lib/util/number/_K)
   )
   (local.get $8)
  )
 )
 (func $~lib/number/F32#toString (param $0 f32) (result i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/util/number/dtoa
   (if
    (f64.eq
     (local.tee $1
      (f64.promote_f32
       (local.get $0)
      )
     )
     (f64.const 0)
    )
    (block
     (local.set $2
      (i32.const 4048)
     )
     (br $__inlined_func$~lib/util/number/dtoa)
    )
   )
   (if
    (f64.ne
     (f64.sub
      (local.get $1)
      (local.get $1)
     )
     (f64.const 0)
    )
    (block
     (if
      (f64.ne
       (local.get $1)
       (local.get $1)
      )
      (block
       (local.set $2
        (i32.const 4080)
       )
       (br $__inlined_func$~lib/util/number/dtoa)
      )
     )
     (local.set $2
      (select
       (i32.const 4112)
       (i32.const 4160)
       (f64.lt
        (local.get $1)
        (f64.const 0)
       )
      )
     )
     (br $__inlined_func$~lib/util/number/dtoa)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.tee $3
       (i32.shl
        (call $~lib/util/number/dtoa_core
         (local.get $1)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.const 4192)
    (local.get $3)
   )
  )
  (local.get $2)
 )
 (func $assembly/actions/1-global/GlobalActions#thisRound (param $0 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (call $~lib/number/F32#toString
    (call $assembly/actions/1-global/GlobalActions#currentRoundFloat
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/math/NativeMathf.mod (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (f32.eq
    (f32.abs
     (local.get $1)
    )
    (f32.const 1)
   )
   (return
    (f32.copysign
     (f32.sub
      (local.get $0)
      (f32.trunc
       (local.get $0)
      )
     )
     (local.get $0)
    )
   )
  )
  (local.set $5
   (i32.and
    (i32.shr_u
     (local.tee $3
      (i32.reinterpret_f32
       (local.get $1)
      )
     )
     (i32.const 23)
    )
    (i32.const 255)
   )
  )
  (local.set $7
   (i32.and
    (local.tee $2
     (i32.reinterpret_f32
      (local.get $0)
     )
    )
    (i32.const -2147483648)
   )
  )
  (if
   (select
    (i32.const 1)
    (f32.ne
     (local.get $1)
     (local.get $1)
    )
    (select
     (i32.eq
      (local.tee $4
       (i32.and
        (i32.shr_u
         (local.get $2)
         (i32.const 23)
        )
        (i32.const 255)
       )
      )
      (i32.const 255)
     )
     (i32.const 1)
     (local.tee $6
      (i32.shl
       (local.get $3)
       (i32.const 1)
      )
     )
    )
   )
   (return
    (f32.div
     (local.tee $0
      (f32.mul
       (local.get $0)
       (local.get $1)
      )
     )
     (local.get $0)
    )
   )
  )
  (if
   (i32.ge_u
    (local.get $6)
    (local.tee $8
     (i32.shl
      (local.get $2)
      (i32.const 1)
     )
    )
   )
   (return
    (f32.mul
     (local.get $0)
     (f32.convert_i32_u
      (i32.ne
       (local.get $6)
       (local.get $8)
      )
     )
    )
   )
  )
  (local.set $2
   (if (result i32)
    (local.get $4)
    (i32.or
     (i32.and
      (local.get $2)
      (i32.const 8388607)
     )
     (i32.const 8388608)
    )
    (i32.shl
     (local.get $2)
     (i32.sub
      (i32.const 1)
      (local.tee $4
       (i32.sub
        (local.get $4)
        (i32.clz
         (i32.shl
          (local.get $2)
          (i32.const 9)
         )
        )
       )
      )
     )
    )
   )
  )
  (local.set $3
   (if (result i32)
    (local.get $5)
    (i32.or
     (i32.and
      (local.get $3)
      (i32.const 8388607)
     )
     (i32.const 8388608)
    )
    (i32.shl
     (local.get $3)
     (i32.sub
      (i32.const 1)
      (local.tee $5
       (i32.sub
        (local.get $5)
        (i32.clz
         (i32.shl
          (local.get $3)
          (i32.const 9)
         )
        )
       )
      )
     )
    )
   )
  )
  (block $folding-inner0
   (loop $while-continue|0
    (if
     (i32.gt_s
      (local.get $4)
      (local.get $5)
     )
     (block
      (local.set $2
       (i32.shl
        (if (result i32)
         (i32.ge_u
          (local.get $2)
          (local.get $3)
         )
         (block (result i32)
          (br_if $folding-inner0
           (i32.eq
            (local.get $2)
            (local.get $3)
           )
          )
          (i32.sub
           (local.get $2)
           (local.get $3)
          )
         )
         (local.get $2)
        )
        (i32.const 1)
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
   (local.set $2
    (i32.shl
     (block (result i32)
      (if
       (i32.ge_u
        (local.get $2)
        (local.get $3)
       )
       (local.set $2
        (block (result i32)
         (br_if $folding-inner0
          (i32.eq
           (local.get $2)
           (local.get $3)
          )
         )
         (i32.sub
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $2)
     )
     (local.tee $3
      (i32.clz
       (i32.shl
        (local.get $2)
        (i32.const 8)
       )
      )
     )
    )
   )
   (return
    (f32.reinterpret_i32
     (i32.or
      (if (result i32)
       (i32.gt_s
        (local.tee $4
         (i32.sub
          (local.get $4)
          (local.get $3)
         )
        )
        (i32.const 0)
       )
       (i32.or
        (i32.sub
         (local.get $2)
         (i32.const 8388608)
        )
        (i32.shl
         (local.get $4)
         (i32.const 23)
        )
       )
       (i32.shr_u
        (local.get $2)
        (i32.sub
         (i32.const 1)
         (local.get $4)
        )
       )
      )
      (local.get $7)
     )
    )
   )
  )
  (f32.mul
   (local.get $0)
   (f32.const 0)
  )
 )
 (func $~lib/as-chain/debug/print (param $0 i32)
  (local.set $0
   (call $~lib/string/String.UTF8.encode
    (local.get $0)
    (i32.const 0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/env/prints_l
   (i32.load offset=4
    (local.tee $0
     (call $~lib/dataview/DataView#constructor@varargs
      (local.get $0)
     )
    )
   )
   (i32.load offset=8
    (local.get $0)
   )
  )
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (return
    (i32.const 5312)
   )
  )
  (call $~lib/util/number/utoa_dec_simple<u32>
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.tee $1
       (call $~lib/util/number/decimalCount32
        (local.get $0)
       )
      )
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
   (local.get $0)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/number/U16#toString (param $0 i32) (result i32)
  (call $~lib/util/number/utoa32
   (i32.and
    (local.get $0)
    (i32.const 65535)
   )
  )
 )
 (func $assembly/actions/1-global/GlobalActions#shouldFinalizeReports (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local.set $2
   (call $~lib/math/NativeMathf.mod
    (call $assembly/actions/1-global/GlobalActions#currentRoundFloat
     (local.get $0)
    )
    (f32.convert_i32_u
     (call $assembly/actions/1-global/GlobalActions#currentRound
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 5184)
    (call $~lib/number/F32#toString
     (call $assembly/actions/1-global/GlobalActions#currentRoundFloat
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 5248)
    (call $~lib/number/U16#toString
     (call $assembly/actions/1-global/GlobalActions#currentRound
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 5440)
    (call $~lib/number/F32#toString
     (local.get $2)
    )
   )
  )
  (f32.gt
   (local.get $2)
   (f32.load offset=60
    (local.get $1)
   )
  )
 )
 (func $assembly/tables/oracles/Oracle#get:trueCollateral (param $0 i32) (result i32)
  (i32.sub
   (i32.load
    (i32.load offset=8
     (local.get $0)
    )
   )
   (i32.load offset=8
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
 )
 (func $assembly/actions/1-global/GlobalActions#findSlashQuantity (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (i32.load offset=28
    (local.get $1)
   )
   (i32.trunc_f32_u
    (f32.mul
     (f32.convert_i32_u
      (call $assembly/tables/oracles/Oracle#get:trueCollateral
       (local.get $0)
      )
     )
     (f32.load offset=32
      (local.get $1)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/config/Config>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/config/Config>#find
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
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/config/Config>#getValue
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
  (call $assembly/tables/config/Config#constructor)
 )
 (func $assembly/actions/1-global/GlobalActions#getConfig (param $0 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u
     (local.tee $0
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/config/Config>#get
       (i32.load offset=28
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 5504)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#getValue (param $0 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#loopStatsCleanup (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#getValue
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#constructor
     (local.tee $2
      (i32.load
       (i32.load
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
     )
     (call $~lib/as-chain/env/db_lowerbound_i64
      (i64.load
       (local.get $2)
      )
      (i64.load offset=8
       (local.get $2)
      )
      (i64.load offset=16
       (local.get $2)
      )
      (i64.const 0)
     )
     (i64.const 0)
     (i32.const 0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $8)
     (i32.const 50)
    )
    (if
     (if (result i32)
      (local.tee $2
       (local.get $3)
      )
      (i32.gt_u
       (local.get $1)
       (i32.load16_u
        (local.get $2)
       )
      )
      (i32.const 0)
     )
     (block
      (local.set $4
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#requireFind
        (i32.load
         (local.tee $3
          (i32.load offset=20
           (local.get $0)
          )
         )
        )
        (call $assembly/tables/stats/Stat#getPrimaryValue
         (local.get $2)
        )
        (i32.const 1872)
       )
      )
      (local.set $5
       (i32.load
        (i32.load
         (local.get $3)
        )
       )
      )
      (local.set $3
       (call $~lib/rt/stub/__alloc
        (i32.const 8)
       )
      )
      (local.set $3
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#getValue
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/stats/Stat>#constructor
         (local.get $5)
         (call $~lib/as-chain/env/db_next_i64
          (i32.load offset=4
           (local.get $4)
          )
          (local.get $3)
         )
         (i64.load
          (local.get $3)
         )
         (i32.const 1)
        )
       )
      )
      (local.set $4
       (i32.load offset=20
        (local.get $0)
       )
      )
      (local.set $6
       (call $assembly/tables/stats/Stat#getPrimaryValue
        (local.get $2)
       )
      )
      (drop
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#requireFind
        (i32.load
         (local.get $4)
        )
        (local.get $6)
        (i32.const 1648)
       )
      )
      (local.set $2
       (i32.const 0)
      )
      (call $~lib/as-chain/system/check
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
        (local.tee $7
         (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find
          (local.tee $5
           (i32.load
            (local.get $4)
           )
          )
          (local.get $6)
         )
        )
       )
       (i32.const 5600)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#remove
       (i32.load
        (local.get $5)
       )
       (local.get $7)
      )
      (loop $for-loop|00
       (if
        (i32.lt_s
         (local.get $2)
         (i32.load offset=12
          (i32.load offset=4
           (local.get $5)
          )
         )
        )
        (block
         (if
          (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
           (i32.load
            (local.tee $7
             (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
              (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
               (i32.load offset=4
                (local.get $5)
               )
               (local.get $2)
              )
              (local.get $6)
             )
            )
           )
          )
          (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
           (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
            (i32.load offset=4
             (local.get $5)
            )
            (local.get $2)
           )
           (i32.load
            (local.get $7)
           )
          )
         )
         (local.set $2
          (i32.add
           (local.get $2)
           (i32.const 1)
          )
         )
         (br $for-loop|00)
        )
       )
      )
      (if
       (i64.eq
        (local.get $6)
        (i64.sub
         (i64.load offset=8
          (local.get $4)
         )
         (i64.const 1)
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
        (local.get $4)
        (i64.const -1)
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
  )
 )
 (func $assembly/actions/1-global/GlobalActions#roundStats (param $0 i32)
  (call $~lib/as-chain/system/check
   (call $assembly/actions/1-global/GlobalActions#updateStats
    (local.get $0)
   )
   (i32.const 5680)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#statsCleanup (param $0 i32)
  (local $1 i32)
  (local.set $1
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.gt_u
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
    (i32.load offset=40
     (local.get $1)
    )
   )
   (i32.const 5776)
  )
  (call $assembly/actions/1-global/GlobalActions#loopStatsCleanup
   (local.get $0)
   (i32.sub
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
    (i32.load offset=40
     (local.get $1)
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
     (i32.const 91)
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
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/pwrreports/PwrReport#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
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
      (i32.load offset=16
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
  (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
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
     (call $assembly/tables/pwrreports/PwrReportRow#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#getValue (param $0 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
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
 (func $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $assembly/actions/1-global/GlobalActions#loopReportsCleanup (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local.set $1
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#getValue
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#constructor
     (local.tee $0
      (i32.load
       (i32.load
        (local.tee $3
         (call $assembly/actions/1-global/GlobalActions#pwrReportsT
          (local.get $0)
          (local.get $1)
         )
        )
       )
      )
     )
     (call $~lib/as-chain/env/db_lowerbound_i64
      (i64.load
       (local.get $0)
      )
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $0)
      )
      (i64.const 0)
     )
     (i64.const 0)
     (i32.const 0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $7)
     (i32.const 50)
    )
    (if
     (if (result i32)
      (local.tee $0
       (local.get $1)
      )
      (i32.gt_u
       (local.get $2)
       (i32.load16_u offset=2
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
      (i32.const 0)
     )
     (block
      (local.set $4
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#requireFind
        (i32.load
         (local.get $3)
        )
        (i64.load
         (local.get $0)
        )
        (i32.const 1872)
       )
      )
      (local.set $5
       (i32.load
        (i32.load
         (local.get $3)
        )
       )
      )
      (local.set $1
       (call $~lib/rt/stub/__alloc
        (i32.const 8)
       )
      )
      (local.set $1
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#getValue
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#constructor
         (local.get $5)
         (call $~lib/as-chain/env/db_next_i64
          (i32.load offset=4
           (local.get $4)
          )
          (local.get $1)
         )
         (i64.load
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
      (drop
       (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#requireFind
        (i32.load
         (local.get $3)
        )
        (local.tee $6
         (i64.load
          (local.get $0)
         )
        )
        (i32.const 1648)
       )
      )
      (local.set $0
       (i32.const 0)
      )
      (call $~lib/as-chain/system/check
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
        (local.tee $5
         (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find
          (local.tee $4
           (i32.load
            (local.get $3)
           )
          )
          (local.get $6)
         )
        )
       )
       (i32.const 5600)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#remove
       (i32.load
        (local.get $4)
       )
       (local.get $5)
      )
      (loop $for-loop|01
       (if
        (i32.lt_s
         (local.get $0)
         (i32.load offset=12
          (i32.load offset=4
           (local.get $4)
          )
         )
        )
        (block
         (if
          (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
           (i32.load
            (local.tee $5
             (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
              (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
               (i32.load offset=4
                (local.get $4)
               )
               (local.get $0)
              )
              (local.get $6)
             )
            )
           )
          )
          (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
           (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
            (i32.load offset=4
             (local.get $4)
            )
            (local.get $0)
           )
           (i32.load
            (local.get $5)
           )
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (br $for-loop|01)
        )
       )
      )
      (if
       (i64.eq
        (local.get $6)
        (i64.sub
         (i64.load offset=8
          (local.get $3)
         )
         (i64.const 1)
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
        (local.get $3)
        (i64.const -1)
       )
      )
      (local.set $7
       (i32.add
        (local.get $7)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
  )
 )
 (func $~lib/math/NativeMath.pow (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 f64)
  (local $19 f64)
  (block $folding-inner3
   (block $folding-inner2
    (block $folding-inner1
     (block $folding-inner0
      (if
       (f64.le
        (f64.abs
         (local.get $1)
        )
        (f64.const 2)
       )
       (block
        (br_if $folding-inner0
         (f64.eq
          (local.get $1)
          (f64.const 2)
         )
        )
        (if
         (f64.eq
          (local.get $1)
          (f64.const 0.5)
         )
         (return
          (select
           (f64.abs
            (f64.sqrt
             (local.get $0)
            )
           )
           (f64.const inf)
           (f64.ne
            (local.get $0)
            (f64.const -inf)
           )
          )
         )
        )
        (br_if $folding-inner1
         (f64.eq
          (local.get $1)
          (f64.const -1)
         )
        )
        (if
         (f64.eq
          (local.get $1)
          (f64.const 1)
         )
         (return
          (local.get $0)
         )
        )
        (if
         (f64.eq
          (local.get $1)
          (f64.const 0)
         )
         (return
          (f64.const 1)
         )
        )
       )
      )
      (local.set $13
       (i32.wrap_i64
        (local.tee $11
         (i64.reinterpret_f64
          (local.get $0)
         )
        )
       )
      )
      (local.set $5
       (i32.and
        (local.tee $12
         (i32.wrap_i64
          (i64.shr_u
           (local.get $11)
           (i64.const 32)
          )
         )
        )
        (i32.const 2147483647)
       )
      )
      (if
       (i32.eqz
        (i32.or
         (local.tee $6
          (i32.and
           (local.tee $3
            (i32.wrap_i64
             (i64.shr_u
              (local.tee $11
               (i64.reinterpret_f64
                (local.get $1)
               )
              )
              (i64.const 32)
             )
            )
           )
           (i32.const 2147483647)
          )
         )
         (local.tee $14
          (i32.wrap_i64
           (local.get $11)
          )
         )
        )
       )
       (return
        (f64.const 1)
       )
      )
      (if
       (select
        (i32.const 1)
        (select
         (local.get $14)
         (i32.const 0)
         (i32.eq
          (local.get $6)
          (i32.const 2146435072)
         )
        )
        (select
         (i32.const 1)
         (i32.gt_u
          (local.get $6)
          (i32.const 2146435072)
         )
         (select
          (i32.const 1)
          (select
           (local.get $13)
           (i32.const 0)
           (i32.eq
            (local.get $5)
            (i32.const 2146435072)
           )
          )
          (i32.gt_s
           (local.get $5)
           (i32.const 2146435072)
          )
         )
        )
       )
       (return
        (f64.add
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (local.set $2
       (if (result i32)
        (i32.lt_s
         (local.get $12)
         (i32.const 0)
        )
        (if (result i32)
         (i32.ge_u
          (local.get $6)
          (i32.const 1128267776)
         )
         (i32.const 2)
         (if (result i32)
          (i32.ge_u
           (local.get $6)
           (i32.const 1072693248)
          )
          (select
           (i32.sub
            (i32.const 2)
            (i32.and
             (local.tee $15
              (i32.shr_u
               (local.tee $17
                (select
                 (local.get $14)
                 (local.get $6)
                 (local.tee $15
                  (i32.gt_s
                   (local.tee $2
                    (i32.sub
                     (i32.shr_u
                      (local.get $6)
                      (i32.const 20)
                     )
                     (i32.const 1023)
                    )
                   )
                   (i32.const 20)
                  )
                 )
                )
               )
               (local.tee $2
                (i32.sub
                 (select
                  (i32.const 52)
                  (i32.const 20)
                  (local.get $15)
                 )
                 (local.get $2)
                )
               )
              )
             )
             (i32.const 1)
            )
           )
           (i32.const 0)
           (i32.eq
            (local.get $17)
            (i32.shl
             (local.get $15)
             (local.get $2)
            )
           )
          )
          (i32.const 0)
         )
        )
        (i32.const 0)
       )
      )
      (if
       (i32.eqz
        (local.get $14)
       )
       (block
        (if
         (i32.eq
          (local.get $6)
          (i32.const 2146435072)
         )
         (if
          (i32.or
           (local.get $13)
           (i32.sub
            (local.get $5)
            (i32.const 1072693248)
           )
          )
          (if
           (i32.ge_s
            (local.get $5)
            (i32.const 1072693248)
           )
           (return
            (select
             (local.get $1)
             (f64.const 0)
             (i32.ge_s
              (local.get $3)
              (i32.const 0)
             )
            )
           )
           (return
            (select
             (f64.const 0)
             (f64.neg
              (local.get $1)
             )
             (i32.ge_s
              (local.get $3)
              (i32.const 0)
             )
            )
           )
          )
          (return
           (f64.const nan:0x8000000000000)
          )
         )
        )
        (if
         (i32.eq
          (local.get $6)
          (i32.const 1072693248)
         )
         (block
          (if
           (i32.ge_s
            (local.get $3)
            (i32.const 0)
           )
           (return
            (local.get $0)
           )
          )
          (br $folding-inner1)
         )
        )
        (br_if $folding-inner0
         (i32.eq
          (local.get $3)
          (i32.const 1073741824)
         )
        )
        (if
         (i32.eq
          (local.get $3)
          (i32.const 1071644672)
         )
         (if
          (i32.ge_s
           (local.get $12)
           (i32.const 0)
          )
          (return
           (f64.sqrt
            (local.get $0)
           )
          )
         )
        )
       )
      )
      (local.set $4
       (f64.abs
        (local.get $0)
       )
      )
      (if
       (i32.eqz
        (local.get $13)
       )
       (if
        (select
         (i32.const 1)
         (i32.eq
          (local.get $5)
          (i32.const 1072693248)
         )
         (select
          (i32.eq
           (local.get $5)
           (i32.const 2146435072)
          )
          (i32.const 1)
          (local.get $5)
         )
        )
        (block
         (local.set $0
          (select
           (f64.div
            (f64.const 1)
            (local.get $4)
           )
           (local.get $4)
           (i32.lt_s
            (local.get $3)
            (i32.const 0)
           )
          )
         )
         (return
          (if (result f64)
           (i32.lt_s
            (local.get $12)
            (i32.const 0)
           )
           (if (result f64)
            (i32.or
             (local.get $2)
             (i32.sub
              (local.get $5)
              (i32.const 1072693248)
             )
            )
            (select
             (f64.neg
              (local.get $0)
             )
             (local.get $0)
             (i32.eq
              (local.get $2)
              (i32.const 1)
             )
            )
            (f64.div
             (local.tee $0
              (f64.sub
               (local.get $0)
               (local.get $0)
              )
             )
             (local.get $0)
            )
           )
           (local.get $0)
          )
         )
        )
       )
      )
      (local.set $8
       (if (result f64)
        (i32.lt_s
         (local.get $12)
         (i32.const 0)
        )
        (block (result f64)
         (if
          (i32.eqz
           (local.get $2)
          )
          (return
           (f64.div
            (local.tee $0
             (f64.sub
              (local.get $0)
              (local.get $0)
             )
            )
            (local.get $0)
           )
          )
         )
         (select
          (f64.const -1)
          (f64.const 1)
          (i32.eq
           (local.get $2)
           (i32.const 1)
          )
         )
        )
        (f64.const 1)
       )
      )
      (local.set $4
       (if (result f64)
        (i32.gt_u
         (local.get $6)
         (i32.const 1105199104)
        )
        (block (result f64)
         (if
          (i32.gt_u
           (local.get $6)
           (i32.const 1139802112)
          )
          (block
           (if
            (i32.le_s
             (local.get $5)
             (i32.const 1072693247)
            )
            (return
             (select
              (f64.const inf)
              (f64.const 0)
              (i32.lt_s
               (local.get $3)
               (i32.const 0)
              )
             )
            )
           )
           (if
            (i32.ge_s
             (local.get $5)
             (i32.const 1072693248)
            )
            (return
             (select
              (f64.const inf)
              (f64.const 0)
              (i32.gt_s
               (local.get $3)
               (i32.const 0)
              )
             )
            )
           )
          )
         )
         (if
          (i32.lt_s
           (local.get $5)
           (i32.const 1072693247)
          )
          (return
           (select
            (f64.mul
             (f64.mul
              (local.get $8)
              (f64.const 1.e+300)
             )
             (f64.const 1.e+300)
            )
            (f64.mul
             (f64.mul
              (local.get $8)
              (f64.const 1e-300)
             )
             (f64.const 1e-300)
            )
            (i32.lt_s
             (local.get $3)
             (i32.const 0)
            )
           )
          )
         )
         (if
          (i32.gt_s
           (local.get $5)
           (i32.const 1072693248)
          )
          (return
           (select
            (f64.mul
             (f64.mul
              (local.get $8)
              (f64.const 1.e+300)
             )
             (f64.const 1.e+300)
            )
            (f64.mul
             (f64.mul
              (local.get $8)
              (f64.const 1e-300)
             )
             (f64.const 1e-300)
            )
            (i32.gt_s
             (local.get $3)
             (i32.const 0)
            )
           )
          )
         )
         (local.set $0
          (f64.reinterpret_i64
           (i64.and
            (i64.reinterpret_f64
             (f64.add
              (local.tee $4
               (f64.mul
                (local.tee $0
                 (f64.sub
                  (local.get $4)
                  (f64.const 1)
                 )
                )
                (f64.const 1.4426950216293335)
               )
              )
              (local.tee $7
               (f64.sub
                (f64.mul
                 (local.get $0)
                 (f64.const 1.9259629911266175e-08)
                )
                (f64.mul
                 (f64.mul
                  (f64.mul
                   (local.get $0)
                   (local.get $0)
                  )
                  (f64.sub
                   (f64.const 0.5)
                   (f64.mul
                    (local.get $0)
                    (f64.sub
                     (f64.const 0.3333333333333333)
                     (f64.mul
                      (local.get $0)
                      (f64.const 0.25)
                     )
                    )
                   )
                  )
                 )
                 (f64.const 1.4426950408889634)
                )
               )
              )
             )
            )
            (i64.const -4294967296)
           )
          )
         )
         (f64.sub
          (local.get $7)
          (f64.sub
           (local.get $0)
           (local.get $4)
          )
         )
        )
        (block (result f64)
         (local.set $3
          (i32.add
           (if (result i32)
            (i32.lt_s
             (local.get $5)
             (i32.const 1048576)
            )
            (block (result i32)
             (local.set $5
              (i32.wrap_i64
               (i64.shr_u
                (i64.reinterpret_f64
                 (local.tee $4
                  (f64.mul
                   (local.get $4)
                   (f64.const 9007199254740992)
                  )
                 )
                )
                (i64.const 32)
               )
              )
             )
             (i32.const -53)
            )
            (i32.const 0)
           )
           (i32.sub
            (i32.shr_s
             (local.get $5)
             (i32.const 20)
            )
            (i32.const 1023)
           )
          )
         )
         (local.set $5
          (i32.or
           (local.tee $2
            (i32.and
             (local.get $5)
             (i32.const 1048575)
            )
           )
           (i32.const 1072693248)
          )
         )
         (local.set $2
          (if (result i32)
           (i32.le_s
            (local.get $2)
            (i32.const 235662)
           )
           (i32.const 0)
           (if (result i32)
            (i32.lt_s
             (local.get $2)
             (i32.const 767610)
            )
            (i32.const 1)
            (block (result i32)
             (local.set $3
              (i32.add
               (local.get $3)
               (i32.const 1)
              )
             )
             (local.set $5
              (i32.add
               (local.get $5)
               (i32.const -1048576)
              )
             )
             (i32.const 0)
            )
           )
          )
         )
         (local.set $16
          (f64.mul
           (local.tee $4
            (f64.reinterpret_i64
             (i64.and
              (i64.reinterpret_f64
               (local.tee $7
                (f64.mul
                 (local.tee $18
                  (f64.sub
                   (local.tee $9
                    (f64.reinterpret_i64
                     (i64.or
                      (i64.and
                       (i64.reinterpret_f64
                        (local.get $4)
                       )
                       (i64.const 4294967295)
                      )
                      (i64.shl
                       (i64.extend_i32_s
                        (local.get $5)
                       )
                       (i64.const 32)
                      )
                     )
                    )
                   )
                   (local.tee $10
                    (select
                     (f64.const 1.5)
                     (f64.const 1)
                     (local.get $2)
                    )
                   )
                  )
                 )
                 (local.tee $19
                  (f64.div
                   (f64.const 1)
                   (f64.add
                    (local.get $9)
                    (local.get $10)
                   )
                  )
                 )
                )
               )
              )
              (i64.const -4294967296)
             )
            )
           )
           (local.get $4)
          )
         )
         (local.set $0
          (f64.reinterpret_i64
           (i64.and
            (i64.reinterpret_f64
             (f64.add
              (f64.add
               (f64.add
                (local.tee $7
                 (f64.mul
                  (local.tee $0
                   (f64.reinterpret_i64
                    (i64.and
                     (i64.reinterpret_f64
                      (f64.add
                       (local.tee $10
                        (f64.mul
                         (local.get $4)
                         (local.tee $0
                          (f64.reinterpret_i64
                           (i64.and
                            (i64.reinterpret_f64
                             (f64.add
                              (f64.add
                               (local.get $16)
                               (f64.const 3)
                              )
                              (local.tee $4
                               (f64.add
                                (f64.mul
                                 (f64.mul
                                  (local.tee $0
                                   (f64.mul
                                    (local.get $7)
                                    (local.get $7)
                                   )
                                  )
                                  (local.get $0)
                                 )
                                 (f64.add
                                  (f64.mul
                                   (local.get $0)
                                   (f64.add
                                    (f64.mul
                                     (local.get $0)
                                     (f64.add
                                      (f64.mul
                                       (local.get $0)
                                       (f64.add
                                        (f64.mul
                                         (local.get $0)
                                         (f64.add
                                          (f64.mul
                                           (local.get $0)
                                           (f64.const 0.20697501780033842)
                                          )
                                          (f64.const 0.23066074577556175)
                                         )
                                        )
                                        (f64.const 0.272728123808534)
                                       )
                                      )
                                      (f64.const 0.33333332981837743)
                                     )
                                    )
                                    (f64.const 0.4285714285785502)
                                   )
                                  )
                                  (f64.const 0.5999999999999946)
                                 )
                                )
                                (f64.mul
                                 (local.tee $9
                                  (f64.mul
                                   (local.get $19)
                                   (f64.sub
                                    (f64.sub
                                     (local.get $18)
                                     (f64.mul
                                      (local.get $4)
                                      (local.tee $0
                                       (f64.reinterpret_i64
                                        (i64.shl
                                         (i64.extend_i32_s
                                          (i32.add
                                           (i32.add
                                            (i32.or
                                             (i32.shr_s
                                              (local.get $5)
                                              (i32.const 1)
                                             )
                                             (i32.const 536870912)
                                            )
                                            (i32.const 524288)
                                           )
                                           (i32.shl
                                            (local.get $2)
                                            (i32.const 18)
                                           )
                                          )
                                         )
                                         (i64.const 32)
                                        )
                                       )
                                      )
                                     )
                                    )
                                    (f64.mul
                                     (local.get $4)
                                     (f64.sub
                                      (local.get $9)
                                      (f64.sub
                                       (local.get $0)
                                       (local.get $10)
                                      )
                                     )
                                    )
                                   )
                                  )
                                 )
                                 (f64.add
                                  (local.get $4)
                                  (local.get $7)
                                 )
                                )
                               )
                              )
                             )
                            )
                            (i64.const -4294967296)
                           )
                          )
                         )
                        )
                       )
                       (local.tee $4
                        (f64.add
                         (f64.mul
                          (local.get $9)
                          (local.get $0)
                         )
                         (f64.mul
                          (f64.sub
                           (local.get $4)
                           (f64.sub
                            (f64.sub
                             (local.get $0)
                             (f64.const 3)
                            )
                            (local.get $16)
                           )
                          )
                          (local.get $7)
                         )
                        )
                       )
                      )
                     )
                     (i64.const -4294967296)
                    )
                   )
                  )
                  (f64.const 0.9617967009544373)
                 )
                )
                (local.tee $4
                 (f64.add
                  (f64.add
                   (f64.mul
                    (local.get $0)
                    (f64.const -7.028461650952758e-09)
                   )
                   (f64.mul
                    (f64.sub
                     (local.get $4)
                     (f64.sub
                      (local.get $0)
                      (local.get $10)
                     )
                    )
                    (f64.const 0.9617966939259756)
                   )
                  )
                  (select
                   (f64.const 1.350039202129749e-08)
                   (f64.const 0)
                   (local.get $2)
                  )
                 )
                )
               )
               (local.tee $9
                (select
                 (f64.const 0.5849624872207642)
                 (f64.const 0)
                 (local.get $2)
                )
               )
              )
              (local.tee $10
               (f64.convert_i32_s
                (local.get $3)
               )
              )
             )
            )
            (i64.const -4294967296)
           )
          )
         )
         (f64.sub
          (local.get $4)
          (f64.sub
           (f64.sub
            (f64.sub
             (local.get $0)
             (local.get $10)
            )
            (local.get $9)
           )
           (local.get $7)
          )
         )
        )
       )
      )
      (local.set $3
       (i32.wrap_i64
        (local.tee $11
         (i64.reinterpret_f64
          (local.tee $4
           (f64.add
            (local.tee $1
             (f64.add
              (f64.mul
               (f64.sub
                (local.get $1)
                (local.tee $7
                 (f64.reinterpret_i64
                  (i64.and
                   (i64.reinterpret_f64
                    (local.get $1)
                   )
                   (i64.const -4294967296)
                  )
                 )
                )
               )
               (local.get $0)
              )
              (f64.mul
               (local.get $1)
               (local.get $4)
              )
             )
            )
            (local.tee $0
             (f64.mul
              (local.get $7)
              (local.get $0)
             )
            )
           )
          )
         )
        )
       )
      )
      (if
       (i32.ge_s
        (local.tee $2
         (i32.wrap_i64
          (i64.shr_u
           (local.get $11)
           (i64.const 32)
          )
         )
        )
        (i32.const 1083179008)
       )
       (br_if $folding-inner2
        (i32.or
         (i32.or
          (local.get $3)
          (i32.sub
           (local.get $2)
           (i32.const 1083179008)
          )
         )
         (f64.gt
          (f64.add
           (local.get $1)
           (f64.const 8.008566259537294e-17)
          )
          (f64.sub
           (local.get $4)
           (local.get $0)
          )
         )
        )
       )
       (br_if $folding-inner3
        (select
         (i32.ge_u
          (i32.and
           (local.get $2)
           (i32.const 2147483647)
          )
          (i32.const 1083231232)
         )
         (i32.const 0)
         (i32.or
          (i32.or
           (local.get $3)
           (i32.add
            (local.get $2)
            (i32.const 1064252416)
           )
          )
          (f64.le
           (local.get $1)
           (f64.sub
            (local.get $4)
            (local.get $0)
           )
          )
         )
        )
       )
      )
      (local.set $6
       (i32.sub
        (i32.shr_u
         (local.tee $5
          (i32.and
           (local.get $2)
           (i32.const 2147483647)
          )
         )
         (i32.const 20)
        )
        (i32.const 1023)
       )
      )
      (local.set $3
       (i32.const 0)
      )
      (local.set $1
       (f64.mul
        (local.tee $0
         (f64.add
          (local.tee $7
           (f64.mul
            (local.tee $4
             (f64.reinterpret_i64
              (i64.and
               (i64.reinterpret_f64
                (f64.add
                 (local.get $1)
                 (block (result f64)
                  (if
                   (i32.gt_s
                    (local.get $5)
                    (i32.const 1071644672)
                   )
                   (local.set $0
                    (block (result f64)
                     (local.set $6
                      (i32.sub
                       (i32.shr_u
                        (i32.and
                         (local.tee $5
                          (i32.add
                           (local.get $2)
                           (i32.shr_s
                            (i32.const 1048576)
                            (i32.add
                             (local.get $6)
                             (i32.const 1)
                            )
                           )
                          )
                         )
                         (i32.const 2147483647)
                        )
                        (i32.const 20)
                       )
                       (i32.const 1023)
                      )
                     )
                     (local.set $3
                      (select
                       (i32.sub
                        (i32.const 0)
                        (local.tee $3
                         (i32.shr_s
                          (i32.or
                           (i32.and
                            (local.get $5)
                            (i32.const 1048575)
                           )
                           (i32.const 1048576)
                          )
                          (i32.sub
                           (i32.const 20)
                           (local.get $6)
                          )
                         )
                        )
                       )
                       (local.get $3)
                       (i32.lt_s
                        (local.get $2)
                        (i32.const 0)
                       )
                      )
                     )
                     (f64.sub
                      (local.get $0)
                      (f64.reinterpret_i64
                       (i64.shl
                        (i64.extend_i32_s
                         (i32.and
                          (local.get $5)
                          (i32.xor
                           (i32.shr_s
                            (i32.const 1048575)
                            (local.get $6)
                           )
                           (i32.const -1)
                          )
                         )
                        )
                        (i64.const 32)
                       )
                      )
                     )
                    )
                   )
                  )
                  (local.get $0)
                 )
                )
               )
               (i64.const -4294967296)
              )
             )
            )
            (f64.const 0.6931471824645996)
           )
          )
          (local.tee $4
           (f64.add
            (f64.mul
             (f64.sub
              (local.get $1)
              (f64.sub
               (local.get $4)
               (local.get $0)
              )
             )
             (f64.const 0.6931471805599453)
            )
            (f64.mul
             (local.get $4)
             (f64.const -1.904654299957768e-09)
            )
           )
          )
         )
        )
        (local.get $0)
       )
      )
      (return
       (f64.mul
        (local.get $8)
        (if (result f64)
         (i32.le_s
          (i32.shr_s
           (local.tee $2
            (i32.add
             (i32.wrap_i64
              (i64.shr_u
               (i64.reinterpret_f64
                (local.tee $0
                 (f64.sub
                  (f64.const 1)
                  (f64.sub
                   (f64.sub
                    (f64.div
                     (f64.mul
                      (local.get $0)
                      (local.tee $1
                       (f64.sub
                        (local.get $0)
                        (f64.mul
                         (local.get $1)
                         (f64.add
                          (f64.mul
                           (local.get $1)
                           (f64.add
                            (f64.mul
                             (local.get $1)
                             (f64.add
                              (f64.mul
                               (local.get $1)
                               (f64.add
                                (f64.mul
                                 (local.get $1)
                                 (f64.const 4.1381367970572385e-08)
                                )
                                (f64.const -1.6533902205465252e-06)
                               )
                              )
                              (f64.const 6.613756321437934e-05)
                             )
                            )
                            (f64.const -2.7777777777015593e-03)
                           )
                          )
                          (f64.const 0.16666666666666602)
                         )
                        )
                       )
                      )
                     )
                     (f64.sub
                      (local.get $1)
                      (f64.const 2)
                     )
                    )
                    (f64.add
                     (local.tee $1
                      (f64.sub
                       (local.get $4)
                       (f64.sub
                        (local.get $0)
                        (local.get $7)
                       )
                      )
                     )
                     (f64.mul
                      (local.get $0)
                      (local.get $1)
                     )
                    )
                   )
                   (local.get $0)
                  )
                 )
                )
               )
               (i64.const 32)
              )
             )
             (i32.shl
              (local.get $3)
              (i32.const 20)
             )
            )
           )
           (i32.const 20)
          )
          (i32.const 0)
         )
         (f64.mul
          (if (result f64)
           (i32.gt_s
            (local.tee $2
             (local.get $3)
            )
            (i32.const 1023)
           )
           (block (result f64)
            (local.set $0
             (f64.mul
              (local.get $0)
              (f64.const 8988465674311579538646525e283)
             )
            )
            (if (result f64)
             (i32.gt_s
              (local.tee $2
               (i32.sub
                (local.get $2)
                (i32.const 1023)
               )
              )
              (i32.const 1023)
             )
             (block (result f64)
              (local.set $2
               (select
                (local.tee $2
                 (i32.sub
                  (local.get $2)
                  (i32.const 1023)
                 )
                )
                (i32.const 1023)
                (i32.lt_s
                 (local.get $2)
                 (i32.const 1023)
                )
               )
              )
              (f64.mul
               (local.get $0)
               (f64.const 8988465674311579538646525e283)
              )
             )
             (local.get $0)
            )
           )
           (if (result f64)
            (i32.lt_s
             (local.get $2)
             (i32.const -1022)
            )
            (block (result f64)
             (local.set $0
              (f64.mul
               (local.get $0)
               (f64.const 2.004168360008973e-292)
              )
             )
             (if (result f64)
              (i32.lt_s
               (local.tee $2
                (i32.add
                 (local.get $2)
                 (i32.const 969)
                )
               )
               (i32.const -1022)
              )
              (block (result f64)
               (local.set $2
                (select
                 (local.tee $2
                  (i32.add
                   (local.get $2)
                   (i32.const 969)
                  )
                 )
                 (i32.const -1022)
                 (i32.gt_s
                  (local.get $2)
                  (i32.const -1022)
                 )
                )
               )
               (f64.mul
                (local.get $0)
                (f64.const 2.004168360008973e-292)
               )
              )
              (local.get $0)
             )
            )
            (local.get $0)
           )
          )
          (f64.reinterpret_i64
           (i64.shl
            (i64.add
             (i64.extend_i32_s
              (local.get $2)
             )
             (i64.const 1023)
            )
            (i64.const 52)
           )
          )
         )
         (f64.reinterpret_i64
          (i64.or
           (i64.and
            (i64.reinterpret_f64
             (local.get $0)
            )
            (i64.const 4294967295)
           )
           (i64.shl
            (i64.extend_i32_s
             (local.get $2)
            )
            (i64.const 32)
           )
          )
         )
        )
       )
      )
     )
     (return
      (f64.mul
       (local.get $0)
       (local.get $0)
      )
     )
    )
    (return
     (f64.div
      (f64.const 1)
      (local.get $0)
     )
    )
   )
   (return
    (f64.mul
     (f64.mul
      (local.get $8)
      (f64.const 1.e+300)
     )
     (f64.const 1.e+300)
    )
   )
  )
  (f64.mul
   (f64.mul
    (local.get $8)
    (f64.const 1e-300)
   )
   (f64.const 1e-300)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#getOracleWeight (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.trunc_f64_u
   (f64.min
    (call $~lib/math/NativeMath.pow
     (f64.promote_f32
      (f32.div
       (f32.convert_i32_u
        (local.get $1)
       )
       (f32.const 1e6)
      )
     )
     (f64.promote_f32
      (f32.load offset=52
       (local.get $2)
      )
     )
    )
    (f64.const 255)
   )
  )
 )
 (func $assembly/actions/1-global/GlobalActions#reportsCleanup (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $2
     (i32.trunc_f64_u
      (f64.max
       (f64.convert_i32_u
        (i32.sub
         (i32.sub
          (call $assembly/actions/1-global/GlobalActions#currentRound
           (local.get $0)
          )
          (i32.load8_u offset=44
           (local.get $2)
          )
         )
         (i32.load16_u offset=48
          (local.get $2)
         )
        )
       )
       (f64.const 0)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 5856)
  )
  (call $assembly/actions/1-global/GlobalActions#loopReportsCleanup
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/actions/2-oracle/OracleDepositParams#getSize (param $0 i32) (result i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.const 12)
 )
 (func $assembly/actions/2-oracle/OracleDepositParams#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $assembly/actions/2-oracle/OracleDepositParams#getSize
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
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $assembly/actions/2-oracle/OracleActions#sendOracleDeposit (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 92)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $2)
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
   (i64.const -6499669918514537072)
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 89)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (local.get $4)
    (local.get $1)
    (local.get $2)
    (call $assembly/actions/2-oracle/OracleDepositParams#pack
     (local.get $3)
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 93)
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
  (call $assembly/tables/oracles/Oracle#set:standby
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/tables/oracles/Oracle#set:last_standby_toggle_round
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#get (result i32)
   (if
    (local.tee $0
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#get
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#get
     (local.get $0)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (call $assembly/tables/oracles/Oracle#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
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
 (func $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name> (param $0 i32) (param $1 i32)
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
 (func $assembly/tables/global/Global#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $assembly/tables/global/Global#getSize
      (local.get $0)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=5
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=6
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=24
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
   (i32.const 3568)
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
      (i32.const 3632)
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
   (i32.const 3712)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
        (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
      (i32.const 44)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=18
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=20
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
   (i32.const 3568)
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
      (i32.const 3632)
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
   (i32.const 3712)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local.set $4
   (call $assembly/tables/oracles/Oracle#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find
      (i32.load
       (local.get $0)
      )
      (local.get $4)
     )
    )
   )
   (i32.const 1424)
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/actions/2-oracle/OracleActions#oracleDeposit (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.get $2)
    (i32.const 0)
   )
   (i32.const 5936)
  )
  (local.set $3
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (drop
   (call $assembly/actions/1-global/GlobalActions#updateStats
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (i32.load offset=8
    (local.tee $1
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
      (i32.load offset=12
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
      (i32.const 6032)
     )
    )
   )
   (i32.add
    (local.get $2)
    (i32.load
     (i32.load offset=8
      (local.get $1)
     )
    )
   )
  )
  (call $assembly/tables/oracles/OracleCollateral#set:min_unlock_start_round
   (i32.load offset=8
    (local.get $1)
   )
   (i32.add
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
    (i32.load16_u offset=46
     (local.get $3)
    )
   )
  )
  (if
   (i32.lt_u
    (local.tee $4
     (i32.load8_u offset=4
      (local.get $1)
     )
    )
    (i32.and
     (local.tee $2
      (call $assembly/actions/1-global/GlobalActions#getOracleWeight
       (local.get $0)
       (call $assembly/tables/oracles/Oracle#get:trueCollateral
        (local.get $1)
       )
       (local.get $3)
      )
     )
     (i32.const 255)
    )
   )
   (block
    (call $assembly/tables/global/Global#set:expected_active_weight
     (local.tee $3
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
       (i32.load offset=24
        (local.get $0)
       )
      )
     )
     (i32.add
      (i32.load16_u offset=6
       (local.get $3)
      )
      (i32.and
       (i32.sub
        (local.get $2)
        (local.get $4)
       )
       (i32.const 255)
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#set
     (i32.load offset=24
      (local.get $0)
     )
     (local.get $3)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/actions/2-oracle/OracleStandbyParams#pack (param $0 i32) (result i32)
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
      (i32.const 9)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $assembly/actions/2-oracle/OracleActions#sendOracleStandby (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 5)
     (i32.const 94)
    )
   )
   (local.get $1)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $3)
   (local.get $2)
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
   (i64.const -4417032214701703168)
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 89)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (local.get $4)
    (local.get $1)
    (local.get $2)
    (call $assembly/actions/2-oracle/OracleStandbyParams#pack
     (local.get $3)
    )
   )
  )
 )
 (func $~lib/as-chain/action/hasAuth (param $0 i32) (result i32)
  (call $~lib/as-chain/env/has_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $assembly/actions/2-oracle/OracleActions#setStandby (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/action/hasAuth
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/action/requireAuth
    (local.get $1)
   )
  )
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 6032)
   )
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (local.set $4
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (i32.ne
     (i32.load8_u offset=16
      (local.get $3)
     )
     (i32.const 0)
    )
    (i32.ne
     (local.get $2)
     (i32.const 0)
    )
   )
   (i32.const 6096)
  )
  (if
   (i32.eqz
    (call $~lib/as-chain/action/hasAuth
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.gt_u
     (i32.and
      (i32.sub
       (call $assembly/actions/1-global/GlobalActions#currentRound
        (local.get $0)
       )
       (i32.load16_u offset=18
        (local.get $3)
       )
      )
      (i32.const 65535)
     )
     (i32.load16_u offset=48
      (local.get $4)
     )
    )
    (i32.const 6160)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load offset=4
     (i32.load offset=8
      (local.get $3)
     )
    )
   )
   (i32.const 6256)
  )
  (if
   (local.get $2)
   (block
    (call $assembly/tables/oracles/Oracle#set:standby
     (local.get $3)
     (local.get $2)
    )
    (call $assembly/tables/oracles/Oracle#set:last_standby_toggle_round
     (local.get $3)
     (call $assembly/actions/1-global/GlobalActions#currentRound
      (local.get $0)
     )
    )
    (call $assembly/tables/global/Global#set:expected_active_weight
     (local.get $1)
     (i32.sub
      (i32.load16_u offset=6
       (local.get $1)
      )
      (i32.load8_u offset=4
       (local.get $3)
      )
     )
    )
    (call $assembly/tables/global/Global#set:standby_validators
     (local.get $1)
     (i32.add
      (i32.load8_u offset=5
       (local.get $1)
      )
      (i32.const 1)
     )
    )
    (call $assembly/tables/oracles/Oracle#set:weight
     (local.get $1)
     (i32.sub
      (i32.load8_u offset=4
       (local.get $1)
      )
      (i32.const 1)
     )
    )
   )
   (block
    (call $assembly/tables/oracles/Oracle#set:standby
     (local.get $3)
     (local.get $2)
    )
    (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
     (local.get $3)
     (i32.add
      (call $assembly/actions/1-global/GlobalActions#currentRound
       (local.get $0)
      )
      (i32.const 2)
     )
    )
    (call $assembly/tables/global/Global#set:expected_active_weight
     (local.get $1)
     (i32.add
      (i32.load16_u offset=6
       (local.get $1)
      )
      (i32.load8_u offset=4
       (local.get $3)
      )
     )
    )
    (call $assembly/tables/oracles/Oracle#set:weight
     (local.get $1)
     (i32.add
      (i32.load8_u offset=4
       (local.get $1)
      )
      (i32.const 1)
     )
    )
    (call $assembly/tables/global/Global#set:standby_validators
     (local.get $1)
     (i32.sub
      (i32.load8_u offset=5
       (local.get $1)
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
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
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
 (func $assembly/actions/2-oracle/OracleActions#sendOracleSet (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 95)
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
      (i32.const 89)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=40
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local.set $4
   (call $assembly/tables/oracles/Oracle#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find
      (i32.load
       (local.get $0)
      )
      (local.get $4)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $7
   (i32.load
    (local.tee $6
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $3
   (call $assembly/tables/oracles/Oracle#getPrimaryValue
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
     (call $assembly/tables/oracles/Oracle#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracles/Oracle>#constructor
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
        (local.get $6)
       )
       (local.get $5)
      )
      (call $assembly/tables/oracles/Oracle#getPrimaryValue
       (local.get $1)
      )
      (call $assembly/tables/stats/Stat#getSecondaryValue)
      (i64.load
       (local.get $2)
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
     (call $assembly/tables/oracles/Oracle#getPrimaryValue
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
 (func $assembly/actions/2-oracle/OracleActions#oracleSet (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  (local.set $6
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
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
     (i32.const 6352)
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (i32.load offset=4
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
     (i32.const 6448)
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
      (i32.load16_u offset=46
       (local.get $6)
      )
     )
    )
    (if
     (i32.gt_u
      (local.get $1)
      (i32.load8_u offset=4
       (local.get $4)
      )
     )
     (call $assembly/tables/global/Global#set:expected_active_weight
      (local.get $5)
      (i32.add
       (i32.load16_u offset=6
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
     (call $assembly/tables/global/Global#set:expected_active_weight
      (local.get $5)
      (i32.sub
       (i32.load16_u offset=6
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
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
     (i32.load offset=12
      (local.get $0)
     )
     (local.get $4)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/env/is_account
      (i64.load
       (local.get $1)
      )
     )
     (i32.const 6544)
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
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $3
      (call $assembly/tables/oracles/OracleFunds#constructor)
     )
     (i32.const 0)
    )
    (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
     (local.get $3)
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $3)
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $3)
     (i32.const 0)
    )
    (local.set $1
     (call $assembly/tables/oracles/Oracle#constructor
      (local.get $1)
      (local.get $2)
      (local.get $4)
      (local.get $3)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#store
     (i32.load offset=12
      (local.get $0)
     )
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
    (call $assembly/tables/global/Global#set:standby_validators
     (local.get $5)
     (i32.add
      (i32.load8_u offset=5
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
 (func $assembly/actions/2-oracle/OracleActions#withdrawInit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load16_u offset=12
     (i32.load offset=12
      (local.tee $2
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
        (i32.load offset=12
         (local.get $0)
        )
        (i64.load
         (local.get $1)
        )
        (i32.const 6032)
       )
      )
     )
    )
   )
   (i32.const 6640)
  )
  (local.set $3
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (i32.load offset=4
     (local.tee $1
      (i32.load offset=12
       (local.get $2)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 6800)
  )
  (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
   (local.get $1)
   (i32.add
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
    (i32.load16_u offset=36
     (local.get $3)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
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
 (func $~lib/string/String.UTF8.decode (param $0 i32) (result i32)
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/N2S (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 13)
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
      (i32.sub
       (i32.const 12)
       (local.get $1)
      )
     )
     (local.set $4
      (if (result i32)
       (local.get $1)
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 31)
         )
        )
       )
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 15)
         )
        )
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $3)
       (i32.load offset=12
        (local.get $2)
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $2)
        (local.tee $5
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.const 0)
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $2)
        (local.get $5)
       )
      )
     )
     (call $~lib/array/Array<u8>#__uset
      (local.get $2)
      (local.get $3)
      (local.get $4)
     )
     (local.set $0
      (select
       (i64.shr_u
        (local.get $0)
        (i64.const 5)
       )
       (i64.shr_u
        (local.get $0)
        (i64.const 4)
       )
       (local.get $1)
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
  (local.set $1
   (i32.sub
    (i32.load offset=12
     (local.get $2)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.ge_s
     (local.get $1)
     (i32.const 0)
    )
    (if
     (i32.eq
      (call $~lib/array/Array<u8>#__get
       (local.get $2)
       (local.get $1)
      )
      (i32.const 46)
     )
     (block
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (call $~lib/array/Array<u8>#slice
     (local.get $2)
     (i32.const 0)
     (i32.add
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/name/Name#toString (param $0 i32) (result i32)
  (call $~lib/as-chain/name/N2S
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $assembly/actions/2-oracle/OracleActions#withdrawEnd (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/system/check
   (i32.ne
    (i32.load16_u offset=12
     (local.tee $2
      (i32.load offset=12
       (local.tee $4
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
         (i32.load offset=12
          (local.get $0)
         )
         (i64.load
          (local.get $1)
         )
         (i32.const 6032)
        )
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 6912)
  )
  (call $~lib/as-chain/system/check
   (i32.lt_u
    (i32.load16_u offset=12
     (local.get $2)
    )
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
   )
   (i32.const 6992)
  )
  (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (i32.add
    (i32.load
     (local.get $2)
    )
    (i32.load offset=8
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.sub
    (i32.load offset=4
     (local.get $2)
    )
    (i32.load offset=8
     (local.get $2)
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
   (i64.const -7807112968112963584)
  )
  (call $assembly/actions/1-global/GlobalActions#sendWholeBoid
   (local.get $0)
   (local.get $3)
   (i32.load
    (local.get $0)
   )
   (i32.load offset=8
    (local.get $2)
   )
   (call $~lib/string/String.__concat
    (i32.const 7072)
    (call $~lib/as-chain/name/Name#toString
     (local.get $1)
    )
   )
  )
  (call $assembly/actions/1-global/GlobalActions#sendWholeBoid
   (local.get $0)
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (i32.load offset=8
    (local.get $2)
   )
   (i32.const 7168)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $4)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 96)
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
 (func $assembly/actions/2-oracle/OracleActions#unlockOracle (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (call $~lib/as-chain/action/hasAuth
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/action/requireAuth
    (local.get $1)
   )
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 6032)
   )
  )
  (local.set $3
   (i32.eq
    (i32.load offset=4
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#constructor
      (local.tee $1
       (i32.load
        (i32.load
         (local.tee $3
          (call $assembly/actions/1-global/GlobalActions#oracleStatsT
           (local.get $0)
           (local.get $1)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/env/db_lowerbound_i64
       (i64.load
        (local.get $1)
       )
       (i64.load offset=8
        (local.get $1)
       )
       (i64.load offset=16
        (local.get $1)
       )
       (i64.const 0)
      )
      (i64.const 0)
      (i32.const 0)
     )
    )
    (i32.load offset=4
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#constructor
      (local.tee $1
       (i32.load
        (i32.load
         (local.get $3)
        )
       )
      )
      (call $~lib/as-chain/env/db_end_i64
       (i64.load
        (local.get $1)
       )
       (i64.load offset=8
        (local.get $1)
       )
       (i64.load offset=16
        (local.get $1)
       )
      )
      (i64.const 0)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $4
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (local.set $1
   (i32.load offset=8
    (local.get $2)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.gt_u
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
    (i32.load16_u offset=14
     (local.get $1)
    )
   )
   (i32.const 7248)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load offset=4
     (local.get $1)
    )
   )
   (i32.const 7312)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (local.get $3)
   )
   (i32.const 7472)
  )
  (call $~lib/as-chain/system/check
   (i32.load8_u offset=16
    (local.get $2)
   )
   (i32.const 7664)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (call $assembly/tables/oracles/Oracle#get:trueCollateral
    (local.get $2)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
   (local.get $1)
   (i32.add
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
    (i32.load16_u offset=46
     (local.get $4)
    )
   )
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/actions/2-oracle/OracleActions#unlockEnd (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $2
   (i32.load offset=8
    (local.tee $3
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
      (i32.load offset=12
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
      (i32.const 6032)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
    (i32.load16_u offset=12
     (local.get $2)
    )
   )
   (i32.const 7776)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (i32.load offset=4
     (local.get $2)
    )
    (i32.const 0)
   )
   (i32.const 7856)
  )
  (call $assembly/actions/1-global/GlobalActions#sendWholeBoid
   (local.get $0)
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (i32.load offset=4
    (local.get $2)
   )
   (i32.const 7952)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#get
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
    (call $assembly/tables/oracles/Oracle#getPrimaryValue
     (local.get $3)
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#store
    (local.get $0)
    (local.get $3)
    (local.get $1)
   )
  )
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
      (i32.const 97)
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
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
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
        (i32.const 8016)
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
     (i32.const 99)
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/protocols/Protocol>#requireGet (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/protocols/Protocol>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (i32.const 8048)
  )
  (if (result i32)
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/tables/protocols/Protocol>#get
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (local.get $0)
   (call $assembly/tables/protocols/Protocol#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
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
  (if
   (i32.eqz
    (i32.and
     (local.tee $0
      (i32.trunc_f32_u
       (f32.mul
        (f32.load offset=12
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/protocols/Protocol>#requireGet
          (i32.load offset=16
           (local.get $0)
          )
          (i64.extend_i32_u
           (i32.load8_u
            (local.get $2)
           )
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
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 6)
     (i32.const 100)
    )
   )
   (local.get $1)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
   (local.get $2)
   (local.get $0)
  )
  (local.set $3
   (local.get $2)
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
   (i64.const 4403552865335902208)
  )
  (local.set $2
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
   (i64.const -5964829136831119360)
  )
  (drop
   (i32.load offset=4
    (local.tee $5
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 89)
      (i32.const 0)
     )
    )
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
   (i64.const 4403552865335902208)
  )
  (local.set $4
   (local.get $1)
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
   (i64.const 3617214756542218240)
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $5)
   (i32.const 0)
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $4)
    (local.get $1)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (local.get $2)
    (local.get $0)
    (local.get $5)
    (call $assembly/actions/3-pwrreport/PowerAddParams#pack
     (local.get $3)
    )
   )
  )
 )
 (func $assembly/tables/external/accounts/AccountAuth#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 102)
    )
   )
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 106)
    (i32.const 8656)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/accounts/AccountStake#set:received_delegated_stake (param $0 i32) (param $1 i32)
  (i32.store16 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/tables/external/accounts/AccountStake#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 10)
     (i32.const 107)
    )
   )
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 109)
    (i32.const 8720)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/external/accounts/AccountStake#set:received_delegated_stake
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/accounts/AccountPower#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 110)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 112)
    (i32.const 8752)
   )
  )
  (local.get $0)
 )
 (func $assembly/tables/external/accounts/AccountTeam#constructor (result i32)
  (local $0 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 113)
    )
   )
   (i32.const 0)
  )
  (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
   (local.get $0)
   (i32.const 0)
  )
  (call $assembly/tables/oracles/Oracle#set:weight
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/accounts/Account.get:tableName (result i32)
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
   (i64.const 3607749779137757184)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/external/accounts/Account>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 114)
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
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 33)
    (i32.const 8624)
   )
  )
  (local.set $6
   (call $assembly/tables/external/accounts/AccountAuth#constructor)
  )
  (local.set $7
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 33)
    (i32.const 8688)
   )
  )
  (local.set $8
   (call $assembly/tables/external/accounts/AccountStake#constructor)
  )
  (local.set $9
   (call $assembly/tables/external/accounts/AccountPower#constructor)
  )
  (local.set $10
   (call $assembly/tables/external/accounts/AccountTeam#constructor)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 38)
     (i32.const 101)
    )
   )
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $7)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $8)
  )
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
   (local.get $2)
   (local.get $9)
  )
  (call $assembly/tables/stats/Stat#set:valid_proposed_since_previous
   (local.get $2)
   (local.get $10)
  )
  (call $assembly/tables/config/Config#set:slash_quantity_static
   (local.get $2)
   (i32.const 2384)
  )
  (call $assembly/tables/external/config/Config#set:auto
   (local.get $2)
   (i32.const 0)
  )
  (call $assembly/tables/config/Config#set:withdraw_rounds_wait
   (local.get $2)
   (i32.const 0)
  )
  (local.set $3
   (call $assembly/tables/external/accounts/Account.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/tables/external/accounts/Account.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 26)
    (i32.const 8784)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 115)
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
  (local.set $11
   (i64.load
    (local.get $0)
   )
  )
  (local.set $12
   (i64.load
    (local.get $1)
   )
  )
  (local.set $13
   (i64.load
    (local.get $3)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 116)
    )
   )
   (local.get $11)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $0)
   (local.get $12)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.get $0)
   (local.get $13)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $2)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/accounts/Account>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 117)
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
 (func $assembly/tables/pwrreports/PwrReportRow#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (i32.const 23)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=16
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
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=22
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=23
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
       (i32.load offset=12
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
   (i32.const 9120)
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
   (i32.const 3568)
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
      (i32.const 3632)
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
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/pwrreports/PwrReportRow>#getValue
         (local.get $1)
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
   (i32.const 3712)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
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
 (func $assembly/actions/1-global/GlobalActions#minWeightThreshold@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (local.set $1
     (call $assembly/actions/1-global/GlobalActions#getConfig
      (local.get $0)
     )
    )
   )
   (local.set $2
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
  )
  (call $assembly/actions/1-global/GlobalActions#minWeightThreshold
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
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
 (func $~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#get (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#find
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
   (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#get
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
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
      (i32.const 16)
     )
    )
   )
   (i32.load16_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=8
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
   (i32.const 3568)
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
      (i32.const 3632)
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
   (i32.const 3712)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local.set $4
   (call $assembly/tables/stats/Stat#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#find
      (i32.load
       (local.get $0)
      )
      (local.get $4)
     )
    )
   )
   (i32.const 1424)
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local.set $4
   (call $assembly/tables/stats/Stat#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#find
      (i32.load
       (local.get $0)
      )
      (local.get $4)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $7
   (i32.load
    (local.tee $6
     (i32.load
      (local.get $0)
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
    (local.get $2)
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/tables/oracleStats/OracleStat#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/oracleStats/OracleStat>#constructor
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
       (local.get $2)
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
 (func $assembly/actions/3-pwrreport/PwrReportActions#updateOracleStats (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (local.tee $4
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#get
     (local.tee $5
      (call $assembly/actions/1-global/GlobalActions#oracleStatsT
       (local.get $0)
       (i32.load
        (local.get $1)
       )
      )
     )
     (i64.extend_i32_u
      (call $assembly/actions/1-global/GlobalActions#currentRound
       (local.get $0)
      )
     )
    )
   )
   (block
    (if
     (local.get $2)
     (block
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (i32.load offset=4
        (local.get $4)
       )
       (i32.add
        (i32.load offset=4
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 1)
       )
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (i32.load offset=4
        (local.get $4)
       )
       (i32.sub
        (i32.load offset=8
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 1)
       )
      )
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo2
      (i32.load offset=4
       (local.get $4)
      )
      (i32.add
       (i32.load offset=8
        (i32.load offset=4
         (local.get $4)
        )
       )
       (i32.const 1)
      )
     )
    )
    (if
     (local.get $3)
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (i32.load offset=4
       (local.get $4)
      )
      (i32.add
       (i32.load
        (i32.load offset=4
         (local.get $4)
        )
       )
       (i32.const 1)
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#update
     (local.get $5)
     (local.get $4)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (local.set $4
     (call $assembly/actions/1-global/GlobalActions#currentRound
      (local.get $0)
     )
    )
    (local.set $6
     (i32.load8_u offset=4
      (local.get $1)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $1
      (call $assembly/tables/oracleStats/Reports#constructor)
     )
     (i32.eqz
      (i32.eqz
       (local.get $3)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $1)
     (i32.eqz
      (i32.eqz
       (local.get $2)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $1)
     (i32.eqz
      (local.get $2)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#store
     (local.get $5)
     (call $assembly/tables/oracleStats/OracleStat#constructor
      (local.get $4)
      (local.get $6)
      (local.get $1)
      (i32.const 0)
     )
     (i32.load
      (local.get $0)
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
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (drop
   (call $assembly/actions/1-global/GlobalActions#updateStats
    (local.get $0)
   )
  )
  (local.set $10
   (call $assembly/actions/3-pwrreport/PwrReportActions#getReportId
    (local.get $0)
    (local.get $3)
   )
  )
  (local.set $8
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (i32.load16_u offset=2
     (local.get $3)
    )
    (i32.and
     (i32.sub
      (call $assembly/actions/1-global/GlobalActions#currentRound
       (local.get $0)
      )
      (i32.load8_u offset=44
       (local.get $8)
      )
     )
     (i32.const 65535)
    )
   )
   (i32.const 8112)
  )
  (call $~lib/as-chain/system/check
   (i32.lt_u
    (i32.load16_u offset=2
     (local.get $3)
    )
    (call $assembly/actions/1-global/GlobalActions#currentRound
     (local.get $0)
    )
   )
   (i32.const 8192)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u offset=16
     (local.tee $5
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
       (i32.load offset=12
        (local.get $0)
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 8288)
      )
     )
    )
   )
   (i32.const 8352)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (i32.load8_u offset=4
     (local.get $5)
    )
    (i32.const 0)
   )
   (i32.const 8528)
  )
  (drop
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/protocols/Protocol>#requireGet
    (i32.load offset=16
     (local.get $0)
    )
    (i64.extend_i32_u
     (i32.load8_u
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (i64.const 4403552865335902208)
  )
  (local.set $6
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/external/accounts/Account>#constructor
    (local.get $6)
    (local.get $6)
   )
  )
  (local.set $13
   (local.tee $12
    (i64.load
     (local.get $2)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/external/accounts/Account>#find (result i32)
     (if
      (i32.ge_s
       (local.tee $7
        (call $~lib/as-chain/env/db_find_i64
         (i64.load
          (local.tee $6
           (i32.load
            (i32.load
             (local.get $6)
            )
           )
          )
         )
         (i64.load offset=8
          (local.get $6)
         )
         (i64.load offset=16
          (local.get $6)
         )
         (local.get $12)
        )
       )
       (i32.const 0)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/tables/external/accounts/Account>#find
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/accounts/Account>#constructor
        (local.get $6)
        (local.get $7)
        (local.get $13)
        (i32.const 1)
       )
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/accounts/Account>#constructor
      (local.get $6)
      (local.get $7)
      (i64.const 0)
      (i32.const 0)
     )
    )
   )
   (i32.const 8816)
  )
  (local.set $6
   (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#getByKey (result i32)
    (drop
     (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#getByKey
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
        (local.tee $4
         (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find
          (local.tee $7
           (i32.load
            (local.tee $11
             (call $assembly/actions/1-global/GlobalActions#pwrReportsT
              (local.get $0)
              (local.get $2)
             )
            )
           )
          )
          (local.get $10)
         )
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#get
     (i32.load
      (local.get $7)
     )
     (local.get $4)
    )
   )
  )
  (local.set $7
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (if
   (local.get $6)
   (block
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/array/Array<~lib/as-chain/name/Name>#includes
       (i32.load offset=16
        (local.get $6)
       )
       (local.get $1)
      )
     )
     (i32.const 8880)
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (i32.load8_u offset=22
       (local.get $6)
      )
     )
     (i32.const 8976)
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (i32.load8_u offset=23
       (local.get $6)
      )
     )
     (i32.const 9056)
    )
    (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
     (local.get $6)
     (i32.add
      (i32.load16_u offset=20
       (local.get $6)
      )
      (i32.load8_u offset=4
       (local.get $5)
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/name/Name>#push
     (i32.load offset=16
      (local.get $6)
     )
     (local.get $1)
    )
    (local.set $9
     (if (result i32)
      (if (result i32)
       (i32.ge_u
        (i32.load16_u offset=20
         (local.get $6)
        )
        (i32.and
         (call $assembly/actions/1-global/GlobalActions#minWeightThreshold
          (local.get $8)
          (local.get $7)
         )
         (i32.const 65535)
        )
       )
       (call $assembly/actions/1-global/GlobalActions#shouldFinalizeReports
        (local.get $0)
        (local.get $8)
       )
       (i32.const 0)
      )
      (block (result i32)
       (call $assembly/actions/3-pwrreport/PwrReportActions#sendReport
        (local.get $0)
        (local.get $2)
        (local.get $3)
       )
       (call $assembly/tables/pwrreports/PwrReportRow#set:reported
        (local.get $6)
        (i32.const 1)
       )
       (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
        (i32.load offset=8
         (local.get $7)
        )
        (i64.add
         (i64.load offset=16
          (i32.load offset=8
           (local.get $7)
          )
         )
         (i64.const 1)
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
        (i32.load offset=8
         (local.get $7)
        )
        (i64.sub
         (i64.load offset=8
          (i32.load offset=8
           (local.get $7)
          )
         )
         (i64.const 1)
        )
       )
       (i32.const 1)
      )
      (i32.const 0)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#update
     (local.get $11)
     (local.get $6)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (local.set $14
     (i32.const 1)
    )
    (local.set $4
     (i32.load8_u offset=4
      (local.get $5)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (if
     (local.tee $4
      (i32.ge_u
       (local.get $4)
       (i32.and
        (call $assembly/actions/1-global/GlobalActions#minWeightThreshold@varargs
         (local.get $0)
         (i32.const 0)
         (i32.const 0)
        )
        (i32.const 65535)
       )
      )
     )
     (local.set $4
      (call $assembly/actions/1-global/GlobalActions#shouldFinalizeReports
       (local.get $0)
       (local.get $8)
      )
     )
    )
    (drop
     (i32.load offset=4
      (local.tee $8
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 33)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $8)
     (i32.const 0)
     (local.get $1)
    )
    (local.set $8
     (call $assembly/tables/pwrreports/PwrReportRow#constructor
      (local.get $10)
      (local.get $1)
      (local.get $3)
      (local.get $8)
      (i32.load8_u offset=4
       (local.get $5)
      )
      (local.get $4)
     )
    )
    (call $assembly/tables/global/GlobalReports#set:proposed
     (i32.load offset=8
      (local.get $7)
     )
     (i64.add
      (i64.load offset=24
       (i32.load offset=8
        (local.get $7)
       )
      )
      (i64.const 1)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#store
     (local.get $11)
     (local.get $8)
     (i32.load
      (local.get $0)
     )
    )
    (if
     (local.get $4)
     (block
      (local.set $9
       (i32.const 1)
      )
      (call $assembly/actions/3-pwrreport/PwrReportActions#sendReport
       (local.get $0)
       (local.get $2)
       (local.get $3)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
       (i32.load offset=8
        (local.get $7)
       )
       (i64.add
        (i64.load offset=16
         (i32.load offset=8
          (local.get $7)
         )
        )
        (i64.const 1)
       )
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
      (i32.load offset=8
       (local.get $7)
      )
      (i64.add
       (i64.load offset=8
        (i32.load offset=8
         (local.get $7)
        )
       )
       (i64.const 1)
      )
     )
    )
   )
  )
  (call $assembly/actions/1-global/GlobalActions#markOracleActive
   (local.get $5)
   (local.get $7)
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#set
   (i32.load offset=24
    (local.get $0)
   )
   (local.get $7)
   (i32.load
    (local.get $0)
   )
  )
  (if
   (local.get $9)
   (block
    (if
     (i32.eqz
      (local.get $6)
     )
     (return)
    )
    (local.set $3
     (i32.const 0)
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $3)
       (i32.load offset=12
        (i32.load offset=16
         (local.get $6)
        )
       )
      )
      (block
       (if
        (local.tee $2
         (if (result i32)
          (i64.eq
           (i64.load
            (local.tee $2
             (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
              (i32.load offset=16
               (local.get $6)
              )
              (local.get $3)
             )
            )
           )
           (i64.load
            (local.get $1)
           )
          )
          (local.get $5)
          (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#get
           (i32.load offset=12
            (local.get $0)
           )
           (i64.load
            (local.get $2)
           )
          )
         )
        )
        (call $assembly/actions/3-pwrreport/PwrReportActions#updateOracleStats
         (local.get $0)
         (local.get $2)
         (local.get $9)
         (i32.const 0)
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
   )
   (call $assembly/actions/3-pwrreport/PwrReportActions#updateOracleStats
    (local.get $0)
    (local.get $5)
    (local.get $9)
    (local.get $14)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#get (result i32)
   (if
    (local.tee $0
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/pwrreports/PwrReportRow>#get
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/tables/pwrreports/PwrReportRow>#get
     (local.get $0)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (call $assembly/tables/pwrreports/PwrReportRow#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
 )
 (func $assembly/actions/3-pwrreport/PwrReportActions#finishReport (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#requireGet
    (local.tee $7
     (call $assembly/actions/1-global/GlobalActions#pwrReportsT
      (local.get $0)
      (local.get $1)
     )
    )
    (local.get $2)
    (i32.const 9168)
   )
  )
  (local.set $5
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (local.set $4
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $assembly/actions/1-global/GlobalActions#shouldFinalizeReports
    (local.get $0)
    (local.get $5)
   )
   (i32.const 9248)
  )
  (local.set $5
   (i32.load16_u offset=20
    (local.get $3)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (local.get $5)
    (i32.and
     (call $assembly/actions/1-global/GlobalActions#minWeightThreshold@varargs
      (local.get $0)
      (i32.const 0)
      (i32.const 0)
     )
     (i32.const 65535)
    )
   )
   (i32.const 9376)
  )
  (call $assembly/actions/3-pwrreport/PwrReportActions#sendReport
   (local.get $0)
   (local.get $1)
   (i32.load offset=12
    (local.get $3)
   )
  )
  (call $assembly/tables/pwrreports/PwrReportRow#set:reported
   (local.get $3)
   (i32.const 1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (i32.load offset=8
    (local.get $4)
   )
   (i64.add
    (i64.load offset=16
     (i32.load offset=8
      (local.get $4)
     )
    )
    (i64.const 1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (i32.load offset=8
    (local.get $4)
   )
   (i64.sub
    (i64.load offset=8
     (i32.load offset=8
      (local.get $4)
     )
    )
    (i64.const 1)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#update
   (local.get $7)
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#set
   (i32.load offset=24
    (local.get $0)
   )
   (local.get $4)
   (i32.load
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=16
       (local.get $3)
      )
     )
    )
    (block
     (local.set $2
      (i64.load
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=16
         (local.get $3)
        )
        (local.get $6)
       )
      )
     )
     (if
      (local.tee $1
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#get
        (i32.load offset=12
         (local.get $0)
        )
        (local.get $2)
       )
      )
      (call $assembly/actions/3-pwrreport/PwrReportActions#updateOracleStats
       (local.get $0)
       (local.get $1)
       (i32.const 1)
       (i32.const 0)
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
    (i32.load offset=12
     (local.get $0)
    )
   )
   (i32.load offset=4
    (i32.load offset=12
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
        (i32.const 10096)
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
            (i32.const 10096)
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
   (i32.load16_u offset=20
    (local.get $1)
   )
  )
 )
 (func $assembly/actions/3-pwrreport/PwrReportActions#mergeReports (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 i64)
  (drop
   (call $assembly/actions/1-global/GlobalActions#updateStats
    (local.get $0)
   )
  )
  (local.set $6
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (local.set $7
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $assembly/actions/1-global/GlobalActions#shouldFinalizeReports
    (local.get $0)
    (local.get $6)
   )
   (i32.const 9536)
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 118)
    (i32.const 9664)
   )
  )
  (local.set $8
   (i32.const -1)
  )
  (local.set $12
   (i32.const -1)
  )
  (local.set $13
   (call $assembly/actions/1-global/GlobalActions#pwrReportsT
    (local.get $0)
    (local.get $1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $9)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (local.set $4
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#requireGet
       (local.get $13)
       (call $~lib/array/Array<u64>#__get
        (local.get $2)
        (local.get $9)
       )
       (i32.const 9696)
      )
     )
     (if
      (i32.lt_s
       (i32.shr_s
        (i32.shl
         (local.get $8)
         (i32.const 16)
        )
        (i32.const 16)
       )
       (i32.const 0)
      )
      (local.set $8
       (i32.load8_u
        (i32.load offset=12
         (local.get $4)
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eq
        (i32.load8_u
         (i32.load offset=12
          (local.get $4)
         )
        )
        (i32.shr_s
         (i32.shl
          (local.get $8)
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
       (i32.const 9760)
      )
     )
     (if
      (i32.lt_s
       (local.get $12)
       (i32.const 0)
      )
      (local.set $12
       (i32.load16_u offset=2
        (i32.load offset=12
         (local.get $4)
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eq
        (local.get $12)
        (i32.load16_u offset=2
         (i32.load offset=12
          (local.get $4)
         )
        )
       )
       (i32.const 9840)
      )
     )
     (call $~lib/as-chain/system/check
      (i32.eqz
       (i32.load8_u offset=22
        (local.get $4)
       )
      )
      (i32.const 9904)
     )
     (call $~lib/as-chain/system/check
      (i32.eqz
       (i32.load8_u offset=23
        (local.get $4)
       )
      )
      (i32.const 10000)
     )
     (call $~lib/array/Array<~lib/as-chain/name/Name>#push
      (local.get $5)
      (local.get $4)
     )
     (local.set $9
      (i32.add
       (local.get $9)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/array/Array<assembly/tables/pwrreports/PwrReportRow>#sort
   (local.get $5)
  )
  (local.set $9
   (i32.trunc_f64_s
    (f64.floor
     (f64.convert_i32_s
      (i32.div_s
       (i32.load offset=12
        (local.get $5)
       )
       (i32.const 2)
      )
     )
    )
   )
  )
  (local.set $11
   (i32.trunc_f64_u
    (f64.add
     (f64.convert_i32_u
      (local.tee $4
       (if (result i32)
        (i32.and
         (i32.load offset=12
          (local.get $5)
         )
         (i32.const 1)
        )
        (i32.load offset=4
         (i32.load offset=12
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (local.get $5)
           (local.get $9)
          )
         )
        )
        (i32.shr_u
         (i32.add
          (i32.load offset=4
           (i32.load offset=12
            (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
             (local.get $5)
             (i32.sub
              (local.get $9)
              (i32.const 1)
             )
            )
           )
          )
          (i32.load offset=4
           (i32.load offset=12
            (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
             (local.get $5)
             (local.get $9)
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
          (local.get $4)
         )
         (f64.const 0.25)
        )
        (f64.const 1)
       )
       (f64.convert_i32_u
        (local.get $4)
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
        (local.get $4)
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
     (local.get $3)
     (i32.load offset=12
      (local.get $5)
     )
    )
    (block
     (call $~lib/as-chain/system/check
      (i32.ge_u
       (local.get $11)
       (i32.load offset=4
        (i32.load offset=12
         (local.tee $2
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (local.get $5)
           (local.get $3)
          )
         )
        )
       )
      )
      (call $~lib/string/String.__concat
       (call $~lib/string/String.__concat
        (call $~lib/string/String.__concat
         (i32.const 10128)
         (call $~lib/util/number/utoa32
          (i32.load offset=4
           (i32.load offset=12
            (local.get $2)
           )
          )
         )
        )
        (i32.const 10176)
       )
       (call $~lib/util/number/utoa32
        (local.get $11)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.le_u
       (local.get $10)
       (i32.load offset=4
        (i32.load offset=12
         (local.get $2)
        )
       )
      )
      (call $~lib/string/String.__concat
       (call $~lib/string/String.__concat
        (call $~lib/string/String.__concat
         (i32.const 10128)
         (call $~lib/util/number/utoa32
          (i32.load offset=4
           (i32.load offset=12
            (local.get $2)
           )
          )
         )
        )
        (i32.const 10240)
       )
       (call $~lib/util/number/utoa32
        (local.get $10)
       )
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|2)
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (local.set $2
   (i32.const 0)
  )
  (local.set $11
   (i32.load offset=12
    (local.get $5)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (select
      (local.get $11)
      (local.tee $10
       (i32.load offset=12
        (local.get $5)
       )
      )
      (i32.gt_s
       (local.get $10)
       (local.get $11)
      )
     )
    )
    (block
     (local.set $10
      (i32.load
       (i32.add
        (i32.load offset=4
         (local.get $5)
        )
        (i32.shl
         (local.get $3)
         (i32.const 2)
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
       (local.get $10)
       (local.get $3)
       (local.get $5)
       (i32.load
        (i32.const 10320)
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
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 10352)
    (call $~lib/number/U16#toString
     (call $assembly/actions/1-global/GlobalActions#minWeightThreshold
      (local.get $6)
      (local.get $7)
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 10416)
    (call $~lib/number/U16#toString
     (local.get $2)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (i32.and
     (local.get $2)
     (i32.const 65535)
    )
    (i32.and
     (call $assembly/actions/1-global/GlobalActions#minWeightThreshold
      (local.get $6)
      (local.get $7)
     )
     (i32.const 65535)
    )
   )
   (call $~lib/string/String.__concat
    (call $~lib/string/String.__concat
     (call $~lib/string/String.__concat
      (i32.const 10464)
      (call $~lib/number/U16#toString
       (call $assembly/actions/1-global/GlobalActions#minWeightThreshold
        (local.get $6)
        (local.get $7)
       )
      )
     )
     (i32.const 10576)
    )
    (call $~lib/number/U16#toString
     (local.get $2)
    )
   )
  )
  (local.set $3
   (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
    (local.get $5)
    (local.get $9)
   )
  )
  (if
   (i32.and
    (i32.load offset=12
     (local.get $5)
    )
    (i32.const 1)
   )
   (block
    (call $assembly/tables/pwrreports/PwrReportRow#set:reported
     (local.get $3)
     (i32.const 1)
    )
    (local.set $4
     (i32.load offset=16
      (local.get $3)
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
    (call $~lib/array/Array<~lib/as-chain/name/Name>#push
     (local.get $4)
     (local.get $2)
    )
   )
   (block
    (call $assembly/tables/config/Config#set:paused
     (local.tee $3
      (call $assembly/tables/pwrreports/PwrReport#constructor)
     )
     (local.get $8)
    )
    (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
     (local.get $3)
     (local.get $12)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $3)
     (local.get $4)
    )
    (local.set $15
     (call $assembly/actions/3-pwrreport/PwrReportActions#getReportId
      (local.get $0)
      (local.get $3)
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
     (i64.const -7877141939686764032)
    )
    (drop
     (i32.load offset=4
      (local.tee $6
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 33)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $8
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $8)
     (i64.const -7877141939686764032)
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $6)
     (i32.const 0)
     (local.get $8)
    )
    (local.set $3
     (call $assembly/tables/pwrreports/PwrReportRow#constructor
      (local.get $15)
      (local.get $4)
      (local.get $3)
      (local.get $6)
      (local.get $2)
      (i32.const 1)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#store
     (call $assembly/actions/1-global/GlobalActions#pwrReportsT
      (local.get $0)
      (local.get $1)
     )
     (local.get $3)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (call $assembly/actions/3-pwrreport/PwrReportActions#sendReport
   (local.get $0)
   (local.get $1)
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $4
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 33)
    (i32.const 10608)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|3
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $5)
     )
    )
    (block
     (call $assembly/tables/pwrreports/PwrReportRow#set:merged
      (local.tee $3
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (local.get $5)
        (local.get $1)
       )
      )
      (i32.const 1)
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#update
      (local.get $13)
      (local.get $3)
      (i32.load
       (local.get $0)
      )
     )
     (local.set $2
      (i32.const 0)
     )
     (loop $for-loop|4
      (if
       (i32.lt_s
        (local.get $2)
        (i32.load offset=12
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
       (block
        (if
         (i32.eq
          (call $~lib/array/Array<~lib/as-chain/name/Name>#indexOf
           (local.get $4)
           (local.tee $6
            (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
             (i32.load offset=16
              (local.get $3)
             )
             (local.get $2)
            )
           )
          )
          (i32.const -1)
         )
         (call $~lib/array/Array<~lib/as-chain/name/Name>#push
          (local.get $4)
          (local.get $6)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/string/String.__concat
           (i32.const 10640)
           (call $~lib/as-chain/name/Name#toString
            (local.get $6)
           )
          )
         )
        )
        (local.set $2
         (i32.add
          (local.get $2)
          (i32.const 1)
         )
        )
        (br $for-loop|4)
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|3)
    )
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|5
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $4)
     )
    )
    (block
     (if
      (local.tee $2
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#get
        (local.tee $3
         (call $assembly/actions/1-global/GlobalActions#oracleStatsT
          (local.get $0)
          (local.tee $6
           (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
            (local.get $4)
            (local.get $1)
           )
          )
         )
        )
        (i64.extend_i32_u
         (call $assembly/actions/1-global/GlobalActions#currentRound
          (local.get $0)
         )
        )
       )
      )
      (block
       (call $~lib/rt/common/OBJECT#set:gcInfo
        (i32.load offset=4
         (local.get $2)
        )
        (i32.add
         (i32.load offset=4
          (i32.load offset=4
           (local.get $2)
          )
         )
         (i32.const 1)
        )
       )
       (call $~lib/rt/common/OBJECT#set:gcInfo2
        (i32.load offset=4
         (local.get $2)
        )
        (i32.sub
         (i32.load offset=8
          (i32.load offset=4
           (local.get $2)
          )
         )
         (i32.const 1)
        )
       )
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#update
        (local.get $3)
        (local.get $2)
        (i32.load
         (local.get $0)
        )
       )
      )
      (if
       (local.tee $2
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#get
         (i32.load offset=12
          (local.get $0)
         )
         (i64.load
          (local.get $6)
         )
        )
       )
       (block
        (local.set $6
         (call $assembly/actions/1-global/GlobalActions#currentRound
          (local.get $0)
         )
        )
        (local.set $8
         (i32.load8_u offset=4
          (local.get $2)
         )
        )
        (call $~lib/rt/common/OBJECT#set:gcInfo
         (local.tee $2
          (call $assembly/tables/oracleStats/Reports#constructor)
         )
         (i32.const 1)
        )
        (call $~lib/rt/common/OBJECT#set:gcInfo2
         (local.get $2)
         (i32.const 0)
        )
        (call $~lib/rt/common/BLOCK#set:mmInfo
         (local.get $2)
         (i32.const 0)
        )
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#store
         (local.get $3)
         (call $assembly/tables/oracleStats/OracleStat#constructor
          (local.get $6)
          (local.get $8)
          (local.get $2)
          (i32.const 0)
         )
         (i32.load
          (local.get $0)
         )
        )
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|5)
    )
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (i32.load offset=8
    (local.get $7)
   )
   (i64.add
    (i64.load offset=16
     (i32.load offset=8
      (local.get $7)
     )
    )
    (i64.const 1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (i32.load offset=8
    (local.get $7)
   )
   (i64.add
    (i64.load
     (i32.load offset=8
      (local.get $7)
     )
    )
    (i64.extend_i32_s
     (i32.load offset=12
      (local.get $5)
     )
    )
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (i32.load offset=8
    (local.get $7)
   )
   (i64.sub
    (i64.load offset=8
     (i32.load offset=8
      (local.get $7)
     )
    )
    (i64.extend_i32_s
     (i32.load offset=12
      (local.get $5)
     )
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#set
   (i32.load offset=24
    (local.get $0)
   )
   (local.get $7)
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
   (i32.const 3568)
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
      (i32.const 3632)
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
   (i32.const 3712)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
        (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (local.get $0)
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
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $2)
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
      (i32.const 10576)
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
          (i32.const 49)
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
         (i32.const 49)
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
     (i32.const 49)
     (i32.const 0)
    )
   )
   (loop $while-continue|1
    (block $__inlined_func$~lib/string/String#indexOf
     (if
      (i32.eqz
       (local.tee $4
        (call $~lib/string/String#get:length
         (i32.const 10576)
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
           (i32.const 10576)
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
        (call $~lib/array/Array<~lib/as-chain/name/Name>#push
         (local.get $5)
         (local.get $2)
        )
       )
       (call $~lib/array/Array<~lib/as-chain/name/Name>#push
        (local.get $5)
        (i32.const 2384)
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
     (call $~lib/array/Array<~lib/as-chain/name/Name>#push
      (local.get $5)
      (local.get $0)
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
     (call $~lib/array/Array<~lib/as-chain/name/Name>#push
      (local.get $5)
      (local.get $1)
     )
    )
    (call $~lib/array/Array<~lib/as-chain/name/Name>#push
     (local.get $5)
     (i32.const 2384)
    )
   )
   (return
    (local.get $5)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 49)
   (i32.const 0)
  )
 )
 (func $assembly/actions/5-deposit/DepositActions#ondeposit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $2
   (i32.load offset=4
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
   (i64.const -3665743725357547520)
  )
  (if
   (i64.eq
    (i64.load
     (local.get $2)
    )
    (i64.load
     (local.get $1)
    )
   )
   (block
    (local.set $4
     (call $~lib/as-chain/action/readActionData)
    )
    (global.set $~argumentsLength
     (i32.const 0)
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
     (i64.const 0)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (drop
     (call $assembly/actions/5-deposit/TokenTransfer#unpack
      (local.tee $1
       (call $assembly/actions/5-deposit/TokenTransfer#constructor
        (local.get $2)
        (local.get $1)
        (call $~lib/as-chain/asset/Asset#constructor@varargs)
        (i32.const 2384)
       )
      )
      (local.get $4)
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
    (local.set $3
     (i32.load
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
     (i64.const -4157661379333832704)
    )
    (if
     (i64.eq
      (i64.load
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
     (return)
    )
    (local.set $3
     (i32.load
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
     (i64.const -7807112968112963584)
    )
    (if
     (i64.eq
      (i64.load
       (local.get $3)
      )
      (i64.load
       (local.get $2)
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
     (i32.const 10800)
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
     (i32.const 10864)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/asset/Asset#isValid
      (i32.load offset=8
       (local.get $1)
      )
     )
     (i32.const 10928)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/asset/Asset#isAmountWithinRange
      (i32.load offset=8
       (local.get $1)
      )
     )
     (i32.const 10928)
    )
    (if
     (block $__inlined_func$~lib/string/String.__eq (result i32)
      (drop
       (br_if $__inlined_func$~lib/string/String.__eq
        (i32.const 1)
        (i32.eq
         (local.tee $3
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (call $~lib/string/String#split
            (i32.load offset=12
             (local.get $1)
            )
           )
           (i32.const 0)
          )
         )
         (i32.const 10992)
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
         (local.tee $4
          (call $~lib/string/String#get:length
           (local.get $3)
          )
         )
         (call $~lib/string/String#get:length
          (i32.const 10992)
         )
        )
       )
      )
      (i32.eqz
       (call $~lib/util/string/compareImpl
        (local.get $3)
        (i32.const 0)
        (i32.const 10992)
        (local.get $4)
       )
      )
     )
     (block
      (local.set $3
       (call $assembly/actions/1-global/GlobalActions#getConfig
        (local.get $0)
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eqz
        (i32.rem_u
         (local.tee $2
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
         (i32.load offset=56
          (local.get $3)
         )
        )
       )
       (i32.const 11040)
      )
      (if
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
        (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracles/Oracle>#find
         (i32.load
          (i32.load offset=12
           (local.get $0)
          )
         )
         (i64.load
          (i32.load
           (local.get $1)
          )
         )
        )
       )
       (call $assembly/actions/2-oracle/OracleActions#sendOracleDeposit
        (local.get $0)
        (i32.load
         (local.get $1)
        )
        (local.get $2)
       )
       (call $assembly/actions/2-oracle/OracleActions#sendOracleSet
        (local.get $0)
        (i32.load
         (local.get $1)
        )
        (call $assembly/actions/1-global/GlobalActions#getOracleWeight
         (local.get $0)
         (local.get $2)
         (local.get $3)
        )
        (local.get $2)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.const 0)
      (i32.const 11152)
     )
    )
   )
  )
 )
 (func $~lib/util/number/utoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i64.eqz
    (local.get $0)
   )
   (return
    (i32.const 5312)
   )
  )
  (if
   (i64.le_u
    (local.get $0)
    (i64.const 4294967295)
   )
   (call $~lib/util/number/utoa_dec_simple<u32>
    (local.tee $3
     (call $~lib/rt/stub/__new
      (i32.shl
       (local.tee $2
        (call $~lib/util/number/decimalCount32
         (local.tee $1
          (i32.wrap_i64
           (local.get $0)
          )
         )
        )
       )
       (i32.const 1)
      )
      (i32.const 1)
     )
    )
    (local.get $1)
    (local.get $2)
   )
   (block
    (local.set $2
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $1
         (select
          (select
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const 100000000000)
             )
             (i32.const 10)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000)
            )
           )
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const 100000000000000)
             )
             (i32.const 13)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000000)
            )
           )
           (i64.lt_u
            (local.get $0)
            (i64.const 1000000000000)
           )
          )
          (select
           (i32.add
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000000000)
            )
            (i32.const 16)
           )
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const -8446744073709551616)
             )
             (i32.const 18)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 1000000000000000000)
            )
           )
           (i64.lt_u
            (local.get $0)
            (i64.const 100000000000000000)
           )
          )
          (i64.lt_u
           (local.get $0)
           (i64.const 1000000000000000)
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
       (local.get $2)
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
       (i32.wrap_i64
        (i64.rem_u
         (local.get $0)
         (i64.const 10)
        )
       )
       (i32.const 48)
      )
     )
     (br_if $do-continue|0
      (i64.ne
       (local.tee $0
        (i64.div_u
         (local.get $0)
         (i64.const 10)
        )
       )
       (i64.const 0)
      )
     )
    )
   )
  )
  (local.get $3)
 )
 (func $assembly/actions/6-ostats/OStatsActions#sendSlashOracle (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 121)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $2)
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
   (i64.const -4301633828704463872)
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 89)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (local.get $4)
    (local.get $1)
    (local.get $2)
    (call $assembly/actions/2-oracle/OracleDepositParams#pack
     (local.get $3)
    )
   )
  )
 )
 (func $assembly/actions/6-ostats/PayOracleParams#pack (param $0 i32) (result i32)
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
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $assembly/actions/6-ostats/OStatsActions#sendPayOracle (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 122)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
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
   (i64.const -6215728789908881408)
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 89)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (local.get $4)
    (local.get $1)
    (local.get $2)
    (call $assembly/actions/6-ostats/PayOracleParams#pack
     (local.get $3)
    )
   )
  )
 )
 (func $assembly/actions/6-ostats/OStatsActions#handleOStat (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f32)
  (local $15 i32)
  (local $16 f32)
  (local.set $8
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.lt_u
    (local.tee $3
     (i32.and
      (local.get $2)
      (i32.const 65535)
     )
    )
    (i32.and
     (i32.sub
      (call $assembly/actions/1-global/GlobalActions#currentRound
       (local.get $0)
      )
      (i32.add
       (i32.load8_u offset=44
        (local.get $8)
       )
       (i32.const 1)
      )
     )
     (i32.const 65535)
    )
   )
   (i32.const 11312)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/oracleStats/OracleStat>#find
      (i32.load
       (local.tee $9
        (call $assembly/actions/1-global/GlobalActions#oracleStatsT
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (i64.extend_i32_u
       (local.get $3)
      )
     )
    )
   )
   (i32.const 11440)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u offset=8
     (block (result i32)
      (if
       (i32.eqz
        (local.tee $3
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracleStats/OracleStat>#get
          (i32.load
           (i32.load
            (local.get $9)
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
         (call $assembly/tables/oracleStats/OracleStat#constructor@varargs)
        )
       )
      )
      (local.get $3)
     )
    )
   )
   (i32.const 11520)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<assembly/tables/stats/Stat>#find
      (i32.load
       (local.tee $5
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
      (i64.extend_i32_u
       (i32.and
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
        (i32.const 65535)
       )
      )
     )
    )
   )
   (i32.const 11616)
  )
  (if
   (i32.eqz
    (local.tee $2
     (call $~lib/as-chain/dbi64/DBI64<assembly/tables/stats/Stat>#get
      (i32.load
       (i32.load
        (local.get $5)
       )
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (call $assembly/tables/stats/Stat#constructor@varargs)
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 11696)
    (call $~lib/number/F32#toString
     (block (result f32)
      (if
       (f32.ne
        (local.tee $4
         (f32.div
          (f32.convert_i32_u
           (i32.load offset=8
            (i32.load offset=4
             (local.get $3)
            )
           )
          )
          (f32.convert_i32_u
           (i32.load offset=12
            (local.get $2)
           )
          )
         )
        )
        (local.get $4)
       )
       (local.set $4
        (f32.const 0)
       )
      )
      (local.get $4)
     )
    )
   )
  )
  (local.set $10
   (i32.trunc_f64_u
    (f64.max
     (f64.convert_i32_s
      (i32.sub
       (i32.load
        (i32.load offset=4
         (local.get $3)
        )
       )
       (i32.load offset=8
        (i32.load offset=4
         (local.get $3)
        )
       )
      )
     )
     (f64.const 0)
    )
   )
  )
  (local.set $11
   (i32.load offset=24
    (local.get $2)
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 11760)
    (call $~lib/util/number/utoa32
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 11840)
    (call $~lib/util/number/utoa32
     (i32.load offset=16
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 11920)
    (call $~lib/util/number/utoa64
     (i64.load offset=24
      (i32.load offset=8
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 11984)
    (call $~lib/util/number/utoa64
     (i64.load offset=16
      (i32.load offset=8
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 12048)
    (call $~lib/util/number/utoa32
     (i32.load offset=4
      (i32.load offset=4
       (local.get $3)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 12128)
    (call $~lib/util/number/utoa32
     (local.get $10)
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 12192)
    (call $~lib/util/number/utoa32
     (local.get $11)
    )
   )
  )
  (block $__inlined_func$~lib/util/number/itoa32
   (if
    (i32.eqz
     (local.tee $5
      (i32.load offset=12
       (i32.load
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
     )
    )
    (block
     (local.set $5
      (i32.const 5312)
     )
     (br $__inlined_func$~lib/util/number/itoa32)
    )
   )
   (call $~lib/util/number/utoa_dec_simple<u32>
    (local.tee $5
     (call $~lib/rt/stub/__new
      (i32.shl
       (local.tee $15
        (i32.add
         (call $~lib/util/number/decimalCount32
          (local.tee $13
           (select
            (i32.sub
             (i32.const 0)
             (local.get $5)
            )
            (local.get $5)
            (local.tee $12
             (i32.shr_u
              (local.get $5)
              (i32.const 31)
             )
            )
           )
          )
         )
         (local.get $12)
        )
       )
       (i32.const 1)
      )
      (i32.const 1)
     )
    )
    (local.get $13)
    (local.get $15)
   )
   (if
    (local.get $12)
    (i32.store16
     (local.get $5)
     (i32.const 45)
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 12272)
    (local.get $5)
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 12336)
    (call $~lib/number/F32#toString
     (local.tee $6
      (select
       (f32.const 1)
       (select
        (f32.const 0)
        (local.tee $6
         (f32.div
          (f32.div
           (f32.convert_i32_u
            (i32.load offset=4
             (i32.load offset=4
              (local.get $3)
             )
            )
           )
           (f32.convert_i32_u
            (i32.load offset=8
             (local.get $2)
            )
           )
          )
          (f32.convert_i32_s
           (i32.load offset=12
            (i32.load
             (i32.load offset=4
              (local.get $2)
             )
            )
           )
          )
         )
        )
        (f32.ne
         (local.get $6)
         (local.get $6)
        )
       )
       (f32.ne
        (f32.sub
         (local.get $6)
         (local.get $6)
        )
        (f32.const 0)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 12400)
    (call $~lib/number/F32#toString
     (local.tee $7
      (if (result f32)
       (f32.ne
        (f32.sub
         (local.tee $7
          (f32.div
           (f32.convert_i32_u
            (local.get $10)
           )
           (f32.convert_i32_u
            (local.get $11)
           )
          )
         )
         (local.get $7)
        )
        (f32.const 0)
       )
       (f32.const 1)
       (select
        (f32.const 0)
        (local.get $7)
        (f32.ne
         (local.get $7)
         (local.get $7)
        )
       )
      )
     )
    )
   )
  )
  (local.set $14
   (f32.mul
    (f32.convert_i32_u
     (i32.load offset=20
      (local.get $8)
     )
    )
    (local.get $7)
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 12464)
    (call $~lib/number/F32#toString
     (local.tee $16
      (f32.mul
       (f32.convert_i32_u
        (i32.load offset=16
         (local.get $8)
        )
       )
       (local.get $6)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/string/String.__concat
    (i32.const 12544)
    (call $~lib/number/F32#toString
     (local.get $14)
    )
   )
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 12624)
   )
  )
  (if
   (if (result i32)
    (f32.gt
     (local.get $4)
     (f32.load offset=24
      (local.get $8)
     )
    )
    (i32.eqz
     (i32.load8_u offset=16
      (local.get $2)
     )
    )
    (i32.const 0)
   )
   (call $assembly/actions/6-ostats/OStatsActions#sendSlashOracle
    (local.get $0)
    (local.get $1)
    (call $assembly/actions/1-global/GlobalActions#findSlashQuantity
     (local.get $2)
     (local.get $8)
    )
   )
  )
  (local.set $5
   (if (result i32)
    (select
     (i32.const 1)
     (f32.ge
      (local.get $7)
      (f32.const 0.009999999776482582)
     )
     (f32.ge
      (local.get $6)
      (f32.const 0.009999999776482582)
     )
    )
    (i32.trunc_f32_u
     (f32.mul
      (f32.convert_i32_u
       (call $assembly/tables/oracles/Oracle#get:trueCollateral
        (local.get $2)
       )
      )
      (f32.load offset=12
       (local.get $8)
      )
     )
    )
    (i32.const 0)
   )
  )
  (if
   (select
    (i32.const 1)
    (local.tee $2
     (i32.trunc_f32_u
      (f32.add
       (local.get $14)
       (local.get $16)
      )
     )
    )
    (local.get $5)
   )
   (call $assembly/actions/6-ostats/OStatsActions#sendPayOracle
    (local.get $0)
    (local.get $1)
    (local.get $5)
    (local.get $2)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/tables/external/config/Config>#set:validPrimary
   (local.get $3)
   (i32.const 1)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#update
   (local.get $9)
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/actions/6-ostats/OStatsActions#payOracle (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (i32.load offset=12
    (local.tee $1
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
      (i32.load offset=12
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
      (i32.const 6032)
     )
    )
   )
   (i32.add
    (local.tee $2
     (i32.add
      (local.get $2)
      (local.get $3)
     )
    )
    (i32.load offset=4
     (i32.load offset=12
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:table
   (local.tee $0
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (i64.add
    (i64.load offset=16
     (local.get $0)
    )
    (i64.extend_i32_u
     (local.get $2)
    )
   )
  )
 )
 (func $assembly/actions/6-ostats/OStatsActions#slashOracle (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u offset=16
     (local.tee $3
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
       (i32.load offset=12
        (local.get $0)
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 6032)
      )
     )
    )
   )
   (i32.const 12720)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (i32.load offset=8
    (local.get $3)
   )
   (i32.add
    (local.get $2)
    (i32.load offset=8
     (i32.load offset=8
      (local.get $3)
     )
    )
   )
  )
  (local.set $2
   (i32.load8_u offset=4
    (local.get $3)
   )
  )
  (if
   (i32.ge_u
    (i32.load offset=8
     (i32.load offset=8
      (local.get $3)
     )
    )
    (i32.load
     (i32.load offset=8
      (local.get $3)
     )
    )
   )
   (block
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (i32.load offset=8
      (local.get $3)
     )
     (i32.load
      (i32.load offset=8
       (local.get $3)
      )
     )
    )
    (call $assembly/tables/oracles/Oracle#set:weight
     (local.get $3)
     (i32.const 0)
    )
    (call $assembly/actions/2-oracle/OracleActions#sendOracleStandby
     (local.get $0)
     (local.get $1)
     (i32.const 1)
    )
   )
   (block
    (call $assembly/tables/oracles/Oracle#set:weight
     (local.get $3)
     (call $assembly/actions/1-global/GlobalActions#getOracleWeight
      (local.get $0)
      (call $assembly/tables/oracles/Oracle#get:trueCollateral
       (local.get $3)
      )
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/config/Config>#get
       (i32.load offset=28
        (local.get $0)
       )
      )
     )
    )
    (if
     (i32.eqz
      (i32.load8_u offset=4
       (local.get $3)
      )
     )
     (call $assembly/actions/2-oracle/OracleActions#sendOracleStandby
      (local.get $0)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
  (if
   (i32.gt_u
    (local.get $2)
    (i32.load8_u offset=4
     (local.get $3)
    )
   )
   (block
    (call $assembly/tables/global/Global#set:expected_active_weight
     (local.tee $1
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
       (i32.load offset=24
        (local.get $0)
       )
      )
     )
     (i32.sub
      (i32.load16_u offset=6
       (local.get $1)
      )
      (i32.and
       (i32.sub
        (local.get $2)
        (i32.load8_u offset=4
         (local.get $3)
        )
       )
       (i32.const 255)
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
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/actions/6-ostats/OStatsActions#slashMulti (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (call $~lib/as-chain/system/check
   (i32.gt_s
    (i32.load offset=12
     (local.get $3)
    )
    (i32.const 1)
   )
   (i32.const 12816)
  )
  (local.set $10
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 6032)
   )
  )
  (local.set $14
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (local.set $11
   (call $assembly/actions/1-global/GlobalActions#pwrReportsT
    (local.get $0)
    (local.get $2)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $7)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (local.set $2
      (call $~lib/util/number/utoa64
       (local.tee $12
        (call $~lib/array/Array<u64>#__get
         (local.get $3)
         (local.get $7)
        )
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.gt_s
       (local.tee $2
        (call $~lib/array/Array<~lib/as-chain/name/Name>#indexOf
         (i32.load offset=16
          (local.tee $6
           (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#requireGet
            (local.get $11)
            (local.get $12)
            (call $~lib/string/String.__concat
             (i32.const 12928)
             (local.get $2)
            )
           )
          )
         )
         (local.get $1)
        )
       )
       (i32.const -1)
      )
      (call $~lib/string/String.__concat
       (i32.const 12992)
       (call $~lib/util/number/utoa64
        (local.get $12)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.eq
       (i32.load8_u
        (i32.load offset=12
         (local.get $6)
        )
       )
       (i32.and
        (local.get $4)
        (i32.const 255)
       )
      )
      (i32.const 9760)
     )
     (call $~lib/as-chain/system/check
      (i32.eq
       (i32.load16_u offset=2
        (i32.load offset=12
         (local.get $6)
        )
       )
       (i32.and
        (local.get $5)
        (i32.const 65535)
       )
      )
      (i32.const 9840)
     )
     (if
      (if (result i32)
       (i32.load8_u offset=23
        (local.get $6)
       )
       (i32.const 0)
       (i32.eqz
        (i32.load8_u offset=22
         (local.get $6)
        )
       )
      )
      (block
       (call $~lib/memory/memory.copy
        (i32.load offset=4
         (call $~lib/rt/__newArray
          (local.tee $8
           (select
            (local.tee $8
             (select
              (i32.const 1)
              (local.tee $8
               (i32.sub
                (local.tee $9
                 (i32.load offset=12
                  (local.tee $13
                   (i32.load offset=16
                    (local.get $6)
                   )
                  )
                 )
                )
                (local.tee $2
                 (if (result i32)
                  (i32.lt_s
                   (local.get $2)
                   (i32.const 0)
                  )
                  (select
                   (local.tee $2
                    (i32.add
                     (local.get $2)
                     (local.get $9)
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
                   (local.get $9)
                   (i32.lt_s
                    (local.get $2)
                    (local.get $9)
                   )
                  )
                 )
                )
               )
              )
              (i32.gt_s
               (local.get $8)
               (i32.const 1)
              )
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $8)
             (i32.const 0)
            )
           )
          )
          (i32.const 2)
          (i32.const 33)
          (i32.const 0)
         )
        )
        (local.tee $16
         (i32.add
          (local.tee $15
           (i32.load offset=4
            (local.get $13)
           )
          )
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
        (i32.shl
         (local.get $8)
         (i32.const 2)
        )
       )
       (if
        (i32.ne
         (local.get $9)
         (local.tee $2
          (i32.add
           (local.get $2)
           (local.get $8)
          )
         )
        )
        (call $~lib/memory/memory.copy
         (local.get $16)
         (i32.add
          (local.get $15)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
         (i32.shl
          (i32.sub
           (local.get $9)
           (local.get $2)
          )
          (i32.const 2)
         )
        )
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $13)
        (i32.sub
         (local.get $9)
         (local.get $8)
        )
       )
       (if
        (i32.lt_u
         (i32.load8_u offset=4
          (local.get $10)
         )
         (i32.load16_u offset=20
          (local.get $6)
         )
        )
        (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
         (local.get $6)
         (i32.sub
          (i32.load16_u offset=20
           (local.get $6)
          )
          (i32.load8_u offset=4
           (local.get $10)
          )
         )
        )
        (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
         (local.get $6)
         (i32.const 0)
        )
       )
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/pwrreports/PwrReportRow>#update
        (local.get $11)
        (local.get $6)
        (i32.load
         (local.get $0)
        )
       )
      )
     )
     (local.set $7
      (i32.add
       (local.get $7)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $7
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $7)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (call $assembly/actions/6-ostats/OStatsActions#sendSlashOracle
      (local.get $0)
      (local.get $1)
      (call $assembly/actions/1-global/GlobalActions#findSlashQuantity
       (local.get $10)
       (local.get $14)
      )
     )
     (local.set $7
      (i32.add
       (local.get $7)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
 )
 (func $assembly/actions/6-ostats/OStatsActions#slashAbsent (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $4
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracles/Oracle>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 13120)
   )
  )
  (local.set $5
   (call $assembly/actions/1-global/GlobalActions#getConfig
    (local.get $0)
   )
  )
  (local.set $7
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#get
    (local.tee $6
     (call $assembly/actions/1-global/GlobalActions#oracleStatsT
      (local.get $0)
      (local.get $1)
     )
    )
    (i64.extend_i32_u
     (local.tee $3
      (i32.and
       (local.get $2)
       (i32.const 65535)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u offset=16
     (local.get $4)
    )
   )
   (i32.const 13184)
  )
  (call $~lib/as-chain/system/check
   (i32.gt_u
    (local.get $3)
    (i32.load16_u offset=20
     (local.get $4)
    )
   )
   (i32.const 13312)
  )
  (call $~lib/as-chain/system/check
   (i32.lt_u
    (local.get $3)
    (i32.and
     (local.tee $3
      (i32.sub
       (call $assembly/actions/1-global/GlobalActions#currentRound
        (local.get $0)
       )
       (i32.load8_u offset=44
        (local.get $5)
       )
      )
     )
     (i32.const 65535)
    )
   )
   (call $~lib/string/String.__concat
    (i32.const 13424)
    (call $~lib/number/U16#toString
     (local.get $3)
    )
   )
  )
  (if
   (local.get $7)
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 13568)
   )
   (call $assembly/actions/6-ostats/OStatsActions#sendSlashOracle
    (local.get $0)
    (local.get $1)
    (call $assembly/actions/1-global/GlobalActions#findSlashQuantity
     (local.get $4)
     (local.get $5)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $assembly/tables/oracleStats/Reports#constructor)
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
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/tables/oracleStats/OracleStat>#store
   (local.get $6)
   (call $assembly/tables/oracleStats/OracleStat#constructor
    (local.get $2)
    (i32.const 0)
    (local.get $1)
    (i32.const 1)
   )
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/boid.contract/handleOStatAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/boid.contract/payOracleAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/boid.contract/slashOracleAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $2
      (call $~lib/array/Array<u64>#constructor
       (local.tee $1
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $0)
        )
       )
      )
     )
    )
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
    (local.tee $1
     (i32.shl
      (local.get $1)
      (i32.const 3)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $assembly/boid.contract/slashMultiAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $assembly/tables/external/config/ConfigAuth#set:account_max_keys
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/tables/oracles/OracleCollateral#set:min_unlock_start_round
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
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
 (func $assembly/boid.contract/finishReportAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/boid.contract/mergeReportsAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/boid.contract/setStandbyAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (i32.load offset=4
   (local.get $1)
  )
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
 (func $assembly/boid.contract/withdrawInitAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
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
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/boid.contract/configSetAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (local.tee $2
    (call $assembly/tables/config/Config#constructor)
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
 (func $assembly/boid.contract/thisRoundAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (local $8 i32)
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
  (local.set $7
   (call $assembly/boid.contract/BoidPowerContract#constructor
    (i32.const 0)
    (local.get $3)
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $8
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
      (i64.const 7612940078591619584)
     )
     (block
      (drop
       (call $assembly/boid.contract/handleOStatAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 6)
            (i32.const 123)
           )
          )
          (i32.const 0)
         )
         (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
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
      (call $assembly/actions/6-ostats/OStatsActions#handleOStat
       (local.get $7)
       (local.get $3)
       (i32.load16_u offset=4
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -6215728789908881408)
     )
     (block
      (drop
       (call $assembly/boid.contract/payOracleAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 124)
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
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
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
      (call $assembly/actions/6-ostats/OStatsActions#payOracle
       (local.get $7)
       (local.get $3)
       (i32.load offset=4
        (local.get $4)
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
      (i64.const -4301633828704463872)
     )
     (block
      (drop
       (call $assembly/boid.contract/slashOracleAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 125)
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
        (local.get $8)
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
      (call $assembly/actions/6-ostats/OStatsActions#slashOracle
       (local.get $7)
       (local.get $3)
       (i32.load offset=4
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4301633861260181504)
     )
     (block
      (drop
       (call $assembly/boid.contract/slashMultiAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 126)
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
         (call $assembly/tables/external/config/ConfigAuth#set:account_max_keys
          (local.get $3)
          (i32.const 0)
         )
         (call $assembly/tables/oracles/OracleCollateral#set:min_unlock_start_round
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $6
          (local.get $3)
         )
        )
        (local.get $8)
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
          (local.get $6)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=8
          (local.get $6)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/actions/6-ostats/OStatsActions#slashMulti
       (local.get $7)
       (local.get $4)
       (local.get $3)
       (local.get $5)
       (i32.load8_u offset=12
        (local.get $6)
       )
       (i32.load16_u offset=14
        (local.get $6)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4301634077509488128)
     )
     (block
      (drop
       (call $assembly/boid.contract/handleOStatAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 6)
            (i32.const 127)
           )
          )
          (i32.const 0)
         )
         (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
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
      (call $assembly/actions/6-ostats/OStatsActions#slashAbsent
       (local.get $7)
       (local.get $3)
       (i32.load16_u offset=4
        (local.get $4)
       )
      )
     )
    )
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
            (i32.const 128)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
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
       (local.get $7)
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
            (i32.const 129)
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
        (local.get $8)
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
       (local.get $7)
       (local.get $4)
       (local.get $3)
       (local.get $5)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 6604225624195018640)
     )
     (block
      (drop
       (call $assembly/boid.contract/finishReportAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 130)
           )
          )
          (i32.const 0)
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/tables/oracles/Oracle>#set:scope
          (local.get $3)
          (i64.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
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
      (call $assembly/actions/3-pwrreport/PwrReportActions#finishReport
       (local.get $7)
       (local.get $3)
       (i64.load offset=8
        (local.get $4)
       )
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
            (i32.const 131)
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
        (local.get $8)
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
       (local.get $7)
       (local.get $3)
       (local.get $4)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -6499669918514537072)
     )
     (block
      (drop
       (call $assembly/boid.contract/slashOracleAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 132)
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
        (local.get $8)
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
      (call $assembly/actions/2-oracle/OracleActions#oracleDeposit
       (local.get $7)
       (local.get $3)
       (i32.load offset=4
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417032214701703168)
     )
     (block
      (drop
       (call $assembly/boid.contract/setStandbyAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 5)
            (i32.const 133)
           )
          )
          (i32.const 0)
         )
         (call $assembly/tables/oracles/Oracle#set:weight
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
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
      (call $assembly/actions/2-oracle/OracleActions#setStandby
       (local.get $7)
       (local.get $3)
       (i32.load8_u offset=4
        (local.get $4)
       )
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
            (i32.const 134)
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
        (local.get $8)
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
       (local.get $7)
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
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636188873328)
     )
     (block
      (drop
       (call $assembly/boid.contract/withdrawInitAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 135)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
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
      (call $assembly/actions/2-oracle/OracleActions#withdrawInit
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636196532224)
     )
     (block
      (drop
       (call $assembly/boid.contract/withdrawInitAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 136)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
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
      (call $assembly/actions/2-oracle/OracleActions#withdrawEnd
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -3106564268444205056)
     )
     (block
      (drop
       (call $assembly/boid.contract/withdrawInitAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 137)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
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
      (call $assembly/actions/2-oracle/OracleActions#unlockOracle
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -3106564270594719744)
     )
     (block
      (drop
       (call $assembly/boid.contract/withdrawInitAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 138)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
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
      (call $assembly/actions/2-oracle/OracleActions#unlockEnd
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4982871467584126976)
     )
     (block
      (drop
       (call $assembly/boid.contract/configSetAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 139)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
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
      (call $assembly/actions/1-global/GlobalActions#configSet
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -3792721571424501760)
     )
     (block
      (drop
       (call $assembly/boid.contract/thisRoundAction#unpack
        (call $~lib/rt/stub/__new
         (i32.const 0)
         (i32.const 140)
        )
        (local.get $8)
       )
      )
      (call $assembly/actions/1-global/GlobalActions#thisRound
       (local.get $7)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4812882476562251776)
     )
     (block
      (drop
       (call $assembly/boid.contract/thisRoundAction#unpack
        (call $~lib/rt/stub/__new
         (i32.const 0)
         (i32.const 141)
        )
        (local.get $8)
       )
      )
      (call $assembly/actions/1-global/GlobalActions#roundStats
       (local.get $7)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157495210442178560)
     )
     (block
      (drop
       (call $assembly/boid.contract/thisRoundAction#unpack
        (call $~lib/rt/stub/__new
         (i32.const 0)
         (i32.const 142)
        )
        (local.get $8)
       )
      )
      (call $assembly/actions/1-global/GlobalActions#statsCleanup
       (local.get $7)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4995815905984606928)
     )
     (block
      (drop
       (call $assembly/boid.contract/withdrawInitAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 143)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
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
      (call $assembly/actions/1-global/GlobalActions#reportsCleanup
       (local.get $7)
       (local.get $3)
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
      (call $assembly/boid.contract/thisRoundAction#unpack
       (call $~lib/rt/stub/__new
        (i32.const 0)
        (i32.const 144)
       )
       (local.get $8)
      )
     )
     (call $assembly/actions/5-deposit/DepositActions#ondeposit
      (local.get $7)
     )
    )
   )
  )
 )
 (func $assembly/actions/1-global/GlobalActions#markOracleActive@varargs (param $0 i32) (param $1 i32) (param $2 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $2
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/tables/global/Global>#get
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
  )
  (call $assembly/actions/1-global/GlobalActions#markOracleActive
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#shouldFinalizeReports@varargs (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $1
    (call $assembly/actions/1-global/GlobalActions#getConfig
     (local.get $0)
    )
   )
  )
  (call $assembly/actions/1-global/GlobalActions#shouldFinalizeReports
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/actions/1-global/GlobalActions#findSlashQuantity@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $2
    (call $assembly/actions/1-global/GlobalActions#getConfig
     (local.get $0)
    )
   )
  )
  (call $assembly/actions/1-global/GlobalActions#findSlashQuantity
   (local.get $1)
   (local.get $2)
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
     (i32.const 89)
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
 (func $~lib/as-chain/crypto/ECCPublicKey#constructor (result i32)
  (local $0 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 104)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $assembly/tables/external/accounts/AccountStake#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $3
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.tee $2
      (call $~lib/as-chain/serializer/Decoder#constructor
       (local.get $1)
      )
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 109)
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
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (local.get $7)
    )
    (block
     (call $assembly/tables/stats/Stat#set:round
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 108)
       )
      )
      (i32.const 0)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo
      (local.get $1)
      (i32.const 0)
     )
     (call $~lib/array/Array<~lib/as-chain/name/Name>#__set
      (i32.load
       (local.get $0)
      )
      (local.get $4)
      (local.get $1)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $2)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $2)
   )
  )
  (call $assembly/tables/external/accounts/AccountStake#set:received_delegated_stake
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $2)
   )
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/tables/external/accounts/AccountPower#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $assembly/tables/stats/Stat#set:round
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.tee $2
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
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
     (i32.const 112)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (local.get $7)
    )
    (block
     (call $assembly/tables/config/Config#set:paused
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 111)
       )
      )
      (i32.const 0)
     )
     (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
      (local.get $1)
      (i32.const 0)
     )
     (call $assembly/tables/external/config/ConfigTeam#set:team_edit_max_pct_change
      (local.get $1)
      (i32.const 0)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo2
      (local.get $1)
      (i32.const 0)
     )
     (call $~lib/array/Array<~lib/as-chain/name/Name>#__set
      (i32.load offset=4
       (local.get $0)
      )
      (local.get $4)
      (local.get $1)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $2)
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
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/tables/external/accounts/AccountAuth#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $2
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.tee $3
      (call $~lib/as-chain/serializer/Decoder#constructor
       (local.get $1)
      )
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 106)
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
    (local.get $2)
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
        (local.get $2)
        (i32.const 8)
        (i32.gt_u
         (local.get $2)
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
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (local.get $7)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 16)
        (i32.const 103)
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
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $1)
      (i32.const 0)
     )
     (call $~lib/array/Array<~lib/as-chain/name/Name>#__set
      (i32.load
       (local.get $0)
      )
      (local.get $4)
      (local.get $1)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $3)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $3)
   )
  )
  (i32.load offset=4
   (local.get $3)
  )
 )
 (func $assembly/tables/external/accounts/Account#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
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
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
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
     (local.get $2)
     (local.get $4)
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
      (i32.load offset=4
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
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/accounts/AccountAuth#constructor)
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
  (local.set $2
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $2)
     (local.get $4)
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
      (i32.load offset=12
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
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/accounts/AccountStake#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/accounts/AccountPower#constructor)
   )
  )
  (call $assembly/tables/stats/Stat#set:rewarded_since_previous
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $assembly/tables/external/accounts/AccountTeam#constructor)
   )
  )
  (call $assembly/tables/stats/Stat#set:valid_proposed_since_previous
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/tables/config/Config#set:slash_quantity_static
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/tables/external/config/Config#set:auto
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $assembly/tables/config/Config#set:withdraw_rounds_wait
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
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
  (call $assembly/tables/global/Global#set:standby_validators
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
     (i32.const 49)
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
  (block $folding-inner10
   (block $folding-inner9
    (block $folding-inner8
     (block $folding-inner7
      (block $folding-inner6
       (block $folding-inner5
        (block $folding-inner4
         (block $folding-inner3
          (block $folding-inner2
           (block $folding-inner1
            (block $folding-inner0
             (block $default
              (block $case67
               (block $case66
                (block $case65
                 (block $case64
                  (block $case63
                   (block $case62
                    (block $case61
                     (block $case60
                      (block $case59
                       (block $case58
                        (block $case57
                         (block $case56
                          (block $case55
                           (block $case54
                            (block $case53
                             (block $case52
                              (block $case51
                               (block $case50
                                (block $case49
                                 (block $case48
                                  (block $case47
                                   (block $case46
                                    (block $case45
                                     (block $case44
                                      (block $case43
                                       (block $case42
                                        (block $case41
                                         (block $case40
                                          (block $case39
                                           (block $case38
                                            (block $case37
                                             (block $case36
                                              (block $case35
                                               (block $case34
                                                (block $case33
                                                 (block $case30
                                                  (block $case25
                                                   (block $case24
                                                    (block $case23
                                                     (block $case22
                                                      (block $case17
                                                       (block $case9
                                                        (block $case8
                                                         (block $case7
                                                          (block $case6
                                                           (block $case3
                                                            (br_table $case37 $default $default $default $default $default $default $default $default $default $default $default $case45 $default $default $case43 $case44 $default $default $default $default $default $case22 $default $default $default $case46 $case57 $default $case56 $default $default $default $default $default $default $case25 $default $default $default $case35 $default $case67 $case58 $default $case59 $case60 $case62 $case63 $case64 $case34 $case33 $case65 $case66 $case61 $default $default $default $default $default $case24 $case23 $default $default $default $default $case55 $case54 $default $default $default $default $default $default $default $default $default $default $default $case30 $case39 $case38 $default $default $default $case36 $default $folding-inner2 $default $folding-inner4 $folding-inner5 $default $default $default $default $folding-inner0 $case53 $case52 $case42 $case40 $case41 $default $case48 $case47 $default $case50 $case49 $default $case51 $default $default $default $default $default $default $default $folding-inner2 $folding-inner1 $folding-inner0 $folding-inner1 $folding-inner2 $case3 $folding-inner0 $case6 $case7 $case8 $case9 $folding-inner2 $folding-inner4 $folding-inner5 $folding-inner6 $folding-inner6 $folding-inner6 $folding-inner6 $case17 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner6 $folding-inner3 $default
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
                                                            (call $assembly/boid.contract/slashMultiAction#unpack
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
                                                         (call $assembly/boid.contract/finishReportAction#unpack
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
                                                       (call $assembly/boid.contract/configSetAction#unpack
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
                                                    (call $assembly/tables/config/Config#set:paused
                                                     (local.get $0)
                                                     (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
                                                      (local.tee $1
                                                       (call $~lib/as-chain/serializer/Decoder#constructor
                                                        (local.get $1)
                                                       )
                                                      )
                                                     )
                                                    )
                                                    (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
                                                     (local.get $0)
                                                     (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                                                      (local.get $1)
                                                     )
                                                    )
                                                    (br $folding-inner7)
                                                   )
                                                   (return
                                                    (call $assembly/tables/pwrreports/PwrReportRow#unpack
                                                     (local.get $0)
                                                     (local.get $1)
                                                    )
                                                   )
                                                  )
                                                  (return
                                                   (call $assembly/tables/config/Config#unpack
                                                    (local.get $0)
                                                    (local.get $1)
                                                   )
                                                  )
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
                                               (br $folding-inner10)
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
                                              (br $folding-inner10)
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
                                            (i32.const 13728)
                                           )
                                           (br $folding-inner10)
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
                                           (i32.const 13776)
                                          )
                                          (return
                                           (i32.load offset=4
                                            (local.get $1)
                                           )
                                          )
                                         )
                                         (local.set $1
                                          (call $~lib/as-chain/serializer/Decoder#constructor
                                           (local.get $1)
                                          )
                                         )
                                         (drop
                                          (call $~lib/as-chain/env/memcpy
                                           (i32.load offset=4
                                            (local.tee $2
                                             (call $~lib/array/Array<u8>#constructor
                                              (i32.const 33)
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
                                           (i32.const 33)
                                          )
                                         )
                                         (call $~lib/as-chain/serializer/Decoder#incPos
                                          (local.get $1)
                                          (i32.const 33)
                                         )
                                         (call $~lib/rt/common/BLOCK#set:mmInfo
                                          (local.get $0)
                                          (local.get $2)
                                         )
                                         (return
                                          (i32.const 33)
                                         )
                                        )
                                        (local.set $1
                                         (call $~lib/as-chain/serializer/Decoder#constructor
                                          (local.get $1)
                                         )
                                        )
                                        (call $~lib/rt/common/BLOCK#set:mmInfo
                                         (local.get $0)
                                         (call $~lib/as-chain/crypto/ECCPublicKey#constructor)
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
                                        (call $~lib/as-chain/serializer/Decoder#unpack
                                         (local.get $1)
                                         (local.get $2)
                                        )
                                        (call $~lib/rt/common/OBJECT#set:gcInfo
                                         (local.get $0)
                                         (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
                                          (local.get $1)
                                         )
                                        )
                                        (call $~lib/rt/common/OBJECT#set:gcInfo2
                                         (local.get $0)
                                         (call $~lib/as-chain/serializer/Decoder#unpackString
                                          (local.get $1)
                                         )
                                        )
                                        (return
                                         (i32.const 0)
                                        )
                                       )
                                       (call $~lib/as-chain/system/check
                                        (i32.le_u
                                         (local.tee $1
                                          (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
                                           (local.tee $2
                                            (call $~lib/as-chain/serializer/Decoder#constructor
                                             (local.get $1)
                                            )
                                           )
                                          )
                                         )
                                         (i32.const 2)
                                        )
                                        (i32.const 13872)
                                       )
                                       (call $~lib/rt/common/BLOCK#set:mmInfo
                                        (local.get $0)
                                        (local.get $1)
                                       )
                                       (if
                                        (i32.load
                                         (local.get $0)
                                        )
                                        (if
                                         (i32.eq
                                          (i32.load
                                           (local.get $0)
                                          )
                                          (i32.const 1)
                                         )
                                         (block
                                          (call $~lib/rt/common/OBJECT#set:gcInfo2
                                           (local.get $0)
                                           (call $~lib/as-chain/crypto/ECCPublicKey#constructor)
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
                                         )
                                         (block
                                          (call $~lib/rt/common/BLOCK#set:mmInfo
                                           (local.tee $1
                                            (call $~lib/rt/stub/__new
                                             (i32.const 12)
                                             (i32.const 105)
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
                                           (i32.const 2384)
                                          )
                                          (call $~lib/rt/common/OBJECT#set:rtId
                                           (local.get $0)
                                           (local.get $1)
                                          )
                                          (if
                                           (i32.eqz
                                            (local.tee $0
                                             (i32.load offset=12
                                              (local.get $0)
                                             )
                                            )
                                           )
                                           (unreachable)
                                          )
                                         )
                                        )
                                        (block
                                         (call $~lib/rt/common/OBJECT#set:gcInfo
                                          (local.get $0)
                                          (call $~lib/as-chain/crypto/ECCPublicKey#constructor)
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
                                        )
                                       )
                                       (call $~lib/as-chain/serializer/Decoder#unpack
                                        (local.get $2)
                                        (local.get $0)
                                       )
                                       (return
                                        (i32.load offset=4
                                         (local.get $2)
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
                                      (br $folding-inner10)
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
                                     (br $folding-inner8)
                                    )
                                    (return
                                     (call $assembly/tables/oracles/Oracle#unpack
                                      (local.get $0)
                                      (local.get $1)
                                     )
                                    )
                                   )
                                   (return
                                    (call $assembly/tables/stats/Stat#unpack
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
                                  (br $folding-inner7)
                                 )
                                 (return
                                  (call $assembly/tables/external/accounts/AccountStake#unpack
                                   (local.get $0)
                                   (local.get $1)
                                  )
                                 )
                                )
                                (call $assembly/tables/config/Config#set:paused
                                 (local.get $0)
                                 (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
                                  (local.tee $1
                                   (call $~lib/as-chain/serializer/Decoder#constructor
                                    (local.get $1)
                                   )
                                  )
                                 )
                                )
                                (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
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
                                (br $folding-inner9)
                               )
                               (return
                                (call $assembly/tables/external/accounts/AccountPower#unpack
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
                              (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
                               (local.get $0)
                               (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                                (local.get $1)
                               )
                              )
                              (call $assembly/tables/oracles/Oracle#set:weight
                               (local.get $0)
                               (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
                                (local.get $1)
                               )
                              )
                              (br $folding-inner9)
                             )
                             (return
                              (call $assembly/tables/external/accounts/AccountAuth#unpack
                               (local.get $0)
                               (local.get $1)
                              )
                             )
                            )
                            (return
                             (call $assembly/tables/external/accounts/Account#unpack
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
                           (call $~lib/rt/common/OBJECT#set:gcInfo
                            (local.get $0)
                            (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
                             (local.get $1)
                            )
                           )
                           (br $folding-inner9)
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
                         (call $assembly/tables/global/GlobalReports#set:proposed
                          (local.get $0)
                          (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                           (local.get $1)
                          )
                         )
                         (br $folding-inner10)
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
                      (call $assembly/tables/config/Config#set:min_consensus_pct
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
                      (call $assembly/tables/oracles/Oracle#set:expected_active_after_round
                       (local.get $0)
                       (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
                        (local.get $1)
                       )
                      )
                      (br $folding-inner10)
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
                     (br $folding-inner10)
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
                    (call $assembly/tables/config/Config#set:min_consensus_pct
                     (local.get $0)
                     (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
                      (local.get $1)
                     )
                    )
                    (br $folding-inner8)
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
                   (call $assembly/tables/external/config/ConfigTeam#set:edit_team_min_rounds
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
                   (br $folding-inner10)
                  )
                  (call $assembly/tables/config/Config#set:paused
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
                  (br $folding-inner10)
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
                 (br $folding-inner7)
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
             (unreachable)
            )
            (return
             (call $assembly/boid.contract/handleOStatAction#unpack
              (local.get $0)
              (local.get $1)
             )
            )
           )
           (return
            (call $assembly/boid.contract/payOracleAction#unpack
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (return
           (call $assembly/boid.contract/slashOracleAction#unpack
            (local.get $0)
            (local.get $1)
           )
          )
         )
         (return
          (call $assembly/boid.contract/thisRoundAction#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (return
         (call $assembly/boid.contract/setStandbyAction#unpack
          (local.get $0)
          (local.get $1)
         )
        )
       )
       (return
        (call $assembly/boid.contract/oracleSetAction#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (return
       (call $assembly/boid.contract/withdrawInitAction#unpack
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
     (br $folding-inner10)
    )
    (call $assembly/tables/oracles/OracleCollateral#set:unlock_finished_round
     (local.get $0)
     (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
      (local.get $1)
     )
    )
    (br $folding-inner10)
   )
   (call $~lib/rt/common/OBJECT#set:gcInfo2
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
 (func $assembly/boid.contract/handleOStatAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (block (result i32)
     (if
      (i32.eqz
       (i32.load
        (local.get $0)
       )
      )
      (unreachable)
     )
     (i32.const 10)
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
 (func $assembly/boid.contract/slashOracleAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (block (result i32)
     (if
      (i32.eqz
       (i32.load
        (local.get $0)
       )
      )
      (unreachable)
     )
     (i32.const 12)
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumberArray<u64> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (i32.load offset=12
    (local.get $1)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $1)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.tee $1
    (i32.shl
     (i32.load offset=12
      (local.get $1)
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
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/crypto/WebAuthNPublicKey#getSize (param $0 i32) (result i32)
  (if
   (i32.eqz
    (i32.load
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.add
   (call $~lib/as-chain/utils/Utils.calcPackedStringLength
    (i32.load offset=8
     (local.get $0)
    )
   )
   (i32.const 34)
  )
 )
 (func $~lib/as-chain/crypto/PublicKey#getSize (param $0 i32) (result i32)
  (if
   (if (result i32)
    (i32.load
     (local.get $0)
    )
    (i32.eq
     (i32.load
      (local.get $0)
     )
     (i32.const 1)
    )
    (i32.const 1)
   )
   (return
    (i32.const 34)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (i32.add
   (call $~lib/as-chain/crypto/WebAuthNPublicKey#getSize
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $assembly/tables/external/accounts/AccountStake#getSize (param $0 i32) (result i32)
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 6)
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
   (i32.const 6)
  )
 )
 (func $assembly/tables/external/accounts/AccountPower#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (i32.const 4)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 9)
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
  (local.get $1)
 )
 (func $assembly/tables/external/accounts/AccountAuth#getSize (param $0 i32) (result i32)
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
     (local.set $1
      (i32.add
       (call $~lib/as-chain/crypto/PublicKey#getSize
        (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
         (i32.load
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
 (func $assembly/tables/external/accounts/Account#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (i32.const 8)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
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
  (local.set $2
   (i32.add
    (i32.add
     (call $assembly/tables/external/accounts/AccountAuth#getSize
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.get $2)
    )
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|1
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
     (br $for-loop|1)
    )
   )
  )
  (local.set $1
   (i32.add
    (i32.add
     (call $assembly/tables/external/accounts/AccountStake#getSize
      (i32.load offset=16
       (local.get $0)
      )
     )
     (local.get $2)
    )
    (call $assembly/tables/external/accounts/AccountPower#getSize
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
  )
  (drop
   (i32.load offset=24
    (local.get $0)
   )
  )
  (i32.add
   (i32.add
    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
     (i32.load offset=28
      (local.get $0)
     )
    )
    (local.get $1)
   )
   (i32.const 15)
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
        (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
     (call $assembly/actions/2-oracle/OracleDepositParams#getSize
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=37
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
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
  (block $folding-inner9
   (block $folding-inner8
    (block $folding-inner7
     (block $folding-inner6
      (block $folding-inner5
       (block $folding-inner4
        (block $folding-inner3
         (block $folding-inner2
          (block $folding-inner1
           (block $folding-inner0
            (block $default
             (block $case67
              (block $case66
               (block $case65
                (block $case63
                 (block $case62
                  (block $case61
                   (block $case60
                    (block $case59
                     (block $case58
                      (block $case57
                       (block $case56
                        (block $case55
                         (block $case54
                          (block $case53
                           (block $case52
                            (block $case51
                             (block $case50
                              (block $case49
                               (block $case48
                                (block $case47
                                 (block $case46
                                  (block $case45
                                   (block $case44
                                    (block $case43
                                     (block $case42
                                      (block $case41
                                       (block $case40
                                        (block $case39
                                         (block $case38
                                          (block $case37
                                           (block $case36
                                            (block $case35
                                             (block $case34
                                              (block $case33
                                               (block $case31
                                                (block $case30
                                                 (block $case29
                                                  (block $case28
                                                   (block $case26
                                                    (block $case25
                                                     (block $case24
                                                      (block $case23
                                                       (block $case22
                                                        (block $case17
                                                         (block $case12
                                                          (block $case11
                                                           (block $case10
                                                            (block $case9
                                                             (block $case8
                                                              (block $case7
                                                               (block $case6
                                                                (block $case4
                                                                 (block $case3
                                                                  (block $case2
                                                                   (block $case1
                                                                    (block $case0
                                                                     (br_table $case37 $default $default $default $default $default $default $default $default $default $default $default $case45 $default $default $case43 $case44 $default $default $default $default $default $case22 $default $default $default $case46 $case57 $default $case56 $default $default $default $default $default $default $case25 $default $default $default $case35 $default $case67 $case58 $default $case59 $case60 $case62 $case63 $folding-inner2 $case34 $case33 $case65 $case66 $case61 $default $default $default $default $default $case24 $case23 $default $default $default $default $case55 $case54 $default $default $default $default $default $default $default $default $default $default $default $case30 $case39 $case38 $default $default $default $case36 $default $folding-inner2 $default $case28 $case26 $default $default $default $default $case29 $case53 $case52 $case42 $case40 $case41 $default $case48 $case47 $default $case50 $case49 $default $case51 $default $default $default $default $default $default $default $folding-inner2 $case31 $case0 $case1 $case2 $case3 $case4 $case6 $case7 $case8 $case9 $case10 $case11 $case12 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $case17 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner0 $default
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
                                                                     (call $assembly/boid.contract/handleOStatAction#pack
                                                                      (local.get $0)
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
                                                                     (i32.const 16)
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
                                                                   (br $folding-inner3)
                                                                  )
                                                                  (return
                                                                   (call $assembly/boid.contract/slashOracleAction#pack
                                                                    (local.get $0)
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
                                                                   (i32.load offset=4
                                                                    (local.get $0)
                                                                   )
                                                                  )
                                                                  (unreachable)
                                                                 )
                                                                 (if
                                                                  (i32.eqz
                                                                   (local.tee $1
                                                                    (i32.load offset=8
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
                                                                   (i32.const 16)
                                                                  )
                                                                 )
                                                                 (if
                                                                  (i32.eqz
                                                                   (local.tee $2
                                                                    (i32.load offset=8
                                                                     (local.get $0)
                                                                    )
                                                                   )
                                                                  )
                                                                  (unreachable)
                                                                 )
                                                                 (local.set $1
                                                                  (call $~lib/as-chain/serializer/Encoder#constructor
                                                                   (i32.add
                                                                    (i32.add
                                                                     (local.get $1)
                                                                     (i32.shl
                                                                      (i32.load offset=12
                                                                       (local.get $2)
                                                                      )
                                                                      (i32.const 3)
                                                                     )
                                                                    )
                                                                    (i32.const 3)
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
                                                                   (local.tee $2
                                                                    (i32.load offset=8
                                                                     (local.get $0)
                                                                    )
                                                                   )
                                                                  )
                                                                  (unreachable)
                                                                 )
                                                                 (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
                                                                  (local.get $1)
                                                                  (local.get $2)
                                                                 )
                                                                 (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                                                                  (local.get $1)
                                                                  (i32.load8_u offset=12
                                                                   (local.get $0)
                                                                  )
                                                                 )
                                                                 (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                                                                  (local.get $1)
                                                                  (i32.load16_u offset=14
                                                                   (local.get $0)
                                                                  )
                                                                 )
                                                                 (br $folding-inner9)
                                                                )
                                                                (return
                                                                 (call $assembly/boid.contract/handleOStatAction#pack
                                                                  (local.get $0)
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
                                                               (br $folding-inner9)
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
                                                             (local.set $1
                                                              (call $~lib/as-chain/serializer/Encoder#constructor
                                                               (i32.const 16)
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
                                                             (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                                                              (local.get $1)
                                                              (i64.load offset=8
                                                               (local.get $0)
                                                              )
                                                             )
                                                             (br $folding-inner9)
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
                                                            (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
                                                             (local.get $1)
                                                             (local.get $0)
                                                            )
                                                            (br $folding-inner9)
                                                           )
                                                           (return
                                                            (call $assembly/boid.contract/slashOracleAction#pack
                                                             (local.get $0)
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
                                                            (i32.const 9)
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
                                                          (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                                                           (local.get $1)
                                                           (i32.load8_u offset=4
                                                            (local.get $0)
                                                           )
                                                          )
                                                          (br $folding-inner9)
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
                                                         (br $folding-inner4)
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
                                                          (i32.const 56)
                                                         )
                                                        )
                                                        (br $folding-inner5)
                                                       )
                                                       (return
                                                        (call $assembly/tables/protocols/Protocol#pack
                                                         (local.get $0)
                                                        )
                                                       )
                                                      )
                                                      (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
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
                                                      (br $folding-inner6)
                                                     )
                                                     (return
                                                      (call $assembly/tables/pwrreports/PwrReportRow#pack
                                                       (local.get $0)
                                                      )
                                                     )
                                                    )
                                                    (return
                                                     (call $assembly/tables/config/Config#pack
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
                                                   (call $assembly/actions/2-oracle/OracleStandbyParams#pack
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
                                                (return
                                                 (call $assembly/actions/5-deposit/TokenTransfer#pack
                                                  (local.get $0)
                                                 )
                                                )
                                               )
                                               (return
                                                (call $assembly/actions/6-ostats/PayOracleParams#pack
                                                 (local.get $0)
                                                )
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
                                              (br $folding-inner9)
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
                                             (br $folding-inner9)
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
                                            (br $folding-inner9)
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
                                         (br $folding-inner9)
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
                                        (br $folding-inner9)
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
                                       (return
                                        (local.get $0)
                                       )
                                      )
                                      (return
                                       (call $~lib/as-chain/serializer/Encoder#getBytes
                                        (call $~lib/as-chain/serializer/Encoder#constructor
                                         (call $~lib/as-chain/crypto/WebAuthNPublicKey#getSize
                                          (local.get $0)
                                         )
                                        )
                                       )
                                      )
                                     )
                                     (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                                      (local.tee $1
                                       (call $~lib/as-chain/serializer/Encoder#constructor
                                        (call $~lib/as-chain/crypto/PublicKey#getSize
                                         (local.get $0)
                                        )
                                       )
                                      )
                                      (i32.load
                                       (local.get $0)
                                      )
                                     )
                                     (if
                                      (i32.load
                                       (local.get $0)
                                      )
                                      (if
                                       (i32.eq
                                        (i32.load
                                         (local.get $0)
                                        )
                                        (i32.const 1)
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
                                       (if
                                        (i32.eqz
                                         (local.tee $0
                                          (i32.load offset=12
                                           (local.get $0)
                                          )
                                         )
                                        )
                                        (unreachable)
                                       )
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
                                     )
                                     (call $~lib/as-chain/serializer/Encoder#pack
                                      (local.get $1)
                                      (local.get $0)
                                     )
                                     (br $folding-inner9)
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
                                    (br $folding-inner9)
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
                                   (br $folding-inner7)
                                  )
                                  (return
                                   (call $assembly/tables/oracles/Oracle#pack
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
                                (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                                 (local.tee $1
                                  (call $~lib/as-chain/serializer/Encoder#constructor
                                   (i32.const 6)
                                  )
                                 )
                                 (i32.load16_u
                                  (local.get $0)
                                 )
                                )
                                (br $folding-inner6)
                               )
                               (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
                                (local.tee $1
                                 (call $~lib/as-chain/serializer/Encoder#constructor
                                  (call $assembly/tables/external/accounts/AccountStake#getSize
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
                               (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                                (local.get $1)
                                (i32.load16_u offset=8
                                 (local.get $0)
                                )
                               )
                               (br $folding-inner9)
                              )
                              (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                               (local.tee $1
                                (call $~lib/as-chain/serializer/Encoder#constructor
                                 (i32.const 9)
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
                              (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                               (local.get $1)
                               (i32.load16_u offset=4
                                (local.get $0)
                               )
                              )
                              (br $folding-inner8)
                             )
                             (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                              (local.tee $1
                               (call $~lib/as-chain/serializer/Encoder#constructor
                                (call $assembly/tables/external/accounts/AccountPower#getSize
                                 (local.get $0)
                                )
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
                             (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
                              (local.get $1)
                              (i32.load offset=4
                               (local.get $0)
                              )
                             )
                             (br $folding-inner9)
                            )
                            (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                             (local.tee $1
                              (call $~lib/as-chain/serializer/Encoder#constructor
                               (i32.const 9)
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
                            (br $folding-inner4)
                           )
                           (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
                            (local.tee $1
                             (call $~lib/as-chain/serializer/Encoder#constructor
                              (call $assembly/tables/external/accounts/AccountAuth#getSize
                               (local.get $0)
                              )
                             )
                            )
                            (i32.load
                             (local.get $0)
                            )
                           )
                           (br $folding-inner6)
                          )
                          (call $~lib/as-chain/serializer/Encoder#pack
                           (local.tee $1
                            (call $~lib/as-chain/serializer/Encoder#constructor
                             (call $assembly/tables/external/accounts/Account#getSize
                              (local.get $0)
                             )
                            )
                           )
                           (i32.load
                            (local.get $0)
                           )
                          )
                          (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
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
                          (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
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
                          (call $~lib/as-chain/serializer/Encoder#packString
                           (local.get $1)
                           (i32.load offset=28
                            (local.get $0)
                           )
                          )
                          (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                           (local.get $1)
                           (i32.load offset=32
                            (local.get $0)
                           )
                          )
                          (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                           (local.get $1)
                           (i32.load16_u offset=36
                            (local.get $0)
                           )
                          )
                          (br $folding-inner9)
                         )
                         (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                          (local.tee $1
                           (call $~lib/as-chain/serializer/Encoder#constructor
                            (i32.const 12)
                           )
                          )
                          (i32.load
                           (local.get $0)
                          )
                         )
                         (br $folding-inner3)
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
                          (i32.const 32)
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
                       (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                        (local.get $1)
                        (i64.load offset=24
                         (local.get $0)
                        )
                       )
                       (br $folding-inner9)
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
                     (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                      (local.get $1)
                      (i32.load8_u offset=4
                       (local.get $0)
                      )
                     )
                     (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                      (local.get $1)
                      (i32.load8_u offset=5
                       (local.get $0)
                      )
                     )
                     (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
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
                         (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
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
                    (br $folding-inner9)
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
                   (br $folding-inner9)
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
                  (br $folding-inner7)
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
                 (br $folding-inner9)
                )
                (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Encoder#constructor
                   (i32.const 2)
                  )
                 )
                 (i32.load8_u
                  (local.get $0)
                 )
                )
                (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                 (local.get $1)
                 (i32.load8_u offset=1
                  (local.get $0)
                 )
                )
                (br $folding-inner9)
               )
               (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/name/Name>
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
               (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
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
               (br $folding-inner9)
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
              (br $folding-inner9)
             )
             (return
              (call $assembly/tables/external/config/Config#pack
               (local.get $0)
              )
             )
            )
            (unreachable)
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
            (i32.load
             (local.get $0)
            )
           )
           (unreachable)
          )
          (local.set $1
           (call $~lib/as-chain/serializer/Encoder#constructor
            (i32.const 8)
           )
          )
          (br $folding-inner5)
         )
         (return
          (call $assembly/actions/2-oracle/OracleDepositParams#pack
           (local.get $0)
          )
         )
        )
        (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
         (local.get $1)
         (i32.load offset=4
          (local.get $0)
         )
        )
        (br $folding-inner8)
       )
       (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
        (local.get $1)
        (i32.load8_u offset=4
         (local.get $0)
        )
       )
       (br $folding-inner8)
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
      (br $folding-inner9)
     )
     (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
      (local.get $1)
      (i32.load offset=4
       (local.get $0)
      )
     )
     (br $folding-inner9)
    )
    (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
     (local.get $1)
     (i32.load16_u offset=12
      (local.get $0)
     )
    )
    (br $folding-inner9)
   )
   (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
    (local.get $1)
    (i32.load offset=8
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
     (i32.const 81)
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
    (i32.const 70)
   )
   (block
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 13952)
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
    (i32.const 70)
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
       (i32.const 83)
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
    (i32.const 70)
   )
   (block
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 14016)
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
 (func $~lib/as-chain/idxdb/IDXDB#remove@virtual (param $0 i32) (param $1 i32)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 70)
   )
   (block
    (call $~lib/as-chain/env/db_idx64_remove
     (i32.load
      (local.get $1)
     )
    )
    (return)
   )
  )
  (unreachable)
 )
 (func $~setArgumentsLength (param $0 i32)
  (global.set $~argumentsLength
   (local.get $0)
  )
 )
 (func $~start
  (call $start:assembly/boid.contract)
 )
)
