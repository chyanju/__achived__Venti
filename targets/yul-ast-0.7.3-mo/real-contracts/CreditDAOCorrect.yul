/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAOCorrect_600" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAOCorrect_600()

        codecopy(0, dataoffset("CreditDAOCorrect_600_deployed"), datasize("CreditDAOCorrect_600_deployed"))

        return(0, datasize("CreditDAOCorrect_600_deployed"))

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

        function constructor_CreditDAOCorrect_600() {

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
    object "CreditDAOCorrect_600_deployed" {
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

                case 0x10cc969b
                {
                    // sumbitForElection()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_sumbitForElection_214()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa6b297
                {
                    // observe__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__1_496(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2c77aaca
                {
                    // observe__0(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__0_479(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
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

                case 0x53163323
                {
                    // observe__5(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__5_560(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5467d725
                {
                    // observe__6(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__6_573(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_504()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5c647684
                {
                    // observe__7(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__7_586(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6dd7d8ea
                {
                    // vote(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_vote_291(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x74c80467
                {
                    // createNewElections()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_createNewElections_121()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7daed24c
                {
                    // observe__3(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__3_521(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__8_599(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
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

                case 0xe0cfa7d9
                {
                    // observe__4(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__4_538(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe79206e6
                {
                    // finishElections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_finishElections_466(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
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

            function convert_t_rational_0_by_1_to_t_address_payable(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
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

            function extract_from_storage_value_offset_1t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_8_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_20t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_160_unsigned(slot_value))
            }

            function fun_createNewElections_121() {

                let expr_96 := number()
                let _1 := 0x01
                let expr_91 := _1
                let _2 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_92 := _2
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_91,expr_92)
                let _4_slot := _3
                let expr_93_slot := _4_slot
                let _5 := add(expr_93_slot, 0)
                update_storage_value_offset_0t_uint256_to_t_uint256(_5, expr_96)
                let expr_97 := expr_96
                let expr_104 := number()
                let _6 := read_from_storage_offset_0_t_uint256(0x05)
                let expr_105 := _6
                let expr_106 := checked_add_t_uint256(expr_104, expr_105)

                let expr_107 := expr_106
                let _7 := 0x01
                let expr_99 := _7
                let _8 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_100 := _8
                let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_99,expr_100)
                let _10_slot := _9
                let expr_101_slot := _10_slot
                let _11 := add(expr_101_slot, 1)
                update_storage_value_offset_0t_uint256_to_t_uint256(_11, expr_107)
                let expr_108 := expr_107
                let _13 := read_from_storage_offset_0_t_uint256(0x00)
                let _12 := increment_t_uint256(_13)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _12)
                let expr_111 := _13
                let expr_116 := 0x00
                let expr_117 := convert_t_rational_0_by_1_to_t_address_payable(expr_116)
                let _14 := convert_t_address_payable_to_t_address(expr_117)
                update_storage_value_offset_0t_address_to_t_address(0x03, _14)
                let expr_118 := _14

            }

            function fun_finishElections_466(vloc__iterations_293) {

                let vloc_curentVotes_297
                let zero_value_for_type_t_uint256_120 := zero_value_for_split_t_uint256()
                vloc_curentVotes_297 := zero_value_for_type_t_uint256_120
                let vloc_nextCandidateId_300
                let zero_value_for_type_t_uint256_121 := zero_value_for_split_t_uint256()
                vloc_nextCandidateId_300 := zero_value_for_type_t_uint256_121
                let _122 := 0x01
                let expr_303 := _122
                let _123 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_304 := _123
                let expr_305 := 0x01
                let expr_306 := checked_sub_t_uint256(expr_304, convert_t_rational_1_by_1_to_t_uint256(expr_305))

                let expr_307 := expr_306
                let _124 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_303,expr_307)
                let _125_slot := _124
                let expr_308_slot := _125_slot
                let _126 := add(expr_308_slot, 5)
                let _127 := read_from_storage_offset_0_t_uint256(_126)
                let expr_309 := _127
                vloc_nextCandidateId_300 := expr_309
                let expr_310 := expr_309
                let vloc_cnt_313
                let zero_value_for_type_t_uint256_128 := zero_value_for_split_t_uint256()
                vloc_cnt_313 := zero_value_for_type_t_uint256_128
                let expr_316 := 0x00
                let _129 := convert_t_rational_0_by_1_to_t_uint256(expr_316)
                vloc_cnt_313 := _129
                let expr_317 := _129
                for {
                    } 1 {
                }
                {
                    let _130 := vloc_cnt_313
                    let expr_319 := _130
                    let _131 := vloc__iterations_293
                    let expr_320 := _131
                    let expr_321 := lt(cleanup_t_uint256(expr_319), cleanup_t_uint256(expr_320))
                    let expr_322 := expr_321
                    if iszero(expr_322) { break }
                    let _132 := 0x02
                    let expr_324 := _132
                    let _133 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_325 := _133
                    let expr_326 := 0x01
                    let expr_327 := checked_sub_t_uint256(expr_325, convert_t_rational_1_by_1_to_t_uint256(expr_326))

                    let expr_328 := expr_327
                    let _134 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_324,expr_328)
                    let _135_slot := _134
                    let expr_329_slot := _135_slot
                    let _136 := add(expr_329_slot, 0)
                    let _137 := _136
                    let expr_330 := _137
                    let _138 := vloc_nextCandidateId_300
                    let expr_331 := _138
                    let _139 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_330,expr_331)
                    let _140 := read_from_storage_offset_0_t_uint256(_139)
                    let expr_332 := _140
                    vloc_curentVotes_297 := expr_332
                    let expr_333 := expr_332
                    let _141 := vloc_curentVotes_297
                    let expr_335 := _141
                    let _142 := 0x01
                    let expr_336 := _142
                    let _143 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_337 := _143
                    let expr_338 := 0x01
                    let expr_339 := checked_sub_t_uint256(expr_337, convert_t_rational_1_by_1_to_t_uint256(expr_338))

                    let expr_340 := expr_339
                    let _144 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_336,expr_340)
                    let _145_slot := _144
                    let expr_341_slot := _145_slot
                    let _146 := add(expr_341_slot, 4)
                    let _147 := read_from_storage_offset_0_t_uint256(_146)
                    let expr_342 := _147
                    let expr_343 := gt(cleanup_t_uint256(expr_335), cleanup_t_uint256(expr_342))
                    let expr_344 := expr_343
                    if expr_344 {
                        let _148 := 0x02
                        let expr_352 := _148
                        let _149 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_353 := _149
                        let expr_354 := 0x01
                        let expr_355 := checked_sub_t_uint256(expr_353, convert_t_rational_1_by_1_to_t_uint256(expr_354))

                        let expr_356 := expr_355
                        let _150 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_352,expr_356)
                        let _151_slot := _150
                        let expr_357_slot := _151_slot
                        let _152 := add(expr_357_slot, 3)
                        let _153 := _152
                        let expr_358 := _153
                        let _154 := vloc_nextCandidateId_300
                        let expr_359 := _154
                        let _155 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_358,expr_359)
                        let _156 := read_from_storage_offset_0_t_address(_155)
                        let expr_360 := _156
                        let _157 := 0x02
                        let expr_345 := _157
                        let _158 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_346 := _158
                        let expr_347 := 0x01
                        let expr_348 := checked_sub_t_uint256(expr_346, convert_t_rational_1_by_1_to_t_uint256(expr_347))

                        let expr_349 := expr_348
                        let _159 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_345,expr_349)
                        let _160_slot := _159
                        let expr_350_slot := _160_slot
                        let _161 := add(expr_350_slot, 2)
                        update_storage_value_offset_0t_address_to_t_address(_161, expr_360)
                        let expr_361 := expr_360
                        let _162 := vloc_curentVotes_297
                        let expr_370 := _162
                        let _163 := 0x01
                        let expr_363 := _163
                        let _164 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_364 := _164
                        let expr_365 := 0x01
                        let expr_366 := checked_sub_t_uint256(expr_364, convert_t_rational_1_by_1_to_t_uint256(expr_365))

                        let expr_367 := expr_366
                        let _165 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_363,expr_367)
                        let _166_slot := _165
                        let expr_368_slot := _166_slot
                        let _167 := add(expr_368_slot, 4)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_167, expr_370)
                        let expr_371 := expr_370
                    }
                    let _169 := vloc_nextCandidateId_300
                    let _168 := increment_t_uint256(_169)
                    vloc_nextCandidateId_300 := _168
                    let expr_376 := _169
                    let _171 := vloc_cnt_313
                    let _170 := increment_t_uint256(_171)
                    vloc_cnt_313 := _170
                    let expr_379 := _171
                }
                let _172 := vloc_nextCandidateId_300
                let expr_391 := _172
                let _173 := 0x01
                let expr_384 := _173
                let _174 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_385 := _174
                let expr_386 := 0x01
                let expr_387 := checked_sub_t_uint256(expr_385, convert_t_rational_1_by_1_to_t_uint256(expr_386))

                let expr_388 := expr_387
                let _175 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_384,expr_388)
                let _176_slot := _175
                let expr_389_slot := _176_slot
                let _177 := add(expr_389_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_177, expr_391)
                let expr_392 := expr_391
                let _178 := 0x02
                let expr_394 := _178
                let _179 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_395 := _179
                let expr_396 := 0x01
                let expr_397 := checked_sub_t_uint256(expr_395, convert_t_rational_1_by_1_to_t_uint256(expr_396))

                let expr_398 := expr_397
                let _180 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_394,expr_398)
                let _181_slot := _180
                let expr_399_slot := _181_slot
                let _182 := add(expr_399_slot, 3)
                let _183 := _182
                let expr_400 := _183
                let _184 := vloc_nextCandidateId_300
                let expr_401 := _184
                let _185 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_400,expr_401)
                let _186 := read_from_storage_offset_0_t_address(_185)
                let expr_402 := _186
                let expr_405 := 0x00
                let expr_406 := convert_t_rational_0_by_1_to_t_address_payable(expr_405)
                let expr_407 := eq(cleanup_t_address(expr_402), convert_t_address_payable_to_t_address(expr_406))
                let expr_408 := expr_407
                if expr_408 {
                    let _187 := 0x02
                    let expr_410 := _187
                    let _188 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_411 := _188
                    let expr_412 := 0x01
                    let expr_413 := checked_sub_t_uint256(expr_411, convert_t_rational_1_by_1_to_t_uint256(expr_412))

                    let expr_414 := expr_413
                    let _189 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_410,expr_414)
                    let _190_slot := _189
                    let expr_415_slot := _190_slot
                    let _191 := add(expr_415_slot, 2)
                    let _192 := read_from_storage_offset_0_t_address(_191)
                    let expr_416 := _192
                    update_storage_value_offset_0t_address_to_t_address(0x03, expr_416)
                    let expr_417 := expr_416
                    let expr_426 := 0x01
                    let _193 := 0x02
                    let expr_419 := _193
                    let _194 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_420 := _194
                    let expr_421 := 0x01
                    let expr_422 := checked_sub_t_uint256(expr_420, convert_t_rational_1_by_1_to_t_uint256(expr_421))

                    let expr_423 := expr_422
                    let _195 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_419,expr_423)
                    let _196_slot := _195
                    let expr_424_slot := _196_slot
                    let _197 := add(expr_424_slot, 2)
                    update_storage_value_offset_20t_bool_to_t_bool(_197, expr_426)
                    let expr_427 := expr_426
                    let _198 := 0x01
                    let expr_429 := _198
                    let _199 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_430 := _199
                    let expr_431 := 0x01
                    let expr_432 := checked_sub_t_uint256(expr_430, convert_t_rational_1_by_1_to_t_uint256(expr_431))

                    let expr_433 := expr_432
                    let _200 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_429,expr_433)
                    let _201_slot := _200
                    let expr_434_slot := _201_slot
                    let _202 := add(expr_434_slot, 4)
                    let _203 := read_from_storage_offset_0_t_uint256(_202)
                    let expr_435 := _203
                    let expr_436 := 0x00
                    let expr_437 := eq(cleanup_t_uint256(expr_435), convert_t_rational_0_by_1_to_t_uint256(expr_436))
                    let expr_438 := expr_437
                    if expr_438 {
                        let expr_444 := number()
                        let _204 := 0x01
                        let expr_439 := _204
                        let _205 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_440 := _205
                        let _206 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_439,expr_440)
                        let _207_slot := _206
                        let expr_441_slot := _207_slot
                        let _208 := add(expr_441_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_208, expr_444)
                        let expr_445 := expr_444
                        let expr_452 := number()
                        let _209 := read_from_storage_offset_0_t_uint256(0x05)
                        let expr_453 := _209
                        let expr_454 := checked_add_t_uint256(expr_452, expr_453)

                        let expr_455 := expr_454
                        let _210 := 0x01
                        let expr_447 := _210
                        let _211 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_448 := _211
                        let _212 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_447,expr_448)
                        let _213_slot := _212
                        let expr_449_slot := _213_slot
                        let _214 := add(expr_449_slot, 1)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_214, expr_455)
                        let expr_456 := expr_455
                        let _216 := read_from_storage_offset_0_t_uint256(0x00)
                        let _215 := increment_t_uint256(_216)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _215)
                        let expr_459 := _216
                    }
                }

            }

            function fun_observe__0_479(vloc_i_468) -> vloc__471 {
                let zero_value_for_type_t_uint256_217 := zero_value_for_split_t_uint256()
                vloc__471 := zero_value_for_type_t_uint256_217

                let _218 := 0x01
                let expr_473 := _218
                let _219 := vloc_i_468
                let expr_474 := _219
                let _220 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_473,expr_474)
                let _221_slot := _220
                let expr_475_slot := _221_slot
                let _222 := add(expr_475_slot, 3)
                let _223 := read_from_storage_offset_0_t_uint256(_222)
                let expr_476 := _223
                vloc__471 := expr_476
                leave

            }

            function fun_observe__1_496(vloc_i_481) -> vloc__484 {
                let zero_value_for_type_t_bool_224 := zero_value_for_split_t_bool()
                vloc__484 := zero_value_for_type_t_bool_224

                let _225 := 0x02
                let expr_486 := _225
                let _226 := vloc_i_481
                let expr_487 := _226
                let _227 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_486,expr_487)
                let _228_slot := _227
                let expr_488_slot := _228_slot
                let _229 := add(expr_488_slot, 1)
                let _230 := _229
                let expr_489 := _230
                let expr_491 := caller()
                let _231 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_489,expr_491)
                let _232_slot := _231
                let expr_492_slot := _232_slot
                let _233 := add(expr_492_slot, 1)
                let _234 := read_from_storage_offset_0_t_bool(_233)
                let expr_493 := _234
                vloc__484 := expr_493
                leave

            }

            function fun_observe__2_504() -> vloc__499 {
                let zero_value_for_type_t_uint256_235 := zero_value_for_split_t_uint256()
                vloc__499 := zero_value_for_type_t_uint256_235

                let _236 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_501 := _236
                vloc__499 := expr_501
                leave

            }

            function fun_observe__3_521(vloc_i_506) -> vloc__509 {
                let zero_value_for_type_t_uint256_237 := zero_value_for_split_t_uint256()
                vloc__509 := zero_value_for_type_t_uint256_237

                let _238 := 0x02
                let expr_511 := _238
                let _239 := vloc_i_506
                let expr_512 := _239
                let _240 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_511,expr_512)
                let _241_slot := _240
                let expr_513_slot := _241_slot
                let _242 := add(expr_513_slot, 1)
                let _243 := _242
                let expr_514 := _243
                let expr_516 := caller()
                let _244 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_514,expr_516)
                let _245_slot := _244
                let expr_517_slot := _245_slot
                let _246 := add(expr_517_slot, 0)
                let _247 := read_from_storage_offset_0_t_uint256(_246)
                let expr_518 := _247
                vloc__509 := expr_518
                leave

            }

            function fun_observe__4_538(vloc_i_523) -> vloc__526 {
                let zero_value_for_type_t_bool_248 := zero_value_for_split_t_bool()
                vloc__526 := zero_value_for_type_t_bool_248

                let _249 := 0x02
                let expr_528 := _249
                let _250 := vloc_i_523
                let expr_529 := _250
                let _251 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_528,expr_529)
                let _252_slot := _251
                let expr_530_slot := _252_slot
                let _253 := add(expr_530_slot, 1)
                let _254 := _253
                let expr_531 := _254
                let expr_533 := caller()
                let _255 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_531,expr_533)
                let _256_slot := _255
                let expr_534_slot := _256_slot
                let _257 := add(expr_534_slot, 1)
                let _258 := read_from_storage_offset_1_t_bool(_257)
                let expr_535 := _258
                vloc__526 := expr_535
                leave

            }

            function fun_observe__5_560(vloc_i_540) -> vloc__543 {
                let zero_value_for_type_t_uint256_259 := zero_value_for_split_t_uint256()
                vloc__543 := zero_value_for_type_t_uint256_259

                let _260 := 0x02
                let expr_545 := _260
                let _261 := vloc_i_540
                let expr_546 := _261
                let _262 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_545,expr_546)
                let _263_slot := _262
                let expr_547_slot := _263_slot
                let _264 := add(expr_547_slot, 0)
                let _265 := _264
                let expr_548 := _265
                let _266 := 0x02
                let expr_549 := _266
                let _267 := vloc_i_540
                let expr_550 := _267
                let _268 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_549,expr_550)
                let _269_slot := _268
                let expr_551_slot := _269_slot
                let _270 := add(expr_551_slot, 1)
                let _271 := _270
                let expr_552 := _271
                let expr_554 := caller()
                let _272 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_552,expr_554)
                let _273_slot := _272
                let expr_555_slot := _273_slot
                let _274 := add(expr_555_slot, 0)
                let _275 := read_from_storage_offset_0_t_uint256(_274)
                let expr_556 := _275
                let _276 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_548,expr_556)
                let _277 := read_from_storage_offset_0_t_uint256(_276)
                let expr_557 := _277
                vloc__543 := expr_557
                leave

            }

            function fun_observe__6_573(vloc_i_562) -> vloc__565 {
                let zero_value_for_type_t_uint256_278 := zero_value_for_split_t_uint256()
                vloc__565 := zero_value_for_type_t_uint256_278

                let _279 := 0x01
                let expr_567 := _279
                let _280 := vloc_i_562
                let expr_568 := _280
                let _281 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_567,expr_568)
                let _282_slot := _281
                let expr_569_slot := _282_slot
                let _283 := add(expr_569_slot, 4)
                let _284 := read_from_storage_offset_0_t_uint256(_283)
                let expr_570 := _284
                vloc__565 := expr_570
                leave

            }

            function fun_observe__7_586(vloc_i_575) -> vloc__578 {
                let zero_value_for_type_t_uint256_285 := zero_value_for_split_t_uint256()
                vloc__578 := zero_value_for_type_t_uint256_285

                let _286 := 0x01
                let expr_580 := _286
                let _287 := vloc_i_575
                let expr_581 := _287
                let _288 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_580,expr_581)
                let _289_slot := _288
                let expr_582_slot := _289_slot
                let _290 := add(expr_582_slot, 1)
                let _291 := read_from_storage_offset_0_t_uint256(_290)
                let expr_583 := _291
                vloc__578 := expr_583
                leave

            }

            function fun_observe__8_599(vloc_i_588) -> vloc__591 {
                let zero_value_for_type_t_uint256_292 := zero_value_for_split_t_uint256()
                vloc__591 := zero_value_for_type_t_uint256_292

                let _293 := 0x01
                let expr_593 := _293
                let _294 := vloc_i_588
                let expr_594 := _294
                let _295 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_593,expr_594)
                let _296_slot := _295
                let expr_595_slot := _296_slot
                let _297 := add(expr_595_slot, 0)
                let _298 := read_from_storage_offset_0_t_uint256(_297)
                let expr_596 := _298
                vloc__591 := expr_596
                leave

            }

            function fun_sumbitForElection_214() {

                let _15 := 0x01
                let expr_125 := _15
                let _16 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_126 := _16
                let expr_127 := 0x01
                let expr_128 := checked_sub_t_uint256(expr_126, convert_t_rational_1_by_1_to_t_uint256(expr_127))

                let expr_129 := expr_128
                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_125,expr_129)
                let _18_slot := _17
                let expr_130_slot := _18_slot
                let _19 := add(expr_130_slot, 1)
                let _20 := read_from_storage_offset_0_t_uint256(_19)
                let expr_131 := _20
                let expr_133 := number()
                let expr_134 := gt(cleanup_t_uint256(expr_131), cleanup_t_uint256(expr_133))
                let expr_135 := expr_134
                require_helper(expr_135)
                let _21 := 0x02
                let expr_139 := _21
                let _22 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_140 := _22
                let expr_141 := 0x01
                let expr_142 := checked_sub_t_uint256(expr_140, convert_t_rational_1_by_1_to_t_uint256(expr_141))

                let expr_143 := expr_142
                let _23 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_139,expr_143)
                let _24_slot := _23
                let expr_144_slot := _24_slot
                let _25 := add(expr_144_slot, 1)
                let _26 := _25
                let expr_145 := _26
                let expr_147 := caller()
                let _27 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_145,expr_147)
                let _28_slot := _27
                let expr_148_slot := _28_slot
                let _29 := add(expr_148_slot, 1)
                let _30 := read_from_storage_offset_0_t_bool(_29)
                let expr_149 := _30
                let expr_150 := cleanup_t_bool(iszero(expr_149))
                require_helper(expr_150)
                let vloc_nextCandidateId_154
                let zero_value_for_type_t_uint256_31 := zero_value_for_split_t_uint256()
                vloc_nextCandidateId_154 := zero_value_for_type_t_uint256_31
                let _32 := 0x01
                let expr_157 := _32
                let _33 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_158 := _33
                let _34 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_157,expr_158)
                let _35_slot := _34
                let expr_159_slot := _35_slot
                let _36 := add(expr_159_slot, 3)
                let _37 := read_from_storage_offset_0_t_uint256(_36)
                let expr_160 := _37
                vloc_nextCandidateId_154 := expr_160
                let expr_161 := expr_160
                let expr_173 := caller()
                let _38 := convert_t_address_payable_to_t_address(expr_173)
                let _39 := 0x02
                let expr_163 := _39
                let _40 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_164 := _40
                let expr_165 := 0x01
                let expr_166 := checked_sub_t_uint256(expr_164, convert_t_rational_1_by_1_to_t_uint256(expr_165))

                let expr_167 := expr_166
                let _41 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_163,expr_167)
                let _42_slot := _41
                let expr_168_slot := _42_slot
                let _43 := add(expr_168_slot, 3)
                let _44 := _43
                let expr_169 := _44
                let _45 := vloc_nextCandidateId_154
                let expr_170 := _45
                let _46 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_169,expr_170)
                update_storage_value_offset_0t_address_to_t_address(_46, _38)
                let expr_174 := _38
                let _47 := vloc_nextCandidateId_154
                let expr_187 := _47
                let _48 := 0x02
                let expr_176 := _48
                let _49 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_177 := _49
                let expr_178 := 0x01
                let expr_179 := checked_sub_t_uint256(expr_177, convert_t_rational_1_by_1_to_t_uint256(expr_178))

                let expr_180 := expr_179
                let _50 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_176,expr_180)
                let _51_slot := _50
                let expr_181_slot := _51_slot
                let _52 := add(expr_181_slot, 1)
                let _53 := _52
                let expr_182 := _53
                let expr_184 := caller()
                let _54 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_182,expr_184)
                let _55_slot := _54
                let expr_185_slot := _55_slot
                let _56 := add(expr_185_slot, 0)
                update_storage_value_offset_0t_uint256_to_t_uint256(_56, expr_187)
                let expr_188 := expr_187
                let _57 := 0x01
                let expr_190 := _57
                let _58 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_191 := _58
                let expr_192 := 0x01
                let expr_193 := checked_sub_t_uint256(expr_191, convert_t_rational_1_by_1_to_t_uint256(expr_192))

                let expr_194 := expr_193
                let _59 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_190,expr_194)
                let _60_slot := _59
                let expr_195_slot := _60_slot
                let _61 := add(expr_195_slot, 3)
                let _63 := read_from_storage_offset_0_t_uint256(_61)
                let _62 := increment_t_uint256(_63)
                update_storage_value_offset_0t_uint256_to_t_uint256(_61, _62)
                let expr_197 := _63
                let expr_210 := 0x01
                let _64 := 0x02
                let expr_199 := _64
                let _65 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_200 := _65
                let expr_201 := 0x01
                let expr_202 := checked_sub_t_uint256(expr_200, convert_t_rational_1_by_1_to_t_uint256(expr_201))

                let expr_203 := expr_202
                let _66 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_199,expr_203)
                let _67_slot := _66
                let expr_204_slot := _67_slot
                let _68 := add(expr_204_slot, 1)
                let _69 := _68
                let expr_205 := _69
                let expr_207 := caller()
                let _70 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_205,expr_207)
                let _71_slot := _70
                let expr_208_slot := _71_slot
                let _72 := add(expr_208_slot, 1)
                update_storage_value_offset_0t_bool_to_t_bool(_72, expr_210)
                let expr_211 := expr_210

            }

            function fun_vote_291(vloc__participant_216) {

                let _73 := 0x01
                let expr_220 := _73
                let _74 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_221 := _74
                let expr_222 := 0x01
                let expr_223 := checked_sub_t_uint256(expr_221, convert_t_rational_1_by_1_to_t_uint256(expr_222))

                let expr_224 := expr_223
                let _75 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_220,expr_224)
                let _76_slot := _75
                let expr_225_slot := _76_slot
                let _77 := add(expr_225_slot, 1)
                let _78 := read_from_storage_offset_0_t_uint256(_77)
                let expr_226 := _78
                let expr_228 := number()
                let expr_229 := gt(cleanup_t_uint256(expr_226), cleanup_t_uint256(expr_228))
                let expr_230 := expr_229
                require_helper(expr_230)
                let _79 := 0x02
                let expr_234 := _79
                let _80 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_235 := _80
                let expr_236 := 0x01
                let expr_237 := checked_sub_t_uint256(expr_235, convert_t_rational_1_by_1_to_t_uint256(expr_236))

                let expr_238 := expr_237
                let _81 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_234,expr_238)
                let _82_slot := _81
                let expr_239_slot := _82_slot
                let _83 := add(expr_239_slot, 1)
                let _84 := _83
                let expr_240 := _84
                let expr_242 := caller()
                let _85 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_240,expr_242)
                let _86_slot := _85
                let expr_243_slot := _86_slot
                let _87 := add(expr_243_slot, 1)
                let _88 := read_from_storage_offset_1_t_bool(_87)
                let expr_244 := _88
                let expr_245 := cleanup_t_bool(iszero(expr_244))
                require_helper(expr_245)
                let vloc_candidateId_249
                let zero_value_for_type_t_uint256_89 := zero_value_for_split_t_uint256()
                vloc_candidateId_249 := zero_value_for_type_t_uint256_89
                let _90 := 0x02
                let expr_252 := _90
                let _91 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_253 := _91
                let expr_254 := 0x01
                let expr_255 := checked_sub_t_uint256(expr_253, convert_t_rational_1_by_1_to_t_uint256(expr_254))

                let expr_256 := expr_255
                let _92 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_252,expr_256)
                let _93_slot := _92
                let expr_257_slot := _93_slot
                let _94 := add(expr_257_slot, 1)
                let _95 := _94
                let expr_258 := _95
                let _96 := vloc__participant_216
                let expr_259 := _96
                let _97 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address(expr_258,expr_259)
                let _98_slot := _97
                let expr_260_slot := _98_slot
                let _99 := add(expr_260_slot, 0)
                let _100 := read_from_storage_offset_0_t_uint256(_99)
                let expr_261 := _100
                vloc_candidateId_249 := expr_261
                let expr_262 := expr_261
                let expr_273 := 0x01
                let _101 := convert_t_rational_1_by_1_to_t_uint256(expr_273)
                let _102 := 0x02
                let expr_264 := _102
                let _103 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_265 := _103
                let expr_266 := 0x01
                let expr_267 := checked_sub_t_uint256(expr_265, convert_t_rational_1_by_1_to_t_uint256(expr_266))

                let expr_268 := expr_267
                let _104 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_264,expr_268)
                let _105_slot := _104
                let expr_269_slot := _105_slot
                let _106 := add(expr_269_slot, 0)
                let _107 := _106
                let expr_270 := _107
                let _108 := vloc_candidateId_249
                let expr_271 := _108
                let _109 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_270,expr_271)
                let _110 := read_from_storage_offset_0_t_uint256(_109)
                _101 := checked_add_t_uint256(_110, _101)
                update_storage_value_offset_0t_uint256_to_t_uint256(_109, _101)
                let expr_274 := _101
                let expr_287 := 0x01
                let _111 := 0x02
                let expr_276 := _111
                let _112 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_277 := _112
                let expr_278 := 0x01
                let expr_279 := checked_sub_t_uint256(expr_277, convert_t_rational_1_by_1_to_t_uint256(expr_278))

                let expr_280 := expr_279
                let _113 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_276,expr_280)
                let _114_slot := _113
                let expr_281_slot := _114_slot
                let _115 := add(expr_281_slot, 1)
                let _116 := _115
                let expr_282 := _116
                let expr_284 := caller()
                let _117 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_282,expr_284)
                let _118_slot := _117
                let expr_285_slot := _118_slot
                let _119 := add(expr_285_slot, 1)
                update_storage_value_offset_1t_bool_to_t_bool(_119, expr_287)
                let expr_288 := expr_287

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

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { panic_error() }
                ret := add(value, 1)
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

            function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
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

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function prepare_store_t_bool(value) -> ret {
                ret := value
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_storage_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))
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

            function shift_left_160(value) -> newValue {
                newValue :=

                shl(160, value)

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

            function update_byte_slice_1_shift_20(value, toInsert) -> result {
                let mask := 0xff0000000000000000000000000000000000000000
                toInsert := shift_left_160(toInsert)
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

            function update_storage_value_offset_0t_address_to_t_address(slot, value) {
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(value)))
            }

            function update_storage_value_offset_0t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(value)))
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
            }

            function update_storage_value_offset_1t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_1(sload(slot), prepare_store_t_bool(value)))
            }

            function update_storage_value_offset_20t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_20(sload(slot), prepare_store_t_bool(value)))
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

