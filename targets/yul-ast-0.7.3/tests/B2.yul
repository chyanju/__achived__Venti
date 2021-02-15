/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "B2_74" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_B2_74()

        codecopy(0, dataoffset("B2_74_deployed"), datasize("B2_74_deployed"))

        return(0, datasize("B2_74_deployed"))

        function constructor_B2_74() {

        }

    }
    object "B2_74_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x04bc52f8
                {
                    // foo(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    fun_foo_47(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x14fc78fc
                {
                    // observe()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0, ret_1 :=  fun_observe_73()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xfebb0f7e
                {
                    // bar()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_bar_57()
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

            function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
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

            function fun_bar_57() -> vloc__50 {
                let zero_value_for_type_t_uint256_1 := zero_value_for_split_t_uint256()
                vloc__50 := zero_value_for_type_t_uint256_1

                let _2 := 0x01
                let expr_52 := _2
                let expr_53 := 0x01
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_52,expr_53)
                let _4 := read_from_storage_offset_0_t_uint256(_3)
                let expr_54 := _4
                vloc__50 := expr_54
                leave

            }

            function fun_foo_47(vloc_x_11, vloc_y_13) {

                let _5 := vloc_x_11
                let expr_18 := _5
                let vloc_s_f1_UNWRAP_17 := expr_18
                let _6 := vloc_y_13
                let expr_22 := _6
                let vloc_s_f2_UNWRAP_21 := expr_22
                let expr_24 := 0x00
                if expr_24 {
                    let _7 := 0x00
                    let expr_28 := _7
                    let expr_29 := 0x01
                    let _8 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_28,expr_29)
                    let _9 := read_from_storage_offset_0_t_uint256(_8)
                    let expr_30 := _9
                    let _10 := 0x00
                    let expr_25 := _10
                    let expr_26 := 0x01
                    let _11 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_25,expr_26)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_11, expr_30)
                    let expr_31 := expr_30
                }
                let expr_35 := 0x01
                if expr_35 {
                    let _12 := 0x01
                    let expr_39 := _12
                    let expr_40 := 0x01
                    let _13 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_39,expr_40)
                    let _14 := read_from_storage_offset_0_t_uint256(_13)
                    let expr_41 := _14
                    let _15 := 0x01
                    let expr_36 := _15
                    let expr_37 := 0x01
                    let _16 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_36,expr_37)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_16, expr_41)
                    let expr_42 := expr_41
                }

            }

            function fun_observe_73() -> vloc__60, vloc__62 {
                let zero_value_for_type_t_uint256_17 := zero_value_for_split_t_uint256()
                vloc__60 := zero_value_for_type_t_uint256_17
                let zero_value_for_type_t_uint256_18 := zero_value_for_split_t_uint256()
                vloc__62 := zero_value_for_type_t_uint256_18

                let _19 := 0x01
                let expr_64 := _19
                let expr_65 := 0x01
                let _20 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_64,expr_65)
                let _21 := read_from_storage_offset_0_t_uint256(_20)
                let expr_66 := _21
                let expr_70_component_1 := expr_66
                let _22 := 0x01
                let expr_67 := _22
                let expr_68 := 0x01
                let _23 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_67,expr_68)
                let _24 := read_from_storage_offset_0_t_uint256(_23)
                let expr_69 := _24
                let expr_70_component_2 := expr_69
                vloc__60 := expr_70_component_1
                vloc__62 := expr_70_component_2
                leave

            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
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

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

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

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

        }

    }

}

