/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "Bk_38" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_Bk_38()

        codecopy(0, dataoffset("Bk_38_deployed"), datasize("Bk_38_deployed"))

        return(0, datasize("Bk_38_deployed"))

        function constructor_Bk_38() {

        }

    }
    object "Bk_38_deployed" {
        code {
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x14fc78fc
                {
                    // observe()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe_37()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2fbebd38
                {
                    // foo(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_foo_26(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
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

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
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

            function allocate_memory_struct_t_struct$_S_$4_storage_ptr() -> memPtr {
                memPtr := allocateMemory(32)
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

            function fun_foo_26(vloc_x_10) {

                let _1 := vloc_x_10
                let expr_16 := _1
                let expr_17_mpos := allocate_memory_struct_t_struct$_S_$4_storage_ptr()
                write_to_memory_t_uint256(add(expr_17_mpos, 0), expr_16)
                let vloc_s_14_mpos := expr_17_mpos
                let _2_mpos := vloc_s_14_mpos
                let expr_22_mpos := _2_mpos
                let _3 := 0x00
                let expr_19 := _3
                let expr_20 := 0x01
                let _4 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$4_storage_$_of_t_rational_1_by_1(expr_19,expr_20)
                update_storage_value_offset_0t_struct$_S_$4_memory_ptr_to_t_struct$_S_$4_storage(_4, expr_22_mpos)

            }

            function fun_observe_37() -> vloc__29 {
                let zero_value_for_type_t_uint256_5 := zero_value_for_split_t_uint256()
                vloc__29 := zero_value_for_type_t_uint256_5

                let _6 := 0x00
                let expr_31 := _6
                let expr_32 := 0x01
                let _7 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$4_storage_$_of_t_rational_1_by_1(expr_31,expr_32)
                let _8_slot := _7
                let expr_33_slot := _8_slot
                let _9 := add(expr_33_slot, 0)
                let _10 := read_from_storage_offset_0_t_uint256(_9)
                let expr_34 := _10
                vloc__29 := expr_34
                leave

            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$4_storage_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
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

            function update_storage_value_offset_0t_struct$_S_$4_memory_ptr_to_t_struct$_S_$4_storage(slot, value) {

                {

                    let memberValue_0 := read_from_memoryt_uint256(add(value, 0))
                    update_storage_value_t_uint256_to_t_uint256(add(slot, 0), 0, memberValue_0)

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

