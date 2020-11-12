/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAO_568" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAO_568()

        codecopy(0, dataoffset("CreditDAO_568_deployed"), datasize("CreditDAO_568_deployed"))

        return(0, datasize("CreditDAO_568_deployed"))

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

        function constructor_CreditDAO_568() {

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

            let expr_71 := expr_70
            let _7 := 0x01
            let expr_63 := _7
            let _8 := read_from_storage_offset_0_t_uint256(0x00)
            let expr_64 := _8
            let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_63,expr_64)
            let _10_slot := _9
            let expr_65_slot := _10_slot
            let _11 := add(expr_65_slot, 1)
            update_storage_value_offset_0t_uint256_to_t_uint256(_11, expr_71)
            let expr_72 := expr_71
            let _13 := read_from_storage_offset_0_t_uint256(0x00)
            let _12 := increment_t_uint256(_13)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _12)
            let expr_75 := _13

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
    object "CreditDAO_568_deployed" {
        code {
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x10cc969b
                {
                    // sumbitForElection()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_sumbitForElection_198()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa6b297
                {
                    // observe__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__1_467(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2c77aaca
                {
                    // observe__0(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__0_451(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

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

                case 0x53163323
                {
                    // observe__5(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__5_528(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5467d725
                {
                    // observe__6(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__6_541(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_475()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5c647684
                {
                    // observe__7(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__7_554(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
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
                    fun_vote_269(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x74c80467
                {
                    // createNewElections()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_createNewElections_111()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7daed24c
                {
                    // observe__3(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__3_491(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__8_567(param_0)
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
                    let ret_0 :=  fun_observe__4_507(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe79206e6
                {
                    // finishElections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_finishElections_438(param_0)
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

            function fun_createNewElections_111() {

                let expr_86 := number()
                let _1 := 0x01
                let expr_81 := _1
                let _2 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_82 := _2
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_81,expr_82)
                let _4_slot := _3
                let expr_83_slot := _4_slot
                let _5 := add(expr_83_slot, 0)
                update_storage_value_offset_0t_uint256_to_t_uint256(_5, expr_86)
                let expr_87 := expr_86
                let expr_94 := number()
                let _6 := read_from_storage_offset_0_t_uint256(0x04)
                let expr_95 := _6
                let expr_96 := checked_add_t_uint256(expr_94, expr_95)

                let expr_97 := expr_96
                let _7 := 0x01
                let expr_89 := _7
                let _8 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_90 := _8
                let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_89,expr_90)
                let _10_slot := _9
                let expr_91_slot := _10_slot
                let _11 := add(expr_91_slot, 1)
                update_storage_value_offset_0t_uint256_to_t_uint256(_11, expr_97)
                let expr_98 := expr_97
                let _13 := read_from_storage_offset_0_t_uint256(0x00)
                let _12 := increment_t_uint256(_13)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _12)
                let expr_101 := _13
                let expr_106 := 0x00
                let expr_107 := convert_t_rational_0_by_1_to_t_address_payable(expr_106)
                let _14 := convert_t_address_payable_to_t_address(expr_107)
                update_storage_value_offset_0t_address_to_t_address(0x02, _14)
                let expr_108 := _14

            }

            function fun_finishElections_438(vloc__iterations_271) {

                let vloc_curentVotes_275
                let zero_value_for_type_t_uint256_106 := zero_value_for_split_t_uint256()
                vloc_curentVotes_275 := zero_value_for_type_t_uint256_106
                let _107 := 0x01
                let expr_279 := _107
                let _108 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_280 := _108
                let expr_281 := 0x01
                let expr_282 := checked_sub_t_uint256(expr_280, convert_t_rational_1_by_1_to_t_uint256(expr_281))

                let expr_283 := expr_282
                let _109 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_279,expr_283)
                let _110_slot := _109
                let expr_284_slot := _110_slot
                let _111 := add(expr_284_slot, 12)
                let _112 := read_from_storage_offset_0_t_uint256(_111)
                let expr_285 := _112
                let vloc_nextCandidateId_278 := expr_285
                let expr_289 := 0x00
                let vloc_cnt_288 := convert_t_rational_0_by_1_to_t_uint256(expr_289)
                for {
                    } 1 {
                }
                {
                    let _113 := vloc_cnt_288
                    let expr_291 := _113
                    let _114 := vloc__iterations_271
                    let expr_292 := _114
                    let expr_293 := lt(cleanup_t_uint256(expr_291), cleanup_t_uint256(expr_292))
                    let expr_294 := expr_293
                    if iszero(expr_294) { break }
                    let _115 := 0x01
                    let expr_296 := _115
                    let _116 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_297 := _116
                    let expr_298 := 0x01
                    let expr_299 := checked_sub_t_uint256(expr_297, convert_t_rational_1_by_1_to_t_uint256(expr_298))

                    let expr_300 := expr_299
                    let _117 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_296,expr_300)
                    let _118_slot := _117
                    let expr_301_slot := _118_slot
                    let _119 := add(expr_301_slot, 7)
                    let _120 := _119
                    let expr_302 := _120
                    let _121 := vloc_nextCandidateId_278
                    let expr_303 := _121
                    let _122 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_302,expr_303)
                    let _123 := read_from_storage_offset_0_t_uint256(_122)
                    let expr_304 := _123
                    vloc_curentVotes_275 := expr_304
                    let expr_305 := expr_304
                    let _124 := vloc_curentVotes_275
                    let expr_307 := _124
                    let _125 := 0x01
                    let expr_308 := _125
                    let _126 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_309 := _126
                    let expr_310 := 0x01
                    let expr_311 := checked_sub_t_uint256(expr_309, convert_t_rational_1_by_1_to_t_uint256(expr_310))

                    let expr_312 := expr_311
                    let _127 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_308,expr_312)
                    let _128_slot := _127
                    let expr_313_slot := _128_slot
                    let _129 := add(expr_313_slot, 11)
                    let _130 := read_from_storage_offset_0_t_uint256(_129)
                    let expr_314 := _130
                    let expr_315 := gt(cleanup_t_uint256(expr_307), cleanup_t_uint256(expr_314))
                    let expr_316 := expr_315
                    if expr_316 {
                        let _131 := 0x01
                        let expr_324 := _131
                        let _132 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_325 := _132
                        let expr_326 := 0x01
                        let expr_327 := checked_sub_t_uint256(expr_325, convert_t_rational_1_by_1_to_t_uint256(expr_326))

                        let expr_328 := expr_327
                        let _133 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_324,expr_328)
                        let _134_slot := _133
                        let expr_329_slot := _134_slot
                        let _135 := add(expr_329_slot, 5)
                        let _136 := _135
                        let expr_330 := _136
                        let _137 := vloc_nextCandidateId_278
                        let expr_331 := _137
                        let _138 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_330,expr_331)
                        let _139 := read_from_storage_offset_0_t_address(_138)
                        let expr_332 := _139
                        let _140 := 0x01
                        let expr_317 := _140
                        let _141 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_318 := _141
                        let expr_319 := 0x01
                        let expr_320 := checked_sub_t_uint256(expr_318, convert_t_rational_1_by_1_to_t_uint256(expr_319))

                        let expr_321 := expr_320
                        let _142 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_317,expr_321)
                        let _143_slot := _142
                        let expr_322_slot := _143_slot
                        let _144 := add(expr_322_slot, 10)
                        update_storage_value_offset_0t_address_to_t_address(_144, expr_332)
                        let expr_333 := expr_332
                        let _145 := vloc_curentVotes_275
                        let expr_342 := _145
                        let _146 := 0x01
                        let expr_335 := _146
                        let _147 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_336 := _147
                        let expr_337 := 0x01
                        let expr_338 := checked_sub_t_uint256(expr_336, convert_t_rational_1_by_1_to_t_uint256(expr_337))

                        let expr_339 := expr_338
                        let _148 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_335,expr_339)
                        let _149_slot := _148
                        let expr_340_slot := _149_slot
                        let _150 := add(expr_340_slot, 11)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_150, expr_342)
                        let expr_343 := expr_342
                    }
                    let _152 := vloc_nextCandidateId_278
                    let _151 := increment_t_uint256(_152)
                    vloc_nextCandidateId_278 := _151
                    let expr_348 := _152
                    let _154 := vloc_cnt_288
                    let _153 := increment_t_uint256(_154)
                    vloc_cnt_288 := _153
                    let expr_351 := _154
                }
                let _155 := vloc_nextCandidateId_278
                let expr_363 := _155
                let _156 := 0x01
                let expr_356 := _156
                let _157 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_357 := _157
                let expr_358 := 0x01
                let expr_359 := checked_sub_t_uint256(expr_357, convert_t_rational_1_by_1_to_t_uint256(expr_358))

                let expr_360 := expr_359
                let _158 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_356,expr_360)
                let _159_slot := _158
                let expr_361_slot := _159_slot
                let _160 := add(expr_361_slot, 12)
                update_storage_value_offset_0t_uint256_to_t_uint256(_160, expr_363)
                let expr_364 := expr_363
                let _161 := 0x01
                let expr_366 := _161
                let _162 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_367 := _162
                let expr_368 := 0x01
                let expr_369 := checked_sub_t_uint256(expr_367, convert_t_rational_1_by_1_to_t_uint256(expr_368))

                let expr_370 := expr_369
                let _163 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_366,expr_370)
                let _164_slot := _163
                let expr_371_slot := _164_slot
                let _165 := add(expr_371_slot, 5)
                let _166 := _165
                let expr_372 := _166
                let _167 := vloc_nextCandidateId_278
                let expr_373 := _167
                let _168 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_372,expr_373)
                let _169 := read_from_storage_offset_0_t_address(_168)
                let expr_374 := _169
                let expr_377 := 0x00
                let expr_378 := convert_t_rational_0_by_1_to_t_address_payable(expr_377)
                let expr_379 := eq(cleanup_t_address(expr_374), convert_t_address_payable_to_t_address(expr_378))
                let expr_380 := expr_379
                if expr_380 {
                    let _170 := 0x01
                    let expr_382 := _170
                    let _171 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_383 := _171
                    let expr_384 := 0x01
                    let expr_385 := checked_sub_t_uint256(expr_383, convert_t_rational_1_by_1_to_t_uint256(expr_384))

                    let expr_386 := expr_385
                    let _172 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_382,expr_386)
                    let _173_slot := _172
                    let expr_387_slot := _173_slot
                    let _174 := add(expr_387_slot, 10)
                    let _175 := read_from_storage_offset_0_t_address(_174)
                    let expr_388 := _175
                    update_storage_value_offset_0t_address_to_t_address(0x02, expr_388)
                    let expr_389 := expr_388
                    let expr_398 := 0x01
                    let _176 := 0x01
                    let expr_391 := _176
                    let _177 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_392 := _177
                    let expr_393 := 0x01
                    let expr_394 := checked_sub_t_uint256(expr_392, convert_t_rational_1_by_1_to_t_uint256(expr_393))

                    let expr_395 := expr_394
                    let _178 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_391,expr_395)
                    let _179_slot := _178
                    let expr_396_slot := _179_slot
                    let _180 := add(expr_396_slot, 3)
                    update_storage_value_offset_0t_bool_to_t_bool(_180, expr_398)
                    let expr_399 := expr_398
                    let _181 := 0x01
                    let expr_401 := _181
                    let _182 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_402 := _182
                    let expr_403 := 0x01
                    let expr_404 := checked_sub_t_uint256(expr_402, convert_t_rational_1_by_1_to_t_uint256(expr_403))

                    let expr_405 := expr_404
                    let _183 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_401,expr_405)
                    let _184_slot := _183
                    let expr_406_slot := _184_slot
                    let _185 := add(expr_406_slot, 11)
                    let _186 := read_from_storage_offset_0_t_uint256(_185)
                    let expr_407 := _186
                    let expr_408 := 0x00
                    let expr_409 := eq(cleanup_t_uint256(expr_407), convert_t_rational_0_by_1_to_t_uint256(expr_408))
                    let expr_410 := expr_409
                    if expr_410 {
                        let expr_416 := number()
                        let _187 := 0x01
                        let expr_411 := _187
                        let _188 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_412 := _188
                        let _189 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_411,expr_412)
                        let _190_slot := _189
                        let expr_413_slot := _190_slot
                        let _191 := add(expr_413_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_191, expr_416)
                        let expr_417 := expr_416
                        let expr_424 := number()
                        let _192 := read_from_storage_offset_0_t_uint256(0x04)
                        let expr_425 := _192
                        let expr_426 := checked_add_t_uint256(expr_424, expr_425)

                        let expr_427 := expr_426
                        let _193 := 0x01
                        let expr_419 := _193
                        let _194 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_420 := _194
                        let _195 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_419,expr_420)
                        let _196_slot := _195
                        let expr_421_slot := _196_slot
                        let _197 := add(expr_421_slot, 1)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_197, expr_427)
                        let expr_428 := expr_427
                        let _199 := read_from_storage_offset_0_t_uint256(0x00)
                        let _198 := increment_t_uint256(_199)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _198)
                        let expr_431 := _199
                    }
                }

            }

            function fun_observe__0_451(vloc_i_440) -> vloc__443 {
                let zero_value_for_type_t_uint256_200 := zero_value_for_split_t_uint256()
                vloc__443 := zero_value_for_type_t_uint256_200

                let _201 := 0x01
                let expr_445 := _201
                let _202 := vloc_i_440
                let expr_446 := _202
                let _203 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_445,expr_446)
                let _204_slot := _203
                let expr_447_slot := _204_slot
                let _205 := add(expr_447_slot, 4)
                let _206 := read_from_storage_offset_0_t_uint256(_205)
                let expr_448 := _206
                vloc__443 := expr_448
                leave

            }

            function fun_observe__1_467(vloc_i_453) -> vloc__456 {
                let zero_value_for_type_t_bool_207 := zero_value_for_split_t_bool()
                vloc__456 := zero_value_for_type_t_bool_207

                let _208 := 0x01
                let expr_458 := _208
                let _209 := vloc_i_453
                let expr_459 := _209
                let _210 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_458,expr_459)
                let _211_slot := _210
                let expr_460_slot := _211_slot
                let _212 := add(expr_460_slot, 8)
                let _213 := _212
                let expr_461 := _213
                let expr_463 := caller()
                let _214 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_461,expr_463)
                let _215 := read_from_storage_offset_0_t_bool(_214)
                let expr_464 := _215
                vloc__456 := expr_464
                leave

            }

            function fun_observe__2_475() -> vloc__470 {
                let zero_value_for_type_t_uint256_216 := zero_value_for_split_t_uint256()
                vloc__470 := zero_value_for_type_t_uint256_216

                let _217 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_472 := _217
                vloc__470 := expr_472
                leave

            }

            function fun_observe__3_491(vloc_i_477) -> vloc__480 {
                let zero_value_for_type_t_uint256_218 := zero_value_for_split_t_uint256()
                vloc__480 := zero_value_for_type_t_uint256_218

                let _219 := 0x01
                let expr_482 := _219
                let _220 := vloc_i_477
                let expr_483 := _220
                let _221 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_482,expr_483)
                let _222_slot := _221
                let expr_484_slot := _222_slot
                let _223 := add(expr_484_slot, 6)
                let _224 := _223
                let expr_485 := _224
                let expr_487 := caller()
                let _225 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_485,expr_487)
                let _226 := read_from_storage_offset_0_t_uint256(_225)
                let expr_488 := _226
                vloc__480 := expr_488
                leave

            }

            function fun_observe__4_507(vloc_i_493) -> vloc__496 {
                let zero_value_for_type_t_bool_227 := zero_value_for_split_t_bool()
                vloc__496 := zero_value_for_type_t_bool_227

                let _228 := 0x01
                let expr_498 := _228
                let _229 := vloc_i_493
                let expr_499 := _229
                let _230 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_498,expr_499)
                let _231_slot := _230
                let expr_500_slot := _231_slot
                let _232 := add(expr_500_slot, 9)
                let _233 := _232
                let expr_501 := _233
                let expr_503 := caller()
                let _234 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_501,expr_503)
                let _235 := read_from_storage_offset_0_t_bool(_234)
                let expr_504 := _235
                vloc__496 := expr_504
                leave

            }

            function fun_observe__5_528(vloc_i_509) -> vloc__512 {
                let zero_value_for_type_t_uint256_236 := zero_value_for_split_t_uint256()
                vloc__512 := zero_value_for_type_t_uint256_236

                let _237 := 0x01
                let expr_514 := _237
                let _238 := vloc_i_509
                let expr_515 := _238
                let _239 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_514,expr_515)
                let _240_slot := _239
                let expr_516_slot := _240_slot
                let _241 := add(expr_516_slot, 7)
                let _242 := _241
                let expr_517 := _242
                let _243 := 0x01
                let expr_518 := _243
                let _244 := vloc_i_509
                let expr_519 := _244
                let _245 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_518,expr_519)
                let _246_slot := _245
                let expr_520_slot := _246_slot
                let _247 := add(expr_520_slot, 6)
                let _248 := _247
                let expr_521 := _248
                let expr_523 := caller()
                let _249 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_521,expr_523)
                let _250 := read_from_storage_offset_0_t_uint256(_249)
                let expr_524 := _250
                let _251 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_517,expr_524)
                let _252 := read_from_storage_offset_0_t_uint256(_251)
                let expr_525 := _252
                vloc__512 := expr_525
                leave

            }

            function fun_observe__6_541(vloc_i_530) -> vloc__533 {
                let zero_value_for_type_t_uint256_253 := zero_value_for_split_t_uint256()
                vloc__533 := zero_value_for_type_t_uint256_253

                let _254 := 0x01
                let expr_535 := _254
                let _255 := vloc_i_530
                let expr_536 := _255
                let _256 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_535,expr_536)
                let _257_slot := _256
                let expr_537_slot := _257_slot
                let _258 := add(expr_537_slot, 11)
                let _259 := read_from_storage_offset_0_t_uint256(_258)
                let expr_538 := _259
                vloc__533 := expr_538
                leave

            }

            function fun_observe__7_554(vloc_i_543) -> vloc__546 {
                let zero_value_for_type_t_uint256_260 := zero_value_for_split_t_uint256()
                vloc__546 := zero_value_for_type_t_uint256_260

                let _261 := 0x01
                let expr_548 := _261
                let _262 := vloc_i_543
                let expr_549 := _262
                let _263 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_548,expr_549)
                let _264_slot := _263
                let expr_550_slot := _264_slot
                let _265 := add(expr_550_slot, 1)
                let _266 := read_from_storage_offset_0_t_uint256(_265)
                let expr_551 := _266
                vloc__546 := expr_551
                leave

            }

            function fun_observe__8_567(vloc_i_556) -> vloc__559 {
                let zero_value_for_type_t_uint256_267 := zero_value_for_split_t_uint256()
                vloc__559 := zero_value_for_type_t_uint256_267

                let _268 := 0x01
                let expr_561 := _268
                let _269 := vloc_i_556
                let expr_562 := _269
                let _270 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_561,expr_562)
                let _271_slot := _270
                let expr_563_slot := _271_slot
                let _272 := add(expr_563_slot, 0)
                let _273 := read_from_storage_offset_0_t_uint256(_272)
                let expr_564 := _273
                vloc__559 := expr_564
                leave

            }

            function fun_sumbitForElection_198() {

                let _15 := 0x01
                let expr_115 := _15
                let _16 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_116 := _16
                let expr_117 := 0x01
                let expr_118 := checked_sub_t_uint256(expr_116, convert_t_rational_1_by_1_to_t_uint256(expr_117))

                let expr_119 := expr_118
                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_115,expr_119)
                let _18_slot := _17
                let expr_120_slot := _18_slot
                let _19 := add(expr_120_slot, 1)
                let _20 := read_from_storage_offset_0_t_uint256(_19)
                let expr_121 := _20
                let expr_123 := number()
                let expr_124 := gt(cleanup_t_uint256(expr_121), cleanup_t_uint256(expr_123))
                let expr_125 := expr_124
                require_helper(expr_125)
                let _21 := 0x01
                let expr_129 := _21
                let _22 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_130 := _22
                let expr_131 := 0x01
                let expr_132 := checked_sub_t_uint256(expr_130, convert_t_rational_1_by_1_to_t_uint256(expr_131))

                let expr_133 := expr_132
                let _23 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_129,expr_133)
                let _24_slot := _23
                let expr_134_slot := _24_slot
                let _25 := add(expr_134_slot, 8)
                let _26 := _25
                let expr_135 := _26
                let expr_137 := caller()
                let _27 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_135,expr_137)
                let _28 := read_from_storage_offset_0_t_bool(_27)
                let expr_138 := _28
                let expr_139 := cleanup_t_bool(iszero(expr_138))
                require_helper(expr_139)
                let _29 := 0x01
                let expr_144 := _29
                let _30 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_145 := _30
                let _31 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_144,expr_145)
                let _32_slot := _31
                let expr_146_slot := _32_slot
                let _33 := add(expr_146_slot, 4)
                let _34 := read_from_storage_offset_0_t_uint256(_33)
                let expr_147 := _34
                let vloc_nextCandidateId_143 := expr_147
                let expr_159 := caller()
                let _35 := convert_t_address_payable_to_t_address(expr_159)
                let _36 := 0x01
                let expr_149 := _36
                let _37 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_150 := _37
                let expr_151 := 0x01
                let expr_152 := checked_sub_t_uint256(expr_150, convert_t_rational_1_by_1_to_t_uint256(expr_151))

                let expr_153 := expr_152
                let _38 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_149,expr_153)
                let _39_slot := _38
                let expr_154_slot := _39_slot
                let _40 := add(expr_154_slot, 5)
                let _41 := _40
                let expr_155 := _41
                let _42 := vloc_nextCandidateId_143
                let expr_156 := _42
                let _43 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_155,expr_156)
                update_storage_value_offset_0t_address_to_t_address(_43, _35)
                let expr_160 := _35
                let _44 := vloc_nextCandidateId_143
                let expr_172 := _44
                let _45 := 0x01
                let expr_162 := _45
                let _46 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_163 := _46
                let expr_164 := 0x01
                let expr_165 := checked_sub_t_uint256(expr_163, convert_t_rational_1_by_1_to_t_uint256(expr_164))

                let expr_166 := expr_165
                let _47 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_162,expr_166)
                let _48_slot := _47
                let expr_167_slot := _48_slot
                let _49 := add(expr_167_slot, 6)
                let _50 := _49
                let expr_168 := _50
                let expr_170 := caller()
                let _51 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_168,expr_170)
                update_storage_value_offset_0t_uint256_to_t_uint256(_51, expr_172)
                let expr_173 := expr_172
                let _52 := 0x01
                let expr_175 := _52
                let _53 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_176 := _53
                let expr_177 := 0x01
                let expr_178 := checked_sub_t_uint256(expr_176, convert_t_rational_1_by_1_to_t_uint256(expr_177))

                let expr_179 := expr_178
                let _54 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_175,expr_179)
                let _55_slot := _54
                let expr_180_slot := _55_slot
                let _56 := add(expr_180_slot, 4)
                let _58 := read_from_storage_offset_0_t_uint256(_56)
                let _57 := increment_t_uint256(_58)
                update_storage_value_offset_0t_uint256_to_t_uint256(_56, _57)
                let expr_182 := _58
                let expr_194 := 0x01
                let _59 := 0x01
                let expr_184 := _59
                let _60 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_185 := _60
                let expr_186 := 0x01
                let expr_187 := checked_sub_t_uint256(expr_185, convert_t_rational_1_by_1_to_t_uint256(expr_186))

                let expr_188 := expr_187
                let _61 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_184,expr_188)
                let _62_slot := _61
                let expr_189_slot := _62_slot
                let _63 := add(expr_189_slot, 8)
                let _64 := _63
                let expr_190 := _64
                let expr_192 := caller()
                let _65 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_190,expr_192)
                update_storage_value_offset_0t_bool_to_t_bool(_65, expr_194)
                let expr_195 := expr_194

            }

            function fun_vote_269(vloc__participant_200) {

                let _66 := 0x01
                let expr_204 := _66
                let _67 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_205 := _67
                let expr_206 := 0x01
                let expr_207 := checked_sub_t_uint256(expr_205, convert_t_rational_1_by_1_to_t_uint256(expr_206))

                let expr_208 := expr_207
                let _68 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_204,expr_208)
                let _69_slot := _68
                let expr_209_slot := _69_slot
                let _70 := add(expr_209_slot, 1)
                let _71 := read_from_storage_offset_0_t_uint256(_70)
                let expr_210 := _71
                let expr_212 := number()
                let expr_213 := gt(cleanup_t_uint256(expr_210), cleanup_t_uint256(expr_212))
                let expr_214 := expr_213
                require_helper(expr_214)
                let _72 := 0x01
                let expr_218 := _72
                let _73 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_219 := _73
                let expr_220 := 0x01
                let expr_221 := checked_sub_t_uint256(expr_219, convert_t_rational_1_by_1_to_t_uint256(expr_220))

                let expr_222 := expr_221
                let _74 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_218,expr_222)
                let _75_slot := _74
                let expr_223_slot := _75_slot
                let _76 := add(expr_223_slot, 9)
                let _77 := _76
                let expr_224 := _77
                let expr_226 := caller()
                let _78 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_224,expr_226)
                let _79 := read_from_storage_offset_0_t_bool(_78)
                let expr_227 := _79
                let expr_228 := cleanup_t_bool(iszero(expr_227))
                require_helper(expr_228)
                let _80 := 0x01
                let expr_233 := _80
                let _81 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_234 := _81
                let expr_235 := 0x01
                let expr_236 := checked_sub_t_uint256(expr_234, convert_t_rational_1_by_1_to_t_uint256(expr_235))

                let expr_237 := expr_236
                let _82 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_233,expr_237)
                let _83_slot := _82
                let expr_238_slot := _83_slot
                let _84 := add(expr_238_slot, 6)
                let _85 := _84
                let expr_239 := _85
                let _86 := vloc__participant_200
                let expr_240 := _86
                let _87 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_239,expr_240)
                let _88 := read_from_storage_offset_0_t_uint256(_87)
                let expr_241 := _88
                let vloc_candidateId_232 := expr_241
                let expr_252 := 0x01
                let _89 := convert_t_rational_1_by_1_to_t_uint256(expr_252)
                let _90 := 0x01
                let expr_243 := _90
                let _91 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_244 := _91
                let expr_245 := 0x01
                let expr_246 := checked_sub_t_uint256(expr_244, convert_t_rational_1_by_1_to_t_uint256(expr_245))

                let expr_247 := expr_246
                let _92 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_243,expr_247)
                let _93_slot := _92
                let expr_248_slot := _93_slot
                let _94 := add(expr_248_slot, 7)
                let _95 := _94
                let expr_249 := _95
                let _96 := vloc_candidateId_232
                let expr_250 := _96
                let _97 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_249,expr_250)
                let _98 := read_from_storage_offset_0_t_uint256(_97)
                _89 := checked_add_t_uint256(_98, _89)
                update_storage_value_offset_0t_uint256_to_t_uint256(_97, _89)
                let expr_253 := _89
                let expr_265 := 0x01
                let _99 := 0x01
                let expr_255 := _99
                let _100 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_256 := _100
                let expr_257 := 0x01
                let expr_258 := checked_sub_t_uint256(expr_256, convert_t_rational_1_by_1_to_t_uint256(expr_257))

                let expr_259 := expr_258
                let _101 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_255,expr_259)
                let _102_slot := _101
                let expr_260_slot := _102_slot
                let _103 := add(expr_260_slot, 9)
                let _104 := _103
                let expr_261 := _104
                let expr_263 := caller()
                let _105 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_261,expr_263)
                update_storage_value_offset_0t_bool_to_t_bool(_105, expr_265)
                let expr_266 := expr_265

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

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { panic_error() }
                ret := add(value, 1)
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

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
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

