/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAO_542" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAO_542()

        codecopy(0, dataoffset("CreditDAO_542_deployed"), datasize("CreditDAO_542_deployed"))

        return(0, datasize("CreditDAO_542_deployed"))

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

        function constructor_CreditDAO_542() {

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
    object "CreditDAO_542_deployed" {
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
                    fun_sumbitForElection_189()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2dfc8606
                {
                    // observe__4()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__4_475()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
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

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_443()
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
                    fun_vote_254(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x73cf2988
                {
                    // observe__6()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__6_514()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x74c80467
                {
                    // createNewElections()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_createNewElections_109()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__8_541(param_0)
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

                case 0xa9e4d2ea
                {
                    // observe__3()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__3_459()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa9f2b4ae
                {
                    // observe__5()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__5_498()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbeb7597b
                {
                    // observe__7()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__7_531()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe3b22ff7
                {
                    // observe__1()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__1_435()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe79206e6
                {
                    // finishElections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_finishElections_406(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf355aa8f
                {
                    // observe__0()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__0_419()
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

            function fun_createNewElections_109() {

                let expr_85 := number()
                let _1 := 0x01
                let expr_80 := _1
                let _2 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_81 := _2
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_80,expr_81)
                let _4_slot := _3
                let expr_82_slot := _4_slot
                let _5 := add(expr_82_slot, 0)
                update_storage_value_offset_0t_uint256_to_t_uint256(_5, expr_85)
                let expr_86 := expr_85
                let expr_93 := number()
                let _6 := read_from_storage_offset_0_t_uint256(0x04)
                let expr_94 := _6
                let expr_95 := checked_add_t_uint256(expr_93, expr_94)

                let _7 := 0x01
                let expr_88 := _7
                let _8 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_89 := _8
                let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_88,expr_89)
                let _10_slot := _9
                let expr_90_slot := _10_slot
                let _11 := add(expr_90_slot, 1)
                update_storage_value_offset_0t_uint256_to_t_uint256(_11, expr_95)
                let expr_96 := expr_95
                let _13 := read_from_storage_offset_0_t_uint256(0x00)
                let _12 := increment_t_uint256(_13)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _12)
                let expr_99 := _13
                let expr_104 := 0x00
                let expr_105 := convert_t_rational_0_by_1_to_t_address_payable(expr_104)
                let _14 := convert_t_address_payable_to_t_address(expr_105)
                update_storage_value_offset_0t_address_to_t_address(0x02, _14)
                let expr_106 := _14

            }

            function fun_finishElections_406(vloc__iterations_256) {

                let vloc_curentVotes_260
                let zero_value_for_type_t_uint256_106 := zero_value_for_split_t_uint256()
                vloc_curentVotes_260 := zero_value_for_type_t_uint256_106
                let _107 := 0x01
                let expr_264 := _107
                let _108 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_265 := _108
                let expr_266 := 0x01
                let expr_267 := checked_sub_t_uint256(expr_265, convert_t_rational_1_by_1_to_t_uint256(expr_266))

                let _109 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_264,expr_267)
                let _110_slot := _109
                let expr_268_slot := _110_slot
                let _111 := add(expr_268_slot, 12)
                let _112 := read_from_storage_offset_0_t_uint256(_111)
                let expr_269 := _112
                let vloc_nextCandidateId_263 := expr_269
                for {
                    let expr_273 := 0x00
                    let vloc_cnt_272 := convert_t_rational_0_by_1_to_t_uint256(expr_273)
                    } 1 {
                    let _114 := vloc_cnt_272
                    let _113 := increment_t_uint256(_114)
                    vloc_cnt_272 := _113
                    let expr_279 := _114
                }
                {
                    let _115 := vloc_cnt_272
                    let expr_275 := _115
                    let _116 := vloc__iterations_256
                    let expr_276 := _116
                    let expr_277 := lt(cleanup_t_uint256(expr_275), cleanup_t_uint256(expr_276))
                    if iszero(expr_277) { break }
                    let _117 := 0x01
                    let expr_282 := _117
                    let _118 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_283 := _118
                    let expr_284 := 0x01
                    let expr_285 := checked_sub_t_uint256(expr_283, convert_t_rational_1_by_1_to_t_uint256(expr_284))

                    let _119 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_282,expr_285)
                    let _120_slot := _119
                    let expr_286_slot := _120_slot
                    let _121 := add(expr_286_slot, 7)
                    let _122 := _121
                    let expr_287 := _122
                    let _123 := vloc_nextCandidateId_263
                    let expr_288 := _123
                    let _124 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_287,expr_288)
                    let _125 := read_from_storage_offset_0_t_uint256(_124)
                    let expr_289 := _125
                    vloc_curentVotes_260 := expr_289
                    let expr_290 := expr_289
                    let _126 := vloc_curentVotes_260
                    let expr_292 := _126
                    let _127 := 0x01
                    let expr_293 := _127
                    let _128 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_294 := _128
                    let expr_295 := 0x01
                    let expr_296 := checked_sub_t_uint256(expr_294, convert_t_rational_1_by_1_to_t_uint256(expr_295))

                    let _129 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_293,expr_296)
                    let _130_slot := _129
                    let expr_297_slot := _130_slot
                    let _131 := add(expr_297_slot, 11)
                    let _132 := read_from_storage_offset_0_t_uint256(_131)
                    let expr_298 := _132
                    let expr_299 := gt(cleanup_t_uint256(expr_292), cleanup_t_uint256(expr_298))
                    if expr_299 {
                        let _133 := 0x01
                        let expr_306 := _133
                        let _134 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_307 := _134
                        let expr_308 := 0x01
                        let expr_309 := checked_sub_t_uint256(expr_307, convert_t_rational_1_by_1_to_t_uint256(expr_308))

                        let _135 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_306,expr_309)
                        let _136_slot := _135
                        let expr_310_slot := _136_slot
                        let _137 := add(expr_310_slot, 5)
                        let _138 := _137
                        let expr_311 := _138
                        let _139 := vloc_nextCandidateId_263
                        let expr_312 := _139
                        let _140 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_311,expr_312)
                        let _141 := read_from_storage_offset_0_t_address(_140)
                        let expr_313 := _141
                        let _142 := 0x01
                        let expr_300 := _142
                        let _143 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_301 := _143
                        let expr_302 := 0x01
                        let expr_303 := checked_sub_t_uint256(expr_301, convert_t_rational_1_by_1_to_t_uint256(expr_302))

                        let _144 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_300,expr_303)
                        let _145_slot := _144
                        let expr_304_slot := _145_slot
                        let _146 := add(expr_304_slot, 10)
                        update_storage_value_offset_0t_address_to_t_address(_146, expr_313)
                        let expr_314 := expr_313
                        let _147 := vloc_curentVotes_260
                        let expr_322 := _147
                        let _148 := 0x01
                        let expr_316 := _148
                        let _149 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_317 := _149
                        let expr_318 := 0x01
                        let expr_319 := checked_sub_t_uint256(expr_317, convert_t_rational_1_by_1_to_t_uint256(expr_318))

                        let _150 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_316,expr_319)
                        let _151_slot := _150
                        let expr_320_slot := _151_slot
                        let _152 := add(expr_320_slot, 11)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_152, expr_322)
                        let expr_323 := expr_322
                    }
                    let _154 := vloc_nextCandidateId_263
                    let _153 := increment_t_uint256(_154)
                    vloc_nextCandidateId_263 := _153
                    let expr_328 := _154
                }
                let _155 := vloc_nextCandidateId_263
                let expr_338 := _155
                let _156 := 0x01
                let expr_332 := _156
                let _157 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_333 := _157
                let expr_334 := 0x01
                let expr_335 := checked_sub_t_uint256(expr_333, convert_t_rational_1_by_1_to_t_uint256(expr_334))

                let _158 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_332,expr_335)
                let _159_slot := _158
                let expr_336_slot := _159_slot
                let _160 := add(expr_336_slot, 12)
                update_storage_value_offset_0t_uint256_to_t_uint256(_160, expr_338)
                let expr_339 := expr_338
                let _161 := 0x01
                let expr_341 := _161
                let _162 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_342 := _162
                let expr_343 := 0x01
                let expr_344 := checked_sub_t_uint256(expr_342, convert_t_rational_1_by_1_to_t_uint256(expr_343))

                let _163 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_341,expr_344)
                let _164_slot := _163
                let expr_345_slot := _164_slot
                let _165 := add(expr_345_slot, 5)
                let _166 := _165
                let expr_346 := _166
                let _167 := vloc_nextCandidateId_263
                let expr_347 := _167
                let _168 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_346,expr_347)
                let _169 := read_from_storage_offset_0_t_address(_168)
                let expr_348 := _169
                let expr_351 := 0x00
                let expr_352 := convert_t_rational_0_by_1_to_t_address_payable(expr_351)
                let expr_353 := eq(cleanup_t_address(expr_348), convert_t_address_payable_to_t_address(expr_352))
                if expr_353 {
                    let _170 := 0x01
                    let expr_355 := _170
                    let _171 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_356 := _171
                    let expr_357 := 0x01
                    let expr_358 := checked_sub_t_uint256(expr_356, convert_t_rational_1_by_1_to_t_uint256(expr_357))

                    let _172 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_355,expr_358)
                    let _173_slot := _172
                    let expr_359_slot := _173_slot
                    let _174 := add(expr_359_slot, 10)
                    let _175 := read_from_storage_offset_0_t_address(_174)
                    let expr_360 := _175
                    update_storage_value_offset_0t_address_to_t_address(0x02, expr_360)
                    let expr_361 := expr_360
                    let expr_369 := 0x01
                    let _176 := 0x01
                    let expr_363 := _176
                    let _177 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_364 := _177
                    let expr_365 := 0x01
                    let expr_366 := checked_sub_t_uint256(expr_364, convert_t_rational_1_by_1_to_t_uint256(expr_365))

                    let _178 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_363,expr_366)
                    let _179_slot := _178
                    let expr_367_slot := _179_slot
                    let _180 := add(expr_367_slot, 3)
                    update_storage_value_offset_0t_bool_to_t_bool(_180, expr_369)
                    let expr_370 := expr_369
                    let _181 := 0x01
                    let expr_372 := _181
                    let _182 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_373 := _182
                    let expr_374 := 0x01
                    let expr_375 := checked_sub_t_uint256(expr_373, convert_t_rational_1_by_1_to_t_uint256(expr_374))

                    let _183 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_372,expr_375)
                    let _184_slot := _183
                    let expr_376_slot := _184_slot
                    let _185 := add(expr_376_slot, 11)
                    let _186 := read_from_storage_offset_0_t_uint256(_185)
                    let expr_377 := _186
                    let expr_378 := 0x00
                    let expr_379 := eq(cleanup_t_uint256(expr_377), convert_t_rational_0_by_1_to_t_uint256(expr_378))
                    if expr_379 {
                        let expr_385 := number()
                        let _187 := 0x01
                        let expr_380 := _187
                        let _188 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_381 := _188
                        let _189 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_380,expr_381)
                        let _190_slot := _189
                        let expr_382_slot := _190_slot
                        let _191 := add(expr_382_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_191, expr_385)
                        let expr_386 := expr_385
                        let expr_393 := number()
                        let _192 := read_from_storage_offset_0_t_uint256(0x04)
                        let expr_394 := _192
                        let expr_395 := checked_add_t_uint256(expr_393, expr_394)

                        let _193 := 0x01
                        let expr_388 := _193
                        let _194 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_389 := _194
                        let _195 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_388,expr_389)
                        let _196_slot := _195
                        let expr_390_slot := _196_slot
                        let _197 := add(expr_390_slot, 1)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_197, expr_395)
                        let expr_396 := expr_395
                        let _199 := read_from_storage_offset_0_t_uint256(0x00)
                        let _198 := increment_t_uint256(_199)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _198)
                        let expr_399 := _199
                    }
                }

            }

            function fun_observe__0_419() -> vloc__409 {
                let zero_value_for_type_t_uint256_200 := zero_value_for_split_t_uint256()
                vloc__409 := zero_value_for_type_t_uint256_200

                let _201 := 0x01
                let expr_411 := _201
                let _202 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_412 := _202
                let expr_413 := 0x01
                let expr_414 := checked_sub_t_uint256(expr_412, convert_t_rational_1_by_1_to_t_uint256(expr_413))

                let _203 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_411,expr_414)
                let _204_slot := _203
                let expr_415_slot := _204_slot
                let _205 := add(expr_415_slot, 4)
                let _206 := read_from_storage_offset_0_t_uint256(_205)
                let expr_416 := _206
                vloc__409 := expr_416
                leave

            }

            function fun_observe__1_435() -> vloc__422 {
                let zero_value_for_type_t_bool_207 := zero_value_for_split_t_bool()
                vloc__422 := zero_value_for_type_t_bool_207

                let _208 := 0x01
                let expr_424 := _208
                let _209 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_425 := _209
                let expr_426 := 0x01
                let expr_427 := checked_sub_t_uint256(expr_425, convert_t_rational_1_by_1_to_t_uint256(expr_426))

                let _210 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_424,expr_427)
                let _211_slot := _210
                let expr_428_slot := _211_slot
                let _212 := add(expr_428_slot, 8)
                let _213 := _212
                let expr_429 := _213
                let expr_431 := caller()
                let _214 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_429,expr_431)
                let _215 := read_from_storage_offset_0_t_bool(_214)
                let expr_432 := _215
                vloc__422 := expr_432
                leave

            }

            function fun_observe__2_443() -> vloc__438 {
                let zero_value_for_type_t_uint256_216 := zero_value_for_split_t_uint256()
                vloc__438 := zero_value_for_type_t_uint256_216

                let _217 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_440 := _217
                vloc__438 := expr_440
                leave

            }

            function fun_observe__3_459() -> vloc__446 {
                let zero_value_for_type_t_uint256_218 := zero_value_for_split_t_uint256()
                vloc__446 := zero_value_for_type_t_uint256_218

                let _219 := 0x01
                let expr_448 := _219
                let _220 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_449 := _220
                let expr_450 := 0x01
                let expr_451 := checked_sub_t_uint256(expr_449, convert_t_rational_1_by_1_to_t_uint256(expr_450))

                let _221 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_448,expr_451)
                let _222_slot := _221
                let expr_452_slot := _222_slot
                let _223 := add(expr_452_slot, 6)
                let _224 := _223
                let expr_453 := _224
                let expr_455 := caller()
                let _225 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_453,expr_455)
                let _226 := read_from_storage_offset_0_t_uint256(_225)
                let expr_456 := _226
                vloc__446 := expr_456
                leave

            }

            function fun_observe__4_475() -> vloc__462 {
                let zero_value_for_type_t_bool_227 := zero_value_for_split_t_bool()
                vloc__462 := zero_value_for_type_t_bool_227

                let _228 := 0x01
                let expr_464 := _228
                let _229 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_465 := _229
                let expr_466 := 0x01
                let expr_467 := checked_sub_t_uint256(expr_465, convert_t_rational_1_by_1_to_t_uint256(expr_466))

                let _230 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_464,expr_467)
                let _231_slot := _230
                let expr_468_slot := _231_slot
                let _232 := add(expr_468_slot, 9)
                let _233 := _232
                let expr_469 := _233
                let expr_471 := caller()
                let _234 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_469,expr_471)
                let _235 := read_from_storage_offset_0_t_bool(_234)
                let expr_472 := _235
                vloc__462 := expr_472
                leave

            }

            function fun_observe__5_498() -> vloc__478 {
                let zero_value_for_type_t_uint256_236 := zero_value_for_split_t_uint256()
                vloc__478 := zero_value_for_type_t_uint256_236

                let _237 := 0x01
                let expr_480 := _237
                let _238 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_481 := _238
                let expr_482 := 0x01
                let expr_483 := checked_sub_t_uint256(expr_481, convert_t_rational_1_by_1_to_t_uint256(expr_482))

                let _239 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_480,expr_483)
                let _240_slot := _239
                let expr_484_slot := _240_slot
                let _241 := add(expr_484_slot, 7)
                let _242 := _241
                let expr_485 := _242
                let _243 := 0x01
                let expr_486 := _243
                let _244 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_487 := _244
                let expr_488 := 0x01
                let expr_489 := checked_sub_t_uint256(expr_487, convert_t_rational_1_by_1_to_t_uint256(expr_488))

                let _245 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_486,expr_489)
                let _246_slot := _245
                let expr_490_slot := _246_slot
                let _247 := add(expr_490_slot, 6)
                let _248 := _247
                let expr_491 := _248
                let expr_493 := caller()
                let _249 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_491,expr_493)
                let _250 := read_from_storage_offset_0_t_uint256(_249)
                let expr_494 := _250
                let _251 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_485,expr_494)
                let _252 := read_from_storage_offset_0_t_uint256(_251)
                let expr_495 := _252
                vloc__478 := expr_495
                leave

            }

            function fun_observe__6_514() -> vloc__501 {
                let zero_value_for_type_t_uint256_253 := zero_value_for_split_t_uint256()
                vloc__501 := zero_value_for_type_t_uint256_253

                let _254 := 0x01
                let expr_503 := _254
                let _255 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_504 := _255
                let expr_505 := 0x01
                let expr_506 := checked_sub_t_uint256(expr_504, convert_t_rational_1_by_1_to_t_uint256(expr_505))

                let _256 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_503,expr_506)
                let _257_slot := _256
                let expr_507_slot := _257_slot
                let _258 := add(expr_507_slot, 6)
                let _259 := _258
                let expr_508 := _259
                let expr_510 := caller()
                let _260 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_508,expr_510)
                let _261 := read_from_storage_offset_0_t_uint256(_260)
                let expr_511 := _261
                vloc__501 := expr_511
                leave

            }

            function fun_observe__7_531() -> vloc__517 {
                let zero_value_for_type_t_bool_262 := zero_value_for_split_t_bool()
                vloc__517 := zero_value_for_type_t_bool_262

                let _263 := 0x01
                let expr_519 := _263
                let _264 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_520 := _264
                let expr_521 := 0x01
                let expr_522 := checked_sub_t_uint256(expr_520, convert_t_rational_1_by_1_to_t_uint256(expr_521))

                let expr_523 := expr_522
                let _265 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_519,expr_523)
                let _266_slot := _265
                let expr_524_slot := _266_slot
                let _267 := add(expr_524_slot, 8)
                let _268 := _267
                let expr_525 := _268
                let expr_527 := caller()
                let _269 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_525,expr_527)
                let _270 := read_from_storage_offset_0_t_bool(_269)
                let expr_528 := _270
                vloc__517 := expr_528
                leave

            }

            function fun_observe__8_541(vloc_i_533) -> vloc__536 {
                let zero_value_for_type_t_bool_271 := zero_value_for_split_t_bool()
                vloc__536 := zero_value_for_type_t_bool_271

                let expr_538 := 0x00
                vloc__536 := expr_538
                leave

            }

            function fun_sumbitForElection_189() {

                let _15 := 0x01
                let expr_113 := _15
                let _16 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_114 := _16
                let expr_115 := 0x01
                let expr_116 := checked_sub_t_uint256(expr_114, convert_t_rational_1_by_1_to_t_uint256(expr_115))

                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_113,expr_116)
                let _18_slot := _17
                let expr_117_slot := _18_slot
                let _19 := add(expr_117_slot, 1)
                let _20 := read_from_storage_offset_0_t_uint256(_19)
                let expr_118 := _20
                let expr_120 := number()
                let expr_121 := gt(cleanup_t_uint256(expr_118), cleanup_t_uint256(expr_120))
                require_helper(expr_121)
                let _21 := 0x01
                let expr_125 := _21
                let _22 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_126 := _22
                let expr_127 := 0x01
                let expr_128 := checked_sub_t_uint256(expr_126, convert_t_rational_1_by_1_to_t_uint256(expr_127))

                let _23 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_125,expr_128)
                let _24_slot := _23
                let expr_129_slot := _24_slot
                let _25 := add(expr_129_slot, 8)
                let _26 := _25
                let expr_130 := _26
                let expr_132 := caller()
                let _27 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_130,expr_132)
                let _28 := read_from_storage_offset_0_t_bool(_27)
                let expr_133 := _28
                let expr_134 := cleanup_t_bool(iszero(expr_133))
                require_helper(expr_134)
                let _29 := 0x01
                let expr_139 := _29
                let _30 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_140 := _30
                let _31 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_139,expr_140)
                let _32_slot := _31
                let expr_141_slot := _32_slot
                let _33 := add(expr_141_slot, 4)
                let _34 := read_from_storage_offset_0_t_uint256(_33)
                let expr_142 := _34
                let vloc_nextCandidateId_138 := expr_142
                let expr_153 := caller()
                let _35 := convert_t_address_payable_to_t_address(expr_153)
                let _36 := 0x01
                let expr_144 := _36
                let _37 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_145 := _37
                let expr_146 := 0x01
                let expr_147 := checked_sub_t_uint256(expr_145, convert_t_rational_1_by_1_to_t_uint256(expr_146))

                let _38 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_144,expr_147)
                let _39_slot := _38
                let expr_148_slot := _39_slot
                let _40 := add(expr_148_slot, 5)
                let _41 := _40
                let expr_149 := _41
                let _42 := vloc_nextCandidateId_138
                let expr_150 := _42
                let _43 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_149,expr_150)
                update_storage_value_offset_0t_address_to_t_address(_43, _35)
                let expr_154 := _35
                let _44 := vloc_nextCandidateId_138
                let expr_165 := _44
                let _45 := 0x01
                let expr_156 := _45
                let _46 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_157 := _46
                let expr_158 := 0x01
                let expr_159 := checked_sub_t_uint256(expr_157, convert_t_rational_1_by_1_to_t_uint256(expr_158))

                let _47 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_156,expr_159)
                let _48_slot := _47
                let expr_160_slot := _48_slot
                let _49 := add(expr_160_slot, 6)
                let _50 := _49
                let expr_161 := _50
                let expr_163 := caller()
                let _51 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_161,expr_163)
                update_storage_value_offset_0t_uint256_to_t_uint256(_51, expr_165)
                let expr_166 := expr_165
                let _52 := 0x01
                let expr_168 := _52
                let _53 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_169 := _53
                let expr_170 := 0x01
                let expr_171 := checked_sub_t_uint256(expr_169, convert_t_rational_1_by_1_to_t_uint256(expr_170))

                let _54 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_168,expr_171)
                let _55_slot := _54
                let expr_172_slot := _55_slot
                let _56 := add(expr_172_slot, 4)
                let _58 := read_from_storage_offset_0_t_uint256(_56)
                let _57 := increment_t_uint256(_58)
                update_storage_value_offset_0t_uint256_to_t_uint256(_56, _57)
                let expr_174 := _58
                let expr_185 := 0x01
                let _59 := 0x01
                let expr_176 := _59
                let _60 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_177 := _60
                let expr_178 := 0x01
                let expr_179 := checked_sub_t_uint256(expr_177, convert_t_rational_1_by_1_to_t_uint256(expr_178))

                let _61 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_176,expr_179)
                let _62_slot := _61
                let expr_180_slot := _62_slot
                let _63 := add(expr_180_slot, 8)
                let _64 := _63
                let expr_181 := _64
                let expr_183 := caller()
                let _65 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_181,expr_183)
                update_storage_value_offset_0t_bool_to_t_bool(_65, expr_185)
                let expr_186 := expr_185

            }

            function fun_vote_254(vloc__participant_191) {

                let _66 := 0x01
                let expr_195 := _66
                let _67 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_196 := _67
                let expr_197 := 0x01
                let expr_198 := checked_sub_t_uint256(expr_196, convert_t_rational_1_by_1_to_t_uint256(expr_197))

                let _68 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_195,expr_198)
                let _69_slot := _68
                let expr_199_slot := _69_slot
                let _70 := add(expr_199_slot, 1)
                let _71 := read_from_storage_offset_0_t_uint256(_70)
                let expr_200 := _71
                let expr_202 := number()
                let expr_203 := gt(cleanup_t_uint256(expr_200), cleanup_t_uint256(expr_202))
                require_helper(expr_203)
                let _72 := 0x01
                let expr_207 := _72
                let _73 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_208 := _73
                let expr_209 := 0x01
                let expr_210 := checked_sub_t_uint256(expr_208, convert_t_rational_1_by_1_to_t_uint256(expr_209))

                let _74 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_207,expr_210)
                let _75_slot := _74
                let expr_211_slot := _75_slot
                let _76 := add(expr_211_slot, 9)
                let _77 := _76
                let expr_212 := _77
                let expr_214 := caller()
                let _78 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_212,expr_214)
                let _79 := read_from_storage_offset_0_t_bool(_78)
                let expr_215 := _79
                let expr_216 := cleanup_t_bool(iszero(expr_215))
                require_helper(expr_216)
                let _80 := 0x01
                let expr_221 := _80
                let _81 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_222 := _81
                let expr_223 := 0x01
                let expr_224 := checked_sub_t_uint256(expr_222, convert_t_rational_1_by_1_to_t_uint256(expr_223))

                let _82 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_221,expr_224)
                let _83_slot := _82
                let expr_225_slot := _83_slot
                let _84 := add(expr_225_slot, 6)
                let _85 := _84
                let expr_226 := _85
                let _86 := vloc__participant_191
                let expr_227 := _86
                let _87 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_226,expr_227)
                let _88 := read_from_storage_offset_0_t_uint256(_87)
                let expr_228 := _88
                let vloc_candidateId_220 := expr_228
                let expr_238 := 0x01
                let _89 := convert_t_rational_1_by_1_to_t_uint256(expr_238)
                let _90 := 0x01
                let expr_230 := _90
                let _91 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_231 := _91
                let expr_232 := 0x01
                let expr_233 := checked_sub_t_uint256(expr_231, convert_t_rational_1_by_1_to_t_uint256(expr_232))

                let _92 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_230,expr_233)
                let _93_slot := _92
                let expr_234_slot := _93_slot
                let _94 := add(expr_234_slot, 7)
                let _95 := _94
                let expr_235 := _95
                let _96 := vloc_candidateId_220
                let expr_236 := _96
                let _97 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_235,expr_236)
                let _98 := read_from_storage_offset_0_t_uint256(_97)
                _89 := checked_add_t_uint256(_98, _89)
                update_storage_value_offset_0t_uint256_to_t_uint256(_97, _89)
                let expr_239 := _89
                let expr_250 := 0x01
                let _99 := 0x01
                let expr_241 := _99
                let _100 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_242 := _100
                let expr_243 := 0x01
                let expr_244 := checked_sub_t_uint256(expr_242, convert_t_rational_1_by_1_to_t_uint256(expr_243))

                let _101 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_241,expr_244)
                let _102_slot := _101
                let expr_245_slot := _102_slot
                let _103 := add(expr_245_slot, 9)
                let _104 := _103
                let expr_246 := _104
                let expr_248 := caller()
                let _105 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_246,expr_248)
                update_storage_value_offset_0t_bool_to_t_bool(_105, expr_250)
                let expr_251 := expr_250

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

