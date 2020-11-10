/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAOTransformed181_174" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAOTransformed181_174()

        codecopy(0, dataoffset("CreditDAOTransformed181_174_deployed"), datasize("CreditDAOTransformed181_174_deployed"))

        return(0, datasize("CreditDAOTransformed181_174_deployed"))

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

        function constructor_CreditDAOTransformed181_174() {

            let expr_58 := 0x00
            let _1 := convert_t_rational_0_by_1_to_t_uint256(expr_58)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, _1)
            let expr_59 := _1
            let expr_62 := 0x0129cb
            let _2 := convert_t_rational_76235_by_1_to_t_uint256(expr_62)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _2)
            let expr_63 := _2
            let expr_70 := number()
            let _3 := 0x01
            let expr_65 := _3
            let _4 := read_from_storage_offset_0_t_uint256(0x00)
            let expr_66 := _4
            let _5 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_65,expr_66)
            let _6_slot := _5
            let expr_67_slot := _6_slot
            let _7 := add(expr_67_slot, 0)
            update_storage_value_offset_0t_uint256_to_t_uint256(_7, expr_70)
            let expr_71 := expr_70
            let expr_78 := number()
            let _8 := read_from_storage_offset_0_t_uint256(0x05)
            let expr_79 := _8
            let expr_80 := checked_add_t_uint256(expr_78, expr_79)

            let expr_81 := expr_80
            let _9 := 0x01
            let expr_73 := _9
            let _10 := read_from_storage_offset_0_t_uint256(0x00)
            let expr_74 := _10
            let _11 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_73,expr_74)
            let _12_slot := _11
            let expr_75_slot := _12_slot
            let _13 := add(expr_75_slot, 1)
            update_storage_value_offset_0t_uint256_to_t_uint256(_13, expr_81)
            let expr_82 := expr_81
            let _15 := read_from_storage_offset_0_t_uint256(0x00)
            let _14 := increment_t_uint256(_15)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _14)
            let expr_85 := _15

        }

        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_rational_76235_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
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

        function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(slot , key) -> dataSlot {
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

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

    }
    object "CreditDAOTransformed181_174_deployed" {
        code {
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x104ff800
                {
                    // elections__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5 :=  getter_fun_elections__1_44(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x31e92f32
                {
                    // blocksPerMonth()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_blocksPerMonth_54()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x38d84c41
                {
                    // elections__2(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1 :=  getter_fun_elections__2_48(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(memPos , ret_0, ret_1)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3af5dbb6
                {
                    // mandateInBlocks()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_mandateInBlocks_52()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4c12f8bb
                {
                    // creditCEO()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_creditCEO_50()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6dd7d8ea
                {
                    // vote(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_vote_156(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__8_173(param_0)
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

            function abi_encode_tuple_t_address_t_bool__to_t_address_t_bool__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                tail := add(headStart, 192)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

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

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_1t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_8_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_20t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_160_unsigned(slot_value))
            }

            function fun_observe__8_173(vloc_i_158) -> vloc__161 {
                let zero_value_for_type_t_bool_48 := zero_value_for_split_t_bool()
                vloc__161 := zero_value_for_type_t_bool_48

                let _49 := 0x02
                let expr_163 := _49
                let _50 := vloc_i_158
                let expr_164 := _50
                let _51 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_163,expr_164)
                let _52_slot := _51
                let expr_165_slot := _52_slot
                let _53 := add(expr_165_slot, 1)
                let _54 := _53
                let expr_166 := _54
                let expr_168 := caller()
                let _55 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_166,expr_168)
                let _56_slot := _55
                let expr_169_slot := _56_slot
                let _57 := add(expr_169_slot, 1)
                let _58 := read_from_storage_offset_1_t_bool(_57)
                let expr_170 := _58
                vloc__161 := expr_170
                leave

            }

            function fun_vote_156(vloc__participant_90) {

                let _1 := 0x01
                let expr_94 := _1
                let _2 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_95 := _2
                let expr_96 := 0x01
                let expr_97 := checked_sub_t_uint256(expr_95, convert_t_rational_1_by_1_to_t_uint256(expr_96))

                let expr_98 := expr_97
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_94,expr_98)
                let _4_slot := _3
                let expr_99_slot := _4_slot
                let _5 := add(expr_99_slot, 1)
                let _6 := read_from_storage_offset_0_t_uint256(_5)
                let expr_100 := _6
                let expr_102 := number()
                let expr_103 := gt(cleanup_t_uint256(expr_100), cleanup_t_uint256(expr_102))
                let expr_104 := expr_103
                require_helper(expr_104)
                let _7 := 0x02
                let expr_108 := _7
                let _8 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_109 := _8
                let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_108,expr_109)
                let _10_slot := _9
                let expr_110_slot := _10_slot
                let _11 := add(expr_110_slot, 1)
                let _12 := _11
                let expr_111 := _12
                let expr_113 := caller()
                let _13 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_111,expr_113)
                let _14_slot := _13
                let expr_114_slot := _14_slot
                let _15 := add(expr_114_slot, 1)
                let _16 := read_from_storage_offset_1_t_bool(_15)
                let expr_115 := _16
                let expr_116 := cleanup_t_bool(iszero(expr_115))
                require_helper(expr_116)
                let vloc_candidateId_120
                let zero_value_for_type_t_uint256_17 := zero_value_for_split_t_uint256()
                vloc_candidateId_120 := zero_value_for_type_t_uint256_17
                let _18 := 0x02
                let expr_123 := _18
                let _19 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_124 := _19
                let _20 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_123,expr_124)
                let _21_slot := _20
                let expr_125_slot := _21_slot
                let _22 := add(expr_125_slot, 1)
                let _23 := _22
                let expr_126 := _23
                let _24 := vloc__participant_90
                let expr_127 := _24
                let _25 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address(expr_126,expr_127)
                let _26_slot := _25
                let expr_128_slot := _26_slot
                let _27 := add(expr_128_slot, 0)
                let _28 := read_from_storage_offset_0_t_uint256(_27)
                let expr_129 := _28
                vloc_candidateId_120 := expr_129
                let expr_130 := expr_129
                let expr_138 := 0x01
                let _29 := convert_t_rational_1_by_1_to_t_uint256(expr_138)
                let _30 := 0x02
                let expr_132 := _30
                let _31 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_133 := _31
                let _32 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_132,expr_133)
                let _33_slot := _32
                let expr_134_slot := _33_slot
                let _34 := add(expr_134_slot, 0)
                let _35 := _34
                let expr_135 := _35
                let _36 := vloc_candidateId_120
                let expr_136 := _36
                let _37 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_135,expr_136)
                let _38 := read_from_storage_offset_0_t_uint256(_37)
                _29 := checked_add_t_uint256(_38, _29)
                update_storage_value_offset_0t_uint256_to_t_uint256(_37, _29)
                let expr_139 := _29
                let expr_141 := 0x01
                if expr_141 {
                    let expr_150 := 0x01
                    let _39 := 0x02
                    let expr_142 := _39
                    let _40 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_143 := _40
                    let _41 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_142,expr_143)
                    let _42_slot := _41
                    let expr_144_slot := _42_slot
                    let _43 := add(expr_144_slot, 1)
                    let _44 := _43
                    let expr_145 := _44
                    let expr_147 := caller()
                    let _45 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_145,expr_147)
                    let _46_slot := _45
                    let expr_148_slot := _46_slot
                    let _47 := add(expr_148_slot, 1)
                    update_storage_value_offset_1t_bool_to_t_bool(_47, expr_150)
                    let expr_151 := expr_150
                }

            }

            function getter_fun_blocksPerMonth_54() -> ret {

                let slot := 5
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_creditCEO_50() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_elections__1_44(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5 {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))

                ret_3 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))

                ret_4 := read_from_storage_split_offset_0_t_uint256(add(slot, 4))

                ret_5 := read_from_storage_split_offset_0_t_uint256(add(slot, 5))

            }

            function getter_fun_elections__2_48(key_0) -> ret_0, ret_1 {

                let slot := 2
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_address(add(slot, 2))

                ret_1 := read_from_storage_split_offset_20_t_bool(add(slot, 2))

            }

            function getter_fun_mandateInBlocks_52() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_nextElectionIndex_40() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(slot , key) -> dataSlot {
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

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_offset_1_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_1t_bool(sload(slot))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_split_offset_20_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_20t_bool(sload(slot))
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

            function shift_left_8(value) -> newValue {
                newValue :=

                shl(8, value)

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function shift_right_8_unsigned(value) -> newValue {
                newValue :=

                shr(8, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function update_byte_slice_1_shift_1(value, toInsert) -> result {
                let mask := 65280
                toInsert := shift_left_8(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
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

            function update_storage_value_offset_1t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_1(sload(slot), prepare_store_t_bool(value)))
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

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

        }

    }

}

