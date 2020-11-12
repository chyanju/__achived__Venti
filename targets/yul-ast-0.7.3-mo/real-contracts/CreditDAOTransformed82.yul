/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAOTransformed82_585" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAOTransformed82_585()

        codecopy(0, dataoffset("CreditDAOTransformed82_585_deployed"), datasize("CreditDAOTransformed82_585_deployed"))

        return(0, datasize("CreditDAOTransformed82_585_deployed"))

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

        function constructor_CreditDAOTransformed82_585() {

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
    object "CreditDAOTransformed82_585_deployed" {
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
                    fun_sumbitForElection_220()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa6b297
                {
                    // observe__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__1_481(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2c77aaca
                {
                    // observe__0(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__0_464(param_0)
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
                    let ret_0 :=  fun_observe__5_545(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5467d725
                {
                    // observe__6(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__6_558(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_489()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5c647684
                {
                    // observe__7(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__7_571(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6dd7d8ea
                {
                    // vote(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_vote_288(param_0)
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
                    let ret_0 :=  fun_observe__3_506(param_0)
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
                    let ret_0 :=  fun_observe__4_523(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe79206e6
                {
                    // finishElections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_finishElections_451(param_0)
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

            function fun_finishElections_451(vloc__iterations_290) {

                let vloc_curentVotes_294
                let zero_value_for_type_t_uint256_119 := zero_value_for_split_t_uint256()
                vloc_curentVotes_294 := zero_value_for_type_t_uint256_119
                let vloc_nextCandidateId_297
                let zero_value_for_type_t_uint256_120 := zero_value_for_split_t_uint256()
                vloc_nextCandidateId_297 := zero_value_for_type_t_uint256_120
                let _121 := 0x01
                let expr_300 := _121
                let _122 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_301 := _122
                let expr_302 := 0x01
                let expr_303 := checked_sub_t_uint256(expr_301, convert_t_rational_1_by_1_to_t_uint256(expr_302))

                let expr_304 := expr_303
                let _123 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_300,expr_304)
                let _124_slot := _123
                let expr_305_slot := _124_slot
                let _125 := add(expr_305_slot, 5)
                let _126 := read_from_storage_offset_0_t_uint256(_125)
                let expr_306 := _126
                vloc_nextCandidateId_297 := expr_306
                let expr_307 := expr_306
                let vloc_cnt_310
                let zero_value_for_type_t_uint256_127 := zero_value_for_split_t_uint256()
                vloc_cnt_310 := zero_value_for_type_t_uint256_127
                let expr_313 := 0x00
                let _128 := convert_t_rational_0_by_1_to_t_uint256(expr_313)
                vloc_cnt_310 := _128
                let expr_314 := _128
                for {
                    } 1 {
                }
                {
                    let _129 := vloc_cnt_310
                    let expr_316 := _129
                    let _130 := vloc__iterations_290
                    let expr_317 := _130
                    let expr_318 := lt(cleanup_t_uint256(expr_316), cleanup_t_uint256(expr_317))
                    let expr_319 := expr_318
                    if iszero(expr_319) { break }
                    let _131 := 0x02
                    let expr_321 := _131
                    let _132 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_322 := _132
                    let expr_323 := 0x01
                    let expr_324 := checked_sub_t_uint256(expr_322, convert_t_rational_1_by_1_to_t_uint256(expr_323))

                    let expr_325 := expr_324
                    let _133 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_321,expr_325)
                    let _134_slot := _133
                    let expr_326_slot := _134_slot
                    let _135 := add(expr_326_slot, 0)
                    let _136 := _135
                    let expr_327 := _136
                    let _137 := vloc_nextCandidateId_297
                    let expr_328 := _137
                    let _138 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_327,expr_328)
                    let _139 := read_from_storage_offset_0_t_uint256(_138)
                    let expr_329 := _139
                    vloc_curentVotes_294 := expr_329
                    let expr_330 := expr_329
                    let _140 := vloc_curentVotes_294
                    let expr_332 := _140
                    let _141 := 0x01
                    let expr_333 := _141
                    let _142 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_334 := _142
                    let expr_335 := 0x01
                    let expr_336 := checked_sub_t_uint256(expr_334, convert_t_rational_1_by_1_to_t_uint256(expr_335))

                    let expr_337 := expr_336
                    let _143 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_333,expr_337)
                    let _144_slot := _143
                    let expr_338_slot := _144_slot
                    let _145 := add(expr_338_slot, 4)
                    let _146 := read_from_storage_offset_0_t_uint256(_145)
                    let expr_339 := _146
                    let expr_340 := gt(cleanup_t_uint256(expr_332), cleanup_t_uint256(expr_339))
                    let expr_341 := expr_340
                    if expr_341 {
                        let _147 := 0x02
                        let expr_346 := _147
                        let _148 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_347 := _148
                        let _149 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_346,expr_347)
                        let _150_slot := _149
                        let expr_348_slot := _150_slot
                        let _151 := add(expr_348_slot, 3)
                        let _152 := _151
                        let expr_349 := _152
                        let _153 := vloc_nextCandidateId_297
                        let expr_350 := _153
                        let _154 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_349,expr_350)
                        let _155 := read_from_storage_offset_0_t_address(_154)
                        let expr_351 := _155
                        let _156 := 0x02
                        let expr_342 := _156
                        let expr_343 := 0x01
                        let _157 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_rational_1_by_1(expr_342,expr_343)
                        let _158_slot := _157
                        let expr_344_slot := _158_slot
                        let _159 := add(expr_344_slot, 2)
                        update_storage_value_offset_0t_address_to_t_address(_159, expr_351)
                        let expr_352 := expr_351
                        let _160 := vloc_curentVotes_294
                        let expr_361 := _160
                        let _161 := 0x01
                        let expr_354 := _161
                        let _162 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_355 := _162
                        let expr_356 := 0x01
                        let expr_357 := checked_sub_t_uint256(expr_355, convert_t_rational_1_by_1_to_t_uint256(expr_356))

                        let expr_358 := expr_357
                        let _163 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_354,expr_358)
                        let _164_slot := _163
                        let expr_359_slot := _164_slot
                        let _165 := add(expr_359_slot, 4)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_165, expr_361)
                        let expr_362 := expr_361
                    }
                    let _167 := vloc_nextCandidateId_297
                    let _166 := increment_t_uint256(_167)
                    vloc_nextCandidateId_297 := _166
                    let expr_367 := _167
                    let _169 := vloc_cnt_310
                    let _168 := increment_t_uint256(_169)
                    vloc_cnt_310 := _168
                    let expr_370 := _169
                }
                let _170 := vloc_nextCandidateId_297
                let expr_382 := _170
                let _171 := 0x01
                let expr_375 := _171
                let _172 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_376 := _172
                let expr_377 := 0x01
                let expr_378 := checked_sub_t_uint256(expr_376, convert_t_rational_1_by_1_to_t_uint256(expr_377))

                let expr_379 := expr_378
                let _173 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_375,expr_379)
                let _174_slot := _173
                let expr_380_slot := _174_slot
                let _175 := add(expr_380_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_175, expr_382)
                let expr_383 := expr_382
                let _176 := 0x02
                let expr_385 := _176
                let _177 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_386 := _177
                let _178 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_385,expr_386)
                let _179_slot := _178
                let expr_387_slot := _179_slot
                let _180 := add(expr_387_slot, 3)
                let _181 := _180
                let expr_388 := _181
                let _182 := vloc_nextCandidateId_297
                let expr_389 := _182
                let _183 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_388,expr_389)
                let _184 := read_from_storage_offset_0_t_address(_183)
                let expr_390 := _184
                let expr_393 := 0x00
                let expr_394 := convert_t_rational_0_by_1_to_t_address_payable(expr_393)
                let expr_395 := eq(cleanup_t_address(expr_390), convert_t_address_payable_to_t_address(expr_394))
                let expr_396 := expr_395
                if expr_396 {
                    let _185 := 0x02
                    let expr_398 := _185
                    let _186 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_399 := _186
                    let _187 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_398,expr_399)
                    let _188_slot := _187
                    let expr_400_slot := _188_slot
                    let _189 := add(expr_400_slot, 2)
                    let _190 := read_from_storage_offset_0_t_address(_189)
                    let expr_401 := _190
                    update_storage_value_offset_0t_address_to_t_address(0x03, expr_401)
                    let expr_402 := expr_401
                    let expr_411 := 0x01
                    let _191 := 0x02
                    let expr_404 := _191
                    let _192 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_405 := _192
                    let expr_406 := 0x01
                    let expr_407 := checked_sub_t_uint256(expr_405, convert_t_rational_1_by_1_to_t_uint256(expr_406))

                    let expr_408 := expr_407
                    let _193 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_404,expr_408)
                    let _194_slot := _193
                    let expr_409_slot := _194_slot
                    let _195 := add(expr_409_slot, 2)
                    update_storage_value_offset_20t_bool_to_t_bool(_195, expr_411)
                    let expr_412 := expr_411
                    let _196 := 0x01
                    let expr_414 := _196
                    let _197 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_415 := _197
                    let expr_416 := 0x01
                    let expr_417 := checked_sub_t_uint256(expr_415, convert_t_rational_1_by_1_to_t_uint256(expr_416))

                    let expr_418 := expr_417
                    let _198 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_414,expr_418)
                    let _199_slot := _198
                    let expr_419_slot := _199_slot
                    let _200 := add(expr_419_slot, 4)
                    let _201 := read_from_storage_offset_0_t_uint256(_200)
                    let expr_420 := _201
                    let expr_421 := 0x00
                    let expr_422 := eq(cleanup_t_uint256(expr_420), convert_t_rational_0_by_1_to_t_uint256(expr_421))
                    let expr_423 := expr_422
                    if expr_423 {
                        let expr_429 := number()
                        let _202 := 0x01
                        let expr_424 := _202
                        let _203 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_425 := _203
                        let _204 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_424,expr_425)
                        let _205_slot := _204
                        let expr_426_slot := _205_slot
                        let _206 := add(expr_426_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_206, expr_429)
                        let expr_430 := expr_429
                        let expr_437 := number()
                        let _207 := read_from_storage_offset_0_t_uint256(0x05)
                        let expr_438 := _207
                        let expr_439 := checked_add_t_uint256(expr_437, expr_438)

                        let expr_440 := expr_439
                        let _208 := 0x01
                        let expr_432 := _208
                        let _209 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_433 := _209
                        let _210 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_432,expr_433)
                        let _211_slot := _210
                        let expr_434_slot := _211_slot
                        let _212 := add(expr_434_slot, 1)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_212, expr_440)
                        let expr_441 := expr_440
                        let _214 := read_from_storage_offset_0_t_uint256(0x00)
                        let _213 := increment_t_uint256(_214)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _213)
                        let expr_444 := _214
                    }
                }

            }

            function fun_observe__0_464(vloc_i_453) -> vloc__456 {
                let zero_value_for_type_t_uint256_215 := zero_value_for_split_t_uint256()
                vloc__456 := zero_value_for_type_t_uint256_215

                let _216 := 0x01
                let expr_458 := _216
                let _217 := vloc_i_453
                let expr_459 := _217
                let _218 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_458,expr_459)
                let _219_slot := _218
                let expr_460_slot := _219_slot
                let _220 := add(expr_460_slot, 3)
                let _221 := read_from_storage_offset_0_t_uint256(_220)
                let expr_461 := _221
                vloc__456 := expr_461
                leave

            }

            function fun_observe__1_481(vloc_i_466) -> vloc__469 {
                let zero_value_for_type_t_bool_222 := zero_value_for_split_t_bool()
                vloc__469 := zero_value_for_type_t_bool_222

                let _223 := 0x02
                let expr_471 := _223
                let _224 := vloc_i_466
                let expr_472 := _224
                let _225 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_471,expr_472)
                let _226_slot := _225
                let expr_473_slot := _226_slot
                let _227 := add(expr_473_slot, 1)
                let _228 := _227
                let expr_474 := _228
                let expr_476 := caller()
                let _229 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_474,expr_476)
                let _230_slot := _229
                let expr_477_slot := _230_slot
                let _231 := add(expr_477_slot, 1)
                let _232 := read_from_storage_offset_0_t_bool(_231)
                let expr_478 := _232
                vloc__469 := expr_478
                leave

            }

            function fun_observe__2_489() -> vloc__484 {
                let zero_value_for_type_t_uint256_233 := zero_value_for_split_t_uint256()
                vloc__484 := zero_value_for_type_t_uint256_233

                let _234 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_486 := _234
                vloc__484 := expr_486
                leave

            }

            function fun_observe__3_506(vloc_i_491) -> vloc__494 {
                let zero_value_for_type_t_uint256_235 := zero_value_for_split_t_uint256()
                vloc__494 := zero_value_for_type_t_uint256_235

                let _236 := 0x02
                let expr_496 := _236
                let _237 := vloc_i_491
                let expr_497 := _237
                let _238 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_496,expr_497)
                let _239_slot := _238
                let expr_498_slot := _239_slot
                let _240 := add(expr_498_slot, 1)
                let _241 := _240
                let expr_499 := _241
                let expr_501 := caller()
                let _242 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_499,expr_501)
                let _243_slot := _242
                let expr_502_slot := _243_slot
                let _244 := add(expr_502_slot, 0)
                let _245 := read_from_storage_offset_0_t_uint256(_244)
                let expr_503 := _245
                vloc__494 := expr_503
                leave

            }

            function fun_observe__4_523(vloc_i_508) -> vloc__511 {
                let zero_value_for_type_t_bool_246 := zero_value_for_split_t_bool()
                vloc__511 := zero_value_for_type_t_bool_246

                let _247 := 0x02
                let expr_513 := _247
                let _248 := vloc_i_508
                let expr_514 := _248
                let _249 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_513,expr_514)
                let _250_slot := _249
                let expr_515_slot := _250_slot
                let _251 := add(expr_515_slot, 1)
                let _252 := _251
                let expr_516 := _252
                let expr_518 := caller()
                let _253 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_516,expr_518)
                let _254_slot := _253
                let expr_519_slot := _254_slot
                let _255 := add(expr_519_slot, 1)
                let _256 := read_from_storage_offset_1_t_bool(_255)
                let expr_520 := _256
                vloc__511 := expr_520
                leave

            }

            function fun_observe__5_545(vloc_i_525) -> vloc__528 {
                let zero_value_for_type_t_uint256_257 := zero_value_for_split_t_uint256()
                vloc__528 := zero_value_for_type_t_uint256_257

                let _258 := 0x02
                let expr_530 := _258
                let _259 := vloc_i_525
                let expr_531 := _259
                let _260 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_530,expr_531)
                let _261_slot := _260
                let expr_532_slot := _261_slot
                let _262 := add(expr_532_slot, 0)
                let _263 := _262
                let expr_533 := _263
                let _264 := 0x02
                let expr_534 := _264
                let _265 := vloc_i_525
                let expr_535 := _265
                let _266 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_534,expr_535)
                let _267_slot := _266
                let expr_536_slot := _267_slot
                let _268 := add(expr_536_slot, 1)
                let _269 := _268
                let expr_537 := _269
                let expr_539 := caller()
                let _270 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_537,expr_539)
                let _271_slot := _270
                let expr_540_slot := _271_slot
                let _272 := add(expr_540_slot, 0)
                let _273 := read_from_storage_offset_0_t_uint256(_272)
                let expr_541 := _273
                let _274 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_533,expr_541)
                let _275 := read_from_storage_offset_0_t_uint256(_274)
                let expr_542 := _275
                vloc__528 := expr_542
                leave

            }

            function fun_observe__6_558(vloc_i_547) -> vloc__550 {
                let zero_value_for_type_t_uint256_276 := zero_value_for_split_t_uint256()
                vloc__550 := zero_value_for_type_t_uint256_276

                let _277 := 0x01
                let expr_552 := _277
                let _278 := vloc_i_547
                let expr_553 := _278
                let _279 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_552,expr_553)
                let _280_slot := _279
                let expr_554_slot := _280_slot
                let _281 := add(expr_554_slot, 4)
                let _282 := read_from_storage_offset_0_t_uint256(_281)
                let expr_555 := _282
                vloc__550 := expr_555
                leave

            }

            function fun_observe__7_571(vloc_i_560) -> vloc__563 {
                let zero_value_for_type_t_uint256_283 := zero_value_for_split_t_uint256()
                vloc__563 := zero_value_for_type_t_uint256_283

                let _284 := 0x01
                let expr_565 := _284
                let _285 := vloc_i_560
                let expr_566 := _285
                let _286 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_565,expr_566)
                let _287_slot := _286
                let expr_567_slot := _287_slot
                let _288 := add(expr_567_slot, 1)
                let _289 := read_from_storage_offset_0_t_uint256(_288)
                let expr_568 := _289
                vloc__563 := expr_568
                leave

            }

            function fun_observe__8_584(vloc_i_573) -> vloc__576 {
                let zero_value_for_type_t_uint256_290 := zero_value_for_split_t_uint256()
                vloc__576 := zero_value_for_type_t_uint256_290

                let _291 := 0x01
                let expr_578 := _291
                let _292 := vloc_i_573
                let expr_579 := _292
                let _293 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_578,expr_579)
                let _294_slot := _293
                let expr_580_slot := _294_slot
                let _295 := add(expr_580_slot, 0)
                let _296 := read_from_storage_offset_0_t_uint256(_295)
                let expr_581 := _296
                vloc__576 := expr_581
                leave

            }

            function fun_sumbitForElection_220() {

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
                let expr_176 := 0x01
                if expr_176 {
                    let _47 := vloc_nextCandidateId_154
                    let expr_188 := _47
                    let _48 := 0x02
                    let expr_177 := _48
                    let _49 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_178 := _49
                    let expr_179 := 0x01
                    let expr_180 := checked_sub_t_uint256(expr_178, convert_t_rational_1_by_1_to_t_uint256(expr_179))

                    let expr_181 := expr_180
                    let _50 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_177,expr_181)
                    let _51_slot := _50
                    let expr_182_slot := _51_slot
                    let _52 := add(expr_182_slot, 1)
                    let _53 := _52
                    let expr_183 := _53
                    let expr_185 := caller()
                    let _54 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_183,expr_185)
                    let _55_slot := _54
                    let expr_186_slot := _55_slot
                    let _56 := add(expr_186_slot, 0)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_56, expr_188)
                    let expr_189 := expr_188
                }
                let _57 := 0x01
                let expr_193 := _57
                let _58 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_194 := _58
                let expr_195 := 0x01
                let expr_196 := checked_sub_t_uint256(expr_194, convert_t_rational_1_by_1_to_t_uint256(expr_195))

                let expr_197 := expr_196
                let _59 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_193,expr_197)
                let _60_slot := _59
                let expr_198_slot := _60_slot
                let _61 := add(expr_198_slot, 3)
                let _63 := read_from_storage_offset_0_t_uint256(_61)
                let _62 := increment_t_uint256(_63)
                update_storage_value_offset_0t_uint256_to_t_uint256(_61, _62)
                let expr_200 := _63
                let expr_202 := 0x01
                if expr_202 {
                    let expr_214 := 0x01
                    let _64 := 0x02
                    let expr_203 := _64
                    let _65 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_204 := _65
                    let expr_205 := 0x01
                    let expr_206 := checked_sub_t_uint256(expr_204, convert_t_rational_1_by_1_to_t_uint256(expr_205))

                    let expr_207 := expr_206
                    let _66 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_203,expr_207)
                    let _67_slot := _66
                    let expr_208_slot := _67_slot
                    let _68 := add(expr_208_slot, 1)
                    let _69 := _68
                    let expr_209 := _69
                    let expr_211 := caller()
                    let _70 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_209,expr_211)
                    let _71_slot := _70
                    let expr_212_slot := _71_slot
                    let _72 := add(expr_212_slot, 1)
                    update_storage_value_offset_0t_bool_to_t_bool(_72, expr_214)
                    let expr_215 := expr_214
                }

            }

            function fun_vote_288(vloc__participant_222) {

                let _73 := 0x01
                let expr_226 := _73
                let _74 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_227 := _74
                let expr_228 := 0x01
                let expr_229 := checked_sub_t_uint256(expr_227, convert_t_rational_1_by_1_to_t_uint256(expr_228))

                let expr_230 := expr_229
                let _75 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_226,expr_230)
                let _76_slot := _75
                let expr_231_slot := _76_slot
                let _77 := add(expr_231_slot, 1)
                let _78 := read_from_storage_offset_0_t_uint256(_77)
                let expr_232 := _78
                let expr_234 := number()
                let expr_235 := gt(cleanup_t_uint256(expr_232), cleanup_t_uint256(expr_234))
                let expr_236 := expr_235
                require_helper(expr_236)
                let _79 := 0x02
                let expr_240 := _79
                let _80 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_241 := _80
                let _81 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_240,expr_241)
                let _82_slot := _81
                let expr_242_slot := _82_slot
                let _83 := add(expr_242_slot, 1)
                let _84 := _83
                let expr_243 := _84
                let expr_245 := caller()
                let _85 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_243,expr_245)
                let _86_slot := _85
                let expr_246_slot := _86_slot
                let _87 := add(expr_246_slot, 1)
                let _88 := read_from_storage_offset_1_t_bool(_87)
                let expr_247 := _88
                let expr_248 := cleanup_t_bool(iszero(expr_247))
                require_helper(expr_248)
                let vloc_candidateId_252
                let zero_value_for_type_t_uint256_89 := zero_value_for_split_t_uint256()
                vloc_candidateId_252 := zero_value_for_type_t_uint256_89
                let _90 := 0x02
                let expr_255 := _90
                let _91 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_256 := _91
                let _92 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_255,expr_256)
                let _93_slot := _92
                let expr_257_slot := _93_slot
                let _94 := add(expr_257_slot, 1)
                let _95 := _94
                let expr_258 := _95
                let _96 := vloc__participant_222
                let expr_259 := _96
                let _97 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address(expr_258,expr_259)
                let _98_slot := _97
                let expr_260_slot := _98_slot
                let _99 := add(expr_260_slot, 0)
                let _100 := read_from_storage_offset_0_t_uint256(_99)
                let expr_261 := _100
                vloc_candidateId_252 := expr_261
                let expr_262 := expr_261
                let expr_270 := 0x01
                let _101 := convert_t_rational_1_by_1_to_t_uint256(expr_270)
                let _102 := 0x02
                let expr_264 := _102
                let _103 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_265 := _103
                let _104 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_264,expr_265)
                let _105_slot := _104
                let expr_266_slot := _105_slot
                let _106 := add(expr_266_slot, 0)
                let _107 := _106
                let expr_267 := _107
                let _108 := vloc_candidateId_252
                let expr_268 := _108
                let _109 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_267,expr_268)
                let _110 := read_from_storage_offset_0_t_uint256(_109)
                _101 := checked_add_t_uint256(_110, _101)
                update_storage_value_offset_0t_uint256_to_t_uint256(_109, _101)
                let expr_271 := _101
                let expr_273 := 0x00
                if expr_273 {
                    let expr_282 := 0x01
                    let _111 := 0x02
                    let expr_274 := _111
                    let expr_275 := 0x01
                    let _112 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_rational_1_by_1(expr_274,expr_275)
                    let _113_slot := _112
                    let expr_276_slot := _113_slot
                    let _114 := add(expr_276_slot, 1)
                    let _115 := _114
                    let expr_277 := _115
                    let expr_279 := caller()
                    let _116 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_277,expr_279)
                    let _117_slot := _116
                    let expr_280_slot := _117_slot
                    let _118 := add(expr_280_slot, 1)
                    update_storage_value_offset_1t_bool_to_t_bool(_118, expr_282)
                    let expr_283 := expr_282
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

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_1_by_1_to_t_uint256(key))
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

