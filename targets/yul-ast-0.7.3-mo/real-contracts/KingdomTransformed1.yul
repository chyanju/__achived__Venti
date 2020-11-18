/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "KingdomTransformed1_1122" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_KingdomTransformed1_1122()

        codecopy(0, dataoffset("KingdomTransformed1_1122_deployed"), datasize("KingdomTransformed1_1122_deployed"))

        return(0, datasize("KingdomTransformed1_1122_deployed"))

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function constructor_KingdomTransformed1_1122() {

            let expr_149 := caller()
            let _1 := convert_t_address_payable_to_t_address(expr_149)
            update_storage_value_offset_0t_address_to_t_address(0x00, _1)
            let expr_150 := _1
            let expr_154 := caller()
            let _2 := convert_t_address_payable_to_t_address(expr_154)
            update_storage_value_offset_0t_address_to_t_address(0x01, _2)
            let expr_155 := _2
            let expr_158 := 0x00
            let _3 := convert_t_rational_0_by_1_to_t_uint256(expr_158)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x02, _3)
            let expr_159 := _3
            let expr_163 := caller()
            let _4 := convert_t_address_payable_to_t_address(expr_163)
            update_storage_value_offset_0t_address_to_t_address(0x03, _4)
            let expr_164 := _4
            let expr_167 := 0x00
            let _5 := convert_t_rational_0_by_1_to_t_uint256(expr_167)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, _5)
            let expr_168 := _5
            let expr_171 := 0x00
            let _6 := convert_t_rational_0_by_1_to_t_uint256(expr_171)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _6)
            let expr_172 := _6
            let expr_175 := 0x00
            let _7 := convert_t_rational_0_by_1_to_t_uint256(expr_175)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x06, _7)
            let expr_176 := _7
            let expr_179 := 0x00
            let _8 := convert_t_rational_0_by_1_to_t_uint256(expr_179)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x07, _8)
            let expr_180 := _8

        }

        function convert_t_address_payable_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(value)
        }

        function prepare_store_t_address(value) -> ret {
            ret := value
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

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

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

    }
    object "KingdomTransformed1_1122_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x1635e13c
                {
                    // initBuilding(uint256,uint256,uint256,uint256,uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_uint256t_uint256t_uint256t_uint256t_uint256t_uint256(4, calldatasize())
                    fun_initBuilding_224(param_0, param_1, param_2, param_3, param_4, param_5)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x23a52674
                {
                    // expandX()

                    abi_decode_tuple_(4, calldatasize())
                    fun_expandX_610()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x27d21602
                {
                    // buildings_total()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_buildings_total_58()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2d923561
                {
                    // sellItem(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    fun_sellItem_845(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x34085549
                {
                    // buildAt(uint256,uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_uint256t_uint256(4, calldatasize())
                    fun_buildAt_598(param_0, param_1, param_2)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3e6b3297
                {
                    // observe__3(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__3_1060(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4d14c57e
                {
                    // claimBasicResources()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_claimBasicResources_740()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4fcb2968
                {
                    // kingSpirit()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_kingSpirit_50()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x656b275c
                {
                    // expandY()

                    abi_decode_tuple_(4, calldatasize())
                    fun_expandY_622()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x69efc976
                {
                    // observe__0(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__0_1021(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x73c5899a
                {
                    // observe__5(address,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__5_1091(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x73cf2988
                {
                    // observe__6()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__6_1106()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x8878d726
                {
                    // buySpecialBuilding(uint256,uint256,uint256)

                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_uint256t_uint256(4, calldatasize())
                    fun_buySpecialBuilding_1008(param_0, param_1, param_2)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x8da5cb5b
                {
                    // owner()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_owner_46()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x9d4c662c
                {
                    // sell_id()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_sell_id_60()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x9d856bdc
                {
                    // queen()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_queen_52()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa24ed8aa
                {
                    // newLeader()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_newLeader_286()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa6ba3c9f
                {
                    // observe__2(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__2_1047(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa8f5bbd9
                {
                    // initiateUser()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_initiateUser_396()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbeb7597b
                {
                    // observe__7()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__7_1121()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xcc181ca8
                {
                    // king()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_king_48()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd9b0d03b
                {
                    // observe__1(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__1_1034(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe944a6d7
                {
                    // claimSpecialResource(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_claimSpecialResource_815(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf034936b
                {
                    // observe__4(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__4_1073(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf09bea14
                {
                    // totalCities()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_totalCities_56()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xfd6887af
                {
                    // queenPrestige()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_queenPrestige_54()
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

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256t_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256t_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 64
                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256t_uint256t_uint256t_uint256t_uint256t_uint256(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5 {
                if slt(sub(dataEnd, headStart), 192) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 64
                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 96
                    value3 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 128
                    value4 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 160
                    value5 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
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

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
            }

            function allocate_memory_struct_t_struct$_Building_$39_storage_ptr() -> memPtr {
                memPtr := allocateMemory(192)
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error() }

                sum := add(x, y)
            }

            function checked_mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error() }
                r := mod(x, y)
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

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_100000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_11_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_13_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_16_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_5000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_5_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_6_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_8_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_97_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_98_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_99_by_1_to_t_uint256(value) -> converted {
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

            function fun_buildAt_598(vloc_xpos_398, vloc_ypos_400, vloc_building_402) {

                let _119 := 0x0a
                let expr_406 := _119
                let expr_408 := caller()
                let _120 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_406,expr_408)
                let _121_slot := _120
                let expr_409_slot := _121_slot
                let _122 := add(expr_409_slot, 5)
                let _123 := _122
                let expr_410 := _123
                let _124 := 0x0b
                let expr_411 := _124
                let _125 := vloc_building_402
                let expr_412 := _125
                let _126 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_411,expr_412)
                let _127_slot := _126
                let expr_413_slot := _127_slot
                let _128 := add(expr_413_slot, 0)
                let _129 := read_from_storage_offset_0_t_uint256(_128)
                let expr_414 := _129
                let _130 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(expr_410,expr_414)
                let _131_slot := _130
                let expr_415_slot := _131_slot
                let _132 := add(expr_415_slot, 0)
                let _133 := read_from_storage_offset_0_t_uint256(_132)
                let expr_416 := _133
                let _134 := 0x0b
                let expr_417 := _134
                let _135 := vloc_building_402
                let expr_418 := _135
                let _136 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_417,expr_418)
                let _137_slot := _136
                let expr_419_slot := _137_slot
                let _138 := add(expr_419_slot, 2)
                let _139 := read_from_storage_offset_0_t_uint256(_138)
                let expr_420 := _139
                let expr_421 := iszero(lt(cleanup_t_uint256(expr_416), cleanup_t_uint256(expr_420)))
                let expr_422 := expr_421
                let expr_440 := expr_422
                if expr_440 {
                    let _140 := 0x0a
                    let expr_423 := _140
                    let expr_425 := caller()
                    let _141 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_423,expr_425)
                    let _142_slot := _141
                    let expr_426_slot := _142_slot
                    let _143 := add(expr_426_slot, 5)
                    let _144 := _143
                    let expr_427 := _144
                    let _145 := 0x0b
                    let expr_428 := _145
                    let _146 := vloc_building_402
                    let expr_429 := _146
                    let _147 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_428,expr_429)
                    let _148_slot := _147
                    let expr_430_slot := _148_slot
                    let _149 := add(expr_430_slot, 1)
                    let _150 := read_from_storage_offset_0_t_uint256(_149)
                    let expr_431 := _150
                    let _151 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(expr_427,expr_431)
                    let _152_slot := _151
                    let expr_432_slot := _152_slot
                    let _153 := add(expr_432_slot, 0)
                    let _154 := read_from_storage_offset_0_t_uint256(_153)
                    let expr_433 := _154
                    let _155 := 0x0b
                    let expr_434 := _155
                    let _156 := vloc_building_402
                    let expr_435 := _156
                    let _157 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_434,expr_435)
                    let _158_slot := _157
                    let expr_436_slot := _158_slot
                    let _159 := add(expr_436_slot, 3)
                    let _160 := read_from_storage_offset_0_t_uint256(_159)
                    let expr_437 := _160
                    let expr_438 := iszero(lt(cleanup_t_uint256(expr_433), cleanup_t_uint256(expr_437)))
                    let expr_439 := expr_438
                    expr_440 := expr_439
                }
                let expr_441 := expr_440
                let expr_450 := expr_441
                if expr_450 {
                    let _161 := 0x0a
                    let expr_442 := _161
                    let expr_444 := caller()
                    let _162 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_442,expr_444)
                    let _163_slot := _162
                    let expr_445_slot := _163_slot
                    let _164 := add(expr_445_slot, 2)
                    let _165 := read_from_storage_offset_0_t_uint256(_164)
                    let expr_446 := _165
                    let _166 := vloc_xpos_398
                    let expr_447 := _166
                    let expr_448 := gt(cleanup_t_uint256(expr_446), cleanup_t_uint256(expr_447))
                    let expr_449 := expr_448
                    expr_450 := expr_449
                }
                let expr_451 := expr_450
                let expr_460 := expr_451
                if expr_460 {
                    let _167 := 0x0a
                    let expr_452 := _167
                    let expr_454 := caller()
                    let _168 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_452,expr_454)
                    let _169_slot := _168
                    let expr_455_slot := _169_slot
                    let _170 := add(expr_455_slot, 3)
                    let _171 := read_from_storage_offset_0_t_uint256(_170)
                    let expr_456 := _171
                    let _172 := vloc_ypos_400
                    let expr_457 := _172
                    let expr_458 := gt(cleanup_t_uint256(expr_456), cleanup_t_uint256(expr_457))
                    let expr_459 := expr_458
                    expr_460 := expr_459
                }
                let expr_461 := expr_460
                let expr_484 := expr_461
                if expr_484 {
                    let _173 := 0x0a
                    let expr_462 := _173
                    let expr_464 := caller()
                    let _174 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_462,expr_464)
                    let _175_slot := _174
                    let expr_465_slot := _175_slot
                    let _176 := add(expr_465_slot, 1)
                    let _177 := read_from_storage_offset_0_t_uint256(_176)
                    let expr_466 := _177
                    let _178 := 0x0a
                    let expr_467 := _178
                    let expr_469 := caller()
                    let _179 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_467,expr_469)
                    let _180_slot := _179
                    let expr_470_slot := _180_slot
                    let _181 := add(expr_470_slot, 5)
                    let _182 := _181
                    let expr_471 := _182
                    let expr_472 := 0x00
                    let _183 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_0_by_1(expr_471,expr_472)
                    let _184_slot := _183
                    let expr_473_slot := _184_slot
                    let _185 := add(expr_473_slot, 1)
                    let _186 := read_from_storage_offset_0_t_uint256(_185)
                    let expr_474 := _186
                    let expr_475 := iszero(gt(cleanup_t_uint256(expr_466), cleanup_t_uint256(expr_474)))
                    let expr_476 := expr_475
                    let expr_481 := expr_476
                    if iszero(expr_481) {
                        let _187 := vloc_building_402
                        let expr_477 := _187
                        let expr_478 := 0x01
                        let expr_479 := eq(cleanup_t_uint256(expr_477), convert_t_rational_1_by_1_to_t_uint256(expr_478))
                        let expr_480 := expr_479
                        expr_481 := expr_480
                    }
                    let expr_482 := expr_481
                    let expr_483 := expr_482
                    expr_484 := expr_483
                }
                let expr_485 := expr_484
                let expr_490 := expr_485
                if expr_490 {
                    let _188 := vloc_building_402
                    let expr_486 := _188
                    let expr_487 := 0x00
                    let expr_488 := gt(cleanup_t_uint256(expr_486), convert_t_rational_0_by_1_to_t_uint256(expr_487))
                    let expr_489 := expr_488
                    expr_490 := expr_489
                }
                let expr_491 := expr_490
                let expr_496 := expr_491
                if expr_496 {
                    let _189 := vloc_building_402
                    let expr_492 := _189
                    let _190 := read_from_storage_offset_0_t_uint256(0x06)
                    let expr_493 := _190
                    let expr_494 := iszero(gt(cleanup_t_uint256(expr_492), cleanup_t_uint256(expr_493)))
                    let expr_495 := expr_494
                    expr_496 := expr_495
                }
                let expr_497 := expr_496
                let expr_510 := expr_497
                if expr_510 {
                    let _191 := 0x0a
                    let expr_498 := _191
                    let expr_500 := caller()
                    let _192 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_498,expr_500)
                    let _193_slot := _192
                    let expr_501_slot := _193_slot
                    let _194 := add(expr_501_slot, 6)
                    let _195 := _194
                    let expr_502 := _195
                    let _196 := vloc_xpos_398
                    let expr_503 := _196
                    let _197 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(expr_502,expr_503)
                    let _198 := _197
                    let expr_504 := _198
                    let _199 := vloc_ypos_400
                    let expr_505 := _199
                    let _200 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_504,expr_505)
                    let _201 := read_from_storage_offset_0_t_uint256(_200)
                    let expr_506 := _201
                    let expr_507 := 0x00
                    let expr_508 := eq(cleanup_t_uint256(expr_506), convert_t_rational_0_by_1_to_t_uint256(expr_507))
                    let expr_509 := expr_508
                    expr_510 := expr_509
                }
                let expr_511 := expr_510
                require_helper(expr_511)
                let expr_519 := 0x05
                let _202 := convert_t_rational_5_by_1_to_t_uint256(expr_519)
                let _203 := 0x0a
                let expr_514 := _203
                let expr_516 := caller()
                let _204 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_514,expr_516)
                let _205_slot := _204
                let expr_517_slot := _205_slot
                let _206 := add(expr_517_slot, 1)
                let _207 := read_from_storage_offset_0_t_uint256(_206)
                _202 := checked_add_t_uint256(_207, _202)
                update_storage_value_offset_0t_uint256_to_t_uint256(_206, _202)
                let expr_520 := _202
                let _208 := vloc_building_402
                let expr_531 := _208
                let _209 := 0x0a
                let expr_522 := _209
                let expr_524 := caller()
                let _210 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_522,expr_524)
                let _211_slot := _210
                let expr_525_slot := _211_slot
                let _212 := add(expr_525_slot, 6)
                let _213 := _212
                let expr_526 := _213
                let _214 := vloc_xpos_398
                let expr_527 := _214
                let _215 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(expr_526,expr_527)
                let _216 := _215
                let expr_528 := _216
                let _217 := vloc_ypos_400
                let expr_529 := _217
                let _218 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_528,expr_529)
                update_storage_value_offset_0t_uint256_to_t_uint256(_218, expr_531)
                let expr_532 := expr_531
                let expr_534 := 0x00
                if expr_534 {
                    let _219 := 0x0b
                    let expr_546 := _219
                    let _220 := vloc_building_402
                    let expr_547 := _220
                    let _221 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_546,expr_547)
                    let _222_slot := _221
                    let expr_548_slot := _222_slot
                    let _223 := add(expr_548_slot, 5)
                    let _224 := read_from_storage_offset_0_t_uint256(_223)
                    let expr_549 := _224
                    let _225 := 0x0a
                    let expr_535 := _225
                    let expr_537 := caller()
                    let _226 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_535,expr_537)
                    let _227_slot := _226
                    let expr_538_slot := _227_slot
                    let _228 := add(expr_538_slot, 5)
                    let _229 := _228
                    let expr_539 := _229
                    let _230 := 0x0b
                    let expr_540 := _230
                    let _231 := vloc_building_402
                    let expr_541 := _231
                    let _232 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_540,expr_541)
                    let _233_slot := _232
                    let expr_542_slot := _233_slot
                    let _234 := add(expr_542_slot, 4)
                    let _235 := read_from_storage_offset_0_t_uint256(_234)
                    let expr_543 := _235
                    let _236 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(expr_539,expr_543)
                    let _237_slot := _236
                    let expr_544_slot := _237_slot
                    let _238 := add(expr_544_slot, 1)
                    let _239 := read_from_storage_offset_0_t_uint256(_238)
                    expr_549 := checked_add_t_uint256(_239, expr_549)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_238, expr_549)
                    let expr_550 := expr_549
                }
                let expr_554 := 0x00
                if expr_554 {
                    let _240 := 0x0b
                    let expr_566 := _240
                    let _241 := vloc_building_402
                    let expr_567 := _241
                    let _242 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_566,expr_567)
                    let _243_slot := _242
                    let expr_568_slot := _243_slot
                    let _244 := add(expr_568_slot, 2)
                    let _245 := read_from_storage_offset_0_t_uint256(_244)
                    let expr_569 := _245
                    let _246 := 0x0a
                    let expr_555 := _246
                    let expr_557 := caller()
                    let _247 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_555,expr_557)
                    let _248_slot := _247
                    let expr_558_slot := _248_slot
                    let _249 := add(expr_558_slot, 5)
                    let _250 := _249
                    let expr_559 := _250
                    let _251 := 0x0b
                    let expr_560 := _251
                    let _252 := vloc_building_402
                    let expr_561 := _252
                    let _253 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_560,expr_561)
                    let _254_slot := _253
                    let expr_562_slot := _254_slot
                    let _255 := add(expr_562_slot, 0)
                    let _256 := read_from_storage_offset_0_t_uint256(_255)
                    let expr_563 := _256
                    let _257 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(expr_559,expr_563)
                    let _258_slot := _257
                    let expr_564_slot := _258_slot
                    let _259 := add(expr_564_slot, 0)
                    let _260 := read_from_storage_offset_0_t_uint256(_259)
                    expr_569 := checked_sub_t_uint256(_260, expr_569)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_259, expr_569)
                    let expr_570 := expr_569
                }
                let expr_574 := 0x00
                if expr_574 {
                    let _261 := 0x0b
                    let expr_586 := _261
                    let _262 := vloc_building_402
                    let expr_587 := _262
                    let _263 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_586,expr_587)
                    let _264_slot := _263
                    let expr_588_slot := _264_slot
                    let _265 := add(expr_588_slot, 3)
                    let _266 := read_from_storage_offset_0_t_uint256(_265)
                    let expr_589 := _266
                    let _267 := 0x0a
                    let expr_575 := _267
                    let expr_577 := caller()
                    let _268 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_575,expr_577)
                    let _269_slot := _268
                    let expr_578_slot := _269_slot
                    let _270 := add(expr_578_slot, 5)
                    let _271 := _270
                    let expr_579 := _271
                    let _272 := 0x0b
                    let expr_580 := _272
                    let _273 := vloc_building_402
                    let expr_581 := _273
                    let _274 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_580,expr_581)
                    let _275_slot := _274
                    let expr_582_slot := _275_slot
                    let _276 := add(expr_582_slot, 1)
                    let _277 := read_from_storage_offset_0_t_uint256(_276)
                    let expr_583 := _277
                    let _278 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(expr_579,expr_583)
                    let _279_slot := _278
                    let expr_584_slot := _279_slot
                    let _280 := add(expr_584_slot, 0)
                    let _281 := read_from_storage_offset_0_t_uint256(_280)
                    expr_589 := checked_sub_t_uint256(_281, expr_589)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_280, expr_589)
                    let expr_590 := expr_589
                }
                let expr_594_functionIdentifier := 286
                fun_newLeader_286()

            }

            function fun_buySpecialBuilding_1008(vloc_xpos_847, vloc_ypos_849, vloc_building_851) {

                let _438 := 0x0a
                let expr_855 := _438
                let expr_857 := caller()
                let _439 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_855,expr_857)
                let _440_slot := _439
                let expr_858_slot := _440_slot
                let _441 := add(expr_858_slot, 2)
                let _442 := read_from_storage_offset_0_t_uint256(_441)
                let expr_859 := _442
                let _443 := vloc_xpos_847
                let expr_860 := _443
                let expr_861 := iszero(lt(cleanup_t_uint256(expr_859), cleanup_t_uint256(expr_860)))
                let expr_862 := expr_861
                let expr_871 := expr_862
                if expr_871 {
                    let _444 := 0x0a
                    let expr_863 := _444
                    let expr_865 := caller()
                    let _445 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_863,expr_865)
                    let _446_slot := _445
                    let expr_866_slot := _446_slot
                    let _447 := add(expr_866_slot, 3)
                    let _448 := read_from_storage_offset_0_t_uint256(_447)
                    let expr_867 := _448
                    let _449 := vloc_ypos_849
                    let expr_868 := _449
                    let expr_869 := iszero(lt(cleanup_t_uint256(expr_867), cleanup_t_uint256(expr_868)))
                    let expr_870 := expr_869
                    expr_871 := expr_870
                }
                let expr_872 := expr_871
                let expr_914 := expr_872
                if expr_914 {
                    let expr_874 := callvalue()
                    let expr_875 := 0x016345785d8a0000
                    let expr_876 := iszero(lt(cleanup_t_uint256(expr_874), convert_t_rational_100000000000000000_by_1_to_t_uint256(expr_875)))
                    let expr_877 := expr_876
                    let expr_882 := expr_877
                    if expr_882 {
                        let _450 := vloc_building_851
                        let expr_878 := _450
                        let expr_879 := 0x61
                        let expr_880 := eq(cleanup_t_uint256(expr_878), convert_t_rational_97_by_1_to_t_uint256(expr_879))
                        let expr_881 := expr_880
                        expr_882 := expr_881
                    }
                    let expr_883 := expr_882
                    let expr_884 := expr_883
                    let expr_897 := expr_884
                    if iszero(expr_897) {
                        let expr_886 := callvalue()
                        let expr_887 := 0x0de0b6b3a7640000
                        let expr_888 := iszero(lt(cleanup_t_uint256(expr_886), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_887)))
                        let expr_889 := expr_888
                        let expr_894 := expr_889
                        if expr_894 {
                            let _451 := vloc_building_851
                            let expr_890 := _451
                            let expr_891 := 0x62
                            let expr_892 := eq(cleanup_t_uint256(expr_890), convert_t_rational_98_by_1_to_t_uint256(expr_891))
                            let expr_893 := expr_892
                            expr_894 := expr_893
                        }
                        let expr_895 := expr_894
                        let expr_896 := expr_895
                        expr_897 := expr_896
                    }
                    let expr_898 := expr_897
                    let expr_911 := expr_898
                    if iszero(expr_911) {
                        let expr_900 := callvalue()
                        let expr_901 := 0x4563918244f40000
                        let expr_902 := iszero(lt(cleanup_t_uint256(expr_900), convert_t_rational_5000000000000000000_by_1_to_t_uint256(expr_901)))
                        let expr_903 := expr_902
                        let expr_908 := expr_903
                        if expr_908 {
                            let _452 := vloc_building_851
                            let expr_904 := _452
                            let expr_905 := 0x63
                            let expr_906 := eq(cleanup_t_uint256(expr_904), convert_t_rational_99_by_1_to_t_uint256(expr_905))
                            let expr_907 := expr_906
                            expr_908 := expr_907
                        }
                        let expr_909 := expr_908
                        let expr_910 := expr_909
                        expr_911 := expr_910
                    }
                    let expr_912 := expr_911
                    let expr_913 := expr_912
                    expr_914 := expr_913
                }
                let expr_915 := expr_914
                let expr_928 := expr_915
                if expr_928 {
                    let _453 := 0x0a
                    let expr_916 := _453
                    let expr_918 := caller()
                    let _454 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_916,expr_918)
                    let _455_slot := _454
                    let expr_919_slot := _455_slot
                    let _456 := add(expr_919_slot, 6)
                    let _457 := _456
                    let expr_920 := _457
                    let _458 := vloc_xpos_847
                    let expr_921 := _458
                    let _459 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(expr_920,expr_921)
                    let _460 := _459
                    let expr_922 := _460
                    let _461 := vloc_ypos_849
                    let expr_923 := _461
                    let _462 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_922,expr_923)
                    let _463 := read_from_storage_offset_0_t_uint256(_462)
                    let expr_924 := _463
                    let expr_925 := 0x00
                    let expr_926 := eq(cleanup_t_uint256(expr_924), convert_t_rational_0_by_1_to_t_uint256(expr_925))
                    let expr_927 := expr_926
                    expr_928 := expr_927
                }
                let expr_929 := expr_928
                require_helper(expr_929)
                let _464 := vloc_building_851
                let expr_941 := _464
                let _465 := 0x0a
                let expr_932 := _465
                let expr_934 := caller()
                let _466 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_932,expr_934)
                let _467_slot := _466
                let expr_935_slot := _467_slot
                let _468 := add(expr_935_slot, 6)
                let _469 := _468
                let expr_936 := _469
                let _470 := vloc_xpos_847
                let expr_937 := _470
                let _471 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(expr_936,expr_937)
                let _472 := _471
                let expr_938 := _472
                let _473 := vloc_ypos_849
                let expr_939 := _473
                let _474 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_938,expr_939)
                update_storage_value_offset_0t_uint256_to_t_uint256(_474, expr_941)
                let expr_942 := expr_941
                let _475 := vloc_building_851
                let expr_944 := _475
                let expr_945 := 0x61
                let expr_946 := eq(cleanup_t_uint256(expr_944), convert_t_rational_97_by_1_to_t_uint256(expr_945))
                let expr_947 := expr_946
                if expr_947 {
                    let expr_948 := 0x00
                    if expr_948 {
                        let expr_957 := 0x08
                        let _476 := convert_t_rational_8_by_1_to_t_uint256(expr_957)
                        let _477 := 0x0a
                        let expr_949 := _477
                        let expr_951 := caller()
                        let _478 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_949,expr_951)
                        let _479_slot := _478
                        let expr_952_slot := _479_slot
                        let _480 := add(expr_952_slot, 5)
                        let _481 := _480
                        let expr_953 := _481
                        let expr_954 := 0x0a
                        let _482 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_10_by_1(expr_953,expr_954)
                        let _483_slot := _482
                        let expr_955_slot := _483_slot
                        let _484 := add(expr_955_slot, 1)
                        let _485 := read_from_storage_offset_0_t_uint256(_484)
                        _476 := checked_add_t_uint256(_485, _476)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_484, _476)
                        let expr_958 := _476
                    }
                }
                let _486 := vloc_building_851
                let expr_964 := _486
                let expr_965 := 0x62
                let expr_966 := eq(cleanup_t_uint256(expr_964), convert_t_rational_98_by_1_to_t_uint256(expr_965))
                let expr_967 := expr_966
                if expr_967 {
                    let expr_968 := 0x00
                    if expr_968 {
                        let expr_977 := 0x08
                        let _487 := convert_t_rational_8_by_1_to_t_uint256(expr_977)
                        let _488 := 0x0a
                        let expr_969 := _488
                        let expr_971 := caller()
                        let _489 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_969,expr_971)
                        let _490_slot := _489
                        let expr_972_slot := _490_slot
                        let _491 := add(expr_972_slot, 5)
                        let _492 := _491
                        let expr_973 := _492
                        let expr_974 := 0x0b
                        let _493 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_11_by_1(expr_973,expr_974)
                        let _494_slot := _493
                        let expr_975_slot := _494_slot
                        let _495 := add(expr_975_slot, 1)
                        let _496 := read_from_storage_offset_0_t_uint256(_495)
                        _487 := checked_add_t_uint256(_496, _487)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_495, _487)
                        let expr_978 := _487
                    }
                }
                let _497 := vloc_building_851
                let expr_984 := _497
                let expr_985 := 0x63
                let expr_986 := eq(cleanup_t_uint256(expr_984), convert_t_rational_99_by_1_to_t_uint256(expr_985))
                let expr_987 := expr_986
                if expr_987 {
                    let expr_988 := 0x00
                    if expr_988 {
                        let expr_997 := 0x10
                        let _498 := convert_t_rational_16_by_1_to_t_uint256(expr_997)
                        let _499 := 0x0a
                        let expr_989 := _499
                        let expr_991 := caller()
                        let _500 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_989,expr_991)
                        let _501_slot := _500
                        let expr_992_slot := _501_slot
                        let _502 := add(expr_992_slot, 5)
                        let _503 := _502
                        let expr_993 := _503
                        let expr_994 := 0x0b
                        let _504 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_11_by_1(expr_993,expr_994)
                        let _505_slot := _504
                        let expr_995_slot := _505_slot
                        let _506 := add(expr_995_slot, 1)
                        let _507 := read_from_storage_offset_0_t_uint256(_506)
                        _498 := checked_add_t_uint256(_507, _498)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_506, _498)
                        let expr_998 := _498
                    }
                }
                let expr_1004_functionIdentifier := 286
                fun_newLeader_286()

            }

            function fun_claimBasicResources_740() {

                let expr_625 := 0x00
                if expr_625 {
                    let _294 := 0x0a
                    let expr_634 := _294
                    let expr_636 := caller()
                    let _295 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_634,expr_636)
                    let _296_slot := _295
                    let expr_637_slot := _296_slot
                    let _297 := add(expr_637_slot, 5)
                    let _298 := _297
                    let expr_638 := _298
                    let expr_639 := 0x01
                    let _299 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_1_by_1(expr_638,expr_639)
                    let _300_slot := _299
                    let expr_640_slot := _300_slot
                    let _301 := add(expr_640_slot, 1)
                    let _302 := read_from_storage_offset_0_t_uint256(_301)
                    let expr_641 := _302
                    let _303 := 0x0a
                    let expr_626 := _303
                    let expr_628 := caller()
                    let _304 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_626,expr_628)
                    let _305_slot := _304
                    let expr_629_slot := _305_slot
                    let _306 := add(expr_629_slot, 5)
                    let _307 := _306
                    let expr_630 := _307
                    let expr_631 := 0x00
                    let _308 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_0_by_1(expr_630,expr_631)
                    let _309_slot := _308
                    let expr_632_slot := _309_slot
                    let _310 := add(expr_632_slot, 0)
                    let _311 := read_from_storage_offset_0_t_uint256(_310)
                    expr_641 := checked_add_t_uint256(_311, expr_641)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_310, expr_641)
                    let expr_642 := expr_641
                }
                let expr_646 := 0x00
                if expr_646 {
                    let _312 := 0x0a
                    let expr_655 := _312
                    let expr_657 := caller()
                    let _313 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_655,expr_657)
                    let _314_slot := _313
                    let expr_658_slot := _314_slot
                    let _315 := add(expr_658_slot, 5)
                    let _316 := _315
                    let expr_659 := _316
                    let expr_660 := 0x02
                    let _317 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_2_by_1(expr_659,expr_660)
                    let _318_slot := _317
                    let expr_661_slot := _318_slot
                    let _319 := add(expr_661_slot, 1)
                    let _320 := read_from_storage_offset_0_t_uint256(_319)
                    let expr_662 := _320
                    let _321 := 0x0a
                    let expr_647 := _321
                    let expr_649 := caller()
                    let _322 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_647,expr_649)
                    let _323_slot := _322
                    let expr_650_slot := _323_slot
                    let _324 := add(expr_650_slot, 5)
                    let _325 := _324
                    let expr_651 := _325
                    let expr_652 := 0x01
                    let _326 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_1_by_1(expr_651,expr_652)
                    let _327_slot := _326
                    let expr_653_slot := _327_slot
                    let _328 := add(expr_653_slot, 0)
                    let _329 := read_from_storage_offset_0_t_uint256(_328)
                    expr_662 := checked_add_t_uint256(_329, expr_662)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_328, expr_662)
                    let expr_663 := expr_662
                }
                let expr_667 := 0x00
                if expr_667 {
                    let _330 := 0x0a
                    let expr_676 := _330
                    let expr_678 := caller()
                    let _331 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_676,expr_678)
                    let _332_slot := _331
                    let expr_679_slot := _332_slot
                    let _333 := add(expr_679_slot, 5)
                    let _334 := _333
                    let expr_680 := _334
                    let expr_681 := 0x03
                    let _335 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_3_by_1(expr_680,expr_681)
                    let _336_slot := _335
                    let expr_682_slot := _336_slot
                    let _337 := add(expr_682_slot, 1)
                    let _338 := read_from_storage_offset_0_t_uint256(_337)
                    let expr_683 := _338
                    let _339 := 0x0a
                    let expr_668 := _339
                    let expr_670 := caller()
                    let _340 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_668,expr_670)
                    let _341_slot := _340
                    let expr_671_slot := _341_slot
                    let _342 := add(expr_671_slot, 5)
                    let _343 := _342
                    let expr_672 := _343
                    let expr_673 := 0x02
                    let _344 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_2_by_1(expr_672,expr_673)
                    let _345_slot := _344
                    let expr_674_slot := _345_slot
                    let _346 := add(expr_674_slot, 0)
                    let _347 := read_from_storage_offset_0_t_uint256(_346)
                    expr_683 := checked_add_t_uint256(_347, expr_683)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_346, expr_683)
                    let expr_684 := expr_683
                }
                let expr_688 := 0x00
                if expr_688 {
                    let _348 := 0x0a
                    let expr_697 := _348
                    let expr_699 := caller()
                    let _349 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_697,expr_699)
                    let _350_slot := _349
                    let expr_700_slot := _350_slot
                    let _351 := add(expr_700_slot, 5)
                    let _352 := _351
                    let expr_701 := _352
                    let expr_702 := 0x04
                    let _353 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_4_by_1(expr_701,expr_702)
                    let _354_slot := _353
                    let expr_703_slot := _354_slot
                    let _355 := add(expr_703_slot, 1)
                    let _356 := read_from_storage_offset_0_t_uint256(_355)
                    let expr_704 := _356
                    let _357 := 0x0a
                    let expr_689 := _357
                    let expr_691 := caller()
                    let _358 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_689,expr_691)
                    let _359_slot := _358
                    let expr_692_slot := _359_slot
                    let _360 := add(expr_692_slot, 5)
                    let _361 := _360
                    let expr_693 := _361
                    let expr_694 := 0x03
                    let _362 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_3_by_1(expr_693,expr_694)
                    let _363_slot := _362
                    let expr_695_slot := _363_slot
                    let _364 := add(expr_695_slot, 0)
                    let _365 := read_from_storage_offset_0_t_uint256(_364)
                    expr_704 := checked_add_t_uint256(_365, expr_704)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_364, expr_704)
                    let expr_705 := expr_704
                }
                let expr_709 := 0x00
                if expr_709 {
                    let _366 := 0x0a
                    let expr_718 := _366
                    let expr_720 := caller()
                    let _367 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_718,expr_720)
                    let _368_slot := _367
                    let expr_721_slot := _368_slot
                    let _369 := add(expr_721_slot, 5)
                    let _370 := _369
                    let expr_722 := _370
                    let expr_723 := 0x05
                    let _371 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_5_by_1(expr_722,expr_723)
                    let _372_slot := _371
                    let expr_724_slot := _372_slot
                    let _373 := add(expr_724_slot, 1)
                    let _374 := read_from_storage_offset_0_t_uint256(_373)
                    let expr_725 := _374
                    let _375 := 0x0a
                    let expr_710 := _375
                    let expr_712 := caller()
                    let _376 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_710,expr_712)
                    let _377_slot := _376
                    let expr_713_slot := _377_slot
                    let _378 := add(expr_713_slot, 5)
                    let _379 := _378
                    let expr_714 := _379
                    let expr_715 := 0x04
                    let _380 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_4_by_1(expr_714,expr_715)
                    let _381_slot := _380
                    let expr_716_slot := _381_slot
                    let _382 := add(expr_716_slot, 0)
                    let _383 := read_from_storage_offset_0_t_uint256(_382)
                    expr_725 := checked_add_t_uint256(_383, expr_725)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_382, expr_725)
                    let expr_726 := expr_725
                }
                let expr_736 := timestamp()
                let _384 := 0x0a
                let expr_730 := _384
                let expr_732 := caller()
                let _385 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_730,expr_732)
                let _386_slot := _385
                let expr_733_slot := _386_slot
                let _387 := add(expr_733_slot, 4)
                update_storage_value_offset_0t_uint256_to_t_uint256(_387, expr_736)
                let expr_737 := expr_736

            }

            function fun_claimSpecialResource_815(vloc_shopIndex_742) {

                let vloc_item_746
                let zero_value_for_type_t_uint256_388 := zero_value_for_split_t_uint256()
                vloc_item_746 := zero_value_for_type_t_uint256_388
                let expr_749 := 0x00
                let _389 := convert_t_rational_0_by_1_to_t_uint256(expr_749)
                vloc_item_746 := _389
                let expr_750 := _389
                for {
                    } 1 {
                }
                {
                    let _390 := vloc_item_746
                    let expr_752 := _390
                    let _391 := 0x0a
                    let expr_753 := _391
                    let expr_755 := caller()
                    let _392 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_753,expr_755)
                    let _393_slot := _392
                    let expr_756_slot := _393_slot
                    let _394 := add(expr_756_slot, 5)
                    let _395 := _394
                    let expr_757 := _395
                    let _396 := vloc_shopIndex_742
                    let expr_758 := _396
                    let _397 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(expr_757,expr_758)
                    let _398_slot := _397
                    let expr_759_slot := _398_slot
                    let _399 := add(expr_759_slot, 1)
                    let _400 := read_from_storage_offset_0_t_uint256(_399)
                    let expr_760 := _400
                    let expr_761 := lt(cleanup_t_uint256(expr_752), cleanup_t_uint256(expr_760))
                    let expr_762 := expr_761
                    if iszero(expr_762) { break }
                    let vloc_select_764
                    let zero_value_for_type_t_uint256_401 := zero_value_for_split_t_uint256()
                    vloc_select_764 := zero_value_for_type_t_uint256_401
                    let expr_768 := timestamp()
                    let _402 := vloc_item_746
                    let expr_769 := _402
                    let _403 := vloc_shopIndex_742
                    let expr_770 := _403
                    let expr_771 := checked_add_t_uint256(expr_769, expr_770)

                    let expr_772 := expr_771
                    let expr_773 := expr_772
                    let expr_774 := checked_sub_t_uint256(expr_768, expr_773)

                    let expr_775 := expr_774
                    let expr_776 := expr_775
                    let expr_777 := 0x0d
                    let expr_778 := checked_mod_t_uint256(expr_776, convert_t_rational_13_by_1_to_t_uint256(expr_777))

                    let expr_779 := expr_778
                    let expr_780 := expr_779
                    vloc_select_764 := expr_780
                    let expr_781 := expr_780
                    let expr_783 := 0x00
                    if expr_783 {
                        let expr_792 := 0x01
                        let _404 := convert_t_rational_1_by_1_to_t_uint256(expr_792)
                        let _405 := 0x0a
                        let expr_784 := _405
                        let expr_786 := caller()
                        let _406 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_784,expr_786)
                        let _407_slot := _406
                        let expr_787_slot := _407_slot
                        let _408 := add(expr_787_slot, 5)
                        let _409 := _408
                        let expr_788 := _409
                        let _410 := vloc_shopIndex_742
                        let expr_789 := _410
                        let _411 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(expr_788,expr_789)
                        let _412_slot := _411
                        let expr_790_slot := _412_slot
                        let _413 := add(expr_790_slot, 0)
                        let _414 := read_from_storage_offset_0_t_uint256(_413)
                        _404 := checked_add_t_uint256(_414, _404)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_413, _404)
                        let expr_793 := _404
                    }
                    let _416 := vloc_item_746
                    let _415 := increment_t_uint256(_416)
                    vloc_item_746 := _415
                    let expr_798 := _416
                }
                let expr_811 := timestamp()
                let _417 := 0x0a
                let expr_803 := _417
                let expr_805 := caller()
                let _418 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_803,expr_805)
                let _419_slot := _418
                let expr_806_slot := _419_slot
                let _420 := add(expr_806_slot, 7)
                let _421 := _420
                let expr_807 := _421
                let _422 := vloc_shopIndex_742
                let expr_808 := _422
                let _423 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_807,expr_808)
                update_storage_value_offset_0t_uint256_to_t_uint256(_423, expr_811)
                let expr_812 := expr_811

            }

            function fun_expandX_610() {

                let expr_606 := 0x01
                let _282 := convert_t_rational_1_by_1_to_t_uint256(expr_606)
                let _283 := 0x0a
                let expr_601 := _283
                let expr_603 := caller()
                let _284 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_601,expr_603)
                let _285_slot := _284
                let expr_604_slot := _285_slot
                let _286 := add(expr_604_slot, 2)
                let _287 := read_from_storage_offset_0_t_uint256(_286)
                _282 := checked_add_t_uint256(_287, _282)
                update_storage_value_offset_0t_uint256_to_t_uint256(_286, _282)
                let expr_607 := _282

            }

            function fun_expandY_622() {

                let expr_618 := 0x01
                let _288 := convert_t_rational_1_by_1_to_t_uint256(expr_618)
                let _289 := 0x0a
                let expr_613 := _289
                let expr_615 := caller()
                let _290 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_613,expr_615)
                let _291_slot := _290
                let expr_616_slot := _291_slot
                let _292 := add(expr_616_slot, 3)
                let _293 := read_from_storage_offset_0_t_uint256(_292)
                _288 := checked_add_t_uint256(_293, _288)
                update_storage_value_offset_0t_uint256_to_t_uint256(_292, _288)
                let expr_619 := _288

            }

            function fun_initBuilding_224(vloc_r0_185, vloc_r1_187, vloc_p0_189, vloc_p1_191, vloc_m_193, vloc_a_195) {

                let expr_200 := caller()
                let _1 := read_from_storage_offset_0_t_address(0x00)
                let expr_201 := _1
                let expr_202 := eq(convert_t_address_payable_to_t_address(expr_200), cleanup_t_address(expr_201))
                let expr_203 := expr_202
                require_helper(expr_203)
                let _2 := vloc_r0_185
                let expr_210 := _2
                let _3 := vloc_r1_187
                let expr_211 := _3
                let _4 := vloc_p0_189
                let expr_212 := _4
                let _5 := vloc_p1_191
                let expr_213 := _5
                let _6 := vloc_m_193
                let expr_214 := _6
                let _7 := vloc_a_195
                let expr_215 := _7
                let expr_216_mpos := allocate_memory_struct_t_struct$_Building_$39_storage_ptr()
                write_to_memory_t_uint256(add(expr_216_mpos, 0), expr_210)
                write_to_memory_t_uint256(add(expr_216_mpos, 32), expr_211)
                write_to_memory_t_uint256(add(expr_216_mpos, 64), expr_212)
                write_to_memory_t_uint256(add(expr_216_mpos, 96), expr_213)
                write_to_memory_t_uint256(add(expr_216_mpos, 128), expr_214)
                write_to_memory_t_uint256(add(expr_216_mpos, 160), expr_215)
                let _8 := 0x0b
                let expr_206 := _8
                let _9 := read_from_storage_offset_0_t_uint256(0x06)
                let expr_207 := _9
                let _10 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(expr_206,expr_207)
                update_storage_value_offset_0t_struct$_Building_$39_memory_ptr_to_t_struct$_Building_$39_storage(_10, expr_216_mpos)
                let expr_220 := 0x01
                let _11 := convert_t_rational_1_by_1_to_t_uint256(expr_220)
                let _12 := read_from_storage_offset_0_t_uint256(0x06)
                _11 := checked_add_t_uint256(_12, _11)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x06, _11)
                let expr_221 := _11

            }

            function fun_initiateUser_396() {

                let _53 := 0x0a
                let expr_289 := _53
                let expr_291 := caller()
                let _54 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_289,expr_291)
                let _55_slot := _54
                let expr_292_slot := _55_slot
                let _56 := add(expr_292_slot, 0)
                let _57 := read_from_storage_offset_0_t_bool(_56)
                let expr_293 := _57
                let expr_294 := cleanup_t_bool(iszero(expr_293))
                if expr_294 {
                    let expr_300 := 0x01
                    let _58 := 0x0a
                    let expr_295 := _58
                    let expr_297 := caller()
                    let _59 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_295,expr_297)
                    let _60_slot := _59
                    let expr_298_slot := _60_slot
                    let _61 := add(expr_298_slot, 0)
                    update_storage_value_offset_0t_bool_to_t_bool(_61, expr_300)
                    let expr_301 := expr_300
                    let expr_303 := 0x00
                    if expr_303 {
                        let expr_312 := 0x05
                        let _62 := convert_t_rational_5_by_1_to_t_uint256(expr_312)
                        let _63 := 0x0a
                        let expr_304 := _63
                        let expr_306 := caller()
                        let _64 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_304,expr_306)
                        let _65_slot := _64
                        let expr_307_slot := _65_slot
                        let _66 := add(expr_307_slot, 5)
                        let _67 := _66
                        let expr_308 := _67
                        let expr_309 := 0x00
                        let _68 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_0_by_1(expr_308,expr_309)
                        let _69_slot := _68
                        let expr_310_slot := _69_slot
                        let _70 := add(expr_310_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_70, _62)
                        let expr_313 := _62
                    }
                    let expr_317 := 0x00
                    if expr_317 {
                        let expr_326 := 0x05
                        let _71 := convert_t_rational_5_by_1_to_t_uint256(expr_326)
                        let _72 := 0x0a
                        let expr_318 := _72
                        let expr_320 := caller()
                        let _73 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_318,expr_320)
                        let _74_slot := _73
                        let expr_321_slot := _74_slot
                        let _75 := add(expr_321_slot, 5)
                        let _76 := _75
                        let expr_322 := _76
                        let expr_323 := 0x01
                        let _77 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_1_by_1(expr_322,expr_323)
                        let _78_slot := _77
                        let expr_324_slot := _78_slot
                        let _79 := add(expr_324_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_79, _71)
                        let expr_327 := _71
                    }
                    let expr_331 := 0x00
                    if expr_331 {
                        let expr_340 := 0x05
                        let _80 := convert_t_rational_5_by_1_to_t_uint256(expr_340)
                        let _81 := 0x0a
                        let expr_332 := _81
                        let expr_334 := caller()
                        let _82 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_332,expr_334)
                        let _83_slot := _82
                        let expr_335_slot := _83_slot
                        let _84 := add(expr_335_slot, 5)
                        let _85 := _84
                        let expr_336 := _85
                        let expr_337 := 0x02
                        let _86 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_2_by_1(expr_336,expr_337)
                        let _87_slot := _86
                        let expr_338_slot := _87_slot
                        let _88 := add(expr_338_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_88, _80)
                        let expr_341 := _80
                    }
                    let expr_345 := 0x00
                    if expr_345 {
                        let expr_354 := 0x05
                        let _89 := convert_t_rational_5_by_1_to_t_uint256(expr_354)
                        let _90 := 0x0a
                        let expr_346 := _90
                        let expr_348 := caller()
                        let _91 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_346,expr_348)
                        let _92_slot := _91
                        let expr_349_slot := _92_slot
                        let _93 := add(expr_349_slot, 5)
                        let _94 := _93
                        let expr_350 := _94
                        let expr_351 := 0x03
                        let _95 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_3_by_1(expr_350,expr_351)
                        let _96_slot := _95
                        let expr_352_slot := _96_slot
                        let _97 := add(expr_352_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_97, _89)
                        let expr_355 := _89
                    }
                    let expr_359 := 0x00
                    if expr_359 {
                        let expr_368 := 0x05
                        let _98 := convert_t_rational_5_by_1_to_t_uint256(expr_368)
                        let _99 := 0x0a
                        let expr_360 := _99
                        let expr_362 := caller()
                        let _100 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_360,expr_362)
                        let _101_slot := _100
                        let expr_363_slot := _101_slot
                        let _102 := add(expr_363_slot, 5)
                        let _103 := _102
                        let expr_364 := _103
                        let expr_365 := 0x04
                        let _104 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_4_by_1(expr_364,expr_365)
                        let _105_slot := _104
                        let expr_366_slot := _105_slot
                        let _106 := add(expr_366_slot, 0)
                        update_storage_value_offset_0t_uint256_to_t_uint256(_106, _98)
                        let expr_369 := _98
                    }
                    let expr_378 := 0x06
                    let _107 := convert_t_rational_6_by_1_to_t_uint256(expr_378)
                    let _108 := 0x0a
                    let expr_373 := _108
                    let expr_375 := caller()
                    let _109 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_373,expr_375)
                    let _110_slot := _109
                    let expr_376_slot := _110_slot
                    let _111 := add(expr_376_slot, 2)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_111, _107)
                    let expr_379 := _107
                    let expr_386 := 0x06
                    let _112 := convert_t_rational_6_by_1_to_t_uint256(expr_386)
                    let _113 := 0x0a
                    let expr_381 := _113
                    let expr_383 := caller()
                    let _114 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_381,expr_383)
                    let _115_slot := _114
                    let expr_384_slot := _115_slot
                    let _116 := add(expr_384_slot, 3)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_116, _112)
                    let expr_387 := _112
                    let expr_390 := 0x01
                    let _117 := convert_t_rational_1_by_1_to_t_uint256(expr_390)
                    let _118 := read_from_storage_offset_0_t_uint256(0x05)
                    _117 := checked_add_t_uint256(_118, _117)
                    update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _117)
                    let expr_391 := _117
                }

            }

            function fun_newLeader_286() {

                let _13 := 0x0a
                let expr_227 := _13
                let expr_229 := caller()
                let _14 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_227,expr_229)
                let _15_slot := _14
                let expr_230_slot := _15_slot
                let _16 := add(expr_230_slot, 5)
                let _17 := _16
                let expr_231 := _17
                let expr_232 := 0x0a
                let _18 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_10_by_1(expr_231,expr_232)
                let _19_slot := _18
                let expr_233_slot := _19_slot
                let _20 := add(expr_233_slot, 1)
                let _21 := read_from_storage_offset_0_t_uint256(_20)
                let expr_234 := _21
                let _22 := read_from_storage_offset_0_t_uint256(0x02)
                let expr_235 := _22
                let expr_236 := gt(cleanup_t_uint256(expr_234), cleanup_t_uint256(expr_235))
                let expr_237 := expr_236
                if expr_237 {
                    let _23 := 0x0a
                    let expr_239 := _23
                    let expr_241 := caller()
                    let _24 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_239,expr_241)
                    let _25_slot := _24
                    let expr_242_slot := _25_slot
                    let _26 := add(expr_242_slot, 5)
                    let _27 := _26
                    let expr_243 := _27
                    let expr_244 := 0x0a
                    let _28 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_10_by_1(expr_243,expr_244)
                    let _29_slot := _28
                    let expr_245_slot := _29_slot
                    let _30 := add(expr_245_slot, 1)
                    let _31 := read_from_storage_offset_0_t_uint256(_30)
                    let expr_246 := _31
                    update_storage_value_offset_0t_uint256_to_t_uint256(0x02, expr_246)
                    let expr_247 := expr_246
                    let expr_251 := caller()
                    let _32 := convert_t_address_payable_to_t_address(expr_251)
                    update_storage_value_offset_0t_address_to_t_address(0x01, _32)
                    let expr_252 := _32
                }
                let _33 := 0x0a
                let expr_256 := _33
                let expr_258 := caller()
                let _34 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_256,expr_258)
                let _35_slot := _34
                let expr_259_slot := _35_slot
                let _36 := add(expr_259_slot, 5)
                let _37 := _36
                let expr_260 := _37
                let expr_261 := 0x0b
                let _38 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_11_by_1(expr_260,expr_261)
                let _39_slot := _38
                let expr_262_slot := _39_slot
                let _40 := add(expr_262_slot, 1)
                let _41 := read_from_storage_offset_0_t_uint256(_40)
                let expr_263 := _41
                let _42 := read_from_storage_offset_0_t_uint256(0x04)
                let expr_264 := _42
                let expr_265 := gt(cleanup_t_uint256(expr_263), cleanup_t_uint256(expr_264))
                let expr_266 := expr_265
                if expr_266 {
                    let _43 := 0x0a
                    let expr_268 := _43
                    let expr_270 := caller()
                    let _44 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_268,expr_270)
                    let _45_slot := _44
                    let expr_271_slot := _45_slot
                    let _46 := add(expr_271_slot, 5)
                    let _47 := _46
                    let expr_272 := _47
                    let expr_273 := 0x0b
                    let _48 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_11_by_1(expr_272,expr_273)
                    let _49_slot := _48
                    let expr_274_slot := _49_slot
                    let _50 := add(expr_274_slot, 1)
                    let _51 := read_from_storage_offset_0_t_uint256(_50)
                    let expr_275 := _51
                    update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_275)
                    let expr_276 := expr_275
                    let expr_280 := caller()
                    let _52 := convert_t_address_payable_to_t_address(expr_280)
                    update_storage_value_offset_0t_address_to_t_address(0x03, _52)
                    let expr_281 := _52
                }

            }

            function fun_observe__0_1021(vloc_i_1010) -> vloc__1013 {
                let zero_value_for_type_t_uint256_508 := zero_value_for_split_t_uint256()
                vloc__1013 := zero_value_for_type_t_uint256_508

                let _509 := 0x0a
                let expr_1015 := _509
                let _510 := vloc_i_1010
                let expr_1016 := _510
                let _511 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address(expr_1015,expr_1016)
                let _512_slot := _511
                let expr_1017_slot := _512_slot
                let _513 := add(expr_1017_slot, 1)
                let _514 := read_from_storage_offset_0_t_uint256(_513)
                let expr_1018 := _514
                vloc__1013 := expr_1018
                leave

            }

            function fun_observe__1_1034(vloc_i_1023) -> vloc__1026 {
                let zero_value_for_type_t_uint256_515 := zero_value_for_split_t_uint256()
                vloc__1026 := zero_value_for_type_t_uint256_515

                let _516 := 0x0a
                let expr_1028 := _516
                let _517 := vloc_i_1023
                let expr_1029 := _517
                let _518 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address(expr_1028,expr_1029)
                let _519_slot := _518
                let expr_1030_slot := _519_slot
                let _520 := add(expr_1030_slot, 2)
                let _521 := read_from_storage_offset_0_t_uint256(_520)
                let expr_1031 := _521
                vloc__1026 := expr_1031
                leave

            }

            function fun_observe__2_1047(vloc_i_1036) -> vloc__1039 {
                let zero_value_for_type_t_uint256_522 := zero_value_for_split_t_uint256()
                vloc__1039 := zero_value_for_type_t_uint256_522

                let _523 := 0x0a
                let expr_1041 := _523
                let _524 := vloc_i_1036
                let expr_1042 := _524
                let _525 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address(expr_1041,expr_1042)
                let _526_slot := _525
                let expr_1043_slot := _526_slot
                let _527 := add(expr_1043_slot, 3)
                let _528 := read_from_storage_offset_0_t_uint256(_527)
                let expr_1044 := _528
                vloc__1039 := expr_1044
                leave

            }

            function fun_observe__3_1060(vloc_i_1049) -> vloc__1052 {
                let zero_value_for_type_t_uint256_529 := zero_value_for_split_t_uint256()
                vloc__1052 := zero_value_for_type_t_uint256_529

                let _530 := 0x0a
                let expr_1054 := _530
                let _531 := vloc_i_1049
                let expr_1055 := _531
                let _532 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address(expr_1054,expr_1055)
                let _533_slot := _532
                let expr_1056_slot := _533_slot
                let _534 := add(expr_1056_slot, 4)
                let _535 := read_from_storage_offset_0_t_uint256(_534)
                let expr_1057 := _535
                vloc__1052 := expr_1057
                leave

            }

            function fun_observe__4_1073(vloc_i_1062) -> vloc__1065 {
                let zero_value_for_type_t_bool_536 := zero_value_for_split_t_bool()
                vloc__1065 := zero_value_for_type_t_bool_536

                let _537 := 0x0a
                let expr_1067 := _537
                let _538 := vloc_i_1062
                let expr_1068 := _538
                let _539 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address(expr_1067,expr_1068)
                let _540_slot := _539
                let expr_1069_slot := _540_slot
                let _541 := add(expr_1069_slot, 0)
                let _542 := read_from_storage_offset_0_t_bool(_541)
                let expr_1070 := _542
                vloc__1065 := expr_1070
                leave

            }

            function fun_observe__5_1091(vloc_i_1075, vloc_key_1077) -> vloc__1080 {
                let zero_value_for_type_t_uint256_543 := zero_value_for_split_t_uint256()
                vloc__1080 := zero_value_for_type_t_uint256_543

                let _544 := 0x0a
                let expr_1082 := _544
                let _545 := vloc_i_1075
                let expr_1083 := _545
                let _546 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address(expr_1082,expr_1083)
                let _547_slot := _546
                let expr_1084_slot := _547_slot
                let _548 := add(expr_1084_slot, 5)
                let _549 := _548
                let expr_1085 := _549
                let _550 := vloc_key_1077
                let expr_1086 := _550
                let _551 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(expr_1085,expr_1086)
                let _552_slot := _551
                let expr_1087_slot := _552_slot
                let _553 := add(expr_1087_slot, 0)
                let _554 := read_from_storage_offset_0_t_uint256(_553)
                let expr_1088 := _554
                vloc__1080 := expr_1088
                leave

            }

            function fun_observe__6_1106() -> vloc__1094 {
                let zero_value_for_type_t_uint256_555 := zero_value_for_split_t_uint256()
                vloc__1094 := zero_value_for_type_t_uint256_555

                let _556 := 0x0a
                let expr_1096 := _556
                let expr_1098 := caller()
                let _557 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_1096,expr_1098)
                let _558_slot := _557
                let expr_1099_slot := _558_slot
                let _559 := add(expr_1099_slot, 5)
                let _560 := _559
                let expr_1100 := _560
                let expr_1101 := 0x0a
                let _561 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_10_by_1(expr_1100,expr_1101)
                let _562_slot := _561
                let expr_1102_slot := _562_slot
                let _563 := add(expr_1102_slot, 1)
                let _564 := read_from_storage_offset_0_t_uint256(_563)
                let expr_1103 := _564
                vloc__1094 := expr_1103
                leave

            }

            function fun_observe__7_1121() -> vloc__1109 {
                let zero_value_for_type_t_uint256_565 := zero_value_for_split_t_uint256()
                vloc__1109 := zero_value_for_type_t_uint256_565

                let _566 := 0x0a
                let expr_1111 := _566
                let expr_1113 := caller()
                let _567 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(expr_1111,expr_1113)
                let _568_slot := _567
                let expr_1114_slot := _568_slot
                let _569 := add(expr_1114_slot, 5)
                let _570 := _569
                let expr_1115 := _570
                let expr_1116 := 0x0b
                let _571 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_11_by_1(expr_1115,expr_1116)
                let _572_slot := _571
                let expr_1117_slot := _572_slot
                let _573 := add(expr_1117_slot, 1)
                let _574 := read_from_storage_offset_0_t_uint256(_573)
                let expr_1118 := _574
                vloc__1109 := expr_1118
                leave

            }

            function fun_sellItem_845(vloc_item_817, vloc_price_819) {

                let _424 := vloc_price_819
                let expr_828 := _424
                let _425 := 0x08
                let expr_822 := _425
                let expr_824 := caller()
                let _426 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_address_payable(expr_822,expr_824)
                let _427 := _426
                let expr_826 := _427
                let _428 := vloc_item_817
                let expr_825 := _428
                let _429 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_826,expr_825)
                update_storage_value_offset_0t_uint256_to_t_uint256(_429, expr_828)
                let expr_829 := expr_828
                let _430 := read_from_storage_offset_0_t_uint256(0x07)
                let expr_837 := _430
                let _431 := 0x09
                let expr_831 := _431
                let expr_833 := caller()
                let _432 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_address_payable(expr_831,expr_833)
                let _433 := _432
                let expr_835 := _433
                let _434 := vloc_item_817
                let expr_834 := _434
                let _435 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_835,expr_834)
                update_storage_value_offset_0t_uint256_to_t_uint256(_435, expr_837)
                let expr_838 := expr_837
                let expr_841 := 0x01
                let _436 := convert_t_rational_1_by_1_to_t_uint256(expr_841)
                let _437 := read_from_storage_offset_0_t_uint256(0x07)
                _436 := checked_add_t_uint256(_437, _436)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x07, _436)
                let expr_842 := _436

            }

            function getter_fun_buildings_total_58() -> ret {

                let slot := 6
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_kingSpirit_50() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_king_48() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_owner_46() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_queenPrestige_54() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_queen_52() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_sell_id_60() -> ret {

                let slot := 7
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_totalCities_56() -> ret {

                let slot := 5
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { panic_error() }
                ret := add(value, 1)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$26_storage_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$39_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_0_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_0_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_10_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_10_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_11_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_11_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_1_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_2_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_2_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_3_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_3_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_4_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_4_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_rational_5_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_5_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Foo_$44_storage_$_of_t_uint256(slot , key) -> dataSlot {
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

            function read_from_memoryt_uint256(ptr) -> value {

                value := cleanup_t_uint256(mload(ptr))

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

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

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

            function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_address_to_t_address(slot, value) {
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(value)))
            }

            function update_storage_value_offset_0t_bool_to_t_bool(slot, value) {
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(value)))
            }

            function update_storage_value_offset_0t_struct$_Building_$39_memory_ptr_to_t_struct$_Building_$39_storage(slot, value) {

                {

                    let memberSlot := add(slot, 0)

                    let memberMemoryOffset := add(value, 0)
                    let memberValue_0 := read_from_memoryt_uint256(memberMemoryOffset)
                    update_storage_value_t_uint256_to_t_uint256(memberSlot, 0, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 1)

                    let memberMemoryOffset := add(value, 32)
                    let memberValue_0 := read_from_memoryt_uint256(memberMemoryOffset)
                    update_storage_value_t_uint256_to_t_uint256(memberSlot, 0, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 2)

                    let memberMemoryOffset := add(value, 64)
                    let memberValue_0 := read_from_memoryt_uint256(memberMemoryOffset)
                    update_storage_value_t_uint256_to_t_uint256(memberSlot, 0, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 3)

                    let memberMemoryOffset := add(value, 96)
                    let memberValue_0 := read_from_memoryt_uint256(memberMemoryOffset)
                    update_storage_value_t_uint256_to_t_uint256(memberSlot, 0, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 4)

                    let memberMemoryOffset := add(value, 128)
                    let memberValue_0 := read_from_memoryt_uint256(memberMemoryOffset)
                    update_storage_value_t_uint256_to_t_uint256(memberSlot, 0, memberValue_0)

                }

                {

                    let memberSlot := add(slot, 5)

                    let memberMemoryOffset := add(value, 160)
                    let memberValue_0 := read_from_memoryt_uint256(memberMemoryOffset)
                    update_storage_value_t_uint256_to_t_uint256(memberSlot, 0, memberValue_0)

                }

            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
            }

            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value) {
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(value)))
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
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

