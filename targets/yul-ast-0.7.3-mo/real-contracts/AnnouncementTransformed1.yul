/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "AnnouncementTransformed1_465" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_AnnouncementTransformed1_465()

        codecopy(0, dataoffset("AnnouncementTransformed1_465_deployed"), datasize("AnnouncementTransformed1_465_deployed"))

        return(0, datasize("AnnouncementTransformed1_465_deployed"))

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function constructor_AnnouncementTransformed1_465() {

            let expr_444 := 0x01
            let _1 := convert_t_rational_1_by_1_to_t_uint256(expr_444)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, _1)
            let expr_445 := _1
            let expr_448 := 0x01
            let _2 := convert_t_rational_1_by_1_to_t_uint256(expr_448)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _2)
            let expr_449 := _2
            let expr_452 := 0x00
            let _3 := convert_t_rational_0_by_1_to_t_uint256(expr_452)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x06, _3)
            let expr_453 := _3
            let expr_456 := 0x00
            let _4 := convert_t_rational_0_by_1_to_t_uint256(expr_456)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x09, _4)
            let expr_457 := _4
            let expr_460 := 0x00
            let _5 := convert_t_rational_0_by_1_to_t_uint256(expr_460)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x0b, _5)
            let expr_461 := _5

        }

        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

    }
    object "AnnouncementTransformed1_465_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x0b73aad0
                {
                    // msgsWaitingDone(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_msgsWaitingDone_60(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x0c52bb4c
                {
                    // auditorsList(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_auditorsList_29(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x190d3d8c
                {
                    // initAnnouncement(address[],uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_array$_t_address_$dyn_memory_ptrt_uint256t_uint256(4, calldatasize())
                    fun_initAnnouncement_165(param_0, param_1, param_2)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa6b297
                {
                    // observe__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__1_414(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1ef410e2
                {
                    // addAudit(uint256,bool)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_bool(4, calldatasize())
                    fun_addAudit_330(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2c77aaca
                {
                    // observe__0(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__0_401(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4251ecb4
                {
                    // nMsg()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nMsg_46()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x47f9aa9f
                {
                    // auditors(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_auditors_26(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4812663f
                {
                    // nAuditorsRequired()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nAuditorsRequired_33()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x53163323
                {
                    // observe__5(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3 :=  fun_observe__5_388(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_bool__to_t_uint256_t_uint256_t_uint256_t_bool__fromStack(memPos , ret_0, ret_1, ret_2, ret_3)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x532c3dc5
                {
                    // nAuditors()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nAuditors_31()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5c803f19
                {
                    // alarmRaised(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_alarmRaised_44(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7bb4c4da
                {
                    // nAuditorsAlarm()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nAuditorsAlarm_35()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7daed24c
                {
                    // observe__3(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__3_428(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x8da5cb5b
                {
                    // owner()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_owner_22()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbef4f95d
                {
                    // alarms(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_alarms_40(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xcc03477d
                {
                    // nMsgsWaiting()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nMsgsWaiting_52()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xcd5c222f
                {
                    // msgMap(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_msgMap_50(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe0cfa7d9
                {
                    // observe__4(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__4_440(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf8721f1e
                {
                    // nAlarms()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nAlarms_37()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert(0, 0)

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            // address[]
            function abi_decode_t_array$_t_address_$dyn_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert(0, 0) }
                let length := calldataload(offset)
                array := allocateMemory(array_allocation_size_t_array$_t_address_$dyn_memory_ptr(length))
                let dst := array
                mstore(array, length) offset := add(offset, 0x20) dst := add(dst, 0x20) // might update offset and dst
                let src := offset
                if gt(add(src, mul(length, 0x20)), end) { revert(0, 0) }
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementPos := src
                    mstore(dst, abi_decode_t_address(elementPos, end))
                    dst := add(dst, 0x20)
                    src := add(src, 0x20)
                }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_array$_t_address_$dyn_memory_ptrt_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert(0, 0) }

                {
                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert(0, 0) }
                    value0 := abi_decode_t_array$_t_address_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 64
                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256t_bool(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_bool__to_t_uint256_t_uint256_t_uint256_t_bool__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bool_to_t_bool_fromStack(value3,  add(headStart, 96))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
            }

            function allocate_memory_struct_t_struct$_Message_$4_memory_ptr() -> memPtr {
                memPtr := allocateMemory(32)
            }

            function array_allocation_size_t_array$_t_address_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function array_dataslot_t_array$_t_address_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function array_dataslot_t_array$_t_uint256_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function array_length_t_array$_t_address_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_length_t_array$_t_address_$dyn_storage(value) -> length {

                length := sload(value)

            }

            function array_length_t_array$_t_uint256_$dyn_storage(value) -> length {

                length := sload(value)

            }

            function array_push_t_array$_t_address_$dyn_storage(array, value) {

                let oldLen := sload(array)
                if iszero(lt(oldLen, 18446744073709551616)) { panic_error() }
                sstore(array, add(oldLen, 1))
                let slot, offset := storage_array_index_access_t_array$_t_address_$dyn_storage(array, oldLen)
                update_storage_value_t_address_to_t_address(slot, offset, value)

            }
            function array_push_t_array$_t_uint256_$dyn_storage(array, value) {

                let oldLen := sload(array)
                if iszero(lt(oldLen, 18446744073709551616)) { panic_error() }
                sstore(array, add(oldLen, 1))
                let slot, offset := storage_array_index_access_t_array$_t_uint256_$dyn_storage(array, oldLen)
                update_storage_value_t_uint256_to_t_uint256(slot, offset, value)

            }
            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error() }

                sum := add(x, y)
            }

            function cleanup_from_storage_split_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_split_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function cleanup_from_storage_split_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_struct$_Message_$4_storage_to_t_struct$_Message_$4_memory_ptr(value) -> converted {

                converted := read_from_storage_reference_type_t_struct$_Message_$4_memory_ptr(value)

            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function extract_from_storage_value_dynamicsplit_t_address(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_dynamicsplit_t_bool(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_bool(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_dynamicsplit_t_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_offset_0t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_1t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_8_unsigned(slot_value))
            }

            function fun_addAudit_330(vloc_msgWaitingN_167, vloc_msgGood_169) {

                let _22 := 0x0d
                let expr_175 := _22
                let _23 := vloc_msgWaitingN_167
                let expr_176 := _23
                let _24 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_175,expr_176)
                let _25 := read_from_storage_offset_0_t_bool(_24)
                let expr_177 := _25
                let expr_178 := 0x00
                let expr_179 := eq(cleanup_t_bool(expr_177), cleanup_t_bool(expr_178))
                let expr_180 := expr_179
                require_helper(expr_180)
                let _26 := 0x0c
                let expr_184 := _26
                let _27 := vloc_msgWaitingN_167
                let expr_185 := _27
                let _28 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_184,expr_185)
                let _29_slot := _28
                let expr_186_slot := _29_slot
                let _30 := add(expr_186_slot, 3)
                let _31 := _30
                let expr_187 := _31
                let expr_189 := caller()
                let _32 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Foo_$20_storage_$_of_t_address_payable(expr_187,expr_189)
                let _33_slot := _32
                let expr_190_slot := _33_slot
                let _34 := add(expr_190_slot, 0)
                let _35 := read_from_storage_offset_0_t_bool(_34)
                let expr_191 := _35
                let expr_192 := 0x00
                let expr_193 := eq(cleanup_t_bool(expr_191), cleanup_t_bool(expr_192))
                let expr_194 := expr_193
                require_helper(expr_194)
                let _36 := 0x0c
                let expr_198 := _36
                let _37 := vloc_msgWaitingN_167
                let expr_199 := _37
                let _38 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_198,expr_199)
                let _39_slot := _38
                let expr_200_slot := _39_slot
                let _40 := add(expr_200_slot, 3)
                let _41 := _40
                let expr_201 := _41
                let expr_203 := caller()
                let _42 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Foo_$20_storage_$_of_t_address_payable(expr_201,expr_203)
                let _43_slot := _42
                let expr_204_slot := _43_slot
                let _44 := add(expr_204_slot, 0)
                let _45 := read_from_storage_offset_1_t_bool(_44)
                let expr_205 := _45
                let expr_206 := 0x00
                let expr_207 := eq(cleanup_t_bool(expr_205), cleanup_t_bool(expr_206))
                let expr_208 := expr_207
                require_helper(expr_208)
                let _46 := 0x08
                let expr_212 := _46
                let _47 := vloc_msgWaitingN_167
                let expr_213 := _47
                let _48 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_212,expr_213)
                let _49 := read_from_storage_offset_0_t_bool(_48)
                let expr_214 := _49
                let expr_215 := 0x00
                let expr_216 := eq(cleanup_t_bool(expr_214), cleanup_t_bool(expr_215))
                let expr_217 := expr_216
                require_helper(expr_217)
                let _50 := vloc_msgGood_169
                let expr_220 := _50
                let expr_221 := 0x01
                let expr_222 := eq(cleanup_t_bool(expr_220), cleanup_t_bool(expr_221))
                let expr_223 := expr_222
                switch expr_223
                case 0 {
                    let expr_250 := 0x01
                    let _51 := convert_t_rational_1_by_1_to_t_uint256(expr_250)
                    let _52 := 0x0c
                    let expr_246 := _52
                    let _53 := vloc_msgWaitingN_167
                    let expr_247 := _53
                    let _54 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_246,expr_247)
                    let _55_slot := _54
                    let expr_248_slot := _55_slot
                    let _56 := add(expr_248_slot, 1)
                    let _57 := read_from_storage_offset_0_t_uint256(_56)
                    _51 := checked_add_t_uint256(_57, _51)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_56, _51)
                    let expr_251 := _51
                    let expr_253 := 0x01
                    if expr_253 {
                        let expr_262 := 0x01
                        let _58 := 0x0c
                        let expr_254 := _58
                        let _59 := vloc_msgWaitingN_167
                        let expr_255 := _59
                        let _60 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_254,expr_255)
                        let _61_slot := _60
                        let expr_256_slot := _61_slot
                        let _62 := add(expr_256_slot, 3)
                        let _63 := _62
                        let expr_257 := _63
                        let expr_259 := caller()
                        let _64 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Foo_$20_storage_$_of_t_address_payable(expr_257,expr_259)
                        let _65_slot := _64
                        let expr_260_slot := _65_slot
                        let _66 := add(expr_260_slot, 0)
                        update_storage_value_offset_1t_bool_to_t_bool(_66, expr_262)
                        let expr_263 := expr_262
                    }
                }
                default {
                    let expr_228 := 0x01
                    let _67 := convert_t_rational_1_by_1_to_t_uint256(expr_228)
                    let _68 := 0x0c
                    let expr_224 := _68
                    let _69 := vloc_msgWaitingN_167
                    let expr_225 := _69
                    let _70 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_224,expr_225)
                    let _71_slot := _70
                    let expr_226_slot := _71_slot
                    let _72 := add(expr_226_slot, 0)
                    let _73 := read_from_storage_offset_0_t_uint256(_72)
                    _67 := checked_add_t_uint256(_73, _67)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_72, _67)
                    let expr_229 := _67
                    let expr_231 := 0x01
                    if expr_231 {
                        let expr_240 := 0x01
                        let _74 := 0x0c
                        let expr_232 := _74
                        let _75 := vloc_msgWaitingN_167
                        let expr_233 := _75
                        let _76 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_232,expr_233)
                        let _77_slot := _76
                        let expr_234_slot := _77_slot
                        let _78 := add(expr_234_slot, 3)
                        let _79 := _78
                        let expr_235 := _79
                        let expr_237 := caller()
                        let _80 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Foo_$20_storage_$_of_t_address_payable(expr_235,expr_237)
                        let _81_slot := _80
                        let expr_238_slot := _81_slot
                        let _82 := add(expr_238_slot, 0)
                        update_storage_value_offset_0t_bool_to_t_bool(_82, expr_240)
                        let expr_241 := expr_240
                    }
                }
                let _83 := 0x0c
                let expr_269 := _83
                let _84 := vloc_msgWaitingN_167
                let expr_270 := _84
                let _85 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_269,expr_270)
                let _86_slot := _85
                let expr_271_slot := _86_slot
                let _87 := add(expr_271_slot, 0)
                let _88 := read_from_storage_offset_0_t_uint256(_87)
                let expr_272 := _88
                let _89 := read_from_storage_offset_0_t_uint256(0x04)
                let expr_273 := _89
                let expr_274 := iszero(lt(cleanup_t_uint256(expr_272), cleanup_t_uint256(expr_273)))
                let expr_275 := expr_274
                let expr_283 := expr_275
                if expr_283 {
                    let _90 := 0x0c
                    let expr_276 := _90
                    let _91 := vloc_msgWaitingN_167
                    let expr_277 := _91
                    let _92 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_276,expr_277)
                    let _93_slot := _92
                    let expr_278_slot := _93_slot
                    let _94 := add(expr_278_slot, 1)
                    let _95 := read_from_storage_offset_0_t_uint256(_94)
                    let expr_279 := _95
                    let _96 := read_from_storage_offset_0_t_uint256(0x05)
                    let expr_280 := _96
                    let expr_281 := lt(cleanup_t_uint256(expr_279), cleanup_t_uint256(expr_280))
                    let expr_282 := expr_281
                    expr_283 := expr_282
                }
                let expr_284 := expr_283
                switch expr_284
                case 0 {
                    let _97 := 0x0c
                    let expr_294 := _97
                    let _98 := vloc_msgWaitingN_167
                    let expr_295 := _98
                    let _99 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_294,expr_295)
                    let _100_slot := _99
                    let expr_296_slot := _100_slot
                    let _101 := add(expr_296_slot, 1)
                    let _102 := read_from_storage_offset_0_t_uint256(_101)
                    let expr_297 := _102
                    let _103 := read_from_storage_offset_0_t_uint256(0x05)
                    let expr_298 := _103
                    let expr_299 := iszero(lt(cleanup_t_uint256(expr_297), cleanup_t_uint256(expr_298)))
                    let expr_300 := expr_299
                    if expr_300 {
                        let expr_304 := 0x01
                        let _104 := 0x0d
                        let expr_301 := _104
                        let _105 := vloc_msgWaitingN_167
                        let expr_302 := _105
                        let _106 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_301,expr_302)
                        update_storage_value_offset_0t_bool_to_t_bool(_106, expr_304)
                        let expr_305 := expr_304
                        let expr_310 := 0x01
                        let _107 := 0x08
                        let expr_307 := _107
                        let _108 := vloc_msgWaitingN_167
                        let expr_308 := _108
                        let _109 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_307,expr_308)
                        update_storage_value_offset_0t_bool_to_t_bool(_109, expr_310)
                        let expr_311 := expr_310
                        let _110_slot := 0x07
                        let expr_313_slot := _110_slot
                        let expr_315_slot := expr_313_slot
                        let _111 := vloc_msgWaitingN_167
                        let expr_316 := _111
                        array_push_t_array$_t_uint256_$dyn_storage(expr_315_slot, expr_316)
                        let expr_320 := 0x01
                        let _112 := convert_t_rational_1_by_1_to_t_uint256(expr_320)
                        let _113 := read_from_storage_offset_0_t_uint256(0x06)
                        _112 := checked_add_t_uint256(_113, _112)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x06, _112)
                        let expr_321 := _112
                    }
                }
                default {
                    let expr_285_functionIdentifier := 356
                    let _114 := 0x0c
                    let expr_286 := _114
                    let _115 := vloc_msgWaitingN_167
                    let expr_287 := _115
                    let _116 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_286,expr_287)
                    let _117_slot := _116
                    let expr_288_slot := _117_slot
                    let _118 := add(expr_288_slot, 2)
                    let _119_slot := _118
                    let expr_289_slot := _119_slot
                    let _120 := vloc_msgWaitingN_167
                    let expr_290 := _120
                    let _121_mpos := convert_t_struct$_Message_$4_storage_to_t_struct$_Message_$4_memory_ptr(expr_289_slot)
                    fun_addMsgFinal_356(_121_mpos, expr_290)
                }
                leave

            }

            function fun_addMsgFinal_356(vloc_msg_332_mpos, vloc_msgWaitingN_334) {

                let _122_mpos := vloc_msg_332_mpos
                let expr_340_mpos := _122_mpos
                let _123 := 0x0a
                let expr_337 := _123
                let _124 := read_from_storage_offset_0_t_uint256(0x09)
                let expr_338 := _124
                let _125 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Message_$4_storage_$_of_t_uint256(expr_337,expr_338)
                update_storage_value_offset_0t_struct$_Message_$4_memory_ptr_to_t_struct$_Message_$4_storage(_125, expr_340_mpos)
                let expr_344 := 0x01
                let _126 := convert_t_rational_1_by_1_to_t_uint256(expr_344)
                let _127 := read_from_storage_offset_0_t_uint256(0x09)
                _126 := checked_add_t_uint256(_127, _126)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x09, _126)
                let expr_345 := _126
                let expr_350 := 0x01
                let _128 := 0x0d
                let expr_347 := _128
                let _129 := vloc_msgWaitingN_334
                let expr_348 := _129
                let _130 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_347,expr_348)
                update_storage_value_offset_0t_bool_to_t_bool(_130, expr_350)
                let expr_351 := expr_350
                leave

            }

            function fun_initAnnouncement_165(vloc__auditors_89_mpos, vloc__nAuditorsRequired_91, vloc__nAuditorsAlarm_93) {

                let _1 := vloc__nAuditorsRequired_91
                let expr_97 := _1
                let expr_98 := 0x01
                let expr_99 := iszero(lt(cleanup_t_uint256(expr_97), convert_t_rational_1_by_1_to_t_uint256(expr_98)))
                let expr_100 := expr_99
                require_helper(expr_100)
                let _2 := vloc__nAuditorsAlarm_93
                let expr_104 := _2
                let expr_105 := 0x01
                let expr_106 := iszero(lt(cleanup_t_uint256(expr_104), convert_t_rational_1_by_1_to_t_uint256(expr_105)))
                let expr_107 := expr_106
                require_helper(expr_107)
                let vloc_i_111
                let zero_value_for_type_t_uint256_3 := zero_value_for_split_t_uint256()
                vloc_i_111 := zero_value_for_type_t_uint256_3
                let expr_114 := 0x00
                let _4 := convert_t_rational_0_by_1_to_t_uint256(expr_114)
                vloc_i_111 := _4
                let expr_115 := _4
                for {
                    } 1 {
                }
                {
                    let _5 := vloc_i_111
                    let expr_117 := _5
                    let _6_mpos := vloc__auditors_89_mpos
                    let expr_118_mpos := _6_mpos
                    let expr_119 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_118_mpos)
                    let expr_120 := lt(cleanup_t_uint256(expr_117), cleanup_t_uint256(expr_119))
                    let expr_121 := expr_120
                    if iszero(expr_121) { break }
                    let expr_127 := 0x01
                    let _7 := 0x01
                    let expr_122 := _7
                    let _8_mpos := vloc__auditors_89_mpos
                    let expr_123_mpos := _8_mpos
                    let _9 := vloc_i_111
                    let expr_124 := _9
                    let _10 := read_from_memoryt_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_123_mpos, expr_124))
                    let expr_125 := _10
                    let _11 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_122,expr_125)
                    update_storage_value_offset_0t_bool_to_t_bool(_11, expr_127)
                    let expr_128 := expr_127
                    let _12_slot := 0x02
                    let expr_130_slot := _12_slot
                    let expr_132_slot := expr_130_slot
                    let _13_mpos := vloc__auditors_89_mpos
                    let expr_133_mpos := _13_mpos
                    let _14 := vloc_i_111
                    let expr_134 := _14
                    let _15 := read_from_memoryt_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_133_mpos, expr_134))
                    let expr_135 := _15
                    array_push_t_array$_t_address_$dyn_storage(expr_132_slot, expr_135)
                    let _17 := vloc_i_111
                    let _16 := increment_t_uint256(_17)
                    vloc_i_111 := _16
                    let expr_139 := _17
                }
                let _18_mpos := vloc__auditors_89_mpos
                let expr_145_mpos := _18_mpos
                let expr_146 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_145_mpos)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x03, expr_146)
                let expr_147 := expr_146
                let expr_151 := caller()
                let _19 := convert_t_address_payable_to_t_address(expr_151)
                update_storage_value_offset_0t_address_to_t_address(0x00, _19)
                let expr_152 := _19
                let _20 := vloc__nAuditorsRequired_91
                let expr_155 := _20
                update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_155)
                let expr_156 := expr_155
                let _21 := vloc__nAuditorsAlarm_93
                let expr_159 := _21
                update_storage_value_offset_0t_uint256_to_t_uint256(0x05, expr_159)
                let expr_160 := expr_159
                leave

            }

            function fun_observe__0_401(vloc_i_390) -> vloc__393 {
                let zero_value_for_type_t_uint256_159 := zero_value_for_split_t_uint256()
                vloc__393 := zero_value_for_type_t_uint256_159

                let _160 := 0x0c
                let expr_395 := _160
                let _161 := vloc_i_390
                let expr_396 := _161
                let _162 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_395,expr_396)
                let _163_slot := _162
                let expr_397_slot := _163_slot
                let _164 := add(expr_397_slot, 0)
                let _165 := read_from_storage_offset_0_t_uint256(_164)
                let expr_398 := _165
                vloc__393 := expr_398
                leave

            }

            function fun_observe__1_414(vloc_i_403) -> vloc__406 {
                let zero_value_for_type_t_uint256_166 := zero_value_for_split_t_uint256()
                vloc__406 := zero_value_for_type_t_uint256_166

                let _167 := 0x0c
                let expr_408 := _167
                let _168 := vloc_i_403
                let expr_409 := _168
                let _169 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_408,expr_409)
                let _170_slot := _169
                let expr_410_slot := _170_slot
                let _171 := add(expr_410_slot, 1)
                let _172 := read_from_storage_offset_0_t_uint256(_171)
                let expr_411 := _172
                vloc__406 := expr_411
                leave

            }

            function fun_observe__3_428(vloc_i_416) -> vloc__419 {
                let zero_value_for_type_t_uint256_173 := zero_value_for_split_t_uint256()
                vloc__419 := zero_value_for_type_t_uint256_173

                let _174 := 0x0c
                let expr_421 := _174
                let _175 := vloc_i_416
                let expr_422 := _175
                let _176 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_421,expr_422)
                let _177_slot := _176
                let expr_423_slot := _177_slot
                let _178 := add(expr_423_slot, 2)
                let _179_slot := _178
                let expr_424_slot := _179_slot
                let _180 := add(expr_424_slot, 0)
                let _181 := read_from_storage_offset_0_t_uint256(_180)
                let expr_425 := _181
                vloc__419 := expr_425
                leave

            }

            function fun_observe__4_440(vloc_i_430) -> vloc__433 {
                let zero_value_for_type_t_bool_182 := zero_value_for_split_t_bool()
                vloc__433 := zero_value_for_type_t_bool_182

                let _183 := 0x08
                let expr_435 := _183
                let _184 := vloc_i_430
                let expr_436 := _184
                let _185 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_435,expr_436)
                let _186 := read_from_storage_offset_0_t_bool(_185)
                let expr_437 := _186
                vloc__433 := expr_437
                leave

            }

            function fun_observe__5_388(vloc_msgWaitingN_358) -> vloc__361, vloc__363, vloc__365, vloc__367 {
                let zero_value_for_type_t_uint256_131 := zero_value_for_split_t_uint256()
                vloc__361 := zero_value_for_type_t_uint256_131
                let zero_value_for_type_t_uint256_132 := zero_value_for_split_t_uint256()
                vloc__363 := zero_value_for_type_t_uint256_132
                let zero_value_for_type_t_uint256_133 := zero_value_for_split_t_uint256()
                vloc__365 := zero_value_for_type_t_uint256_133
                let zero_value_for_type_t_bool_134 := zero_value_for_split_t_bool()
                vloc__367 := zero_value_for_type_t_bool_134

                let _135 := 0x0c
                let expr_369 := _135
                let _136 := vloc_msgWaitingN_358
                let expr_370 := _136
                let _137 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_369,expr_370)
                let _138_slot := _137
                let expr_371_slot := _138_slot
                let _139 := add(expr_371_slot, 0)
                let _140 := read_from_storage_offset_0_t_uint256(_139)
                let expr_372 := _140
                let expr_385_component_1 := expr_372
                let _141 := 0x0c
                let expr_373 := _141
                let _142 := vloc_msgWaitingN_358
                let expr_374 := _142
                let _143 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_373,expr_374)
                let _144_slot := _143
                let expr_375_slot := _144_slot
                let _145 := add(expr_375_slot, 1)
                let _146 := read_from_storage_offset_0_t_uint256(_145)
                let expr_376 := _146
                let expr_385_component_2 := expr_376
                let _147 := 0x0c
                let expr_377 := _147
                let _148 := vloc_msgWaitingN_358
                let expr_378 := _148
                let _149 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(expr_377,expr_378)
                let _150_slot := _149
                let expr_379_slot := _150_slot
                let _151 := add(expr_379_slot, 2)
                let _152_slot := _151
                let expr_380_slot := _152_slot
                let _153 := add(expr_380_slot, 0)
                let _154 := read_from_storage_offset_0_t_uint256(_153)
                let expr_381 := _154
                let expr_385_component_3 := expr_381
                let _155 := 0x08
                let expr_382 := _155
                let _156 := vloc_msgWaitingN_358
                let expr_383 := _156
                let _157 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_382,expr_383)
                let _158 := read_from_storage_offset_0_t_bool(_157)
                let expr_384 := _158
                let expr_385_component_4 := expr_384
                vloc__361 := expr_385_component_1
                vloc__363 := expr_385_component_2
                vloc__365 := expr_385_component_3
                vloc__367 := expr_385_component_4
                leave

            }

            function getter_fun_alarmRaised_44(key_0) -> ret {

                let slot := 8
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_bool(slot, offset)

            }

            function getter_fun_alarms_40(key_0) -> ret {

                let slot := 7
                let offset := 0

                if iszero(lt(key_0, array_length_t_array$_t_uint256_$dyn_storage(slot))) { revert(0, 0) }

                slot, offset := storage_array_index_access_t_array$_t_uint256_$dyn_storage(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_auditorsList_29(key_0) -> ret {

                let slot := 2
                let offset := 0

                if iszero(lt(key_0, array_length_t_array$_t_address_$dyn_storage(slot))) { revert(0, 0) }

                slot, offset := storage_array_index_access_t_array$_t_address_$dyn_storage(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_auditors_26(key_0) -> ret {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_bool(slot, offset)

            }

            function getter_fun_msgMap_50(key_0) -> ret_0 {

                let slot := 10
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Message_$4_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))

            }

            function getter_fun_msgsWaitingDone_60(key_0) -> ret {

                let slot := 13
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_bool(slot, offset)

            }

            function getter_fun_nAlarms_37() -> ret {

                let slot := 6
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nAuditorsAlarm_35() -> ret {

                let slot := 5
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nAuditorsRequired_33() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nAuditors_31() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nMsg_46() -> ret {

                let slot := 9
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nMsgsWaiting_52() -> ret {

                let slot := 11
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_owner_22() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { panic_error() }
                ret := add(value, 1)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_Foo_$20_storage_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$15_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Message_$4_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_address_$dyn_memory_ptr(baseRef))) {
                    panic_error()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function panic_error() {
                invalid()
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function prepare_store_t_bool(value) -> ret {
                ret := value
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_memoryt_address(ptr) -> value {

                value := cleanup_t_address(mload(ptr))

            }

            function read_from_memoryt_uint256(ptr) -> value {

                value := cleanup_t_uint256(mload(ptr))

            }

            function read_from_storage_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0t_bool(sload(slot))
            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_offset_1_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_1t_bool(sload(slot))
            }

            function read_from_storage_reference_type_t_struct$_Message_$4_memory_ptr(slot) -> value {
                value := allocate_memory_struct_t_struct$_Message_$4_memory_ptr()

                {
                    let memberValue_0 := read_from_storage_value_type_dynamicsplit__t_uint256(add(slot, 0), 0)
                    write_to_memory_t_uint256(add(value, 0), memberValue_0)
                }

            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_value_type_dynamicsplit__t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_address(sload(slot), offset)
            }

            function read_from_storage_value_type_dynamicsplit__t_bool(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_bool(sload(slot), offset)
            }

            function read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_uint256(sload(slot), offset)
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_left_8(value) -> newValue {
                newValue :=

                shl(8, value)

            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function shift_right_248_unsigned(value) -> newValue {
                newValue :=

                shr(248, value)

            }

            function shift_right_8_unsigned(value) -> newValue {
                newValue :=

                shr(8, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function storage_array_index_access_t_array$_t_address_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_address_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error() }

                let dataArea := array_dataslot_t_array$_t_address_$dyn_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function storage_array_index_access_t_array$_t_uint256_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_uint256_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error() }

                let dataArea := array_dataslot_t_array$_t_uint256_$dyn_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function update_byte_slice_1_shift_0(value, toInsert) -> result {
                let mask := 255
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_1_shift_1(value, toInsert) -> result {
                let mask := 65280
                toInsert := shift_left_8(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_dynamic20(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_address_to_t_address(slot, value) {
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(value)))
            }

            function update_storage_value_offset_0t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(value)))
            }

            function update_storage_value_offset_0t_struct$_Message_$4_memory_ptr_to_t_struct$_Message_$4_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)

                    let memberMemoryOffset := add(value, 0)
                    let memberValue_0 := read_from_memoryt_uint256(memberMemoryOffset)
                    update_storage_value_t_uint256_to_t_uint256(memberSlot, 0, memberValue_0)

                }

            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
            }

            function update_storage_value_offset_1t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_1(sload(slot), prepare_store_t_bool(value)))
            }

            function update_storage_value_t_address_to_t_address(slot, offset, value) {
                sstore(slot, update_byte_slice_dynamic20(sload(slot), offset, prepare_store_t_address(value)))
            }

            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value) {
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(value)))
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

        }

    }

}

