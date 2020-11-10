/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "B2_54" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_B2_54()

        codecopy(0, dataoffset("B2_54_deployed"), datasize("B2_54_deployed"))

        return(0, datasize("B2_54_deployed"))

        function constructor_B2_54() {

        }

    }
    object "B2_54_deployed" {
        code {
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x04bc52f8
                {
                    // foo(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    fun_foo_31(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x07544eee
                {
                    // observe_f1()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe_f1_42()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5ee92e35
                {
                    // observe_f2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe_f2_53()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert(0, 0)

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_decode_tuple_t_uint256t_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
            }

            function allocate_memory_struct_t_struct$_S_$6_storage_ptr() -> memPtr {
                memPtr := allocateMemory(64)
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_foo_31(vloc_x_12, vloc_y_14) {

                let _1 := vloc_x_12
                let expr_20 := _1
                let _2 := vloc_y_14
                let expr_21 := _2
                let expr_22_mpos := allocate_memory_struct_t_struct$_S_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_22_mpos, 0), expr_20)
                write_to_memory_t_uint256(add(expr_22_mpos, 32), expr_21)
                let vloc_s_18_mpos := expr_22_mpos
                let _3_mpos := vloc_s_18_mpos
                let expr_27_mpos := _3_mpos
                let _4 := 0x00
                let expr_24 := _4
                let expr_25 := 0x01
                let _5 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(expr_24,expr_25)
                update_storage_value_offset_0t_struct$_S_$6_memory_ptr_to_t_struct$_S_$6_storage(_5, expr_27_mpos)

            }

            function fun_observe_f1_42() -> vloc__34 {
                let zero_value_for_type_t_uint256_6 := zero_value_for_split_t_uint256()
                vloc__34 := zero_value_for_type_t_uint256_6

                let _7 := 0x00
                let expr_36 := _7
                let expr_37 := 0x01
                let _8 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(expr_36,expr_37)
                let _9_slot := _8
                let expr_38_slot := _9_slot
                let _10 := add(expr_38_slot, 1)
                let _11 := read_from_storage_offset_0_t_uint256(_10)
                let expr_39 := _11
                vloc__34 := expr_39
                leave

            }

            function fun_observe_f2_53() -> vloc__45 {
                let zero_value_for_type_t_uint256_12 := zero_value_for_split_t_uint256()
                vloc__45 := zero_value_for_type_t_uint256_12

                let _13 := 0x00
                let expr_47 := _13
                let expr_48 := 0x01
                let _14 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(expr_47,expr_48)
                let _15_slot := _14
                let expr_49_slot := _15_slot
                let _16 := add(expr_49_slot, 0)
                let _17 := read_from_storage_offset_0_t_uint256(_16)
                let expr_50 := _17
                vloc__45 := expr_50
                leave

            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_1_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function panic_error() {
                invalid()
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_memoryt_uint256(ptr) -> value {

                value := cleanup_t_uint256(mload(ptr))

            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
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

            function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_struct$_S_$6_memory_ptr_to_t_struct$_S_$6_storage(slot, value) {

                {

                    let memberValue_0 := read_from_memoryt_uint256(add(value, 0))
                    update_storage_value_t_uint256_to_t_uint256(add(slot, 0), 0, memberValue_0)

                }

                {

                    let memberValue_0 := read_from_memoryt_uint256(add(value, 32))
                    update_storage_value_t_uint256_to_t_uint256(add(slot, 1), 0, memberValue_0)

                }

            }

            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value) {
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(value)))
            }

            function validator_assert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { panic_error() }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

        }

    }

}

