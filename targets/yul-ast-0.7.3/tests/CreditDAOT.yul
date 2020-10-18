/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "CreditDAOT_555" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_CreditDAOT_555()

        codecopy(0, dataoffset("CreditDAOT_555_deployed"), datasize("CreditDAOT_555_deployed"))

        return(0, datasize("CreditDAOT_555_deployed"))

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

        function constructor_CreditDAOT_555() {

            let expr_52 := 0x00
            update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(0x04, expr_52)
            let expr_55 := 0x0129cb
            update_storage_value_offset_0t_rational_76235_by_1_to_t_uint256(0x05, expr_55)

            let expr_64 := number()
            let _1 := 0x01
            let expr_59 := _1
            let _2 := read_from_storage_offset_0_t_uint256(0x00)
            let expr_60 := _2
            let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_59,expr_60)
            let _4_slot := _3
            let expr_61_slot := _4_slot
            let _5 := add(expr_61_slot, 0)
            update_storage_value_offset_0t_uint256_to_t_uint256(_5, expr_64)
            let expr_65 := expr_64
            let expr_72 := number()
            let _6 := read_from_storage_offset_0_t_uint256(0x05)
            let expr_73 := _6
            let expr_74 := checked_add_t_uint256(expr_72, expr_73)

            let _7 := 0x01
            let expr_67 := _7
            let _8 := read_from_storage_offset_0_t_uint256(0x00)
            let expr_68 := _8
            let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_67,expr_68)
            let _10_slot := _9
            let expr_69_slot := _10_slot
            let _11 := add(expr_69_slot, 1)
            update_storage_value_offset_0t_uint256_to_t_uint256(_11, expr_74)
            let expr_75 := expr_74
            let _13 := read_from_storage_offset_0_t_uint256(0x00)
            let _12 := increment_t_uint256(_13)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _12)
            let expr_78 := _13

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
    object "CreditDAOT_555_deployed" {
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
                    fun_sumbitForElection_196()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x14fc78fc
                {
                    // observe()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11 :=  fun_observe_531()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint256_t_bool_t_address_t_uint256__to_t_uint256_t_uint256_t_uint256_t_address_t_address_t_uint256_t_uint256_t_bool_t_uint256_t_bool_t_address_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x31e92f32
                {
                    // blocksPerMonth()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_blocksPerMonth_56()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3af5dbb6
                {
                    // mandateInBlocks()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_mandateInBlocks_53()
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

                case 0x5e6fef01
                {
                    // elections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5 :=  getter_fun_elections_44(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint8_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint8_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6dd7d8ea
                {
                    // vote(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_vote_238(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x74c80467
                {
                    // createNewElections()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_createNewElections_113()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x862b5cc5
                {
                    // observe1()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe1_554()
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
                    let ret_0 :=  fun_observe0_541()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe79206e6
                {
                    // finishElections(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_finishElections_390(param_0)
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

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
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

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint8_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint8_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                tail := add(headStart, 192)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint8_to_t_uint8_fromStack(value3,  add(headStart, 96))

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

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
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

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
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

            function convert_t_rational_2_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
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

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint8(value)
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

            function extract_from_storage_value_offset_0t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_1t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_8_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_2t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_16_unsigned(slot_value))
            }

            function fun_createNewElections_113() {

                let expr_89 := number()
                let _1 := 0x01
                let expr_84 := _1
                let _2 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_85 := _2
                let _3 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_84,expr_85)
                let _4_slot := _3
                let expr_86_slot := _4_slot
                let _5 := add(expr_86_slot, 0)
                update_storage_value_offset_0t_uint256_to_t_uint256(_5, expr_89)
                let expr_90 := expr_89
                let expr_97 := number()
                let _6 := read_from_storage_offset_0_t_uint256(0x05)
                let expr_98 := _6
                let expr_99 := checked_add_t_uint256(expr_97, expr_98)

                let _7 := 0x01
                let expr_92 := _7
                let _8 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_93 := _8
                let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_92,expr_93)
                let _10_slot := _9
                let expr_94_slot := _10_slot
                let _11 := add(expr_94_slot, 1)
                update_storage_value_offset_0t_uint256_to_t_uint256(_11, expr_99)
                let expr_100 := expr_99
                let _13 := read_from_storage_offset_0_t_uint256(0x00)
                let _12 := increment_t_uint256(_13)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _12)
                let expr_103 := _13
                let expr_108 := 0x00
                let expr_109 := convert_t_rational_0_by_1_to_t_address_payable(expr_108)
                let _14 := convert_t_address_payable_to_t_address(expr_109)
                update_storage_value_offset_0t_address_to_t_address(0x03, _14)
                let expr_110 := _14

            }

            function fun_finishElections_390(vloc__iterations_240) {

                let vloc_curentVotes_244
                let zero_value_for_type_t_uint256_103 := zero_value_for_split_t_uint256()
                vloc_curentVotes_244 := zero_value_for_type_t_uint256_103
                let _104 := 0x01
                let expr_248 := _104
                let _105 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_249 := _105
                let expr_250 := 0x01
                let expr_251 := checked_sub_t_uint256(expr_249, convert_t_rational_1_by_1_to_t_uint256(expr_250))

                let _106 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_248,expr_251)
                let _107_slot := _106
                let expr_252_slot := _107_slot
                let _108 := add(expr_252_slot, 5)
                let _109 := read_from_storage_offset_0_t_uint256(_108)
                let expr_253 := _109
                let vloc_nextCandidateId_247 := expr_253
                for {
                    let expr_257 := 0x00
                    let vloc_cnt_256 := convert_t_rational_0_by_1_to_t_uint256(expr_257)
                    } 1 {
                    let _111 := vloc_cnt_256
                    let _110 := increment_t_uint256(_111)
                    vloc_cnt_256 := _110
                    let expr_263 := _111
                }
                {
                    let _112 := vloc_cnt_256
                    let expr_259 := _112
                    let _113 := vloc__iterations_240
                    let expr_260 := _113
                    let expr_261 := lt(cleanup_t_uint256(expr_259), cleanup_t_uint256(expr_260))
                    if iszero(expr_261) { break }
                    let _114 := 0x02
                    let expr_266 := _114
                    let _115 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_267 := _115
                    let expr_268 := 0x01
                    let expr_269 := checked_sub_t_uint256(expr_267, convert_t_rational_1_by_1_to_t_uint256(expr_268))

                    let _116 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_266,expr_269)
                    let _117_slot := _116
                    let expr_270_slot := _117_slot
                    let _118 := add(expr_270_slot, 3)
                    let _119 := _118
                    let expr_271 := _119
                    let _120 := vloc_nextCandidateId_247
                    let expr_272 := _120
                    let _121 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_271,expr_272)
                    let _122 := read_from_storage_offset_0_t_uint256(_121)
                    let expr_273 := _122
                    vloc_curentVotes_244 := expr_273
                    let expr_274 := expr_273
                    let _123 := vloc_curentVotes_244
                    let expr_276 := _123
                    let _124 := 0x01
                    let expr_277 := _124
                    let _125 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_278 := _125
                    let expr_279 := 0x01
                    let expr_280 := checked_sub_t_uint256(expr_278, convert_t_rational_1_by_1_to_t_uint256(expr_279))

                    let _126 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_277,expr_280)
                    let _127_slot := _126
                    let expr_281_slot := _127_slot
                    let _128 := add(expr_281_slot, 4)
                    let _129 := read_from_storage_offset_0_t_uint256(_128)
                    let expr_282 := _129
                    let expr_283 := gt(cleanup_t_uint256(expr_276), cleanup_t_uint256(expr_282))
                    if expr_283 {
                        let _130 := 0x02
                        let expr_290 := _130
                        let _131 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_291 := _131
                        let expr_292 := 0x01
                        let expr_293 := checked_sub_t_uint256(expr_291, convert_t_rational_1_by_1_to_t_uint256(expr_292))

                        let _132 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_290,expr_293)
                        let _133_slot := _132
                        let expr_294_slot := _133_slot
                        let _134 := add(expr_294_slot, 2)
                        let _135 := _134
                        let expr_295 := _135
                        let _136 := vloc_nextCandidateId_247
                        let expr_296 := _136
                        let _137 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_295,expr_296)
                        let _138 := read_from_storage_offset_0_t_address(_137)
                        let expr_297 := _138
                        let _139 := 0x02
                        let expr_284 := _139
                        let _140 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_285 := _140
                        let expr_286 := 0x01
                        let expr_287 := checked_sub_t_uint256(expr_285, convert_t_rational_1_by_1_to_t_uint256(expr_286))

                        let _141 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_284,expr_287)
                        let _142_slot := _141
                        let expr_288_slot := _142_slot
                        let _143 := add(expr_288_slot, 0)
                        update_storage_value_offset_0t_address_to_t_address(_143, expr_297)
                        let expr_298 := expr_297
                        let _144 := vloc_curentVotes_244
                        let expr_306 := _144
                        let _145 := 0x01
                        let expr_300 := _145
                        let _146 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_301 := _146
                        let expr_302 := 0x01
                        let expr_303 := checked_sub_t_uint256(expr_301, convert_t_rational_1_by_1_to_t_uint256(expr_302))

                        let _147 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_300,expr_303)
                        let _148_slot := _147
                        let expr_304_slot := _148_slot
                        let _149 := add(expr_304_slot, 4)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_149, expr_306)
                        let expr_307 := expr_306
                    }
                    let _151 := vloc_nextCandidateId_247
                    let _150 := increment_t_uint256(_151)
                    vloc_nextCandidateId_247 := _150
                    let expr_312 := _151
                }
                let _152 := vloc_nextCandidateId_247
                let expr_322 := _152
                let _153 := 0x01
                let expr_316 := _153
                let _154 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_317 := _154
                let expr_318 := 0x01
                let expr_319 := checked_sub_t_uint256(expr_317, convert_t_rational_1_by_1_to_t_uint256(expr_318))

                let _155 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_316,expr_319)
                let _156_slot := _155
                let expr_320_slot := _156_slot
                let _157 := add(expr_320_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_157, expr_322)
                let expr_323 := expr_322
                let _158 := 0x02
                let expr_325 := _158
                let _159 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_326 := _159
                let expr_327 := 0x01
                let expr_328 := checked_sub_t_uint256(expr_326, convert_t_rational_1_by_1_to_t_uint256(expr_327))

                let _160 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_325,expr_328)
                let _161_slot := _160
                let expr_329_slot := _161_slot
                let _162 := add(expr_329_slot, 2)
                let _163 := _162
                let expr_330 := _163
                let _164 := vloc_nextCandidateId_247
                let expr_331 := _164
                let _165 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_330,expr_331)
                let _166 := read_from_storage_offset_0_t_address(_165)
                let expr_332 := _166
                let expr_335 := 0x00
                let expr_336 := convert_t_rational_0_by_1_to_t_address_payable(expr_335)
                let expr_337 := eq(cleanup_t_address(expr_332), convert_t_address_payable_to_t_address(expr_336))
                if expr_337 {
                    let _167 := 0x02
                    let expr_339 := _167
                    let _168 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_340 := _168
                    let expr_341 := 0x01
                    let expr_342 := checked_sub_t_uint256(expr_340, convert_t_rational_1_by_1_to_t_uint256(expr_341))

                    let _169 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_339,expr_342)
                    let _170_slot := _169
                    let expr_343_slot := _170_slot
                    let _171 := add(expr_343_slot, 0)
                    let _172 := read_from_storage_offset_0_t_address(_171)
                    let expr_344 := _172
                    update_storage_value_offset_0t_address_to_t_address(0x03, expr_344)
                    let expr_345 := expr_344
                    let expr_353 := 0x01
                    let _173 := 0x02
                    let expr_347 := _173
                    let _174 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_348 := _174
                    let expr_349 := 0x01
                    let expr_350 := checked_sub_t_uint256(expr_348, convert_t_rational_1_by_1_to_t_uint256(expr_349))

                    let _175 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_347,expr_350)
                    let _176_slot := _175
                    let expr_351_slot := _176_slot
                    let _177 := add(expr_351_slot, 0)
                    update_storage_value_offset_20t_bool_to_t_bool(_177, expr_353)
                    let expr_354 := expr_353
                    let _178 := 0x01
                    let expr_356 := _178
                    let _179 := read_from_storage_offset_0_t_uint256(0x00)
                    let expr_357 := _179
                    let expr_358 := 0x01
                    let expr_359 := checked_sub_t_uint256(expr_357, convert_t_rational_1_by_1_to_t_uint256(expr_358))

                    let _180 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_356,expr_359)
                    let _181_slot := _180
                    let expr_360_slot := _181_slot
                    let _182 := add(expr_360_slot, 4)
                    let _183 := read_from_storage_offset_0_t_uint256(_182)
                    let expr_361 := _183
                    let expr_362 := 0x00
                    let expr_363 := eq(cleanup_t_uint256(expr_361), convert_t_rational_0_by_1_to_t_uint256(expr_362))
                    if expr_363 {
                        let expr_369 := number()
                        let _184 := 0x01
                        let expr_364 := _184
                        let _185 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_365 := _185
                        let _186 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_364,expr_365)
                        let _187_slot := _186
                        let expr_366_slot := _187_slot
                        let _188 := add(expr_366_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_188, expr_369)
                        let expr_370 := expr_369
                        let expr_377 := number()
                        let _189 := read_from_storage_offset_0_t_uint256(0x05)
                        let expr_378 := _189
                        let expr_379 := checked_add_t_uint256(expr_377, expr_378)

                        let _190 := 0x01
                        let expr_372 := _190
                        let _191 := read_from_storage_offset_0_t_uint256(0x00)
                        let expr_373 := _191
                        let _192 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_372,expr_373)
                        let _193_slot := _192
                        let expr_374_slot := _193_slot
                        let _194 := add(expr_374_slot, 1)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_194, expr_379)
                        let expr_380 := expr_379
                        let _196 := read_from_storage_offset_0_t_uint256(0x00)
                        let _195 := increment_t_uint256(_196)
                        update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _195)
                        let expr_383 := _196
                    }
                }

            }

            function fun_observe0_541() -> vloc_tmp0_534 {
                let zero_value_for_type_t_uint256_289 := zero_value_for_split_t_uint256()
                vloc_tmp0_534 := zero_value_for_type_t_uint256_289

                let _290 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_537 := _290
                vloc_tmp0_534 := expr_537
                let expr_538 := expr_537

            }

            function fun_observe1_554() -> vloc_tmp0_544 {
                let zero_value_for_type_t_uint256_291 := zero_value_for_split_t_uint256()
                vloc_tmp0_544 := zero_value_for_type_t_uint256_291

                let _292 := 0x01
                let expr_547 := _292
                let _293 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_548 := _293
                let _294 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_547,expr_548)
                let _295_slot := _294
                let expr_549_slot := _295_slot
                let _296 := add(expr_549_slot, 0)
                let _297 := read_from_storage_offset_0_t_uint256(_296)
                let expr_550 := _297
                vloc_tmp0_544 := expr_550
                let expr_551 := expr_550

            }

            function fun_observe_531() -> vloc_tmp0_393, vloc_tmp1_395, vloc_tmp2_397, vloc_tmp3_399, vloc_tmp4_401, vloc_tmp5_403, vloc_tmp6_405, vloc_tmp7_407, vloc_tmp8_409, vloc_tmp9_411, vloc_tmp10_413, vloc_tmp11_415 {
                let zero_value_for_type_t_uint256_197 := zero_value_for_split_t_uint256()
                vloc_tmp0_393 := zero_value_for_type_t_uint256_197
                let zero_value_for_type_t_uint256_198 := zero_value_for_split_t_uint256()
                vloc_tmp1_395 := zero_value_for_type_t_uint256_198
                let zero_value_for_type_t_uint256_199 := zero_value_for_split_t_uint256()
                vloc_tmp2_397 := zero_value_for_type_t_uint256_199
                let zero_value_for_type_t_address_200 := zero_value_for_split_t_address()
                vloc_tmp3_399 := zero_value_for_type_t_address_200
                let zero_value_for_type_t_address_201 := zero_value_for_split_t_address()
                vloc_tmp4_401 := zero_value_for_type_t_address_201
                let zero_value_for_type_t_uint256_202 := zero_value_for_split_t_uint256()
                vloc_tmp5_403 := zero_value_for_type_t_uint256_202
                let zero_value_for_type_t_uint256_203 := zero_value_for_split_t_uint256()
                vloc_tmp6_405 := zero_value_for_type_t_uint256_203
                let zero_value_for_type_t_bool_204 := zero_value_for_split_t_bool()
                vloc_tmp7_407 := zero_value_for_type_t_bool_204
                let zero_value_for_type_t_uint256_205 := zero_value_for_split_t_uint256()
                vloc_tmp8_409 := zero_value_for_type_t_uint256_205
                let zero_value_for_type_t_bool_206 := zero_value_for_split_t_bool()
                vloc_tmp9_411 := zero_value_for_type_t_bool_206
                let zero_value_for_type_t_address_207 := zero_value_for_split_t_address()
                vloc_tmp10_413 := zero_value_for_type_t_address_207
                let zero_value_for_type_t_uint256_208 := zero_value_for_split_t_uint256()
                vloc_tmp11_415 := zero_value_for_type_t_uint256_208

                let _209 := 0x01
                let expr_418 := _209
                let _210 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_419 := _210
                let _211 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_418,expr_419)
                let _212_slot := _211
                let expr_420_slot := _212_slot
                let _213 := add(expr_420_slot, 0)
                let _214 := read_from_storage_offset_0_t_uint256(_213)
                let expr_421 := _214
                vloc_tmp0_393 := expr_421
                let expr_422 := expr_421
                let _215 := 0x01
                let expr_425 := _215
                let _216 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_426 := _216
                let _217 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_425,expr_426)
                let _218_slot := _217
                let expr_427_slot := _218_slot
                let _219 := add(expr_427_slot, 1)
                let _220 := read_from_storage_offset_0_t_uint256(_219)
                let expr_428 := _220
                vloc_tmp1_395 := expr_428
                let expr_429 := expr_428
                let _221 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_432 := _221
                vloc_tmp2_397 := expr_432
                let expr_433 := expr_432
                let _222 := read_from_storage_offset_0_t_address(0x03)
                let expr_436 := _222
                vloc_tmp3_399 := expr_436
                let expr_437 := expr_436
                let _223 := 0x01
                let expr_441 := _223
                let _224 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_442 := _224
                let _225 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_441,expr_442)
                let _226_slot := _225
                let expr_443_slot := _226_slot
                let _227 := add(expr_443_slot, 3)
                let _228 := read_from_storage_offset_0_t_uint8(_227)
                let expr_444 := _228
                let vloc_nextCandidateId_440 := convert_t_uint8_to_t_uint256(expr_444)
                let _229 := 0x02
                let expr_447 := _229
                let _230 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_448 := _230
                let expr_449 := 0x01
                let expr_450 := checked_sub_t_uint256(expr_448, convert_t_rational_1_by_1_to_t_uint256(expr_449))

                let _231 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_447,expr_450)
                let _232_slot := _231
                let expr_451_slot := _232_slot
                let _233 := add(expr_451_slot, 2)
                let _234 := _233
                let expr_452 := _234
                let _235 := vloc_nextCandidateId_440
                let expr_453 := _235
                let _236 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_452,expr_453)
                let _237 := read_from_storage_offset_0_t_address(_236)
                let expr_454 := _237
                vloc_tmp4_401 := expr_454
                let expr_455 := expr_454
                let _238 := 0x02
                let expr_458 := _238
                let _239 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_459 := _239
                let expr_460 := 0x01
                let expr_461 := checked_sub_t_uint256(expr_459, convert_t_rational_1_by_1_to_t_uint256(expr_460))

                let _240 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_458,expr_461)
                let _241_slot := _240
                let expr_462_slot := _241_slot
                let _242 := add(expr_462_slot, 1)
                let _243 := _242
                let expr_463 := _243
                let expr_465 := caller()
                let _244 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address_payable(expr_463,expr_465)
                let _245_slot := _244
                let expr_466_slot := _245_slot
                let _246 := add(expr_466_slot, 0)
                let _247 := read_from_storage_offset_2_t_uint8(_246)
                let expr_467 := _247
                let _248 := convert_t_uint8_to_t_uint256(expr_467)
                vloc_tmp5_403 := _248
                let expr_468 := _248
                let _249 := 0x01
                let expr_471 := _249
                let _250 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_472 := _250
                let expr_473 := 0x01
                let expr_474 := checked_sub_t_uint256(expr_472, convert_t_rational_1_by_1_to_t_uint256(expr_473))

                let _251 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_471,expr_474)
                let _252_slot := _251
                let expr_475_slot := _252_slot
                let _253 := add(expr_475_slot, 3)
                let _254 := read_from_storage_offset_0_t_uint8(_253)
                let expr_476 := _254
                let _255 := convert_t_uint8_to_t_uint256(expr_476)
                vloc_tmp6_405 := _255
                let expr_477 := _255
                let _256 := 0x02
                let expr_480 := _256
                let _257 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_481 := _257
                let expr_482 := 0x01
                let expr_483 := checked_sub_t_uint256(expr_481, convert_t_rational_1_by_1_to_t_uint256(expr_482))

                let _258 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_480,expr_483)
                let _259_slot := _258
                let expr_484_slot := _259_slot
                let _260 := add(expr_484_slot, 1)
                let _261 := _260
                let expr_485 := _261
                let expr_487 := caller()
                let _262 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address_payable(expr_485,expr_487)
                let _263_slot := _262
                let expr_488_slot := _263_slot
                let _264 := add(expr_488_slot, 0)
                let _265 := read_from_storage_offset_0_t_bool(_264)
                let expr_489 := _265
                vloc_tmp7_407 := expr_489
                let expr_490 := expr_489
                let expr_493 := 0x00
                let _266 := convert_t_rational_0_by_1_to_t_uint256(expr_493)
                vloc_tmp8_409 := _266
                let expr_494 := _266
                let _267 := 0x02
                let expr_497 := _267
                let _268 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_498 := _268
                let expr_499 := 0x01
                let expr_500 := checked_sub_t_uint256(expr_498, convert_t_rational_1_by_1_to_t_uint256(expr_499))

                let _269 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_497,expr_500)
                let _270_slot := _269
                let expr_501_slot := _270_slot
                let _271 := add(expr_501_slot, 1)
                let _272 := _271
                let expr_502 := _272
                let expr_504 := caller()
                let _273 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address_payable(expr_502,expr_504)
                let _274_slot := _273
                let expr_505_slot := _274_slot
                let _275 := add(expr_505_slot, 0)
                let _276 := read_from_storage_offset_1_t_uint8(_275)
                let expr_506 := _276
                let expr_507 := 0x02
                let expr_508 := eq(cleanup_t_uint8(expr_506), convert_t_rational_2_by_1_to_t_uint8(expr_507))
                let expr_509 := expr_508
                vloc_tmp9_411 := expr_509
                let expr_510 := expr_509
                let _277 := 0x02
                let expr_513 := _277
                let _278 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_514 := _278
                let expr_515 := 0x01
                let expr_516 := checked_sub_t_uint256(expr_514, convert_t_rational_1_by_1_to_t_uint256(expr_515))

                let _279 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_513,expr_516)
                let _280_slot := _279
                let expr_517_slot := _280_slot
                let _281 := add(expr_517_slot, 0)
                let _282 := read_from_storage_offset_0_t_address(_281)
                let expr_518 := _282
                vloc_tmp10_413 := expr_518
                let expr_519 := expr_518
                let _283 := 0x01
                let expr_522 := _283
                let _284 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_523 := _284
                let expr_524 := 0x01
                let expr_525 := checked_sub_t_uint256(expr_523, convert_t_rational_1_by_1_to_t_uint256(expr_524))

                let _285 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_522,expr_525)
                let _286_slot := _285
                let expr_526_slot := _286_slot
                let _287 := add(expr_526_slot, 4)
                let _288 := read_from_storage_offset_0_t_uint256(_287)
                let expr_527 := _288
                vloc_tmp11_415 := expr_527
                let expr_528 := expr_527

            }

            function fun_sumbitForElection_196() {

                let _15 := 0x01
                let expr_117 := _15
                let _16 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_118 := _16
                let expr_119 := 0x01
                let expr_120 := checked_sub_t_uint256(expr_118, convert_t_rational_1_by_1_to_t_uint256(expr_119))

                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_117,expr_120)
                let _18_slot := _17
                let expr_121_slot := _18_slot
                let _19 := add(expr_121_slot, 1)
                let _20 := read_from_storage_offset_0_t_uint256(_19)
                let expr_122 := _20
                let expr_124 := number()
                let expr_125 := gt(cleanup_t_uint256(expr_122), cleanup_t_uint256(expr_124))
                require_helper(expr_125)
                let _21 := 0x02
                let expr_129 := _21
                let _22 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_130 := _22
                let expr_131 := 0x01
                let expr_132 := checked_sub_t_uint256(expr_130, convert_t_rational_1_by_1_to_t_uint256(expr_131))

                let _23 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_129,expr_132)
                let _24_slot := _23
                let expr_133_slot := _24_slot
                let _25 := add(expr_133_slot, 1)
                let _26 := _25
                let expr_134 := _26
                let expr_136 := caller()
                let _27 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address_payable(expr_134,expr_136)
                let _28_slot := _27
                let expr_137_slot := _28_slot
                let _29 := add(expr_137_slot, 0)
                let _30 := read_from_storage_offset_0_t_bool(_29)
                let expr_138 := _30
                let expr_139 := cleanup_t_bool(iszero(expr_138))
                require_helper(expr_139)
                let _31 := 0x01
                let expr_144 := _31
                let _32 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_145 := _32
                let _33 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_144,expr_145)
                let _34_slot := _33
                let expr_146_slot := _34_slot
                let _35 := add(expr_146_slot, 3)
                let _36 := read_from_storage_offset_0_t_uint8(_35)
                let expr_147 := _36
                let vloc_nextCandidateId_143 := expr_147
                let expr_158 := caller()
                let _37 := convert_t_address_payable_to_t_address(expr_158)
                let _38 := 0x02
                let expr_149 := _38
                let _39 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_150 := _39
                let expr_151 := 0x01
                let expr_152 := checked_sub_t_uint256(expr_150, convert_t_rational_1_by_1_to_t_uint256(expr_151))

                let _40 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_149,expr_152)
                let _41_slot := _40
                let expr_153_slot := _41_slot
                let _42 := add(expr_153_slot, 2)
                let _43 := _42
                let expr_154 := _43
                let _44 := vloc_nextCandidateId_143
                let expr_155 := _44
                let _45 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint8(expr_154,expr_155)
                update_storage_value_offset_0t_address_to_t_address(_45, _37)
                let expr_159 := _37
                let _46 := vloc_nextCandidateId_143
                let expr_171 := _46
                let _47 := 0x02
                let expr_161 := _47
                let _48 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_162 := _48
                let expr_163 := 0x01
                let expr_164 := checked_sub_t_uint256(expr_162, convert_t_rational_1_by_1_to_t_uint256(expr_163))

                let _49 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_161,expr_164)
                let _50_slot := _49
                let expr_165_slot := _50_slot
                let _51 := add(expr_165_slot, 1)
                let _52 := _51
                let expr_166 := _52
                let expr_168 := caller()
                let _53 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address_payable(expr_166,expr_168)
                let _54_slot := _53
                let expr_169_slot := _54_slot
                let _55 := add(expr_169_slot, 0)
                update_storage_value_offset_2t_uint8_to_t_uint8(_55, expr_171)
                let expr_172 := expr_171
                let _56 := 0x01
                let expr_174 := _56
                let _57 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_175 := _57
                let expr_176 := 0x01
                let expr_177 := checked_sub_t_uint256(expr_175, convert_t_rational_1_by_1_to_t_uint256(expr_176))

                let _58 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(expr_174,expr_177)
                let _59_slot := _58
                let expr_178_slot := _59_slot
                let _60 := add(expr_178_slot, 3)
                let _62 := read_from_storage_offset_0_t_uint8(_60)
                let _61 := increment_t_uint8(_62)
                update_storage_value_offset_0t_uint8_to_t_uint8(_60, _61)
                let expr_180 := _62
                let expr_192 := 0x01
                let _63 := 0x02
                let expr_182 := _63
                let _64 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_183 := _64
                let expr_184 := 0x01
                let expr_185 := checked_sub_t_uint256(expr_183, convert_t_rational_1_by_1_to_t_uint256(expr_184))

                let _65 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_182,expr_185)
                let _66_slot := _65
                let expr_186_slot := _66_slot
                let _67 := add(expr_186_slot, 1)
                let _68 := _67
                let expr_187 := _68
                let expr_189 := caller()
                let _69 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address_payable(expr_187,expr_189)
                let _70_slot := _69
                let expr_190_slot := _70_slot
                let _71 := add(expr_190_slot, 0)
                update_storage_value_offset_0t_bool_to_t_bool(_71, expr_192)
                let expr_193 := expr_192

            }

            function fun_vote_238(vloc__participant_198) {

                let _72 := 0x02
                let expr_203 := _72
                let _73 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_204 := _73
                let expr_205 := 0x01
                let expr_206 := checked_sub_t_uint256(expr_204, convert_t_rational_1_by_1_to_t_uint256(expr_205))

                let _74 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_203,expr_206)
                let _75_slot := _74
                let expr_207_slot := _75_slot
                let _76 := add(expr_207_slot, 1)
                let _77 := _76
                let expr_208 := _77
                let _78 := vloc__participant_198
                let expr_209 := _78
                let _79 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address(expr_208,expr_209)
                let _80_slot := _79
                let expr_210_slot := _80_slot
                let _81 := add(expr_210_slot, 0)
                let _82 := read_from_storage_offset_2_t_uint8(_81)
                let expr_211 := _82
                let vloc_candidateId_202 := convert_t_uint8_to_t_uint256(expr_211)
                let expr_221 := 0x01
                let _83 := convert_t_rational_1_by_1_to_t_uint256(expr_221)
                let _84 := 0x02
                let expr_213 := _84
                let _85 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_214 := _85
                let expr_215 := 0x01
                let expr_216 := checked_sub_t_uint256(expr_214, convert_t_rational_1_by_1_to_t_uint256(expr_215))

                let _86 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_213,expr_216)
                let _87_slot := _86
                let expr_217_slot := _87_slot
                let _88 := add(expr_217_slot, 3)
                let _89 := _88
                let expr_218 := _89
                let _90 := vloc_candidateId_202
                let expr_219 := _90
                let _91 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_218,expr_219)
                let _92 := read_from_storage_offset_0_t_uint256(_91)
                _83 := checked_add_t_uint256(_92, _83)
                update_storage_value_offset_0t_uint256_to_t_uint256(_91, _83)
                let expr_222 := _83
                let expr_234 := 0x02
                let _93 := convert_t_rational_2_by_1_to_t_uint8(expr_234)
                let _94 := 0x02
                let expr_224 := _94
                let _95 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_225 := _95
                let expr_226 := 0x01
                let expr_227 := checked_sub_t_uint256(expr_225, convert_t_rational_1_by_1_to_t_uint256(expr_226))

                let _96 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(expr_224,expr_227)
                let _97_slot := _96
                let expr_228_slot := _97_slot
                let _98 := add(expr_228_slot, 1)
                let _99 := _98
                let expr_229 := _99
                let expr_231 := caller()
                let _100 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address_payable(expr_229,expr_231)
                let _101_slot := _100
                let expr_232_slot := _101_slot
                let _102 := add(expr_232_slot, 0)
                update_storage_value_offset_1t_uint8_to_t_uint8(_102, _93)
                let expr_235 := _93

            }

            function getter_fun_blocksPerMonth_56() -> ret {

                let slot := 5
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_creditCEO_50() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_elections_44(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5 {

                let slot := 1
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))

                ret_3 := read_from_storage_split_offset_0_t_uint8(add(slot, 3))

                ret_4 := read_from_storage_split_offset_0_t_uint256(add(slot, 4))

                ret_5 := read_from_storage_split_offset_0_t_uint256(add(slot, 5))

            }

            function getter_fun_mandateInBlocks_53() -> ret {

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

            function increment_t_uint8(value) -> ret {
                value := cleanup_t_uint8(value)
                if gt(value, 0xfe) { panic_error() }
                ret := add(value, 1)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_Candidate_$21_storage_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint8(slot , key) -> dataSlot {
                mstore(0, convert_t_uint8_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Election_$14_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$38_storage_$_of_t_uint256(slot , key) -> dataSlot {
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

            function prepare_store_t_uint8(value) -> ret {
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

            function read_from_storage_offset_0_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint8(sload(slot))
            }

            function read_from_storage_offset_1_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_1t_uint8(sload(slot))
            }

            function read_from_storage_offset_2_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_2t_uint8(sload(slot))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_split_offset_0_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint8(sload(slot))
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

            function shift_left_16(value) -> newValue {
                newValue :=

                shl(16, value)

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

            function shift_right_16_unsigned(value) -> newValue {
                newValue :=

                shr(16, value)

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

            function update_byte_slice_1_shift_2(value, toInsert) -> result {
                let mask := 16711680
                toInsert := shift_left_16(toInsert)
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

            function update_storage_value_offset_0t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(value)))
            }

            function update_storage_value_offset_1t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_1(sload(slot), prepare_store_t_uint8(value)))
            }

            function update_storage_value_offset_20t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_20(sload(slot), prepare_store_t_bool(value)))
            }

            function update_storage_value_offset_2t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_2(sload(slot), prepare_store_t_uint8(value)))
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

