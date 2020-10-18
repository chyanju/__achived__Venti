/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "B4_122" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_B4_122()

        codecopy(0, dataoffset("B4_122_deployed"), datasize("B4_122_deployed"))

        return(0, datasize("B4_122_deployed"))

        function constructor_B4_122() {

        }

    }
    object "B4_122_deployed" {
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
                    let ret_0, ret_1, ret_2 :=  fun_observe_f1_93()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4e6d58cc
                {
                    // set_f2(uint256,uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_uint256t_uint256(4, calldatasize())
                    fun_set_f2_65(param_0, param_1, param_2)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5ee92e35
                {
                    // observe_f2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0, ret_1, ret_2 :=  fun_observe_f2_121()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6a2d3c84
                {
                    // set_f1(uint256,uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_uint256t_uint256(4, calldatasize())
                    fun_set_f1_37(param_0, param_1, param_2)
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

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_observe_f1_93() -> vloc_obsX_68, vloc_obsY_70, vloc_obsZ_72 {
                let zero_value_for_type_t_uint256_10 := zero_value_for_split_t_uint256()
                vloc_obsX_68 := zero_value_for_type_t_uint256_10
                let zero_value_for_type_t_uint256_11 := zero_value_for_split_t_uint256()
                vloc_obsY_70 := zero_value_for_type_t_uint256_11
                let zero_value_for_type_t_uint256_12 := zero_value_for_split_t_uint256()
                vloc_obsZ_72 := zero_value_for_type_t_uint256_12

                let _13 := 0x00
                let expr_75 := _13
                let expr_76 := 0x00
                let _14 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_75,expr_76)
                let _15 := read_from_storage_offset_0_t_uint256(_14)
                let expr_77 := _15
                vloc_obsX_68 := expr_77
                let expr_78 := expr_77
                let _16 := 0x00
                let expr_81 := _16
                let expr_82 := 0x01
                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_81,expr_82)
                let _18 := read_from_storage_offset_0_t_uint256(_17)
                let expr_83 := _18
                vloc_obsY_70 := expr_83
                let expr_84 := expr_83
                let _19 := 0x00
                let expr_87 := _19
                let expr_88 := 0x02
                let _20 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_87,expr_88)
                let _21 := read_from_storage_offset_0_t_uint256(_20)
                let expr_89 := _21
                vloc_obsZ_72 := expr_89
                let expr_90 := expr_89

            }

            function fun_observe_f2_121() -> vloc_obsX_96, vloc_obsY_98, vloc_obsZ_100 {
                let zero_value_for_type_t_uint256_22 := zero_value_for_split_t_uint256()
                vloc_obsX_96 := zero_value_for_type_t_uint256_22
                let zero_value_for_type_t_uint256_23 := zero_value_for_split_t_uint256()
                vloc_obsY_98 := zero_value_for_type_t_uint256_23
                let zero_value_for_type_t_uint256_24 := zero_value_for_split_t_uint256()
                vloc_obsZ_100 := zero_value_for_type_t_uint256_24

                let _25 := 0x01
                let expr_103 := _25
                let expr_104 := 0x00
                let _26 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_103,expr_104)
                let _27 := read_from_storage_offset_0_t_uint256(_26)
                let expr_105 := _27
                vloc_obsX_96 := expr_105
                let expr_106 := expr_105
                let _28 := 0x01
                let expr_109 := _28
                let expr_110 := 0x01
                let _29 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_109,expr_110)
                let _30 := read_from_storage_offset_0_t_uint256(_29)
                let expr_111 := _30
                vloc_obsY_98 := expr_111
                let expr_112 := expr_111
                let _31 := 0x01
                let expr_115 := _31
                let expr_116 := 0x02
                let _32 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_115,expr_116)
                let _33 := read_from_storage_offset_0_t_uint256(_32)
                let expr_117 := _33
                vloc_obsZ_100 := expr_117
                let expr_118 := expr_117

            }

            function fun_set_f1_37(vloc_x_11, vloc_y_13, vloc_z_15) {

                let _34 := vloc_x_11
                let expr_21 := _34
                let _35 := 0x00
                let expr_18 := _35
                let expr_19 := 0x00
                let _36 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_18,expr_19)
                update_storage_value_offset_0t_uint256_to_t_uint256(_36, expr_21)
                let expr_22 := expr_21
                let _37 := vloc_y_13
                let expr_27 := _37
                let _38 := 0x00
                let expr_24 := _38
                let expr_25 := 0x01
                let _39 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_24,expr_25)
                update_storage_value_offset_0t_uint256_to_t_uint256(_39, expr_27)
                let expr_28 := expr_27
                let _40 := vloc_z_15
                let expr_33 := _40
                let _41 := 0x00
                let expr_30 := _41
                let expr_31 := 0x02
                let _42 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_30,expr_31)
                update_storage_value_offset_0t_uint256_to_t_uint256(_42, expr_33)
                let expr_34 := expr_33

            }

            function fun_set_f2_65(vloc_x_39, vloc_y_41, vloc_z_43) {

                let _1 := vloc_x_39
                let expr_49 := _1
                let _2 := 0x01
                let expr_46 := _2
                let expr_47 := 0x00
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_46,expr_47)
                update_storage_value_offset_0t_uint256_to_t_uint256(_3, expr_49)
                let expr_50 := expr_49
                let _4 := vloc_y_41
                let expr_55 := _4
                let _5 := 0x01
                let expr_52 := _5
                let expr_53 := 0x01
                let _6 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_52,expr_53)
                update_storage_value_offset_0t_uint256_to_t_uint256(_6, expr_55)
                let expr_56 := expr_55
                let _7 := vloc_z_43
                let expr_61 := _7
                let _8 := 0x01
                let expr_58 := _8
                let expr_59 := 0x02
                let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_58,expr_59)
                update_storage_value_offset_0t_uint256_to_t_uint256(_9, expr_61)
                let expr_62 := expr_61

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

