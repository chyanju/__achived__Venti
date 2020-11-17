/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "Announcement_432" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_Announcement_432()

        codecopy(0, dataoffset("Announcement_432_deployed"), datasize("Announcement_432_deployed"))

        return(0, datasize("Announcement_432_deployed"))

        function constructor_Announcement_432() {

            let expr_32 := 0x01
            update_storage_value_offset_0t_rational_1_by_1_to_t_uint256(0x04, expr_32)
            let expr_35 := 0x01
            update_storage_value_offset_0t_rational_1_by_1_to_t_uint256(0x05, expr_35)
            let expr_38 := 0x00
            update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(0x06, expr_38)
            let expr_48 := 0x00
            update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(0x09, expr_48)
            let expr_55 := 0x00
            update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(0x0b, expr_55)

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

        function update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

        function update_storage_value_offset_0t_rational_1_by_1_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

    }
    object "Announcement_432_deployed" {
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
                    let ret_0 :=  getter_fun_msgsWaitingDone_64(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x0c52bb4c
                {
                    // auditorsList(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_auditorsList_28(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x190d3d8c
                {
                    // initAnnouncement(address[],uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_array$_t_address_$dyn_memory_ptrt_uint256t_uint256(4, calldatasize())
                    fun_initAnnouncement_166(param_0, param_1, param_2)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa6b297
                {
                    // observe__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__1_405(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1ef410e2
                {
                    // addAudit(uint256,bool)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_bool(4, calldatasize())
                    fun_addAudit_321(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2c77aaca
                {
                    // observe__0(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__0_392(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4251ecb4
                {
                    // nMsg()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nMsg_49()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x47f9aa9f
                {
                    // auditors(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_auditors_25(param_0)
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
                    let ret_0, ret_1, ret_2, ret_3 :=  fun_observe__5_379(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_bool__to_t_uint256_t_uint256_t_uint256_t_bool__fromStack(memPos , ret_0, ret_1, ret_2, ret_3)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x532c3dc5
                {
                    // nAuditors()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nAuditors_30()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5c803f19
                {
                    // alarmRaised(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_alarmRaised_46(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7bb4c4da
                {
                    // nAuditorsAlarm()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nAuditorsAlarm_36()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7daed24c
                {
                    // observe__3(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__3_419(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x8da5cb5b
                {
                    // owner()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_owner_21()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbef4f95d
                {
                    // alarms(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_alarms_42(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xcc03477d
                {
                    // nMsgsWaiting()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nMsgsWaiting_56()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xcd5c222f
                {
                    // msgMap(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_msgMap_53(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe0cfa7d9
                {
                    // observe__4(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__4_431(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf8721f1e
                {
                    // nAlarms()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nAlarms_39()
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

            function fun_addAudit_321(vloc_msgWaitingN_168, vloc_msgGood_170) {

                let _20 := 0x0d
                let expr_176 := _20
                let _21 := vloc_msgWaitingN_168
                let expr_177 := _21
                let _22 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_176,expr_177)
                let _23 := read_from_storage_offset_0_t_bool(_22)
                let expr_178 := _23
                let expr_179 := 0x00
                let expr_180 := eq(cleanup_t_bool(expr_178), cleanup_t_bool(expr_179))
                let expr_181 := expr_180
                require_helper(expr_181)
                let _24 := 0x0c
                let expr_185 := _24
                let _25 := vloc_msgWaitingN_168
                let expr_186 := _25
                let _26 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_185,expr_186)
                let _27_slot := _26
                let expr_187_slot := _27_slot
                let _28 := add(expr_187_slot, 3)
                let _29 := _28
                let expr_188 := _29
                let expr_190 := caller()
                let _30 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_188,expr_190)
                let _31 := read_from_storage_offset_0_t_bool(_30)
                let expr_191 := _31
                let expr_192 := 0x00
                let expr_193 := eq(cleanup_t_bool(expr_191), cleanup_t_bool(expr_192))
                let expr_194 := expr_193
                require_helper(expr_194)
                let _32 := 0x0c
                let expr_198 := _32
                let _33 := vloc_msgWaitingN_168
                let expr_199 := _33
                let _34 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_198,expr_199)
                let _35_slot := _34
                let expr_200_slot := _35_slot
                let _36 := add(expr_200_slot, 4)
                let _37 := _36
                let expr_201 := _37
                let expr_203 := caller()
                let _38 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_201,expr_203)
                let _39 := read_from_storage_offset_0_t_bool(_38)
                let expr_204 := _39
                let expr_205 := 0x00
                let expr_206 := eq(cleanup_t_bool(expr_204), cleanup_t_bool(expr_205))
                let expr_207 := expr_206
                require_helper(expr_207)
                let _40 := 0x08
                let expr_211 := _40
                let _41 := vloc_msgWaitingN_168
                let expr_212 := _41
                let _42 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_211,expr_212)
                let _43 := read_from_storage_offset_0_t_bool(_42)
                let expr_213 := _43
                let expr_214 := 0x00
                let expr_215 := eq(cleanup_t_bool(expr_213), cleanup_t_bool(expr_214))
                let expr_216 := expr_215
                require_helper(expr_216)
                let _44 := vloc_msgGood_170
                let expr_219 := _44
                let expr_220 := 0x01
                let expr_221 := eq(cleanup_t_bool(expr_219), cleanup_t_bool(expr_220))
                let expr_222 := expr_221
                switch expr_222
                case 0 {
                    let expr_245 := 0x01
                    let _45 := convert_t_rational_1_by_1_to_t_uint256(expr_245)
                    let _46 := 0x0c
                    let expr_241 := _46
                    let _47 := vloc_msgWaitingN_168
                    let expr_242 := _47
                    let _48 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_241,expr_242)
                    let _49_slot := _48
                    let expr_243_slot := _49_slot
                    let _50 := add(expr_243_slot, 1)
                    let _51 := read_from_storage_offset_0_t_uint256(_50)
                    _45 := checked_add_t_uint256(_51, _45)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_50, _45)
                    let expr_246 := _45
                    let expr_255 := 0x01
                    let _52 := 0x0c
                    let expr_248 := _52
                    let _53 := vloc_msgWaitingN_168
                    let expr_249 := _53
                    let _54 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_248,expr_249)
                    let _55_slot := _54
                    let expr_250_slot := _55_slot
                    let _56 := add(expr_250_slot, 4)
                    let _57 := _56
                    let expr_251 := _57
                    let expr_253 := caller()
                    let _58 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_251,expr_253)
                    update_storage_value_offset_0t_bool_to_t_bool(_58, expr_255)
                    let expr_256 := expr_255
                }
                default {
                    let expr_227 := 0x01
                    let _59 := convert_t_rational_1_by_1_to_t_uint256(expr_227)
                    let _60 := 0x0c
                    let expr_223 := _60
                    let _61 := vloc_msgWaitingN_168
                    let expr_224 := _61
                    let _62 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_223,expr_224)
                    let _63_slot := _62
                    let expr_225_slot := _63_slot
                    let _64 := add(expr_225_slot, 0)
                    let _65 := read_from_storage_offset_0_t_uint256(_64)
                    _59 := checked_add_t_uint256(_65, _59)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_64, _59)
                    let expr_228 := _59
                    let expr_237 := 0x01
                    let _66 := 0x0c
                    let expr_230 := _66
                    let _67 := vloc_msgWaitingN_168
                    let expr_231 := _67
                    let _68 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_230,expr_231)
                    let _69_slot := _68
                    let expr_232_slot := _69_slot
                    let _70 := add(expr_232_slot, 3)
                    let _71 := _70
                    let expr_233 := _71
                    let expr_235 := caller()
                    let _72 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_233,expr_235)
                    update_storage_value_offset_0t_bool_to_t_bool(_72, expr_237)
                    let expr_238 := expr_237
                }
                let _73 := 0x0c
                let expr_260 := _73
                let _74 := vloc_msgWaitingN_168
                let expr_261 := _74
                let _75 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_260,expr_261)
                let _76_slot := _75
                let expr_262_slot := _76_slot
                let _77 := add(expr_262_slot, 0)
                let _78 := read_from_storage_offset_0_t_uint256(_77)
                let expr_263 := _78
                let _79 := read_from_storage_offset_0_t_uint256(0x04)
                let expr_264 := _79
                let expr_265 := iszero(lt(cleanup_t_uint256(expr_263), cleanup_t_uint256(expr_264)))
                let expr_266 := expr_265
                let expr_274 := expr_266
                if expr_274 {
                    let _80 := 0x0c
                    let expr_267 := _80
                    let _81 := vloc_msgWaitingN_168
                    let expr_268 := _81
                    let _82 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_267,expr_268)
                    let _83_slot := _82
                    let expr_269_slot := _83_slot
                    let _84 := add(expr_269_slot, 1)
                    let _85 := read_from_storage_offset_0_t_uint256(_84)
                    let expr_270 := _85
                    let _86 := read_from_storage_offset_0_t_uint256(0x05)
                    let expr_271 := _86
                    let expr_272 := lt(cleanup_t_uint256(expr_270), cleanup_t_uint256(expr_271))
                    let expr_273 := expr_272
                    expr_274 := expr_273
                }
                let expr_275 := expr_274
                switch expr_275
                case 0 {
                    let _87 := 0x0c
                    let expr_285 := _87
                    let _88 := vloc_msgWaitingN_168
                    let expr_286 := _88
                    let _89 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_285,expr_286)
                    let _90_slot := _89
                    let expr_287_slot := _90_slot
                    let _91 := add(expr_287_slot, 1)
                    let _92 := read_from_storage_offset_0_t_uint256(_91)
                    let expr_288 := _92
                    let _93 := read_from_storage_offset_0_t_uint256(0x05)
                    let expr_289 := _93
                    let expr_290 := iszero(lt(cleanup_t_uint256(expr_288), cleanup_t_uint256(expr_289)))
                    let expr_291 := expr_290
                    if expr_291 {
                        let expr_295 := 0x01
                        let _94 := 0x0d
                        let expr_292 := _94
                        let _95 := vloc_msgWaitingN_168
                        let expr_293 := _95
                        let _96 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_292,expr_293)
                        update_storage_value_offset_0t_bool_to_t_bool(_96, expr_295)
                        let expr_296 := expr_295
                        let expr_301 := 0x01
                        let _97 := 0x08
                        let expr_298 := _97
                        let _98 := vloc_msgWaitingN_168
                        let expr_299 := _98
                        let _99 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_298,expr_299)
                        update_storage_value_offset_0t_bool_to_t_bool(_99, expr_301)
                        let expr_302 := expr_301
                        let _100_slot := 0x07
                        let expr_304_slot := _100_slot
                        let expr_306_slot := expr_304_slot
                        let _101 := vloc_msgWaitingN_168
                        let expr_307 := _101
                        array_push_t_array$_t_uint256_$dyn_storage(expr_306_slot, expr_307)
                        let expr_311 := 0x01
                        let _102 := convert_t_rational_1_by_1_to_t_uint256(expr_311)
                        let _103 := read_from_storage_offset_0_t_uint256(0x06)
                        _102 := checked_add_t_uint256(_103, _102)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x06, _102)
                        let expr_312 := _102
                    }
                }
                default {
                    let expr_276_functionIdentifier := 347
                    let _104 := 0x0c
                    let expr_277 := _104
                    let _105 := vloc_msgWaitingN_168
                    let expr_278 := _105
                    let _106 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_277,expr_278)
                    let _107_slot := _106
                    let expr_279_slot := _107_slot
                    let _108 := add(expr_279_slot, 2)
                    let _109_slot := _108
                    let expr_280_slot := _109_slot
                    let _110 := vloc_msgWaitingN_168
                    let expr_281 := _110
                    let _111_mpos := convert_t_struct$_Message_$4_storage_to_t_struct$_Message_$4_memory_ptr(expr_280_slot)
                    fun_addMsgFinal_347(_111_mpos, expr_281)
                }
                leave

            }

            function fun_addMsgFinal_347(vloc_msg_323_mpos, vloc_msgWaitingN_325) {

                let _112_mpos := vloc_msg_323_mpos
                let expr_331_mpos := _112_mpos
                let _113 := 0x0a
                let expr_328 := _113
                let _114 := read_from_storage_offset_0_t_uint256(0x09)
                let expr_329 := _114
                let _115 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Message_$4_storage_$_of_t_uint256(expr_328,expr_329)
                update_storage_value_offset_0t_struct$_Message_$4_memory_ptr_to_t_struct$_Message_$4_storage(_115, expr_331_mpos)
                let expr_335 := 0x01
                let _116 := convert_t_rational_1_by_1_to_t_uint256(expr_335)
                let _117 := read_from_storage_offset_0_t_uint256(0x09)
                _116 := checked_add_t_uint256(_117, _116)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x09, _116)
                let expr_336 := _116
                let expr_341 := 0x01
                let _118 := 0x0d
                let expr_338 := _118
                let _119 := vloc_msgWaitingN_325
                let expr_339 := _119
                let _120 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_338,expr_339)
                update_storage_value_offset_0t_bool_to_t_bool(_120, expr_341)
                let expr_342 := expr_341
                leave

            }

            function fun_initAnnouncement_166(vloc__auditors_93_mpos, vloc__nAuditorsRequired_95, vloc__nAuditorsAlarm_97) {

                let _1 := vloc__nAuditorsRequired_95
                let expr_101 := _1
                let expr_102 := 0x01
                let expr_103 := iszero(lt(cleanup_t_uint256(expr_101), convert_t_rational_1_by_1_to_t_uint256(expr_102)))
                let expr_104 := expr_103
                require_helper(expr_104)
                let _2 := vloc__nAuditorsAlarm_97
                let expr_108 := _2
                let expr_109 := 0x01
                let expr_110 := iszero(lt(cleanup_t_uint256(expr_108), convert_t_rational_1_by_1_to_t_uint256(expr_109)))
                let expr_111 := expr_110
                require_helper(expr_111)
                let expr_116 := 0x00
                let vloc_i_115 := convert_t_rational_0_by_1_to_t_uint256(expr_116)
                for {
                    } 1 {
                }
                {
                    let _3 := vloc_i_115
                    let expr_118 := _3
                    let _4_mpos := vloc__auditors_93_mpos
                    let expr_119_mpos := _4_mpos
                    let expr_120 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_119_mpos)
                    let expr_121 := lt(cleanup_t_uint256(expr_118), cleanup_t_uint256(expr_120))
                    let expr_122 := expr_121
                    if iszero(expr_122) { break }
                    let expr_128 := 0x01
                    let _5 := 0x01
                    let expr_123 := _5
                    let _6_mpos := vloc__auditors_93_mpos
                    let expr_124_mpos := _6_mpos
                    let _7 := vloc_i_115
                    let expr_125 := _7
                    let _8 := read_from_memoryt_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_124_mpos, expr_125))
                    let expr_126 := _8
                    let _9 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_123,expr_126)
                    update_storage_value_offset_0t_bool_to_t_bool(_9, expr_128)
                    let expr_129 := expr_128
                    let _10_slot := 0x02
                    let expr_131_slot := _10_slot
                    let expr_133_slot := expr_131_slot
                    let _11_mpos := vloc__auditors_93_mpos
                    let expr_134_mpos := _11_mpos
                    let _12 := vloc_i_115
                    let expr_135 := _12
                    let _13 := read_from_memoryt_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_134_mpos, expr_135))
                    let expr_136 := _13
                    array_push_t_array$_t_address_$dyn_storage(expr_133_slot, expr_136)
                    let _15 := vloc_i_115
                    let _14 := increment_t_uint256(_15)
                    vloc_i_115 := _14
                    let expr_140 := _15
                }
                let _16_mpos := vloc__auditors_93_mpos
                let expr_146_mpos := _16_mpos
                let expr_147 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_146_mpos)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x03, expr_147)
                let expr_148 := expr_147
                let expr_152 := caller()
                let _17 := convert_t_address_payable_to_t_address(expr_152)
                update_storage_value_offset_0t_address_to_t_address(0x00, _17)
                let expr_153 := _17
                let _18 := vloc__nAuditorsRequired_95
                let expr_156 := _18
                update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_156)
                let expr_157 := expr_156
                let _19 := vloc__nAuditorsAlarm_97
                let expr_160 := _19
                update_storage_value_offset_0t_uint256_to_t_uint256(0x05, expr_160)
                let expr_161 := expr_160
                leave

            }

            function fun_observe__0_392(vloc_i_381) -> vloc__384 {
                let zero_value_for_type_t_uint256_149 := zero_value_for_split_t_uint256()
                vloc__384 := zero_value_for_type_t_uint256_149

                let _150 := 0x0c
                let expr_386 := _150
                let _151 := vloc_i_381
                let expr_387 := _151
                let _152 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_386,expr_387)
                let _153_slot := _152
                let expr_388_slot := _153_slot
                let _154 := add(expr_388_slot, 0)
                let _155 := read_from_storage_offset_0_t_uint256(_154)
                let expr_389 := _155
                vloc__384 := expr_389
                leave

            }

            function fun_observe__1_405(vloc_i_394) -> vloc__397 {
                let zero_value_for_type_t_uint256_156 := zero_value_for_split_t_uint256()
                vloc__397 := zero_value_for_type_t_uint256_156

                let _157 := 0x0c
                let expr_399 := _157
                let _158 := vloc_i_394
                let expr_400 := _158
                let _159 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_399,expr_400)
                let _160_slot := _159
                let expr_401_slot := _160_slot
                let _161 := add(expr_401_slot, 1)
                let _162 := read_from_storage_offset_0_t_uint256(_161)
                let expr_402 := _162
                vloc__397 := expr_402
                leave

            }

            function fun_observe__3_419(vloc_i_407) -> vloc__410 {
                let zero_value_for_type_t_uint256_163 := zero_value_for_split_t_uint256()
                vloc__410 := zero_value_for_type_t_uint256_163

                let _164 := 0x0c
                let expr_412 := _164
                let _165 := vloc_i_407
                let expr_413 := _165
                let _166 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_412,expr_413)
                let _167_slot := _166
                let expr_414_slot := _167_slot
                let _168 := add(expr_414_slot, 2)
                let _169_slot := _168
                let expr_415_slot := _169_slot
                let _170 := add(expr_415_slot, 0)
                let _171 := read_from_storage_offset_0_t_uint256(_170)
                let expr_416 := _171
                vloc__410 := expr_416
                leave

            }

            function fun_observe__4_431(vloc_i_421) -> vloc__424 {
                let zero_value_for_type_t_bool_172 := zero_value_for_split_t_bool()
                vloc__424 := zero_value_for_type_t_bool_172

                let _173 := 0x08
                let expr_426 := _173
                let _174 := vloc_i_421
                let expr_427 := _174
                let _175 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_426,expr_427)
                let _176 := read_from_storage_offset_0_t_bool(_175)
                let expr_428 := _176
                vloc__424 := expr_428
                leave

            }

            function fun_observe__5_379(vloc_msgWaitingN_349) -> vloc__352, vloc__354, vloc__356, vloc__358 {
                let zero_value_for_type_t_uint256_121 := zero_value_for_split_t_uint256()
                vloc__352 := zero_value_for_type_t_uint256_121
                let zero_value_for_type_t_uint256_122 := zero_value_for_split_t_uint256()
                vloc__354 := zero_value_for_type_t_uint256_122
                let zero_value_for_type_t_uint256_123 := zero_value_for_split_t_uint256()
                vloc__356 := zero_value_for_type_t_uint256_123
                let zero_value_for_type_t_bool_124 := zero_value_for_split_t_bool()
                vloc__358 := zero_value_for_type_t_bool_124

                let _125 := 0x0c
                let expr_360 := _125
                let _126 := vloc_msgWaitingN_349
                let expr_361 := _126
                let _127 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_360,expr_361)
                let _128_slot := _127
                let expr_362_slot := _128_slot
                let _129 := add(expr_362_slot, 0)
                let _130 := read_from_storage_offset_0_t_uint256(_129)
                let expr_363 := _130
                let expr_376_component_1 := expr_363
                let _131 := 0x0c
                let expr_364 := _131
                let _132 := vloc_msgWaitingN_349
                let expr_365 := _132
                let _133 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_364,expr_365)
                let _134_slot := _133
                let expr_366_slot := _134_slot
                let _135 := add(expr_366_slot, 1)
                let _136 := read_from_storage_offset_0_t_uint256(_135)
                let expr_367 := _136
                let expr_376_component_2 := expr_367
                let _137 := 0x0c
                let expr_368 := _137
                let _138 := vloc_msgWaitingN_349
                let expr_369 := _138
                let _139 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(expr_368,expr_369)
                let _140_slot := _139
                let expr_370_slot := _140_slot
                let _141 := add(expr_370_slot, 2)
                let _142_slot := _141
                let expr_371_slot := _142_slot
                let _143 := add(expr_371_slot, 0)
                let _144 := read_from_storage_offset_0_t_uint256(_143)
                let expr_372 := _144
                let expr_376_component_3 := expr_372
                let _145 := 0x08
                let expr_373 := _145
                let _146 := vloc_msgWaitingN_349
                let expr_374 := _146
                let _147 := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(expr_373,expr_374)
                let _148 := read_from_storage_offset_0_t_bool(_147)
                let expr_375 := _148
                let expr_376_component_4 := expr_375
                vloc__352 := expr_376_component_1
                vloc__354 := expr_376_component_2
                vloc__356 := expr_376_component_3
                vloc__358 := expr_376_component_4
                leave

            }

            function getter_fun_alarmRaised_46(key_0) -> ret {

                let slot := 8
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_bool(slot, offset)

            }

            function getter_fun_alarms_42(key_0) -> ret {

                let slot := 7
                let offset := 0

                if iszero(lt(key_0, array_length_t_array$_t_uint256_$dyn_storage(slot))) { revert(0, 0) }

                slot, offset := storage_array_index_access_t_array$_t_uint256_$dyn_storage(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_auditorsList_28(key_0) -> ret {

                let slot := 2
                let offset := 0

                if iszero(lt(key_0, array_length_t_array$_t_address_$dyn_storage(slot))) { revert(0, 0) }

                slot, offset := storage_array_index_access_t_array$_t_address_$dyn_storage(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_auditors_25(key_0) -> ret {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_bool(slot, offset)

            }

            function getter_fun_msgMap_53(key_0) -> ret_0 {

                let slot := 10
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Message_$4_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))

            }

            function getter_fun_msgsWaitingDone_64(key_0) -> ret {

                let slot := 13
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_bool(slot, offset)

            }

            function getter_fun_nAlarms_39() -> ret {

                let slot := 6
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nAuditorsAlarm_36() -> ret {

                let slot := 5
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nAuditorsRequired_33() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nAuditors_30() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nMsg_49() -> ret {

                let slot := 9
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nMsgsWaiting_56() -> ret {

                let slot := 11
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_owner_21() -> ret {

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

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_bool_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_MessageAwaitingAudit_$19_storage_$_of_t_uint256(slot , key) -> dataSlot {
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

