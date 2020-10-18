/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "B5_76" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_B5_76()

        codecopy(0, dataoffset("B5_76_deployed"), datasize("B5_76_deployed"))

        return(0, datasize("B5_76_deployed"))

        function constructor_B5_76() {

        }

    }
    object "B5_76_deployed" {
        code {
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x07544eee
                {
                    // observe_f1()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0, ret_1, ret_2 :=  fun_observe_f1_75()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa76e99
                {
                    // get_f1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_get_f1_47(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6a2d3c84
                {
                    // set_f1(uint256,uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_uint256t_uint256(4, calldatasize())
                    fun_set_f1_33(param_0, param_1, param_2)
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

            function abi_decode_tuple_t_uint256t_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
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

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

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

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_get_f1_47(vloc_ind_35) -> vloc_val_38 {
                let zero_value_for_type_t_uint256_22 := zero_value_for_split_t_uint256()
                vloc_val_38 := zero_value_for_type_t_uint256_22

                let _23 := 0x00
                let expr_41 := _23
                let _24 := vloc_ind_35
                let expr_42 := _24
                let _25 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_41,expr_42)
                let _26 := read_from_storage_offset_0_t_uint256(_25)
                let expr_43 := _26
                vloc_val_38 := expr_43
                let expr_44 := expr_43

            }

            function fun_observe_f1_75() -> vloc_obsX_50, vloc_obsY_52, vloc_obsZ_54 {
                let zero_value_for_type_t_uint256_1 := zero_value_for_split_t_uint256()
                vloc_obsX_50 := zero_value_for_type_t_uint256_1
                let zero_value_for_type_t_uint256_2 := zero_value_for_split_t_uint256()
                vloc_obsY_52 := zero_value_for_type_t_uint256_2
                let zero_value_for_type_t_uint256_3 := zero_value_for_split_t_uint256()
                vloc_obsZ_54 := zero_value_for_type_t_uint256_3

                let _4 := 0x00
                let expr_57 := _4
                let expr_58 := 0x00
                let _5 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_57,expr_58)
                let _6 := read_from_storage_offset_0_t_uint256(_5)
                let expr_59 := _6
                vloc_obsX_50 := expr_59
                let expr_60 := expr_59
                let _7 := 0x00
                let expr_63 := _7
                let expr_64 := 0x01
                let _8 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_63,expr_64)
                let _9 := read_from_storage_offset_0_t_uint256(_8)
                let expr_65 := _9
                vloc_obsY_52 := expr_65
                let expr_66 := expr_65
                let _10 := 0x00
                let expr_69 := _10
                let expr_70 := 0x02
                let _11 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_69,expr_70)
                let _12 := read_from_storage_offset_0_t_uint256(_11)
                let expr_71 := _12
                vloc_obsZ_54 := expr_71
                let expr_72 := expr_71

            }

            function fun_set_f1_33(vloc_x_7, vloc_y_9, vloc_z_11) {

                let _13 := vloc_x_7
                let expr_17 := _13
                let _14 := 0x00
                let expr_14 := _14
                let expr_15 := 0x00
                let _15 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_14,expr_15)
                update_storage_value_offset_0t_uint256_to_t_uint256(_15, expr_17)
                let expr_18 := expr_17
                let _16 := vloc_y_9
                let expr_23 := _16
                let _17 := 0x00
                let expr_20 := _17
                let expr_21 := 0x01
                let _18 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_20,expr_21)
                update_storage_value_offset_0t_uint256_to_t_uint256(_18, expr_23)
                let expr_24 := expr_23
                let _19 := vloc_z_11
                let expr_29 := _19
                let _20 := 0x00
                let expr_26 := _20
                let expr_27 := 0x02
                let _21 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_26,expr_27)
                update_storage_value_offset_0t_uint256_to_t_uint256(_21, expr_29)
                let expr_30 := expr_29

            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_0_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_1_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_2_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
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

