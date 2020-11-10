/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAO_159" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAO_159()

        codecopy(0, dataoffset("CreditDAO_159_deployed"), datasize("CreditDAO_159_deployed"))

        return(0, datasize("CreditDAO_159_deployed"))

        function checked_add_t_uint256(x, y) -> sum {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)

            // overflow, if x > (maxValue - y)
            if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error() }

            sum := add(x, y)
        }

        function cleanup_from_storage_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function constructor_CreditDAO_159() {

            let expr_48 := 0x00
            update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(0x03, expr_48)
            let expr_51 := 0x0129cb
            update_storage_value_offset_0t_rational_76235_by_1_to_t_uint256(0x04, expr_51)

            let expr_60 := number()
            let _1 := 0x01
            let expr_55 := _1
            let _2 := read_from_storage_offset_0_t_uint256(0x00)
            let expr_56 := _2
            let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_55,expr_56)
            let _4_slot := _3
            let expr_57_slot := _4_slot
            let _5 := add(expr_57_slot, 0)
            update_storage_value_offset_0t_uint256_to_t_uint256(_5, expr_60)
            let expr_61 := expr_60
            let expr_68 := number()
            let _6 := read_from_storage_offset_0_t_uint256(0x04)
            let expr_69 := _6
            let expr_70 := checked_add_t_uint256(expr_68, expr_69)

            let _7 := 0x01
            let expr_63 := _7
            let _8 := read_from_storage_offset_0_t_uint256(0x00)
            let expr_64 := _8
            let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_63,expr_64)
            let _10_slot := _9
            let expr_65_slot := _10_slot
            let _11 := add(expr_65_slot, 1)
            update_storage_value_offset_0t_uint256_to_t_uint256(_11, expr_70)
            let expr_71 := expr_70
            let _13 := read_from_storage_offset_0_t_uint256(0x00)
            let _12 := increment_t_uint256(_13)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _12)
            let expr_74 := _13

        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
            value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
        }

        function increment_t_uint256(value) -> ret {
            value := cleanup_t_uint256(value)
            if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { panic_error() }
            ret := add(value, 1)
        }

        function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(slot , key) -> dataSlot {
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

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

        function update_storage_value_offset_0t_rational_76235_by_1_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

    }
    object "CreditDAO_159_deployed" {
        code {
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x31e92f32
                {
                    // blocksPerMonth()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_blocksPerMonth_52()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3af5dbb6
                {
                    // mandateInBlocks()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_mandateInBlocks_49()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4c12f8bb
                {
                    // creditCEO()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_creditCEO_46()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5e6fef01
                {
                    // elections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7 :=  getter_fun_elections_44(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_bool_t_uint256_t_address_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_bool_t_uint256_t_address_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6dd7d8ea
                {
                    // vote(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_vote_142(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__8_158(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x99eff1f7
                {
                    // nextElectionIndex()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_nextElectionIndex_40()
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

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
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

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_bool_t_uint256_t_address_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_bool_t_uint256_t_address_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7) -> tail {
                tail := add(headStart, 256)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_bool_to_t_bool_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_address_to_t_address_fromStack(value5,  add(headStart, 160))

                abi_encode_t_uint256_to_t_uint256_fromStack(value6,  add(headStart, 192))

                abi_encode_t_uint256_to_t_uint256_fromStack(value7,  add(headStart, 224))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error() }

                sum := add(x, y)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                if lt(x, y) { panic_error() }

                diff := sub(x, y)
            }

            function cleanup_from_storage_split_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_split_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
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

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
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

            function extract_from_storage_value_dynamicsplit_t_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_observe__8_158(vloc_i_144) -> vloc__147 {
                let zero_value_for_type_t_bool_41 := zero_value_for_split_t_bool()
                vloc__147 := zero_value_for_type_t_bool_41

                let _42 := 0x01
                let expr_149 := _42
                let _43 := vloc_i_144
                let expr_150 := _43
                let _44 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_149,expr_150)
                let _45_slot := _44
                let expr_151_slot := _45_slot
                let _46 := add(expr_151_slot, 9)
                let _47 := _46
                let expr_152 := _47
                let expr_154 := caller()
                let _48 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_152,expr_154)
                let _49 := read_from_storage_offset_0_t_bool(_48)
                let expr_155 := _49
                vloc__147 := expr_155
                leave

            }

            function fun_vote_142(vloc__participant_79) {

                let _1 := 0x01
                let expr_83 := _1
                let _2 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_84 := _2
                let expr_85 := 0x01
                let expr_86 := checked_sub_t_uint256(expr_84, convert_t_rational_1_by_1_to_t_uint256(expr_85))

                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_83,expr_86)
                let _4_slot := _3
                let expr_87_slot := _4_slot
                let _5 := add(expr_87_slot, 1)
                let _6 := read_from_storage_offset_0_t_uint256(_5)
                let expr_88 := _6
                let expr_90 := number()
                let expr_91 := gt(cleanup_t_uint256(expr_88), cleanup_t_uint256(expr_90))
                require_helper(expr_91)
                let _7 := 0x01
                let expr_95 := _7
                let _8 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_96 := _8
                let expr_97 := 0x01
                let expr_98 := checked_sub_t_uint256(expr_96, convert_t_rational_1_by_1_to_t_uint256(expr_97))

                let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_95,expr_98)
                let _10_slot := _9
                let expr_99_slot := _10_slot
                let _11 := add(expr_99_slot, 9)
                let _12 := _11
                let expr_100 := _12
                let expr_102 := caller()
                let _13 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_100,expr_102)
                let _14 := read_from_storage_offset_0_t_bool(_13)
                let expr_103 := _14
                let expr_104 := cleanup_t_bool(iszero(expr_103))
                require_helper(expr_104)
                let _15 := 0x01
                let expr_109 := _15
                let _16 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_110 := _16
                let expr_111 := 0x01
                let expr_112 := checked_sub_t_uint256(expr_110, convert_t_rational_1_by_1_to_t_uint256(expr_111))

                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_109,expr_112)
                let _18_slot := _17
                let expr_113_slot := _18_slot
                let _19 := add(expr_113_slot, 6)
                let _20 := _19
                let expr_114 := _20
                let _21 := vloc__participant_79
                let expr_115 := _21
                let _22 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_114,expr_115)
                let _23 := read_from_storage_offset_0_t_uint256(_22)
                let expr_116 := _23
                let vloc_candidateId_108 := expr_116
                let expr_126 := 0x01
                let _24 := convert_t_rational_1_by_1_to_t_uint256(expr_126)
                let _25 := 0x01
                let expr_118 := _25
                let _26 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_119 := _26
                let expr_120 := 0x01
                let expr_121 := checked_sub_t_uint256(expr_119, convert_t_rational_1_by_1_to_t_uint256(expr_120))

                let _27 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_118,expr_121)
                let _28_slot := _27
                let expr_122_slot := _28_slot
                let _29 := add(expr_122_slot, 7)
                let _30 := _29
                let expr_123 := _30
                let _31 := vloc_candidateId_108
                let expr_124 := _31
                let _32 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_123,expr_124)
                let _33 := read_from_storage_offset_0_t_uint256(_32)
                _24 := checked_add_t_uint256(_33, _24)
                update_storage_value_offset_0t_uint256_to_t_uint256(_32, _24)
                let expr_127 := _24
                let expr_138 := 0x01
                let _34 := 0x01
                let expr_129 := _34
                let _35 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_130 := _35
                let expr_131 := 0x01
                let expr_132 := checked_sub_t_uint256(expr_130, convert_t_rational_1_by_1_to_t_uint256(expr_131))

                let _36 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_129,expr_132)
                let _37_slot := _36
                let expr_133_slot := _37_slot
                let _38 := add(expr_133_slot, 9)
                let _39 := _38
                let expr_134 := _39
                let expr_136 := caller()
                let _40 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_134,expr_136)
                update_storage_value_offset_0t_bool_to_t_bool(_40, expr_138)
                let expr_139 := expr_138

            }

            function getter_fun_blocksPerMonth_52() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_creditCEO_46() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_elections_44(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7 {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))

                ret_3 := read_from_storage_split_offset_0_t_bool(add(slot, 3))

                ret_4 := read_from_storage_split_offset_0_t_uint256(add(slot, 4))

                ret_5 := read_from_storage_split_offset_0_t_address(add(slot, 10))

                ret_6 := read_from_storage_split_offset_0_t_uint256(add(slot, 11))

                ret_7 := read_from_storage_split_offset_0_t_uint256(add(slot, 12))

            }

            function getter_fun_mandateInBlocks_49() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nextElectionIndex_40() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
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

            function prepare_store_t_bool(value) -> ret {
                ret := value
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_storage_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0t_bool(sload(slot))
            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))
            }

            function read_from_storage_split_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0t_bool(sload(slot))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_value_type_dynamicsplit__t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_address(sload(slot), offset)
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

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function update_byte_slice_1_shift_0(value, toInsert) -> result {
                let mask := 255
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

            function update_storage_value_offset_0t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(value)))
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

        }

    }

}

