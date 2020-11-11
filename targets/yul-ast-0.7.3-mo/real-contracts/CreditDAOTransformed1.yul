/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAOTransformed1_591" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAOTransformed1_591()

        codecopy(0, dataoffset("CreditDAOTransformed1_591_deployed"), datasize("CreditDAOTransformed1_591_deployed"))

        return(0, datasize("CreditDAOTransformed1_591_deployed"))

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

        function constructor_CreditDAOTransformed1_591() {

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
    object "CreditDAOTransformed1_591_deployed" {
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
                    let ret_0 :=  fun_observe__1_475(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2c77aaca
                {
                    // observe__0(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__0_458(param_0)
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
                    let ret_0 :=  fun_observe__5_539(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5467d725
                {
                    // observe__6(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__6_556(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_483()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5c647684
                {
                    // observe__7(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__7_573(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6dd7d8ea
                {
                    // vote(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_vote_285(param_0)
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
                    let ret_0 :=  fun_observe__3_500(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__8_590(param_0)
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
                    let ret_0 :=  fun_observe__4_517(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe79206e6
                {
                    // finishElections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_finishElections_445(param_0)
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

            function fun_finishElections_445(vloc__iterations_287) {

                let vloc_curentVotes_291
                let zero_value_for_type_t_uint256_120 := zero_value_for_split_t_uint256()
                vloc_curentVotes_291 := zero_value_for_type_t_uint256_120
                let vloc_nextCandidateId_294
                let zero_value_for_type_t_uint256_121 := zero_value_for_split_t_uint256()
                vloc_nextCandidateId_294 := zero_value_for_type_t_uint256_121
                let _122 := 0x01
                let expr_297 := _122
                let _123 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_298 := _123
                let expr_299 := 0x01
                let expr_300 := checked_sub_t_uint256(expr_298, convert_t_rational_1_by_1_to_t_uint256(expr_299))

                let expr_301 := expr_300
                let _124 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_297,expr_301)
                let _125_slot := _124
                let expr_302_slot := _125_slot
                let _126 := add(expr_302_slot, 5)
                let _127 := read_from_storage_offset_0_t_uint256(_126)
                let expr_303 := _127
                vloc_nextCandidateId_294 := expr_303
                let expr_304 := expr_303
                let vloc_cnt_307
                let zero_value_for_type_t_uint256_128 := zero_value_for_split_t_uint256()
                vloc_cnt_307 := zero_value_for_type_t_uint256_128
                let expr_310 := 0x00
                let _129 := convert_t_rational_0_by_1_to_t_uint256(expr_310)
                vloc_cnt_307 := _129
                let expr_311 := _129
                for {
                    } 1 {
                }
                {
                    let _130 := vloc_cnt_307
                    let expr_313 := _130
                    let _131 := vloc__iterations_287
                    let expr_314 := _131
                    let expr_315 := lt(cleanup_t_uint256(expr_313), cleanup_t_uint256(expr_314))
                    let expr_316 := expr_315
                    if iszero(expr_316) { break }
                    let _132 := 0x02
                    let expr_318 := _132
                    let _133 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_319 := _133
                    let _134 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_318,expr_319)
                    let _135_slot := _134
                    let expr_320_slot := _135_slot
                    let _136 := add(expr_320_slot, 0)
                    let _137 := _136
                    let expr_321 := _137
                    let _138 := vloc_nextCandidateId_294
                    let expr_322 := _138
                    let _139 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_321,expr_322)
                    let _140 := read_from_storage_offset_0_t_uint256(_139)
                    let expr_323 := _140
                    vloc_curentVotes_291 := expr_323
                    let expr_324 := expr_323
                    let _141 := vloc_curentVotes_291
                    let expr_326 := _141
                    let _142 := 0x01
                    let expr_327 := _142
                    let _143 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_328 := _143
                    let expr_329 := 0x01
                    let expr_330 := checked_sub_t_uint256(expr_328, convert_t_rational_1_by_1_to_t_uint256(expr_329))

                    let expr_331 := expr_330
                    let _144 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_327,expr_331)
                    let _145_slot := _144
                    let expr_332_slot := _145_slot
                    let _146 := add(expr_332_slot, 4)
                    let _147 := read_from_storage_offset_0_t_uint256(_146)
                    let expr_333 := _147
                    let expr_334 := gt(cleanup_t_uint256(expr_326), cleanup_t_uint256(expr_333))
                    let expr_335 := expr_334
                    if expr_335 {
                        let _148 := 0x02
                        let expr_340 := _148
                        let _149 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_341 := _149
                        let _150 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_340,expr_341)
                        let _151_slot := _150
                        let expr_342_slot := _151_slot
                        let _152 := add(expr_342_slot, 3)
                        let _153 := _152
                        let expr_343 := _153
                        let _154 := vloc_nextCandidateId_294
                        let expr_344 := _154
                        let _155 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_343,expr_344)
                        let _156 := read_from_storage_offset_0_t_address(_155)
                        let expr_345 := _156
                        let _157 := 0x02
                        let expr_336 := _157
                        let _158 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_337 := _158
                        let _159 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_336,expr_337)
                        let _160_slot := _159
                        let expr_338_slot := _160_slot
                        let _161 := add(expr_338_slot, 2)
                        update_storage_value_offset_0t_address_to_t_address(_161, expr_345)
                        let expr_346 := expr_345
                        let _162 := vloc_curentVotes_291
                        let expr_355 := _162
                        let _163 := 0x01
                        let expr_348 := _163
                        let _164 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_349 := _164
                        let expr_350 := 0x01
                        let expr_351 := checked_sub_t_uint256(expr_349, convert_t_rational_1_by_1_to_t_uint256(expr_350))

                        let expr_352 := expr_351
                        let _165 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_348,expr_352)
                        let _166_slot := _165
                        let expr_353_slot := _166_slot
                        let _167 := add(expr_353_slot, 4)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_167, expr_355)
                        let expr_356 := expr_355
                    }
                    let _169 := vloc_nextCandidateId_294
                    let _168 := increment_t_uint256(_169)
                    vloc_nextCandidateId_294 := _168
                    let expr_361 := _169
                    let _171 := vloc_cnt_307
                    let _170 := increment_t_uint256(_171)
                    vloc_cnt_307 := _170
                    let expr_364 := _171
                }
                let _172 := vloc_nextCandidateId_294
                let expr_376 := _172
                let _173 := 0x01
                let expr_369 := _173
                let _174 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_370 := _174
                let expr_371 := 0x01
                let expr_372 := checked_sub_t_uint256(expr_370, convert_t_rational_1_by_1_to_t_uint256(expr_371))

                let expr_373 := expr_372
                let _175 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_369,expr_373)
                let _176_slot := _175
                let expr_374_slot := _176_slot
                let _177 := add(expr_374_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_177, expr_376)
                let expr_377 := expr_376
                let _178 := 0x02
                let expr_379 := _178
                let _179 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_380 := _179
                let _180 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_379,expr_380)
                let _181_slot := _180
                let expr_381_slot := _181_slot
                let _182 := add(expr_381_slot, 3)
                let _183 := _182
                let expr_382 := _183
                let _184 := vloc_nextCandidateId_294
                let expr_383 := _184
                let _185 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_382,expr_383)
                let _186 := read_from_storage_offset_0_t_address(_185)
                let expr_384 := _186
                let expr_387 := 0x00
                let expr_388 := convert_t_rational_0_by_1_to_t_address_payable(expr_387)
                let expr_389 := eq(cleanup_t_address(expr_384), convert_t_address_payable_to_t_address(expr_388))
                let expr_390 := expr_389
                if expr_390 {
                    let _187 := 0x02
                    let expr_392 := _187
                    let _188 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_393 := _188
                    let _189 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_392,expr_393)
                    let _190_slot := _189
                    let expr_394_slot := _190_slot
                    let _191 := add(expr_394_slot, 2)
                    let _192 := read_from_storage_offset_0_t_address(_191)
                    let expr_395 := _192
                    update_storage_value_offset_0t_address_to_t_address(0x03, expr_395)
                    let expr_396 := expr_395
                    let expr_405 := 0x01
                    let _193 := 0x02
                    let expr_398 := _193
                    let _194 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_399 := _194
                    let expr_400 := 0x01
                    let expr_401 := checked_sub_t_uint256(expr_399, convert_t_rational_1_by_1_to_t_uint256(expr_400))

                    let expr_402 := expr_401
                    let _195 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_398,expr_402)
                    let _196_slot := _195
                    let expr_403_slot := _196_slot
                    let _197 := add(expr_403_slot, 2)
                    update_storage_value_offset_20t_bool_to_t_bool(_197, expr_405)
                    let expr_406 := expr_405
                    let _198 := 0x01
                    let expr_408 := _198
                    let _199 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_409 := _199
                    let expr_410 := 0x01
                    let expr_411 := checked_sub_t_uint256(expr_409, convert_t_rational_1_by_1_to_t_uint256(expr_410))

                    let expr_412 := expr_411
                    let _200 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_408,expr_412)
                    let _201_slot := _200
                    let expr_413_slot := _201_slot
                    let _202 := add(expr_413_slot, 4)
                    let _203 := read_from_storage_offset_0_t_uint256(_202)
                    let expr_414 := _203
                    let expr_415 := 0x00
                    let expr_416 := eq(cleanup_t_uint256(expr_414), convert_t_rational_0_by_1_to_t_uint256(expr_415))
                    let expr_417 := expr_416
                    if expr_417 {
                        let expr_423 := number()
                        let _204 := 0x01
                        let expr_418 := _204
                        let _205 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_419 := _205
                        let _206 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_418,expr_419)
                        let _207_slot := _206
                        let expr_420_slot := _207_slot
                        let _208 := add(expr_420_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_208, expr_423)
                        let expr_424 := expr_423
                        let expr_431 := number()
                        let _209 := read_from_storage_offset_0_t_uint256(0x05)
                        let expr_432 := _209
                        let expr_433 := checked_add_t_uint256(expr_431, expr_432)

                        let expr_434 := expr_433
                        let _210 := 0x01
                        let expr_426 := _210
                        let _211 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_427 := _211
                        let _212 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_426,expr_427)
                        let _213_slot := _212
                        let expr_428_slot := _213_slot
                        let _214 := add(expr_428_slot, 1)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_214, expr_434)
                        let expr_435 := expr_434
                        let _216 := read_from_storage_offset_0_t_uint256(0x00)
                        let _215 := increment_t_uint256(_216)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _215)
                        let expr_438 := _216
                    }
                }

            }

            function fun_observe__0_458(vloc_i_447) -> vloc__450 {
                let zero_value_for_type_t_uint256_217 := zero_value_for_split_t_uint256()
                vloc__450 := zero_value_for_type_t_uint256_217

                let _218 := 0x01
                let expr_452 := _218
                let _219 := vloc_i_447
                let expr_453 := _219
                let _220 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_452,expr_453)
                let _221_slot := _220
                let expr_454_slot := _221_slot
                let _222 := add(expr_454_slot, 3)
                let _223 := read_from_storage_offset_0_t_uint256(_222)
                let expr_455 := _223
                vloc__450 := expr_455
                leave

            }

            function fun_observe__1_475(vloc_i_460) -> vloc__463 {
                let zero_value_for_type_t_bool_224 := zero_value_for_split_t_bool()
                vloc__463 := zero_value_for_type_t_bool_224

                let _225 := 0x02
                let expr_465 := _225
                let _226 := vloc_i_460
                let expr_466 := _226
                let _227 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_465,expr_466)
                let _228_slot := _227
                let expr_467_slot := _228_slot
                let _229 := add(expr_467_slot, 1)
                let _230 := _229
                let expr_468 := _230
                let expr_470 := caller()
                let _231 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_468,expr_470)
                let _232_slot := _231
                let expr_471_slot := _232_slot
                let _233 := add(expr_471_slot, 1)
                let _234 := read_from_storage_offset_0_t_bool(_233)
                let expr_472 := _234
                vloc__463 := expr_472
                leave

            }

            function fun_observe__2_483() -> vloc__478 {
                let zero_value_for_type_t_uint256_235 := zero_value_for_split_t_uint256()
                vloc__478 := zero_value_for_type_t_uint256_235

                let _236 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_480 := _236
                vloc__478 := expr_480
                leave

            }

            function fun_observe__3_500(vloc_i_485) -> vloc__488 {
                let zero_value_for_type_t_uint256_237 := zero_value_for_split_t_uint256()
                vloc__488 := zero_value_for_type_t_uint256_237

                let _238 := 0x02
                let expr_490 := _238
                let _239 := vloc_i_485
                let expr_491 := _239
                let _240 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_490,expr_491)
                let _241_slot := _240
                let expr_492_slot := _241_slot
                let _242 := add(expr_492_slot, 1)
                let _243 := _242
                let expr_493 := _243
                let expr_495 := caller()
                let _244 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_493,expr_495)
                let _245_slot := _244
                let expr_496_slot := _245_slot
                let _246 := add(expr_496_slot, 0)
                let _247 := read_from_storage_offset_0_t_uint256(_246)
                let expr_497 := _247
                vloc__488 := expr_497
                leave

            }

            function fun_observe__4_517(vloc_i_502) -> vloc__505 {
                let zero_value_for_type_t_bool_248 := zero_value_for_split_t_bool()
                vloc__505 := zero_value_for_type_t_bool_248

                let _249 := 0x02
                let expr_507 := _249
                let _250 := vloc_i_502
                let expr_508 := _250
                let _251 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_507,expr_508)
                let _252_slot := _251
                let expr_509_slot := _252_slot
                let _253 := add(expr_509_slot, 1)
                let _254 := _253
                let expr_510 := _254
                let expr_512 := caller()
                let _255 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_510,expr_512)
                let _256_slot := _255
                let expr_513_slot := _256_slot
                let _257 := add(expr_513_slot, 1)
                let _258 := read_from_storage_offset_1_t_bool(_257)
                let expr_514 := _258
                vloc__505 := expr_514
                leave

            }

            function fun_observe__5_539(vloc_i_519) -> vloc__522 {
                let zero_value_for_type_t_uint256_259 := zero_value_for_split_t_uint256()
                vloc__522 := zero_value_for_type_t_uint256_259

                let _260 := 0x02
                let expr_524 := _260
                let _261 := vloc_i_519
                let expr_525 := _261
                let _262 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_524,expr_525)
                let _263_slot := _262
                let expr_526_slot := _263_slot
                let _264 := add(expr_526_slot, 0)
                let _265 := _264
                let expr_527 := _265
                let _266 := 0x02
                let expr_528 := _266
                let _267 := vloc_i_519
                let expr_529 := _267
                let _268 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_528,expr_529)
                let _269_slot := _268
                let expr_530_slot := _269_slot
                let _270 := add(expr_530_slot, 1)
                let _271 := _270
                let expr_531 := _271
                let expr_533 := caller()
                let _272 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_531,expr_533)
                let _273_slot := _272
                let expr_534_slot := _273_slot
                let _274 := add(expr_534_slot, 0)
                let _275 := read_from_storage_offset_0_t_uint256(_274)
                let expr_535 := _275
                let _276 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_527,expr_535)
                let _277 := read_from_storage_offset_0_t_uint256(_276)
                let expr_536 := _277
                vloc__522 := expr_536
                leave

            }

            function fun_observe__6_556(vloc_i_541) -> vloc__544 {
                let zero_value_for_type_t_uint256_278 := zero_value_for_split_t_uint256()
                vloc__544 := zero_value_for_type_t_uint256_278

                let _279 := 0x02
                let expr_546 := _279
                let _280 := vloc_i_541
                let expr_547 := _280
                let _281 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_546,expr_547)
                let _282_slot := _281
                let expr_548_slot := _282_slot
                let _283 := add(expr_548_slot, 1)
                let _284 := _283
                let expr_549 := _284
                let expr_551 := caller()
                let _285 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_549,expr_551)
                let _286_slot := _285
                let expr_552_slot := _286_slot
                let _287 := add(expr_552_slot, 0)
                let _288 := read_from_storage_offset_0_t_uint256(_287)
                let expr_553 := _288
                vloc__544 := expr_553
                leave

            }

            function fun_observe__7_573(vloc_i_558) -> vloc__561 {
                let zero_value_for_type_t_bool_289 := zero_value_for_split_t_bool()
                vloc__561 := zero_value_for_type_t_bool_289

                let _290 := 0x02
                let expr_563 := _290
                let _291 := vloc_i_558
                let expr_564 := _291
                let _292 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_563,expr_564)
                let _293_slot := _292
                let expr_565_slot := _293_slot
                let _294 := add(expr_565_slot, 1)
                let _295 := _294
                let expr_566 := _295
                let expr_568 := caller()
                let _296 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_566,expr_568)
                let _297_slot := _296
                let expr_569_slot := _297_slot
                let _298 := add(expr_569_slot, 1)
                let _299 := read_from_storage_offset_0_t_bool(_298)
                let expr_570 := _299
                vloc__561 := expr_570
                leave

            }

            function fun_observe__8_590(vloc_i_575) -> vloc__578 {
                let zero_value_for_type_t_bool_300 := zero_value_for_split_t_bool()
                vloc__578 := zero_value_for_type_t_bool_300

                let _301 := 0x02
                let expr_580 := _301
                let _302 := vloc_i_575
                let expr_581 := _302
                let _303 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_580,expr_581)
                let _304_slot := _303
                let expr_582_slot := _304_slot
                let _305 := add(expr_582_slot, 1)
                let _306 := _305
                let expr_583 := _306
                let expr_585 := caller()
                let _307 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_583,expr_585)
                let _308_slot := _307
                let expr_586_slot := _308_slot
                let _309 := add(expr_586_slot, 1)
                let _310 := read_from_storage_offset_1_t_bool(_309)
                let expr_587 := _310
                vloc__578 := expr_587
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
                let expr_176 := 0x00
                if expr_176 {
                    let _47 := vloc_nextCandidateId_154
                    let expr_185 := _47
                    let _48 := 0x02
                    let expr_177 := _48
                    let _49 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_178 := _49
                    let _50 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_177,expr_178)
                    let _51_slot := _50
                    let expr_179_slot := _51_slot
                    let _52 := add(expr_179_slot, 1)
                    let _53 := _52
                    let expr_180 := _53
                    let expr_182 := caller()
                    let _54 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_180,expr_182)
                    let _55_slot := _54
                    let expr_183_slot := _55_slot
                    let _56 := add(expr_183_slot, 0)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_56, expr_185)
                    let expr_186 := expr_185
                }
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
                let expr_199 := 0x00
                if expr_199 {
                    let expr_208 := 0x01
                    let _64 := 0x02
                    let expr_200 := _64
                    let _65 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_201 := _65
                    let _66 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_200,expr_201)
                    let _67_slot := _66
                    let expr_202_slot := _67_slot
                    let _68 := add(expr_202_slot, 1)
                    let _69 := _68
                    let expr_203 := _69
                    let expr_205 := caller()
                    let _70 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_203,expr_205)
                    let _71_slot := _70
                    let expr_206_slot := _71_slot
                    let _72 := add(expr_206_slot, 1)
                    update_storage_value_offset_0t_bool_to_t_bool(_72, expr_208)
                    let expr_209 := expr_208
                }

            }

            function fun_vote_285(vloc__participant_216) {

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
                let _81 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_234,expr_235)
                let _82_slot := _81
                let expr_236_slot := _82_slot
                let _83 := add(expr_236_slot, 1)
                let _84 := _83
                let expr_237 := _84
                let expr_239 := caller()
                let _85 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_237,expr_239)
                let _86_slot := _85
                let expr_240_slot := _86_slot
                let _87 := add(expr_240_slot, 1)
                let _88 := read_from_storage_offset_1_t_bool(_87)
                let expr_241 := _88
                let expr_242 := cleanup_t_bool(iszero(expr_241))
                require_helper(expr_242)
                let vloc_candidateId_246
                let zero_value_for_type_t_uint256_89 := zero_value_for_split_t_uint256()
                vloc_candidateId_246 := zero_value_for_type_t_uint256_89
                let _90 := 0x02
                let expr_249 := _90
                let _91 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_250 := _91
                let _92 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_249,expr_250)
                let _93_slot := _92
                let expr_251_slot := _93_slot
                let _94 := add(expr_251_slot, 1)
                let _95 := _94
                let expr_252 := _95
                let _96 := vloc__participant_216
                let expr_253 := _96
                let _97 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address(expr_252,expr_253)
                let _98_slot := _97
                let expr_254_slot := _98_slot
                let _99 := add(expr_254_slot, 0)
                let _100 := read_from_storage_offset_0_t_uint256(_99)
                let expr_255 := _100
                vloc_candidateId_246 := expr_255
                let expr_256 := expr_255
                let expr_267 := 0x01
                let _101 := convert_t_rational_1_by_1_to_t_uint256(expr_267)
                let _102 := 0x02
                let expr_258 := _102
                let _103 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_259 := _103
                let expr_260 := 0x01
                let expr_261 := checked_sub_t_uint256(expr_259, convert_t_rational_1_by_1_to_t_uint256(expr_260))

                let expr_262 := expr_261
                let _104 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_258,expr_262)
                let _105_slot := _104
                let expr_263_slot := _105_slot
                let _106 := add(expr_263_slot, 0)
                let _107 := _106
                let expr_264 := _107
                let _108 := vloc_candidateId_246
                let expr_265 := _108
                let _109 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_264,expr_265)
                let _110 := read_from_storage_offset_0_t_uint256(_109)
                _101 := checked_add_t_uint256(_110, _101)
                update_storage_value_offset_0t_uint256_to_t_uint256(_109, _101)
                let expr_268 := _101
                let expr_270 := 0x00
                if expr_270 {
                    let expr_279 := 0x01
                    let _111 := 0x02
                    let expr_271 := _111
                    let _112 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_272 := _112
                    let _113 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$31_storage_$_of_t_uint256(expr_271,expr_272)
                    let _114_slot := _113
                    let expr_273_slot := _114_slot
                    let _115 := add(expr_273_slot, 1)
                    let _116 := _115
                    let expr_274 := _116
                    let expr_276 := caller()
                    let _117 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$38_storage_$_of_t_address_payable(expr_274,expr_276)
                    let _118_slot := _117
                    let expr_277_slot := _118_slot
                    let _119 := add(expr_277_slot, 1)
                    update_storage_value_offset_1t_bool_to_t_bool(_119, expr_279)
                    let expr_280 := expr_279
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

