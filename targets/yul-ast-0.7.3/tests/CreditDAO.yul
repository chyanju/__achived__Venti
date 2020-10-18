/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAO_565" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAO_565()

        codecopy(0, dataoffset("CreditDAO_565_deployed"), datasize("CreditDAO_565_deployed"))

        return(0, datasize("CreditDAO_565_deployed"))

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

        function constructor_CreditDAO_565() {

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
    object "CreditDAO_565_deployed" {
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

                case 0x14fc78fc
                {
                    // observe()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11 :=  fun_observe_541()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint256_t_bool_t_address_t_uint256__to_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint256_t_bool_t_address_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11)
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

                case 0x862b5cc5
                {
                    // observe1()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe1_564()
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

                case 0xb2bf8329
                {
                    // observe0()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe0_551()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
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

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint256_t_bool_t_address_t_uint256__to_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint256_t_bool_t_address_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11) -> tail {
                tail := add(headStart, 384)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_address_to_t_address_fromStack(value3,  add(headStart, 96))

                abi_encode_t_address_to_t_address_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

                abi_encode_t_uint256_to_t_uint256_fromStack(value6,  add(headStart, 192))

                abi_encode_t_bool_to_t_bool_fromStack(value7,  add(headStart, 224))

                abi_encode_t_uint256_to_t_uint256_fromStack(value8,  add(headStart, 256))

                abi_encode_t_bool_to_t_bool_fromStack(value9,  add(headStart, 288))

                abi_encode_t_address_to_t_address_fromStack(value10,  add(headStart, 320))

                abi_encode_t_uint256_to_t_uint256_fromStack(value11,  add(headStart, 352))

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

            function fun_observe0_551() -> vloc_tmp0_544 {
                let zero_value_for_type_t_uint256_284 := zero_value_for_split_t_uint256()
                vloc_tmp0_544 := zero_value_for_type_t_uint256_284

                let _285 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_547 := _285
                vloc_tmp0_544 := expr_547
                let expr_548 := expr_547

            }

            function fun_observe1_564() -> vloc_tmp0_554 {
                let zero_value_for_type_t_uint256_286 := zero_value_for_split_t_uint256()
                vloc_tmp0_554 := zero_value_for_type_t_uint256_286

                let _287 := 0x01
                let expr_557 := _287
                let _288 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_558 := _288
                let _289 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_557,expr_558)
                let _290_slot := _289
                let expr_559_slot := _290_slot
                let _291 := add(expr_559_slot, 0)
                let _292 := read_from_storage_offset_0_t_uint256(_291)
                let expr_560 := _292
                vloc_tmp0_554 := expr_560
                let expr_561 := expr_560

            }

            function fun_observe_541() -> vloc_tmp0_409, vloc_tmp1_411, vloc_tmp2_413, vloc_tmp3_415, vloc_tmp4_417, vloc_tmp5_419, vloc_tmp6_421, vloc_tmp7_423, vloc_tmp8_425, vloc_tmp9_427, vloc_tmp10_429, vloc_tmp11_431 {
                let zero_value_for_type_t_uint256_200 := zero_value_for_split_t_uint256()
                vloc_tmp0_409 := zero_value_for_type_t_uint256_200
                let zero_value_for_type_t_uint256_201 := zero_value_for_split_t_uint256()
                vloc_tmp1_411 := zero_value_for_type_t_uint256_201
                let zero_value_for_type_t_uint256_202 := zero_value_for_split_t_uint256()
                vloc_tmp2_413 := zero_value_for_type_t_uint256_202
                let zero_value_for_type_t_address_203 := zero_value_for_split_t_address()
                vloc_tmp3_415 := zero_value_for_type_t_address_203
                let zero_value_for_type_t_address_204 := zero_value_for_split_t_address()
                vloc_tmp4_417 := zero_value_for_type_t_address_204
                let zero_value_for_type_t_uint256_205 := zero_value_for_split_t_uint256()
                vloc_tmp5_419 := zero_value_for_type_t_uint256_205
                let zero_value_for_type_t_uint256_206 := zero_value_for_split_t_uint256()
                vloc_tmp6_421 := zero_value_for_type_t_uint256_206
                let zero_value_for_type_t_bool_207 := zero_value_for_split_t_bool()
                vloc_tmp7_423 := zero_value_for_type_t_bool_207
                let zero_value_for_type_t_uint256_208 := zero_value_for_split_t_uint256()
                vloc_tmp8_425 := zero_value_for_type_t_uint256_208
                let zero_value_for_type_t_bool_209 := zero_value_for_split_t_bool()
                vloc_tmp9_427 := zero_value_for_type_t_bool_209
                let zero_value_for_type_t_address_210 := zero_value_for_split_t_address()
                vloc_tmp10_429 := zero_value_for_type_t_address_210
                let zero_value_for_type_t_uint256_211 := zero_value_for_split_t_uint256()
                vloc_tmp11_431 := zero_value_for_type_t_uint256_211

                let _212 := 0x01
                let expr_434 := _212
                let _213 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_435 := _213
                let _214 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_434,expr_435)
                let _215_slot := _214
                let expr_436_slot := _215_slot
                let _216 := add(expr_436_slot, 0)
                let _217 := read_from_storage_offset_0_t_uint256(_216)
                let expr_437 := _217
                vloc_tmp0_409 := expr_437
                let expr_438 := expr_437
                let _218 := 0x01
                let expr_441 := _218
                let _219 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_442 := _219
                let _220 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_441,expr_442)
                let _221_slot := _220
                let expr_443_slot := _221_slot
                let _222 := add(expr_443_slot, 1)
                let _223 := read_from_storage_offset_0_t_uint256(_222)
                let expr_444 := _223
                vloc_tmp1_411 := expr_444
                let expr_445 := expr_444
                let _224 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_448 := _224
                vloc_tmp2_413 := expr_448
                let expr_449 := expr_448
                let _225 := read_from_storage_offset_0_t_address(0x02)
                let expr_452 := _225
                vloc_tmp3_415 := expr_452
                let expr_453 := expr_452
                let _226 := 0x01
                let expr_457 := _226
                let _227 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_458 := _227
                let _228 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_457,expr_458)
                let _229_slot := _228
                let expr_459_slot := _229_slot
                let _230 := add(expr_459_slot, 4)
                let _231 := read_from_storage_offset_0_t_uint256(_230)
                let expr_460 := _231
                let vloc_nextCandidateId_456 := expr_460
                let _232 := 0x01
                let expr_463 := _232
                let _233 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_464 := _233
                let expr_465 := 0x01
                let expr_466 := checked_sub_t_uint256(expr_464, convert_t_rational_1_by_1_to_t_uint256(expr_465))

                let _234 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_463,expr_466)
                let _235_slot := _234
                let expr_467_slot := _235_slot
                let _236 := add(expr_467_slot, 5)
                let _237 := _236
                let expr_468 := _237
                let _238 := vloc_nextCandidateId_456
                let expr_469 := _238
                let _239 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_468,expr_469)
                let _240 := read_from_storage_offset_0_t_address(_239)
                let expr_470 := _240
                vloc_tmp4_417 := expr_470
                let expr_471 := expr_470
                let _241 := 0x01
                let expr_474 := _241
                let _242 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_475 := _242
                let expr_476 := 0x01
                let expr_477 := checked_sub_t_uint256(expr_475, convert_t_rational_1_by_1_to_t_uint256(expr_476))

                let _243 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_474,expr_477)
                let _244_slot := _243
                let expr_478_slot := _244_slot
                let _245 := add(expr_478_slot, 6)
                let _246 := _245
                let expr_479 := _246
                let expr_481 := caller()
                let _247 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_479,expr_481)
                let _248 := read_from_storage_offset_0_t_uint256(_247)
                let expr_482 := _248
                vloc_tmp5_419 := expr_482
                let expr_483 := expr_482
                let _249 := 0x01
                let expr_486 := _249
                let _250 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_487 := _250
                let expr_488 := 0x01
                let expr_489 := checked_sub_t_uint256(expr_487, convert_t_rational_1_by_1_to_t_uint256(expr_488))

                let _251 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_486,expr_489)
                let _252_slot := _251
                let expr_490_slot := _252_slot
                let _253 := add(expr_490_slot, 4)
                let _254 := read_from_storage_offset_0_t_uint256(_253)
                let expr_491 := _254
                vloc_tmp6_421 := expr_491
                let expr_492 := expr_491
                let _255 := 0x01
                let expr_495 := _255
                let _256 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_496 := _256
                let expr_497 := 0x01
                let expr_498 := checked_sub_t_uint256(expr_496, convert_t_rational_1_by_1_to_t_uint256(expr_497))

                let _257 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_495,expr_498)
                let _258_slot := _257
                let expr_499_slot := _258_slot
                let _259 := add(expr_499_slot, 8)
                let _260 := _259
                let expr_500 := _260
                let expr_502 := caller()
                let _261 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_500,expr_502)
                let _262 := read_from_storage_offset_0_t_bool(_261)
                let expr_503 := _262
                vloc_tmp7_423 := expr_503
                let expr_504 := expr_503
                let expr_507 := 0x00
                let _263 := convert_t_rational_0_by_1_to_t_uint256(expr_507)
                vloc_tmp8_425 := _263
                let expr_508 := _263
                let _264 := 0x01
                let expr_511 := _264
                let _265 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_512 := _265
                let expr_513 := 0x01
                let expr_514 := checked_sub_t_uint256(expr_512, convert_t_rational_1_by_1_to_t_uint256(expr_513))

                let _266 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_511,expr_514)
                let _267_slot := _266
                let expr_515_slot := _267_slot
                let _268 := add(expr_515_slot, 9)
                let _269 := _268
                let expr_516 := _269
                let expr_518 := caller()
                let _270 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address_payable(expr_516,expr_518)
                let _271 := read_from_storage_offset_0_t_bool(_270)
                let expr_519 := _271
                vloc_tmp9_427 := expr_519
                let expr_520 := expr_519
                let _272 := 0x01
                let expr_523 := _272
                let _273 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_524 := _273
                let expr_525 := 0x01
                let expr_526 := checked_sub_t_uint256(expr_524, convert_t_rational_1_by_1_to_t_uint256(expr_525))

                let _274 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_523,expr_526)
                let _275_slot := _274
                let expr_527_slot := _275_slot
                let _276 := add(expr_527_slot, 10)
                let _277 := read_from_storage_offset_0_t_address(_276)
                let expr_528 := _277
                vloc_tmp10_429 := expr_528
                let expr_529 := expr_528
                let _278 := 0x01
                let expr_532 := _278
                let _279 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_533 := _279
                let expr_534 := 0x01
                let expr_535 := checked_sub_t_uint256(expr_533, convert_t_rational_1_by_1_to_t_uint256(expr_534))

                let _280 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$38_storage_$_of_t_uint256(expr_532,expr_535)
                let _281_slot := _280
                let expr_536_slot := _281_slot
                let _282 := add(expr_536_slot, 11)
                let _283 := read_from_storage_offset_0_t_uint256(_282)
                let expr_537 := _283
                vloc_tmp11_431 := expr_537
                let expr_538 := expr_537

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

            function zero_value_for_split_t_address() -> ret {
                ret := 0
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

