/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAOTransformed67_588" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAOTransformed67_588()

        codecopy(0, dataoffset("CreditDAOTransformed67_588_deployed"), datasize("CreditDAOTransformed67_588_deployed"))

        return(0, datasize("CreditDAOTransformed67_588_deployed"))

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

        function constructor_CreditDAOTransformed67_588() {

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
    object "CreditDAOTransformed67_588_deployed" {
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
                    let ret_0 :=  fun_observe__1_484(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2c77aaca
                {
                    // observe__0(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__0_467(param_0)
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
                    let ret_0 :=  fun_observe__5_548(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5467d725
                {
                    // observe__6(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__6_561(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_492()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5c647684
                {
                    // observe__7(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__7_574(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6dd7d8ea
                {
                    // vote(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_vote_294(param_0)
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
                    let ret_0 :=  fun_observe__3_509(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__8_587(param_0)
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
                    let ret_0 :=  fun_observe__4_526(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe79206e6
                {
                    // finishElections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_finishElections_454(param_0)
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

            function fun_finishElections_454(vloc__iterations_296) {

                let vloc_curentVotes_300
                let zero_value_for_type_t_uint256_119 := zero_value_for_split_t_uint256()
                vloc_curentVotes_300 := zero_value_for_type_t_uint256_119
                let vloc_nextCandidateId_303
                let zero_value_for_type_t_uint256_120 := zero_value_for_split_t_uint256()
                vloc_nextCandidateId_303 := zero_value_for_type_t_uint256_120
                let _121 := 0x01
                let expr_306 := _121
                let _122 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_307 := _122
                let expr_308 := 0x01
                let expr_309 := checked_sub_t_uint256(expr_307, convert_t_rational_1_by_1_to_t_uint256(expr_308))

                let expr_310 := expr_309
                let _123 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_306,expr_310)
                let _124_slot := _123
                let expr_311_slot := _124_slot
                let _125 := add(expr_311_slot, 5)
                let _126 := read_from_storage_offset_0_t_uint256(_125)
                let expr_312 := _126
                vloc_nextCandidateId_303 := expr_312
                let expr_313 := expr_312
                let vloc_cnt_316
                let zero_value_for_type_t_uint256_127 := zero_value_for_split_t_uint256()
                vloc_cnt_316 := zero_value_for_type_t_uint256_127
                let expr_319 := 0x00
                let _128 := convert_t_rational_0_by_1_to_t_uint256(expr_319)
                vloc_cnt_316 := _128
                let expr_320 := _128
                for {
                    } 1 {
                }
                {
                    let _129 := vloc_cnt_316
                    let expr_322 := _129
                    let _130 := vloc__iterations_296
                    let expr_323 := _130
                    let expr_324 := lt(cleanup_t_uint256(expr_322), cleanup_t_uint256(expr_323))
                    let expr_325 := expr_324
                    if iszero(expr_325) { break }
                    let _131 := 0x02
                    let expr_327 := _131
                    let _132 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_328 := _132
                    let _133 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_327,expr_328)
                    let _134_slot := _133
                    let expr_329_slot := _134_slot
                    let _135 := add(expr_329_slot, 0)
                    let _136 := _135
                    let expr_330 := _136
                    let _137 := vloc_nextCandidateId_303
                    let expr_331 := _137
                    let _138 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_330,expr_331)
                    let _139 := read_from_storage_offset_0_t_uint256(_138)
                    let expr_332 := _139
                    vloc_curentVotes_300 := expr_332
                    let expr_333 := expr_332
                    let _140 := vloc_curentVotes_300
                    let expr_335 := _140
                    let _141 := 0x01
                    let expr_336 := _141
                    let _142 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_337 := _142
                    let expr_338 := 0x01
                    let expr_339 := checked_sub_t_uint256(expr_337, convert_t_rational_1_by_1_to_t_uint256(expr_338))

                    let expr_340 := expr_339
                    let _143 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_336,expr_340)
                    let _144_slot := _143
                    let expr_341_slot := _144_slot
                    let _145 := add(expr_341_slot, 4)
                    let _146 := read_from_storage_offset_0_t_uint256(_145)
                    let expr_342 := _146
                    let expr_343 := gt(cleanup_t_uint256(expr_335), cleanup_t_uint256(expr_342))
                    let expr_344 := expr_343
                    if expr_344 {
                        let _147 := 0x02
                        let expr_349 := _147
                        let _148 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_350 := _148
                        let _149 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_349,expr_350)
                        let _150_slot := _149
                        let expr_351_slot := _150_slot
                        let _151 := add(expr_351_slot, 3)
                        let _152 := _151
                        let expr_352 := _152
                        let _153 := vloc_nextCandidateId_303
                        let expr_353 := _153
                        let _154 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_352,expr_353)
                        let _155 := read_from_storage_offset_0_t_address(_154)
                        let expr_354 := _155
                        let _156 := 0x02
                        let expr_345 := _156
                        let _157 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_346 := _157
                        let _158 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_345,expr_346)
                        let _159_slot := _158
                        let expr_347_slot := _159_slot
                        let _160 := add(expr_347_slot, 2)
                        update_storage_value_offset_0t_address_to_t_address(_160, expr_354)
                        let expr_355 := expr_354
                        let _161 := vloc_curentVotes_300
                        let expr_364 := _161
                        let _162 := 0x01
                        let expr_357 := _162
                        let _163 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_358 := _163
                        let expr_359 := 0x01
                        let expr_360 := checked_sub_t_uint256(expr_358, convert_t_rational_1_by_1_to_t_uint256(expr_359))

                        let expr_361 := expr_360
                        let _164 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_357,expr_361)
                        let _165_slot := _164
                        let expr_362_slot := _165_slot
                        let _166 := add(expr_362_slot, 4)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_166, expr_364)
                        let expr_365 := expr_364
                    }
                    let _168 := vloc_nextCandidateId_303
                    let _167 := increment_t_uint256(_168)
                    vloc_nextCandidateId_303 := _167
                    let expr_370 := _168
                    let _170 := vloc_cnt_316
                    let _169 := increment_t_uint256(_170)
                    vloc_cnt_316 := _169
                    let expr_373 := _170
                }
                let _171 := vloc_nextCandidateId_303
                let expr_385 := _171
                let _172 := 0x01
                let expr_378 := _172
                let _173 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_379 := _173
                let expr_380 := 0x01
                let expr_381 := checked_sub_t_uint256(expr_379, convert_t_rational_1_by_1_to_t_uint256(expr_380))

                let expr_382 := expr_381
                let _174 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_378,expr_382)
                let _175_slot := _174
                let expr_383_slot := _175_slot
                let _176 := add(expr_383_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_176, expr_385)
                let expr_386 := expr_385
                let _177 := 0x02
                let expr_388 := _177
                let _178 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_389 := _178
                let _179 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_388,expr_389)
                let _180_slot := _179
                let expr_390_slot := _180_slot
                let _181 := add(expr_390_slot, 3)
                let _182 := _181
                let expr_391 := _182
                let _183 := vloc_nextCandidateId_303
                let expr_392 := _183
                let _184 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_391,expr_392)
                let _185 := read_from_storage_offset_0_t_address(_184)
                let expr_393 := _185
                let expr_396 := 0x00
                let expr_397 := convert_t_rational_0_by_1_to_t_address_payable(expr_396)
                let expr_398 := eq(cleanup_t_address(expr_393), convert_t_address_payable_to_t_address(expr_397))
                let expr_399 := expr_398
                if expr_399 {
                    let _186 := 0x02
                    let expr_401 := _186
                    let _187 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_402 := _187
                    let expr_403 := 0x01
                    let expr_404 := checked_sub_t_uint256(expr_402, convert_t_rational_1_by_1_to_t_uint256(expr_403))

                    let expr_405 := expr_404
                    let _188 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_401,expr_405)
                    let _189_slot := _188
                    let expr_406_slot := _189_slot
                    let _190 := add(expr_406_slot, 2)
                    let _191 := read_from_storage_offset_0_t_address(_190)
                    let expr_407 := _191
                    update_storage_value_offset_0t_address_to_t_address(0x03, expr_407)
                    let expr_408 := expr_407
                    let expr_414 := 0x01
                    let _192 := 0x02
                    let expr_410 := _192
                    let _193 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_411 := _193
                    let _194 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_410,expr_411)
                    let _195_slot := _194
                    let expr_412_slot := _195_slot
                    let _196 := add(expr_412_slot, 2)
                    update_storage_value_offset_20t_bool_to_t_bool(_196, expr_414)
                    let expr_415 := expr_414
                    let _197 := 0x01
                    let expr_417 := _197
                    let _198 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_418 := _198
                    let expr_419 := 0x01
                    let expr_420 := checked_sub_t_uint256(expr_418, convert_t_rational_1_by_1_to_t_uint256(expr_419))

                    let expr_421 := expr_420
                    let _199 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_417,expr_421)
                    let _200_slot := _199
                    let expr_422_slot := _200_slot
                    let _201 := add(expr_422_slot, 4)
                    let _202 := read_from_storage_offset_0_t_uint256(_201)
                    let expr_423 := _202
                    let expr_424 := 0x00
                    let expr_425 := eq(cleanup_t_uint256(expr_423), convert_t_rational_0_by_1_to_t_uint256(expr_424))
                    let expr_426 := expr_425
                    if expr_426 {
                        let expr_432 := number()
                        let _203 := 0x01
                        let expr_427 := _203
                        let _204 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_428 := _204
                        let _205 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_427,expr_428)
                        let _206_slot := _205
                        let expr_429_slot := _206_slot
                        let _207 := add(expr_429_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_207, expr_432)
                        let expr_433 := expr_432
                        let expr_440 := number()
                        let _208 := read_from_storage_offset_0_t_uint256(0x05)
                        let expr_441 := _208
                        let expr_442 := checked_add_t_uint256(expr_440, expr_441)

                        let expr_443 := expr_442
                        let _209 := 0x01
                        let expr_435 := _209
                        let _210 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_436 := _210
                        let _211 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_435,expr_436)
                        let _212_slot := _211
                        let expr_437_slot := _212_slot
                        let _213 := add(expr_437_slot, 1)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_213, expr_443)
                        let expr_444 := expr_443
                        let _215 := read_from_storage_offset_0_t_uint256(0x00)
                        let _214 := increment_t_uint256(_215)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _214)
                        let expr_447 := _215
                    }
                }

            }

            function fun_observe__0_467(vloc_i_456) -> vloc__459 {
                let zero_value_for_type_t_uint256_216 := zero_value_for_split_t_uint256()
                vloc__459 := zero_value_for_type_t_uint256_216

                let _217 := 0x01
                let expr_461 := _217
                let _218 := vloc_i_456
                let expr_462 := _218
                let _219 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_461,expr_462)
                let _220_slot := _219
                let expr_463_slot := _220_slot
                let _221 := add(expr_463_slot, 3)
                let _222 := read_from_storage_offset_0_t_uint256(_221)
                let expr_464 := _222
                vloc__459 := expr_464
                leave

            }

            function fun_observe__1_484(vloc_i_469) -> vloc__472 {
                let zero_value_for_type_t_bool_223 := zero_value_for_split_t_bool()
                vloc__472 := zero_value_for_type_t_bool_223

                let _224 := 0x02
                let expr_474 := _224
                let _225 := vloc_i_469
                let expr_475 := _225
                let _226 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_474,expr_475)
                let _227_slot := _226
                let expr_476_slot := _227_slot
                let _228 := add(expr_476_slot, 1)
                let _229 := _228
                let expr_477 := _229
                let expr_479 := caller()
                let _230 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_477,expr_479)
                let _231_slot := _230
                let expr_480_slot := _231_slot
                let _232 := add(expr_480_slot, 1)
                let _233 := read_from_storage_offset_0_t_bool(_232)
                let expr_481 := _233
                vloc__472 := expr_481
                leave

            }

            function fun_observe__2_492() -> vloc__487 {
                let zero_value_for_type_t_uint256_234 := zero_value_for_split_t_uint256()
                vloc__487 := zero_value_for_type_t_uint256_234

                let _235 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_489 := _235
                vloc__487 := expr_489
                leave

            }

            function fun_observe__3_509(vloc_i_494) -> vloc__497 {
                let zero_value_for_type_t_uint256_236 := zero_value_for_split_t_uint256()
                vloc__497 := zero_value_for_type_t_uint256_236

                let _237 := 0x02
                let expr_499 := _237
                let _238 := vloc_i_494
                let expr_500 := _238
                let _239 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_499,expr_500)
                let _240_slot := _239
                let expr_501_slot := _240_slot
                let _241 := add(expr_501_slot, 1)
                let _242 := _241
                let expr_502 := _242
                let expr_504 := caller()
                let _243 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_502,expr_504)
                let _244_slot := _243
                let expr_505_slot := _244_slot
                let _245 := add(expr_505_slot, 0)
                let _246 := read_from_storage_offset_0_t_uint256(_245)
                let expr_506 := _246
                vloc__497 := expr_506
                leave

            }

            function fun_observe__4_526(vloc_i_511) -> vloc__514 {
                let zero_value_for_type_t_bool_247 := zero_value_for_split_t_bool()
                vloc__514 := zero_value_for_type_t_bool_247

                let _248 := 0x02
                let expr_516 := _248
                let _249 := vloc_i_511
                let expr_517 := _249
                let _250 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_516,expr_517)
                let _251_slot := _250
                let expr_518_slot := _251_slot
                let _252 := add(expr_518_slot, 1)
                let _253 := _252
                let expr_519 := _253
                let expr_521 := caller()
                let _254 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_519,expr_521)
                let _255_slot := _254
                let expr_522_slot := _255_slot
                let _256 := add(expr_522_slot, 1)
                let _257 := read_from_storage_offset_1_t_bool(_256)
                let expr_523 := _257
                vloc__514 := expr_523
                leave

            }

            function fun_observe__5_548(vloc_i_528) -> vloc__531 {
                let zero_value_for_type_t_uint256_258 := zero_value_for_split_t_uint256()
                vloc__531 := zero_value_for_type_t_uint256_258

                let _259 := 0x02
                let expr_533 := _259
                let _260 := vloc_i_528
                let expr_534 := _260
                let _261 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_533,expr_534)
                let _262_slot := _261
                let expr_535_slot := _262_slot
                let _263 := add(expr_535_slot, 0)
                let _264 := _263
                let expr_536 := _264
                let _265 := 0x02
                let expr_537 := _265
                let _266 := vloc_i_528
                let expr_538 := _266
                let _267 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_537,expr_538)
                let _268_slot := _267
                let expr_539_slot := _268_slot
                let _269 := add(expr_539_slot, 1)
                let _270 := _269
                let expr_540 := _270
                let expr_542 := caller()
                let _271 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_540,expr_542)
                let _272_slot := _271
                let expr_543_slot := _272_slot
                let _273 := add(expr_543_slot, 0)
                let _274 := read_from_storage_offset_0_t_uint256(_273)
                let expr_544 := _274
                let _275 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_536,expr_544)
                let _276 := read_from_storage_offset_0_t_uint256(_275)
                let expr_545 := _276
                vloc__531 := expr_545
                leave

            }

            function fun_observe__6_561(vloc_i_550) -> vloc__553 {
                let zero_value_for_type_t_uint256_277 := zero_value_for_split_t_uint256()
                vloc__553 := zero_value_for_type_t_uint256_277

                let _278 := 0x01
                let expr_555 := _278
                let _279 := vloc_i_550
                let expr_556 := _279
                let _280 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_555,expr_556)
                let _281_slot := _280
                let expr_557_slot := _281_slot
                let _282 := add(expr_557_slot, 4)
                let _283 := read_from_storage_offset_0_t_uint256(_282)
                let expr_558 := _283
                vloc__553 := expr_558
                leave

            }

            function fun_observe__7_574(vloc_i_563) -> vloc__566 {
                let zero_value_for_type_t_uint256_284 := zero_value_for_split_t_uint256()
                vloc__566 := zero_value_for_type_t_uint256_284

                let _285 := 0x01
                let expr_568 := _285
                let _286 := vloc_i_563
                let expr_569 := _286
                let _287 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_568,expr_569)
                let _288_slot := _287
                let expr_570_slot := _288_slot
                let _289 := add(expr_570_slot, 1)
                let _290 := read_from_storage_offset_0_t_uint256(_289)
                let expr_571 := _290
                vloc__566 := expr_571
                leave

            }

            function fun_observe__8_587(vloc_i_576) -> vloc__579 {
                let zero_value_for_type_t_uint256_291 := zero_value_for_split_t_uint256()
                vloc__579 := zero_value_for_type_t_uint256_291

                let _292 := 0x01
                let expr_581 := _292
                let _293 := vloc_i_576
                let expr_582 := _293
                let _294 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_581,expr_582)
                let _295_slot := _294
                let expr_583_slot := _295_slot
                let _296 := add(expr_583_slot, 0)
                let _297 := read_from_storage_offset_0_t_uint256(_296)
                let expr_584 := _297
                vloc__579 := expr_584
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
                let expr_140 := 0x01
                let _22 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_rational_1_by_1(expr_139,expr_140)
                let _23_slot := _22
                let expr_141_slot := _23_slot
                let _24 := add(expr_141_slot, 1)
                let _25 := _24
                let expr_142 := _25
                let expr_144 := caller()
                let _26 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_142,expr_144)
                let _27_slot := _26
                let expr_145_slot := _27_slot
                let _28 := add(expr_145_slot, 1)
                let _29 := read_from_storage_offset_0_t_bool(_28)
                let expr_146 := _29
                let expr_147 := cleanup_t_bool(iszero(expr_146))
                require_helper(expr_147)
                let vloc_nextCandidateId_151
                let zero_value_for_type_t_uint256_30 := zero_value_for_split_t_uint256()
                vloc_nextCandidateId_151 := zero_value_for_type_t_uint256_30
                let _31 := 0x01
                let expr_154 := _31
                let _32 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_155 := _32
                let _33 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_154,expr_155)
                let _34_slot := _33
                let expr_156_slot := _34_slot
                let _35 := add(expr_156_slot, 3)
                let _36 := read_from_storage_offset_0_t_uint256(_35)
                let expr_157 := _36
                vloc_nextCandidateId_151 := expr_157
                let expr_158 := expr_157
                let expr_167 := caller()
                let _37 := convert_t_address_payable_to_t_address(expr_167)
                let _38 := 0x02
                let expr_160 := _38
                let _39 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_161 := _39
                let _40 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_160,expr_161)
                let _41_slot := _40
                let expr_162_slot := _41_slot
                let _42 := add(expr_162_slot, 3)
                let _43 := _42
                let expr_163 := _43
                let _44 := vloc_nextCandidateId_151
                let expr_164 := _44
                let _45 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_163,expr_164)
                update_storage_value_offset_0t_address_to_t_address(_45, _37)
                let expr_168 := _37
                let expr_170 := 0x00
                if expr_170 {
                    let _46 := vloc_nextCandidateId_151
                    let expr_182 := _46
                    let _47 := 0x02
                    let expr_171 := _47
                    let _48 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_172 := _48
                    let expr_173 := 0x01
                    let expr_174 := checked_sub_t_uint256(expr_172, convert_t_rational_1_by_1_to_t_uint256(expr_173))

                    let expr_175 := expr_174
                    let _49 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_171,expr_175)
                    let _50_slot := _49
                    let expr_176_slot := _50_slot
                    let _51 := add(expr_176_slot, 1)
                    let _52 := _51
                    let expr_177 := _52
                    let expr_179 := caller()
                    let _53 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_177,expr_179)
                    let _54_slot := _53
                    let expr_180_slot := _54_slot
                    let _55 := add(expr_180_slot, 0)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_55, expr_182)
                    let expr_183 := expr_182
                }
                let _56 := 0x01
                let expr_187 := _56
                let _57 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_188 := _57
                let expr_189 := 0x01
                let expr_190 := checked_sub_t_uint256(expr_188, convert_t_rational_1_by_1_to_t_uint256(expr_189))

                let expr_191 := expr_190
                let _58 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_187,expr_191)
                let _59_slot := _58
                let expr_192_slot := _59_slot
                let _60 := add(expr_192_slot, 3)
                let _62 := read_from_storage_offset_0_t_uint256(_60)
                let _61 := increment_t_uint256(_62)
                update_storage_value_offset_0t_uint256_to_t_uint256(_60, _61)
                let expr_194 := _62
                let expr_196 := 0x01
                if expr_196 {
                    let expr_208 := 0x01
                    let _63 := 0x02
                    let expr_197 := _63
                    let _64 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_198 := _64
                    let expr_199 := 0x01
                    let expr_200 := checked_sub_t_uint256(expr_198, convert_t_rational_1_by_1_to_t_uint256(expr_199))

                    let expr_201 := expr_200
                    let _65 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_197,expr_201)
                    let _66_slot := _65
                    let expr_202_slot := _66_slot
                    let _67 := add(expr_202_slot, 1)
                    let _68 := _67
                    let expr_203 := _68
                    let expr_205 := caller()
                    let _69 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_203,expr_205)
                    let _70_slot := _69
                    let expr_206_slot := _70_slot
                    let _71 := add(expr_206_slot, 1)
                    update_storage_value_offset_0t_bool_to_t_bool(_71, expr_208)
                    let expr_209 := expr_208
                }

            }

            function fun_vote_294(vloc__participant_216) {

                let _72 := 0x01
                let expr_220 := _72
                let _73 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_221 := _73
                let expr_222 := 0x01
                let expr_223 := checked_sub_t_uint256(expr_221, convert_t_rational_1_by_1_to_t_uint256(expr_222))

                let expr_224 := expr_223
                let _74 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_220,expr_224)
                let _75_slot := _74
                let expr_225_slot := _75_slot
                let _76 := add(expr_225_slot, 1)
                let _77 := read_from_storage_offset_0_t_uint256(_76)
                let expr_226 := _77
                let expr_228 := number()
                let expr_229 := gt(cleanup_t_uint256(expr_226), cleanup_t_uint256(expr_228))
                let expr_230 := expr_229
                require_helper(expr_230)
                let _78 := 0x02
                let expr_234 := _78
                let _79 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_235 := _79
                let expr_236 := 0x01
                let expr_237 := checked_sub_t_uint256(expr_235, convert_t_rational_1_by_1_to_t_uint256(expr_236))

                let expr_238 := expr_237
                let _80 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_234,expr_238)
                let _81_slot := _80
                let expr_239_slot := _81_slot
                let _82 := add(expr_239_slot, 1)
                let _83 := _82
                let expr_240 := _83
                let expr_242 := caller()
                let _84 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_240,expr_242)
                let _85_slot := _84
                let expr_243_slot := _85_slot
                let _86 := add(expr_243_slot, 1)
                let _87 := read_from_storage_offset_1_t_bool(_86)
                let expr_244 := _87
                let expr_245 := cleanup_t_bool(iszero(expr_244))
                require_helper(expr_245)
                let vloc_candidateId_249
                let zero_value_for_type_t_uint256_88 := zero_value_for_split_t_uint256()
                vloc_candidateId_249 := zero_value_for_type_t_uint256_88
                let _89 := 0x02
                let expr_252 := _89
                let _90 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_253 := _90
                let expr_254 := 0x01
                let expr_255 := checked_sub_t_uint256(expr_253, convert_t_rational_1_by_1_to_t_uint256(expr_254))

                let expr_256 := expr_255
                let _91 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_252,expr_256)
                let _92_slot := _91
                let expr_257_slot := _92_slot
                let _93 := add(expr_257_slot, 1)
                let _94 := _93
                let expr_258 := _94
                let _95 := vloc__participant_216
                let expr_259 := _95
                let _96 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address(expr_258,expr_259)
                let _97_slot := _96
                let expr_260_slot := _97_slot
                let _98 := add(expr_260_slot, 0)
                let _99 := read_from_storage_offset_0_t_uint256(_98)
                let expr_261 := _99
                vloc_candidateId_249 := expr_261
                let expr_262 := expr_261
                let expr_273 := 0x01
                let _100 := convert_t_rational_1_by_1_to_t_uint256(expr_273)
                let _101 := 0x02
                let expr_264 := _101
                let _102 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_265 := _102
                let expr_266 := 0x01
                let expr_267 := checked_sub_t_uint256(expr_265, convert_t_rational_1_by_1_to_t_uint256(expr_266))

                let expr_268 := expr_267
                let _103 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_264,expr_268)
                let _104_slot := _103
                let expr_269_slot := _104_slot
                let _105 := add(expr_269_slot, 0)
                let _106 := _105
                let expr_270 := _106
                let _107 := vloc_candidateId_249
                let expr_271 := _107
                let _108 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_270,expr_271)
                let _109 := read_from_storage_offset_0_t_uint256(_108)
                _100 := checked_add_t_uint256(_109, _100)
                update_storage_value_offset_0t_uint256_to_t_uint256(_108, _100)
                let expr_274 := _100
                let expr_276 := 0x01
                if expr_276 {
                    let expr_288 := 0x01
                    let _110 := 0x02
                    let expr_277 := _110
                    let _111 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_278 := _111
                    let expr_279 := 0x01
                    let expr_280 := checked_sub_t_uint256(expr_278, convert_t_rational_1_by_1_to_t_uint256(expr_279))

                    let expr_281 := expr_280
                    let _112 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_277,expr_281)
                    let _113_slot := _112
                    let expr_282_slot := _113_slot
                    let _114 := add(expr_282_slot, 1)
                    let _115 := _114
                    let expr_283 := _115
                    let expr_285 := caller()
                    let _116 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_283,expr_285)
                    let _117_slot := _116
                    let expr_286_slot := _117_slot
                    let _118 := add(expr_286_slot, 1)
                    update_storage_value_offset_1t_bool_to_t_bool(_118, expr_288)
                    let expr_289 := expr_288
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

