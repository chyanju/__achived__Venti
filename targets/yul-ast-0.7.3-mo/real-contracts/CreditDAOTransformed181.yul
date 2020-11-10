/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAOTransformed181_585" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAOTransformed181_585()

        codecopy(0, dataoffset("CreditDAOTransformed181_585_deployed"), datasize("CreditDAOTransformed181_585_deployed"))

        return(0, datasize("CreditDAOTransformed181_585_deployed"))

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

        function constructor_CreditDAOTransformed181_585() {

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
    object "CreditDAOTransformed181_585_deployed" {
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
                    fun_sumbitForElection_211()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa6b297
                {
                    // observe__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__1_469(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2c77aaca
                {
                    // observe__0(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__0_452(param_0)
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
                    let ret_0 :=  fun_observe__5_533(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5467d725
                {
                    // observe__6(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__6_550(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_477()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5c647684
                {
                    // observe__7(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__7_567(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6dd7d8ea
                {
                    // vote(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_vote_279(param_0)
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
                    let ret_0 :=  fun_observe__3_494(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__8_584(param_0)
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

                case 0xe0cfa7d9
                {
                    // observe__4(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__4_511(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe79206e6
                {
                    // finishElections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_finishElections_439(param_0)
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

            function fun_finishElections_439(vloc__iterations_281) {

                let vloc_curentVotes_285
                let zero_value_for_type_t_uint256_120 := zero_value_for_split_t_uint256()
                vloc_curentVotes_285 := zero_value_for_type_t_uint256_120
                let vloc_nextCandidateId_288
                let zero_value_for_type_t_uint256_121 := zero_value_for_split_t_uint256()
                vloc_nextCandidateId_288 := zero_value_for_type_t_uint256_121
                let _122 := 0x01
                let expr_291 := _122
                let _123 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_292 := _123
                let expr_293 := 0x01
                let expr_294 := checked_sub_t_uint256(expr_292, convert_t_rational_1_by_1_to_t_uint256(expr_293))

                let expr_295 := expr_294
                let _124 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_291,expr_295)
                let _125_slot := _124
                let expr_296_slot := _125_slot
                let _126 := add(expr_296_slot, 5)
                let _127 := read_from_storage_offset_0_t_uint256(_126)
                let expr_297 := _127
                vloc_nextCandidateId_288 := expr_297
                let expr_298 := expr_297
                let vloc_cnt_301
                let zero_value_for_type_t_uint256_128 := zero_value_for_split_t_uint256()
                vloc_cnt_301 := zero_value_for_type_t_uint256_128
                let expr_304 := 0x00
                let _129 := convert_t_rational_0_by_1_to_t_uint256(expr_304)
                vloc_cnt_301 := _129
                let expr_305 := _129
                for {
                    } 1 {
                }
                {
                    let _130 := vloc_cnt_301
                    let expr_307 := _130
                    let _131 := vloc__iterations_281
                    let expr_308 := _131
                    let expr_309 := lt(cleanup_t_uint256(expr_307), cleanup_t_uint256(expr_308))
                    let expr_310 := expr_309
                    if iszero(expr_310) { break }
                    let _132 := 0x02
                    let expr_312 := _132
                    let _133 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_313 := _133
                    let expr_314 := 0x01
                    let expr_315 := checked_sub_t_uint256(expr_313, convert_t_rational_1_by_1_to_t_uint256(expr_314))

                    let expr_316 := expr_315
                    let _134 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_312,expr_316)
                    let _135_slot := _134
                    let expr_317_slot := _135_slot
                    let _136 := add(expr_317_slot, 0)
                    let _137 := _136
                    let expr_318 := _137
                    let _138 := vloc_nextCandidateId_288
                    let expr_319 := _138
                    let _139 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_318,expr_319)
                    let _140 := read_from_storage_offset_0_t_uint256(_139)
                    let expr_320 := _140
                    vloc_curentVotes_285 := expr_320
                    let expr_321 := expr_320
                    let _141 := vloc_curentVotes_285
                    let expr_323 := _141
                    let _142 := 0x01
                    let expr_324 := _142
                    let _143 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_325 := _143
                    let expr_326 := 0x01
                    let expr_327 := checked_sub_t_uint256(expr_325, convert_t_rational_1_by_1_to_t_uint256(expr_326))

                    let expr_328 := expr_327
                    let _144 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_324,expr_328)
                    let _145_slot := _144
                    let expr_329_slot := _145_slot
                    let _146 := add(expr_329_slot, 4)
                    let _147 := read_from_storage_offset_0_t_uint256(_146)
                    let expr_330 := _147
                    let expr_331 := gt(cleanup_t_uint256(expr_323), cleanup_t_uint256(expr_330))
                    let expr_332 := expr_331
                    if expr_332 {
                        let _148 := 0x02
                        let expr_337 := _148
                        let _149 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_338 := _149
                        let _150 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_337,expr_338)
                        let _151_slot := _150
                        let expr_339_slot := _151_slot
                        let _152 := add(expr_339_slot, 3)
                        let _153 := _152
                        let expr_340 := _153
                        let _154 := vloc_nextCandidateId_288
                        let expr_341 := _154
                        let _155 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_340,expr_341)
                        let _156 := read_from_storage_offset_0_t_address(_155)
                        let expr_342 := _156
                        let _157 := 0x02
                        let expr_333 := _157
                        let _158 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_334 := _158
                        let _159 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_333,expr_334)
                        let _160_slot := _159
                        let expr_335_slot := _160_slot
                        let _161 := add(expr_335_slot, 2)
                        update_storage_value_offset_0t_address_to_t_address(_161, expr_342)
                        let expr_343 := expr_342
                        let _162 := vloc_curentVotes_285
                        let expr_352 := _162
                        let _163 := 0x01
                        let expr_345 := _163
                        let _164 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_346 := _164
                        let expr_347 := 0x01
                        let expr_348 := checked_sub_t_uint256(expr_346, convert_t_rational_1_by_1_to_t_uint256(expr_347))

                        let expr_349 := expr_348
                        let _165 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_345,expr_349)
                        let _166_slot := _165
                        let expr_350_slot := _166_slot
                        let _167 := add(expr_350_slot, 4)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_167, expr_352)
                        let expr_353 := expr_352
                    }
                    let _169 := vloc_nextCandidateId_288
                    let _168 := increment_t_uint256(_169)
                    vloc_nextCandidateId_288 := _168
                    let expr_358 := _169
                    let _171 := vloc_cnt_301
                    let _170 := increment_t_uint256(_171)
                    vloc_cnt_301 := _170
                    let expr_361 := _171
                }
                let _172 := vloc_nextCandidateId_288
                let expr_373 := _172
                let _173 := 0x01
                let expr_366 := _173
                let _174 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_367 := _174
                let expr_368 := 0x01
                let expr_369 := checked_sub_t_uint256(expr_367, convert_t_rational_1_by_1_to_t_uint256(expr_368))

                let expr_370 := expr_369
                let _175 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_366,expr_370)
                let _176_slot := _175
                let expr_371_slot := _176_slot
                let _177 := add(expr_371_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_177, expr_373)
                let expr_374 := expr_373
                let _178 := 0x02
                let expr_376 := _178
                let _179 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_377 := _179
                let _180 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_376,expr_377)
                let _181_slot := _180
                let expr_378_slot := _181_slot
                let _182 := add(expr_378_slot, 3)
                let _183 := _182
                let expr_379 := _183
                let _184 := vloc_nextCandidateId_288
                let expr_380 := _184
                let _185 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_379,expr_380)
                let _186 := read_from_storage_offset_0_t_address(_185)
                let expr_381 := _186
                let expr_384 := 0x00
                let expr_385 := convert_t_rational_0_by_1_to_t_address_payable(expr_384)
                let expr_386 := eq(cleanup_t_address(expr_381), convert_t_address_payable_to_t_address(expr_385))
                let expr_387 := expr_386
                if expr_387 {
                    let _187 := 0x02
                    let expr_389 := _187
                    let _188 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_390 := _188
                    let _189 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_389,expr_390)
                    let _190_slot := _189
                    let expr_391_slot := _190_slot
                    let _191 := add(expr_391_slot, 2)
                    let _192 := read_from_storage_offset_0_t_address(_191)
                    let expr_392 := _192
                    update_storage_value_offset_0t_address_to_t_address(0x03, expr_392)
                    let expr_393 := expr_392
                    let expr_399 := 0x01
                    let _193 := 0x02
                    let expr_395 := _193
                    let _194 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_396 := _194
                    let _195 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_395,expr_396)
                    let _196_slot := _195
                    let expr_397_slot := _196_slot
                    let _197 := add(expr_397_slot, 2)
                    update_storage_value_offset_20t_bool_to_t_bool(_197, expr_399)
                    let expr_400 := expr_399
                    let _198 := 0x01
                    let expr_402 := _198
                    let _199 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_403 := _199
                    let expr_404 := 0x01
                    let expr_405 := checked_sub_t_uint256(expr_403, convert_t_rational_1_by_1_to_t_uint256(expr_404))

                    let expr_406 := expr_405
                    let _200 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_402,expr_406)
                    let _201_slot := _200
                    let expr_407_slot := _201_slot
                    let _202 := add(expr_407_slot, 4)
                    let _203 := read_from_storage_offset_0_t_uint256(_202)
                    let expr_408 := _203
                    let expr_409 := 0x00
                    let expr_410 := eq(cleanup_t_uint256(expr_408), convert_t_rational_0_by_1_to_t_uint256(expr_409))
                    let expr_411 := expr_410
                    if expr_411 {
                        let expr_417 := number()
                        let _204 := 0x01
                        let expr_412 := _204
                        let _205 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_413 := _205
                        let _206 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_412,expr_413)
                        let _207_slot := _206
                        let expr_414_slot := _207_slot
                        let _208 := add(expr_414_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_208, expr_417)
                        let expr_418 := expr_417
                        let expr_425 := number()
                        let _209 := read_from_storage_offset_0_t_uint256(0x05)
                        let expr_426 := _209
                        let expr_427 := checked_add_t_uint256(expr_425, expr_426)

                        let expr_428 := expr_427
                        let _210 := 0x01
                        let expr_420 := _210
                        let _211 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_421 := _211
                        let _212 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_420,expr_421)
                        let _213_slot := _212
                        let expr_422_slot := _213_slot
                        let _214 := add(expr_422_slot, 1)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_214, expr_428)
                        let expr_429 := expr_428
                        let _216 := read_from_storage_offset_0_t_uint256(0x00)
                        let _215 := increment_t_uint256(_216)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _215)
                        let expr_432 := _216
                    }
                }

            }

            function fun_observe__0_452(vloc_i_441) -> vloc__444 {
                let zero_value_for_type_t_uint256_217 := zero_value_for_split_t_uint256()
                vloc__444 := zero_value_for_type_t_uint256_217

                let _218 := 0x01
                let expr_446 := _218
                let _219 := vloc_i_441
                let expr_447 := _219
                let _220 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_446,expr_447)
                let _221_slot := _220
                let expr_448_slot := _221_slot
                let _222 := add(expr_448_slot, 3)
                let _223 := read_from_storage_offset_0_t_uint256(_222)
                let expr_449 := _223
                vloc__444 := expr_449
                leave

            }

            function fun_observe__1_469(vloc_i_454) -> vloc__457 {
                let zero_value_for_type_t_bool_224 := zero_value_for_split_t_bool()
                vloc__457 := zero_value_for_type_t_bool_224

                let _225 := 0x02
                let expr_459 := _225
                let _226 := vloc_i_454
                let expr_460 := _226
                let _227 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_459,expr_460)
                let _228_slot := _227
                let expr_461_slot := _228_slot
                let _229 := add(expr_461_slot, 1)
                let _230 := _229
                let expr_462 := _230
                let expr_464 := caller()
                let _231 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_462,expr_464)
                let _232_slot := _231
                let expr_465_slot := _232_slot
                let _233 := add(expr_465_slot, 1)
                let _234 := read_from_storage_offset_0_t_bool(_233)
                let expr_466 := _234
                vloc__457 := expr_466
                leave

            }

            function fun_observe__2_477() -> vloc__472 {
                let zero_value_for_type_t_uint256_235 := zero_value_for_split_t_uint256()
                vloc__472 := zero_value_for_type_t_uint256_235

                let _236 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_474 := _236
                vloc__472 := expr_474
                leave

            }

            function fun_observe__3_494(vloc_i_479) -> vloc__482 {
                let zero_value_for_type_t_uint256_237 := zero_value_for_split_t_uint256()
                vloc__482 := zero_value_for_type_t_uint256_237

                let _238 := 0x02
                let expr_484 := _238
                let _239 := vloc_i_479
                let expr_485 := _239
                let _240 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_484,expr_485)
                let _241_slot := _240
                let expr_486_slot := _241_slot
                let _242 := add(expr_486_slot, 1)
                let _243 := _242
                let expr_487 := _243
                let expr_489 := caller()
                let _244 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_487,expr_489)
                let _245_slot := _244
                let expr_490_slot := _245_slot
                let _246 := add(expr_490_slot, 0)
                let _247 := read_from_storage_offset_0_t_uint256(_246)
                let expr_491 := _247
                vloc__482 := expr_491
                leave

            }

            function fun_observe__4_511(vloc_i_496) -> vloc__499 {
                let zero_value_for_type_t_bool_248 := zero_value_for_split_t_bool()
                vloc__499 := zero_value_for_type_t_bool_248

                let _249 := 0x02
                let expr_501 := _249
                let _250 := vloc_i_496
                let expr_502 := _250
                let _251 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_501,expr_502)
                let _252_slot := _251
                let expr_503_slot := _252_slot
                let _253 := add(expr_503_slot, 1)
                let _254 := _253
                let expr_504 := _254
                let expr_506 := caller()
                let _255 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_504,expr_506)
                let _256_slot := _255
                let expr_507_slot := _256_slot
                let _257 := add(expr_507_slot, 1)
                let _258 := read_from_storage_offset_1_t_bool(_257)
                let expr_508 := _258
                vloc__499 := expr_508
                leave

            }

            function fun_observe__5_533(vloc_i_513) -> vloc__516 {
                let zero_value_for_type_t_uint256_259 := zero_value_for_split_t_uint256()
                vloc__516 := zero_value_for_type_t_uint256_259

                let _260 := 0x02
                let expr_518 := _260
                let _261 := vloc_i_513
                let expr_519 := _261
                let _262 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_518,expr_519)
                let _263_slot := _262
                let expr_520_slot := _263_slot
                let _264 := add(expr_520_slot, 0)
                let _265 := _264
                let expr_521 := _265
                let _266 := 0x02
                let expr_522 := _266
                let _267 := vloc_i_513
                let expr_523 := _267
                let _268 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_522,expr_523)
                let _269_slot := _268
                let expr_524_slot := _269_slot
                let _270 := add(expr_524_slot, 1)
                let _271 := _270
                let expr_525 := _271
                let expr_527 := caller()
                let _272 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_525,expr_527)
                let _273_slot := _272
                let expr_528_slot := _273_slot
                let _274 := add(expr_528_slot, 0)
                let _275 := read_from_storage_offset_0_t_uint256(_274)
                let expr_529 := _275
                let _276 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_521,expr_529)
                let _277 := read_from_storage_offset_0_t_uint256(_276)
                let expr_530 := _277
                vloc__516 := expr_530
                leave

            }

            function fun_observe__6_550(vloc_i_535) -> vloc__538 {
                let zero_value_for_type_t_uint256_278 := zero_value_for_split_t_uint256()
                vloc__538 := zero_value_for_type_t_uint256_278

                let _279 := 0x02
                let expr_540 := _279
                let _280 := vloc_i_535
                let expr_541 := _280
                let _281 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_540,expr_541)
                let _282_slot := _281
                let expr_542_slot := _282_slot
                let _283 := add(expr_542_slot, 1)
                let _284 := _283
                let expr_543 := _284
                let expr_545 := caller()
                let _285 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_543,expr_545)
                let _286_slot := _285
                let expr_546_slot := _286_slot
                let _287 := add(expr_546_slot, 0)
                let _288 := read_from_storage_offset_0_t_uint256(_287)
                let expr_547 := _288
                vloc__538 := expr_547
                leave

            }

            function fun_observe__7_567(vloc_i_552) -> vloc__555 {
                let zero_value_for_type_t_bool_289 := zero_value_for_split_t_bool()
                vloc__555 := zero_value_for_type_t_bool_289

                let _290 := 0x02
                let expr_557 := _290
                let _291 := vloc_i_552
                let expr_558 := _291
                let _292 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_557,expr_558)
                let _293_slot := _292
                let expr_559_slot := _293_slot
                let _294 := add(expr_559_slot, 1)
                let _295 := _294
                let expr_560 := _295
                let expr_562 := caller()
                let _296 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_560,expr_562)
                let _297_slot := _296
                let expr_563_slot := _297_slot
                let _298 := add(expr_563_slot, 1)
                let _299 := read_from_storage_offset_0_t_bool(_298)
                let expr_564 := _299
                vloc__555 := expr_564
                leave

            }

            function fun_observe__8_584(vloc_i_569) -> vloc__572 {
                let zero_value_for_type_t_bool_300 := zero_value_for_split_t_bool()
                vloc__572 := zero_value_for_type_t_bool_300

                let _301 := 0x02
                let expr_574 := _301
                let _302 := vloc_i_569
                let expr_575 := _302
                let _303 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_574,expr_575)
                let _304_slot := _303
                let expr_576_slot := _304_slot
                let _305 := add(expr_576_slot, 1)
                let _306 := _305
                let expr_577 := _306
                let expr_579 := caller()
                let _307 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_577,expr_579)
                let _308_slot := _307
                let expr_580_slot := _308_slot
                let _309 := add(expr_580_slot, 1)
                let _310 := read_from_storage_offset_1_t_bool(_309)
                let expr_581 := _310
                vloc__572 := expr_581
                leave

            }

            function fun_sumbitForElection_211() {

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
                let _23 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_139,expr_140)
                let _24_slot := _23
                let expr_141_slot := _24_slot
                let _25 := add(expr_141_slot, 1)
                let _26 := _25
                let expr_142 := _26
                let expr_144 := caller()
                let _27 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_142,expr_144)
                let _28_slot := _27
                let expr_145_slot := _28_slot
                let _29 := add(expr_145_slot, 1)
                let _30 := read_from_storage_offset_0_t_bool(_29)
                let expr_146 := _30
                let expr_147 := cleanup_t_bool(iszero(expr_146))
                require_helper(expr_147)
                let vloc_nextCandidateId_151
                let zero_value_for_type_t_uint256_31 := zero_value_for_split_t_uint256()
                vloc_nextCandidateId_151 := zero_value_for_type_t_uint256_31
                let _32 := 0x01
                let expr_154 := _32
                let _33 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_155 := _33
                let _34 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_154,expr_155)
                let _35_slot := _34
                let expr_156_slot := _35_slot
                let _36 := add(expr_156_slot, 3)
                let _37 := read_from_storage_offset_0_t_uint256(_36)
                let expr_157 := _37
                vloc_nextCandidateId_151 := expr_157
                let expr_158 := expr_157
                let expr_170 := caller()
                let _38 := convert_t_address_payable_to_t_address(expr_170)
                let _39 := 0x02
                let expr_160 := _39
                let _40 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_161 := _40
                let expr_162 := 0x01
                let expr_163 := checked_sub_t_uint256(expr_161, convert_t_rational_1_by_1_to_t_uint256(expr_162))

                let expr_164 := expr_163
                let _41 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_160,expr_164)
                let _42_slot := _41
                let expr_165_slot := _42_slot
                let _43 := add(expr_165_slot, 3)
                let _44 := _43
                let expr_166 := _44
                let _45 := vloc_nextCandidateId_151
                let expr_167 := _45
                let _46 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_166,expr_167)
                update_storage_value_offset_0t_address_to_t_address(_46, _38)
                let expr_171 := _38
                let expr_173 := 0x01
                if expr_173 {
                    let _47 := vloc_nextCandidateId_151
                    let expr_182 := _47
                    let _48 := 0x02
                    let expr_174 := _48
                    let _49 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_175 := _49
                    let _50 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_174,expr_175)
                    let _51_slot := _50
                    let expr_176_slot := _51_slot
                    let _52 := add(expr_176_slot, 1)
                    let _53 := _52
                    let expr_177 := _53
                    let expr_179 := caller()
                    let _54 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_177,expr_179)
                    let _55_slot := _54
                    let expr_180_slot := _55_slot
                    let _56 := add(expr_180_slot, 0)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_56, expr_182)
                    let expr_183 := expr_182
                }
                let _57 := 0x01
                let expr_187 := _57
                let _58 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_188 := _58
                let expr_189 := 0x01
                let expr_190 := checked_sub_t_uint256(expr_188, convert_t_rational_1_by_1_to_t_uint256(expr_189))

                let expr_191 := expr_190
                let _59 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_187,expr_191)
                let _60_slot := _59
                let expr_192_slot := _60_slot
                let _61 := add(expr_192_slot, 3)
                let _63 := read_from_storage_offset_0_t_uint256(_61)
                let _62 := increment_t_uint256(_63)
                update_storage_value_offset_0t_uint256_to_t_uint256(_61, _62)
                let expr_194 := _63
                let expr_196 := 0x01
                if expr_196 {
                    let expr_205 := 0x01
                    let _64 := 0x02
                    let expr_197 := _64
                    let _65 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_198 := _65
                    let _66 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_197,expr_198)
                    let _67_slot := _66
                    let expr_199_slot := _67_slot
                    let _68 := add(expr_199_slot, 1)
                    let _69 := _68
                    let expr_200 := _69
                    let expr_202 := caller()
                    let _70 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_200,expr_202)
                    let _71_slot := _70
                    let expr_203_slot := _71_slot
                    let _72 := add(expr_203_slot, 1)
                    update_storage_value_offset_0t_bool_to_t_bool(_72, expr_205)
                    let expr_206 := expr_205
                }

            }

            function fun_vote_279(vloc__participant_213) {

                let _73 := 0x01
                let expr_217 := _73
                let _74 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_218 := _74
                let expr_219 := 0x01
                let expr_220 := checked_sub_t_uint256(expr_218, convert_t_rational_1_by_1_to_t_uint256(expr_219))

                let expr_221 := expr_220
                let _75 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_217,expr_221)
                let _76_slot := _75
                let expr_222_slot := _76_slot
                let _77 := add(expr_222_slot, 1)
                let _78 := read_from_storage_offset_0_t_uint256(_77)
                let expr_223 := _78
                let expr_225 := number()
                let expr_226 := gt(cleanup_t_uint256(expr_223), cleanup_t_uint256(expr_225))
                let expr_227 := expr_226
                require_helper(expr_227)
                let _79 := 0x02
                let expr_231 := _79
                let _80 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_232 := _80
                let _81 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_231,expr_232)
                let _82_slot := _81
                let expr_233_slot := _82_slot
                let _83 := add(expr_233_slot, 1)
                let _84 := _83
                let expr_234 := _84
                let expr_236 := caller()
                let _85 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_234,expr_236)
                let _86_slot := _85
                let expr_237_slot := _86_slot
                let _87 := add(expr_237_slot, 1)
                let _88 := read_from_storage_offset_1_t_bool(_87)
                let expr_238 := _88
                let expr_239 := cleanup_t_bool(iszero(expr_238))
                require_helper(expr_239)
                let vloc_candidateId_243
                let zero_value_for_type_t_uint256_89 := zero_value_for_split_t_uint256()
                vloc_candidateId_243 := zero_value_for_type_t_uint256_89
                let _90 := 0x02
                let expr_246 := _90
                let _91 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_247 := _91
                let _92 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_246,expr_247)
                let _93_slot := _92
                let expr_248_slot := _93_slot
                let _94 := add(expr_248_slot, 1)
                let _95 := _94
                let expr_249 := _95
                let _96 := vloc__participant_213
                let expr_250 := _96
                let _97 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address(expr_249,expr_250)
                let _98_slot := _97
                let expr_251_slot := _98_slot
                let _99 := add(expr_251_slot, 0)
                let _100 := read_from_storage_offset_0_t_uint256(_99)
                let expr_252 := _100
                vloc_candidateId_243 := expr_252
                let expr_253 := expr_252
                let expr_261 := 0x01
                let _101 := convert_t_rational_1_by_1_to_t_uint256(expr_261)
                let _102 := 0x02
                let expr_255 := _102
                let _103 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_256 := _103
                let _104 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_255,expr_256)
                let _105_slot := _104
                let expr_257_slot := _105_slot
                let _106 := add(expr_257_slot, 0)
                let _107 := _106
                let expr_258 := _107
                let _108 := vloc_candidateId_243
                let expr_259 := _108
                let _109 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_258,expr_259)
                let _110 := read_from_storage_offset_0_t_uint256(_109)
                _101 := checked_add_t_uint256(_110, _101)
                update_storage_value_offset_0t_uint256_to_t_uint256(_109, _101)
                let expr_262 := _101
                let expr_264 := 0x01
                if expr_264 {
                    let expr_273 := 0x01
                    let _111 := 0x02
                    let expr_265 := _111
                    let _112 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_266 := _112
                    let _113 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_265,expr_266)
                    let _114_slot := _113
                    let expr_267_slot := _114_slot
                    let _115 := add(expr_267_slot, 1)
                    let _116 := _115
                    let expr_268 := _116
                    let expr_270 := caller()
                    let _117 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_268,expr_270)
                    let _118_slot := _117
                    let expr_271_slot := _118_slot
                    let _119 := add(expr_271_slot, 1)
                    update_storage_value_offset_1t_bool_to_t_bool(_119, expr_273)
                    let expr_274 := expr_273
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

