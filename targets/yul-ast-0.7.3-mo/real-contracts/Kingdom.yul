/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "Kingdom_1037" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_Kingdom_1037()

        codecopy(0, dataoffset("Kingdom_1037_deployed"), datasize("Kingdom_1037_deployed"))

        return(0, datasize("Kingdom_1037_deployed"))

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function constructor_Kingdom_1037() {

            let expr_148 := caller()
            let _1 := convert_t_address_payable_to_t_address(expr_148)
            update_storage_value_offset_0t_address_to_t_address(0x00, _1)
            let expr_149 := _1
            let expr_153 := caller()
            let _2 := convert_t_address_payable_to_t_address(expr_153)
            update_storage_value_offset_0t_address_to_t_address(0x01, _2)
            let expr_154 := _2
            let expr_157 := 0x00
            let _3 := convert_t_rational_0_by_1_to_t_uint256(expr_157)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x02, _3)
            let expr_158 := _3
            let expr_162 := caller()
            let _4 := convert_t_address_payable_to_t_address(expr_162)
            update_storage_value_offset_0t_address_to_t_address(0x03, _4)
            let expr_163 := _4
            let expr_166 := 0x00
            let _5 := convert_t_rational_0_by_1_to_t_uint256(expr_166)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, _5)
            let expr_167 := _5
            let expr_170 := 0x00
            let _6 := convert_t_rational_0_by_1_to_t_uint256(expr_170)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _6)
            let expr_171 := _6
            let expr_174 := 0x00
            let _7 := convert_t_rational_0_by_1_to_t_uint256(expr_174)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x06, _7)
            let expr_175 := _7
            let expr_178 := 0x00
            let _8 := convert_t_rational_0_by_1_to_t_uint256(expr_178)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x07, _8)
            let expr_179 := _8

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
    object "Kingdom_1037_deployed" {
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
                    fun_initBuilding_223(param_0, param_1, param_2, param_3, param_4, param_5)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x23a52674
                {
                    // expandX()

                    abi_decode_tuple_(4, calldatasize())
                    fun_expandX_570()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x27d21602
                {
                    // buildings_total()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_buildings_total_57()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2d923561
                {
                    // sellItem(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    fun_sellItem_775(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x34085549
                {
                    // buildAt(uint256,uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_uint256t_uint256(4, calldatasize())
                    fun_buildAt_558(param_0, param_1, param_2)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3e6b3297
                {
                    // observe__3(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__3_978(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4d14c57e
                {
                    // claimBasicResources()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_claimBasicResources_675()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4fcb2968
                {
                    // kingSpirit()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_kingSpirit_49()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x656b275c
                {
                    // expandY()

                    abi_decode_tuple_(4, calldatasize())
                    fun_expandY_582()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x69efc976
                {
                    // observe__0(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__0_939(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x73c5899a
                {
                    // observe__5(address,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__5_1008(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x73cf2988
                {
                    // observe__6()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__6_1022()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x8878d726
                {
                    // buySpecialBuilding(uint256,uint256,uint256)

                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_uint256t_uint256t_uint256(4, calldatasize())
                    fun_buySpecialBuilding_926(param_0, param_1, param_2)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x8da5cb5b
                {
                    // owner()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_owner_45()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x9d4c662c
                {
                    // sell_id()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_sell_id_59()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x9d856bdc
                {
                    // queen()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_queen_51()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa24ed8aa
                {
                    // newLeader()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_newLeader_281()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa6ba3c9f
                {
                    // observe__2(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__2_965(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa8f5bbd9
                {
                    // initiateUser()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_initiateUser_371()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbeb7597b
                {
                    // observe__7()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__7_1036()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xcc181ca8
                {
                    // king()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_king_47()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd9b0d03b
                {
                    // observe__1(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__1_952(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe944a6d7
                {
                    // claimSpecialResource(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    fun_claimSpecialResource_745(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf034936b
                {
                    // observe__4(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__4_991(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf09bea14
                {
                    // totalCities()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_totalCities_55()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xfd6887af
                {
                    // queenPrestige()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_queenPrestige_53()
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

            function allocate_memory_struct_t_struct$_Building_$43_storage_ptr() -> memPtr {
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

            function fun_buildAt_558(vloc_xpos_373, vloc_ypos_375, vloc_building_377) {

                let _101 := 0x0a
                let expr_381 := _101
                let expr_383 := caller()
                let _102 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_381,expr_383)
                let _103_slot := _102
                let expr_384_slot := _103_slot
                let _104 := add(expr_384_slot, 0)
                let _105 := _104
                let expr_385 := _105
                let _106 := 0x0b
                let expr_386 := _106
                let _107 := vloc_building_377
                let expr_387 := _107
                let _108 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_386,expr_387)
                let _109_slot := _108
                let expr_388_slot := _109_slot
                let _110 := add(expr_388_slot, 0)
                let _111 := read_from_storage_offset_0_t_uint256(_110)
                let expr_389 := _111
                let _112 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_385,expr_389)
                let _113 := read_from_storage_offset_0_t_uint256(_112)
                let expr_390 := _113
                let _114 := 0x0b
                let expr_391 := _114
                let _115 := vloc_building_377
                let expr_392 := _115
                let _116 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_391,expr_392)
                let _117_slot := _116
                let expr_393_slot := _117_slot
                let _118 := add(expr_393_slot, 2)
                let _119 := read_from_storage_offset_0_t_uint256(_118)
                let expr_394 := _119
                let expr_395 := iszero(lt(cleanup_t_uint256(expr_390), cleanup_t_uint256(expr_394)))
                let expr_396 := expr_395
                let expr_413 := expr_396
                if expr_413 {
                    let _120 := 0x0a
                    let expr_397 := _120
                    let expr_399 := caller()
                    let _121 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_397,expr_399)
                    let _122_slot := _121
                    let expr_400_slot := _122_slot
                    let _123 := add(expr_400_slot, 0)
                    let _124 := _123
                    let expr_401 := _124
                    let _125 := 0x0b
                    let expr_402 := _125
                    let _126 := vloc_building_377
                    let expr_403 := _126
                    let _127 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_402,expr_403)
                    let _128_slot := _127
                    let expr_404_slot := _128_slot
                    let _129 := add(expr_404_slot, 1)
                    let _130 := read_from_storage_offset_0_t_uint256(_129)
                    let expr_405 := _130
                    let _131 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_401,expr_405)
                    let _132 := read_from_storage_offset_0_t_uint256(_131)
                    let expr_406 := _132
                    let _133 := 0x0b
                    let expr_407 := _133
                    let _134 := vloc_building_377
                    let expr_408 := _134
                    let _135 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_407,expr_408)
                    let _136_slot := _135
                    let expr_409_slot := _136_slot
                    let _137 := add(expr_409_slot, 3)
                    let _138 := read_from_storage_offset_0_t_uint256(_137)
                    let expr_410 := _138
                    let expr_411 := iszero(lt(cleanup_t_uint256(expr_406), cleanup_t_uint256(expr_410)))
                    let expr_412 := expr_411
                    expr_413 := expr_412
                }
                let expr_414 := expr_413
                let expr_423 := expr_414
                if expr_423 {
                    let _139 := 0x0a
                    let expr_415 := _139
                    let expr_417 := caller()
                    let _140 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_415,expr_417)
                    let _141_slot := _140
                    let expr_418_slot := _141_slot
                    let _142 := add(expr_418_slot, 4)
                    let _143 := read_from_storage_offset_0_t_uint256(_142)
                    let expr_419 := _143
                    let _144 := vloc_xpos_373
                    let expr_420 := _144
                    let expr_421 := gt(cleanup_t_uint256(expr_419), cleanup_t_uint256(expr_420))
                    let expr_422 := expr_421
                    expr_423 := expr_422
                }
                let expr_424 := expr_423
                let expr_433 := expr_424
                if expr_433 {
                    let _145 := 0x0a
                    let expr_425 := _145
                    let expr_427 := caller()
                    let _146 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_425,expr_427)
                    let _147_slot := _146
                    let expr_428_slot := _147_slot
                    let _148 := add(expr_428_slot, 5)
                    let _149 := read_from_storage_offset_0_t_uint256(_148)
                    let expr_429 := _149
                    let _150 := vloc_ypos_375
                    let expr_430 := _150
                    let expr_431 := gt(cleanup_t_uint256(expr_429), cleanup_t_uint256(expr_430))
                    let expr_432 := expr_431
                    expr_433 := expr_432
                }
                let expr_434 := expr_433
                let expr_456 := expr_434
                if expr_456 {
                    let _151 := 0x0a
                    let expr_435 := _151
                    let expr_437 := caller()
                    let _152 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_435,expr_437)
                    let _153_slot := _152
                    let expr_438_slot := _153_slot
                    let _154 := add(expr_438_slot, 3)
                    let _155 := read_from_storage_offset_0_t_uint256(_154)
                    let expr_439 := _155
                    let _156 := 0x0a
                    let expr_440 := _156
                    let expr_442 := caller()
                    let _157 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_440,expr_442)
                    let _158_slot := _157
                    let expr_443_slot := _158_slot
                    let _159 := add(expr_443_slot, 2)
                    let _160 := _159
                    let expr_444 := _160
                    let expr_445 := 0x00
                    let _161 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_444,expr_445)
                    let _162 := read_from_storage_offset_0_t_uint256(_161)
                    let expr_446 := _162
                    let expr_447 := iszero(gt(cleanup_t_uint256(expr_439), cleanup_t_uint256(expr_446)))
                    let expr_448 := expr_447
                    let expr_453 := expr_448
                    if iszero(expr_453) {
                        let _163 := vloc_building_377
                        let expr_449 := _163
                        let expr_450 := 0x01
                        let expr_451 := eq(cleanup_t_uint256(expr_449), convert_t_rational_1_by_1_to_t_uint256(expr_450))
                        let expr_452 := expr_451
                        expr_453 := expr_452
                    }
                    let expr_454 := expr_453
                    let expr_455 := expr_454
                    expr_456 := expr_455
                }
                let expr_457 := expr_456
                let expr_462 := expr_457
                if expr_462 {
                    let _164 := vloc_building_377
                    let expr_458 := _164
                    let expr_459 := 0x00
                    let expr_460 := gt(cleanup_t_uint256(expr_458), convert_t_rational_0_by_1_to_t_uint256(expr_459))
                    let expr_461 := expr_460
                    expr_462 := expr_461
                }
                let expr_463 := expr_462
                let expr_468 := expr_463
                if expr_468 {
                    let _165 := vloc_building_377
                    let expr_464 := _165
                    let _166 := read_from_storage_offset_0_t_uint256(0x06)
                    let expr_465 := _166
                    let expr_466 := iszero(gt(cleanup_t_uint256(expr_464), cleanup_t_uint256(expr_465)))
                    let expr_467 := expr_466
                    expr_468 := expr_467
                }
                let expr_469 := expr_468
                let expr_482 := expr_469
                if expr_482 {
                    let _167 := 0x0a
                    let expr_470 := _167
                    let expr_472 := caller()
                    let _168 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_470,expr_472)
                    let _169_slot := _168
                    let expr_473_slot := _169_slot
                    let _170 := add(expr_473_slot, 1)
                    let _171 := _170
                    let expr_474 := _171
                    let _172 := vloc_xpos_373
                    let expr_475 := _172
                    let _173 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(expr_474,expr_475)
                    let _174 := _173
                    let expr_476 := _174
                    let _175 := vloc_ypos_375
                    let expr_477 := _175
                    let _176 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_476,expr_477)
                    let _177 := read_from_storage_offset_0_t_uint256(_176)
                    let expr_478 := _177
                    let expr_479 := 0x00
                    let expr_480 := eq(cleanup_t_uint256(expr_478), convert_t_rational_0_by_1_to_t_uint256(expr_479))
                    let expr_481 := expr_480
                    expr_482 := expr_481
                }
                let expr_483 := expr_482
                require_helper(expr_483)
                let expr_491 := 0x05
                let _178 := convert_t_rational_5_by_1_to_t_uint256(expr_491)
                let _179 := 0x0a
                let expr_486 := _179
                let expr_488 := caller()
                let _180 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_486,expr_488)
                let _181_slot := _180
                let expr_489_slot := _181_slot
                let _182 := add(expr_489_slot, 3)
                let _183 := read_from_storage_offset_0_t_uint256(_182)
                _178 := checked_add_t_uint256(_183, _178)
                update_storage_value_offset_0t_uint256_to_t_uint256(_182, _178)
                let expr_492 := _178
                let _184 := vloc_building_377
                let expr_503 := _184
                let _185 := 0x0a
                let expr_494 := _185
                let expr_496 := caller()
                let _186 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_494,expr_496)
                let _187_slot := _186
                let expr_497_slot := _187_slot
                let _188 := add(expr_497_slot, 1)
                let _189 := _188
                let expr_498 := _189
                let _190 := vloc_xpos_373
                let expr_499 := _190
                let _191 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(expr_498,expr_499)
                let _192 := _191
                let expr_500 := _192
                let _193 := vloc_ypos_375
                let expr_501 := _193
                let _194 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_500,expr_501)
                update_storage_value_offset_0t_uint256_to_t_uint256(_194, expr_503)
                let expr_504 := expr_503
                let _195 := 0x0b
                let expr_516 := _195
                let _196 := vloc_building_377
                let expr_517 := _196
                let _197 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_516,expr_517)
                let _198_slot := _197
                let expr_518_slot := _198_slot
                let _199 := add(expr_518_slot, 5)
                let _200 := read_from_storage_offset_0_t_uint256(_199)
                let expr_519 := _200
                let _201 := 0x0a
                let expr_506 := _201
                let expr_508 := caller()
                let _202 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_506,expr_508)
                let _203_slot := _202
                let expr_509_slot := _203_slot
                let _204 := add(expr_509_slot, 2)
                let _205 := _204
                let expr_510 := _205
                let _206 := 0x0b
                let expr_511 := _206
                let _207 := vloc_building_377
                let expr_512 := _207
                let _208 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_511,expr_512)
                let _209_slot := _208
                let expr_513_slot := _209_slot
                let _210 := add(expr_513_slot, 4)
                let _211 := read_from_storage_offset_0_t_uint256(_210)
                let expr_514 := _211
                let _212 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_510,expr_514)
                let _213 := read_from_storage_offset_0_t_uint256(_212)
                expr_519 := checked_add_t_uint256(_213, expr_519)
                update_storage_value_offset_0t_uint256_to_t_uint256(_212, expr_519)
                let expr_520 := expr_519
                let _214 := 0x0b
                let expr_532 := _214
                let _215 := vloc_building_377
                let expr_533 := _215
                let _216 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_532,expr_533)
                let _217_slot := _216
                let expr_534_slot := _217_slot
                let _218 := add(expr_534_slot, 2)
                let _219 := read_from_storage_offset_0_t_uint256(_218)
                let expr_535 := _219
                let _220 := 0x0a
                let expr_522 := _220
                let expr_524 := caller()
                let _221 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_522,expr_524)
                let _222_slot := _221
                let expr_525_slot := _222_slot
                let _223 := add(expr_525_slot, 0)
                let _224 := _223
                let expr_526 := _224
                let _225 := 0x0b
                let expr_527 := _225
                let _226 := vloc_building_377
                let expr_528 := _226
                let _227 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_527,expr_528)
                let _228_slot := _227
                let expr_529_slot := _228_slot
                let _229 := add(expr_529_slot, 0)
                let _230 := read_from_storage_offset_0_t_uint256(_229)
                let expr_530 := _230
                let _231 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_526,expr_530)
                let _232 := read_from_storage_offset_0_t_uint256(_231)
                expr_535 := checked_sub_t_uint256(_232, expr_535)
                update_storage_value_offset_0t_uint256_to_t_uint256(_231, expr_535)
                let expr_536 := expr_535
                let _233 := 0x0b
                let expr_548 := _233
                let _234 := vloc_building_377
                let expr_549 := _234
                let _235 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_548,expr_549)
                let _236_slot := _235
                let expr_550_slot := _236_slot
                let _237 := add(expr_550_slot, 3)
                let _238 := read_from_storage_offset_0_t_uint256(_237)
                let expr_551 := _238
                let _239 := 0x0a
                let expr_538 := _239
                let expr_540 := caller()
                let _240 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_538,expr_540)
                let _241_slot := _240
                let expr_541_slot := _241_slot
                let _242 := add(expr_541_slot, 0)
                let _243 := _242
                let expr_542 := _243
                let _244 := 0x0b
                let expr_543 := _244
                let _245 := vloc_building_377
                let expr_544 := _245
                let _246 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_543,expr_544)
                let _247_slot := _246
                let expr_545_slot := _247_slot
                let _248 := add(expr_545_slot, 1)
                let _249 := read_from_storage_offset_0_t_uint256(_248)
                let expr_546 := _249
                let _250 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_542,expr_546)
                let _251 := read_from_storage_offset_0_t_uint256(_250)
                expr_551 := checked_sub_t_uint256(_251, expr_551)
                update_storage_value_offset_0t_uint256_to_t_uint256(_250, expr_551)
                let expr_552 := expr_551
                let expr_554_functionIdentifier := 281
                fun_newLeader_281()

            }

            function fun_buySpecialBuilding_926(vloc_xpos_777, vloc_ypos_779, vloc_building_781) {

                let _384 := 0x0a
                let expr_785 := _384
                let expr_787 := caller()
                let _385 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_785,expr_787)
                let _386_slot := _385
                let expr_788_slot := _386_slot
                let _387 := add(expr_788_slot, 4)
                let _388 := read_from_storage_offset_0_t_uint256(_387)
                let expr_789 := _388
                let _389 := vloc_xpos_777
                let expr_790 := _389
                let expr_791 := iszero(lt(cleanup_t_uint256(expr_789), cleanup_t_uint256(expr_790)))
                let expr_792 := expr_791
                let expr_801 := expr_792
                if expr_801 {
                    let _390 := 0x0a
                    let expr_793 := _390
                    let expr_795 := caller()
                    let _391 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_793,expr_795)
                    let _392_slot := _391
                    let expr_796_slot := _392_slot
                    let _393 := add(expr_796_slot, 5)
                    let _394 := read_from_storage_offset_0_t_uint256(_393)
                    let expr_797 := _394
                    let _395 := vloc_ypos_779
                    let expr_798 := _395
                    let expr_799 := iszero(lt(cleanup_t_uint256(expr_797), cleanup_t_uint256(expr_798)))
                    let expr_800 := expr_799
                    expr_801 := expr_800
                }
                let expr_802 := expr_801
                let expr_844 := expr_802
                if expr_844 {
                    let expr_804 := callvalue()
                    let expr_805 := 0x016345785d8a0000
                    let expr_806 := iszero(lt(cleanup_t_uint256(expr_804), convert_t_rational_100000000000000000_by_1_to_t_uint256(expr_805)))
                    let expr_807 := expr_806
                    let expr_812 := expr_807
                    if expr_812 {
                        let _396 := vloc_building_781
                        let expr_808 := _396
                        let expr_809 := 0x61
                        let expr_810 := eq(cleanup_t_uint256(expr_808), convert_t_rational_97_by_1_to_t_uint256(expr_809))
                        let expr_811 := expr_810
                        expr_812 := expr_811
                    }
                    let expr_813 := expr_812
                    let expr_814 := expr_813
                    let expr_827 := expr_814
                    if iszero(expr_827) {
                        let expr_816 := callvalue()
                        let expr_817 := 0x0de0b6b3a7640000
                        let expr_818 := iszero(lt(cleanup_t_uint256(expr_816), convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_817)))
                        let expr_819 := expr_818
                        let expr_824 := expr_819
                        if expr_824 {
                            let _397 := vloc_building_781
                            let expr_820 := _397
                            let expr_821 := 0x62
                            let expr_822 := eq(cleanup_t_uint256(expr_820), convert_t_rational_98_by_1_to_t_uint256(expr_821))
                            let expr_823 := expr_822
                            expr_824 := expr_823
                        }
                        let expr_825 := expr_824
                        let expr_826 := expr_825
                        expr_827 := expr_826
                    }
                    let expr_828 := expr_827
                    let expr_841 := expr_828
                    if iszero(expr_841) {
                        let expr_830 := callvalue()
                        let expr_831 := 0x4563918244f40000
                        let expr_832 := iszero(lt(cleanup_t_uint256(expr_830), convert_t_rational_5000000000000000000_by_1_to_t_uint256(expr_831)))
                        let expr_833 := expr_832
                        let expr_838 := expr_833
                        if expr_838 {
                            let _398 := vloc_building_781
                            let expr_834 := _398
                            let expr_835 := 0x63
                            let expr_836 := eq(cleanup_t_uint256(expr_834), convert_t_rational_99_by_1_to_t_uint256(expr_835))
                            let expr_837 := expr_836
                            expr_838 := expr_837
                        }
                        let expr_839 := expr_838
                        let expr_840 := expr_839
                        expr_841 := expr_840
                    }
                    let expr_842 := expr_841
                    let expr_843 := expr_842
                    expr_844 := expr_843
                }
                let expr_845 := expr_844
                let expr_858 := expr_845
                if expr_858 {
                    let _399 := 0x0a
                    let expr_846 := _399
                    let expr_848 := caller()
                    let _400 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_846,expr_848)
                    let _401_slot := _400
                    let expr_849_slot := _401_slot
                    let _402 := add(expr_849_slot, 1)
                    let _403 := _402
                    let expr_850 := _403
                    let _404 := vloc_xpos_777
                    let expr_851 := _404
                    let _405 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(expr_850,expr_851)
                    let _406 := _405
                    let expr_852 := _406
                    let _407 := vloc_ypos_779
                    let expr_853 := _407
                    let _408 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_852,expr_853)
                    let _409 := read_from_storage_offset_0_t_uint256(_408)
                    let expr_854 := _409
                    let expr_855 := 0x00
                    let expr_856 := eq(cleanup_t_uint256(expr_854), convert_t_rational_0_by_1_to_t_uint256(expr_855))
                    let expr_857 := expr_856
                    expr_858 := expr_857
                }
                let expr_859 := expr_858
                require_helper(expr_859)
                let _410 := vloc_building_781
                let expr_871 := _410
                let _411 := 0x0a
                let expr_862 := _411
                let expr_864 := caller()
                let _412 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_862,expr_864)
                let _413_slot := _412
                let expr_865_slot := _413_slot
                let _414 := add(expr_865_slot, 1)
                let _415 := _414
                let expr_866 := _415
                let _416 := vloc_xpos_777
                let expr_867 := _416
                let _417 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(expr_866,expr_867)
                let _418 := _417
                let expr_868 := _418
                let _419 := vloc_ypos_779
                let expr_869 := _419
                let _420 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_868,expr_869)
                update_storage_value_offset_0t_uint256_to_t_uint256(_420, expr_871)
                let expr_872 := expr_871
                let _421 := vloc_building_781
                let expr_874 := _421
                let expr_875 := 0x61
                let expr_876 := eq(cleanup_t_uint256(expr_874), convert_t_rational_97_by_1_to_t_uint256(expr_875))
                let expr_877 := expr_876
                if expr_877 {
                    let expr_885 := 0x08
                    let _422 := convert_t_rational_8_by_1_to_t_uint256(expr_885)
                    let _423 := 0x0a
                    let expr_878 := _423
                    let expr_880 := caller()
                    let _424 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_878,expr_880)
                    let _425_slot := _424
                    let expr_881_slot := _425_slot
                    let _426 := add(expr_881_slot, 2)
                    let _427 := _426
                    let expr_882 := _427
                    let expr_883 := 0x0a
                    let _428 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_10_by_1(expr_882,expr_883)
                    let _429 := read_from_storage_offset_0_t_uint256(_428)
                    _422 := checked_add_t_uint256(_429, _422)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_428, _422)
                    let expr_886 := _422
                }
                let _430 := vloc_building_781
                let expr_890 := _430
                let expr_891 := 0x62
                let expr_892 := eq(cleanup_t_uint256(expr_890), convert_t_rational_98_by_1_to_t_uint256(expr_891))
                let expr_893 := expr_892
                if expr_893 {
                    let expr_901 := 0x08
                    let _431 := convert_t_rational_8_by_1_to_t_uint256(expr_901)
                    let _432 := 0x0a
                    let expr_894 := _432
                    let expr_896 := caller()
                    let _433 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_894,expr_896)
                    let _434_slot := _433
                    let expr_897_slot := _434_slot
                    let _435 := add(expr_897_slot, 2)
                    let _436 := _435
                    let expr_898 := _436
                    let expr_899 := 0x0b
                    let _437 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_11_by_1(expr_898,expr_899)
                    let _438 := read_from_storage_offset_0_t_uint256(_437)
                    _431 := checked_add_t_uint256(_438, _431)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_437, _431)
                    let expr_902 := _431
                }
                let _439 := vloc_building_781
                let expr_906 := _439
                let expr_907 := 0x63
                let expr_908 := eq(cleanup_t_uint256(expr_906), convert_t_rational_99_by_1_to_t_uint256(expr_907))
                let expr_909 := expr_908
                if expr_909 {
                    let expr_917 := 0x10
                    let _440 := convert_t_rational_16_by_1_to_t_uint256(expr_917)
                    let _441 := 0x0a
                    let expr_910 := _441
                    let expr_912 := caller()
                    let _442 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_910,expr_912)
                    let _443_slot := _442
                    let expr_913_slot := _443_slot
                    let _444 := add(expr_913_slot, 2)
                    let _445 := _444
                    let expr_914 := _445
                    let expr_915 := 0x0b
                    let _446 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_11_by_1(expr_914,expr_915)
                    let _447 := read_from_storage_offset_0_t_uint256(_446)
                    _440 := checked_add_t_uint256(_447, _440)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_446, _440)
                    let expr_918 := _440
                }
                let expr_922_functionIdentifier := 281
                fun_newLeader_281()

            }

            function fun_claimBasicResources_675() {

                let _264 := 0x0a
                let expr_592 := _264
                let expr_594 := caller()
                let _265 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_592,expr_594)
                let _266_slot := _265
                let expr_595_slot := _266_slot
                let _267 := add(expr_595_slot, 2)
                let _268 := _267
                let expr_596 := _268
                let expr_597 := 0x01
                let _269 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_596,expr_597)
                let _270 := read_from_storage_offset_0_t_uint256(_269)
                let expr_598 := _270
                let _271 := 0x0a
                let expr_585 := _271
                let expr_587 := caller()
                let _272 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_585,expr_587)
                let _273_slot := _272
                let expr_588_slot := _273_slot
                let _274 := add(expr_588_slot, 0)
                let _275 := _274
                let expr_589 := _275
                let expr_590 := 0x00
                let _276 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_589,expr_590)
                let _277 := read_from_storage_offset_0_t_uint256(_276)
                expr_598 := checked_add_t_uint256(_277, expr_598)
                update_storage_value_offset_0t_uint256_to_t_uint256(_276, expr_598)
                let expr_599 := expr_598
                let _278 := 0x0a
                let expr_608 := _278
                let expr_610 := caller()
                let _279 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_608,expr_610)
                let _280_slot := _279
                let expr_611_slot := _280_slot
                let _281 := add(expr_611_slot, 2)
                let _282 := _281
                let expr_612 := _282
                let expr_613 := 0x02
                let _283 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_612,expr_613)
                let _284 := read_from_storage_offset_0_t_uint256(_283)
                let expr_614 := _284
                let _285 := 0x0a
                let expr_601 := _285
                let expr_603 := caller()
                let _286 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_601,expr_603)
                let _287_slot := _286
                let expr_604_slot := _287_slot
                let _288 := add(expr_604_slot, 0)
                let _289 := _288
                let expr_605 := _289
                let expr_606 := 0x01
                let _290 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_605,expr_606)
                let _291 := read_from_storage_offset_0_t_uint256(_290)
                expr_614 := checked_add_t_uint256(_291, expr_614)
                update_storage_value_offset_0t_uint256_to_t_uint256(_290, expr_614)
                let expr_615 := expr_614
                let _292 := 0x0a
                let expr_624 := _292
                let expr_626 := caller()
                let _293 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_624,expr_626)
                let _294_slot := _293
                let expr_627_slot := _294_slot
                let _295 := add(expr_627_slot, 2)
                let _296 := _295
                let expr_628 := _296
                let expr_629 := 0x03
                let _297 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_3_by_1(expr_628,expr_629)
                let _298 := read_from_storage_offset_0_t_uint256(_297)
                let expr_630 := _298
                let _299 := 0x0a
                let expr_617 := _299
                let expr_619 := caller()
                let _300 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_617,expr_619)
                let _301_slot := _300
                let expr_620_slot := _301_slot
                let _302 := add(expr_620_slot, 0)
                let _303 := _302
                let expr_621 := _303
                let expr_622 := 0x02
                let _304 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_621,expr_622)
                let _305 := read_from_storage_offset_0_t_uint256(_304)
                expr_630 := checked_add_t_uint256(_305, expr_630)
                update_storage_value_offset_0t_uint256_to_t_uint256(_304, expr_630)
                let expr_631 := expr_630
                let _306 := 0x0a
                let expr_640 := _306
                let expr_642 := caller()
                let _307 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_640,expr_642)
                let _308_slot := _307
                let expr_643_slot := _308_slot
                let _309 := add(expr_643_slot, 2)
                let _310 := _309
                let expr_644 := _310
                let expr_645 := 0x04
                let _311 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_4_by_1(expr_644,expr_645)
                let _312 := read_from_storage_offset_0_t_uint256(_311)
                let expr_646 := _312
                let _313 := 0x0a
                let expr_633 := _313
                let expr_635 := caller()
                let _314 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_633,expr_635)
                let _315_slot := _314
                let expr_636_slot := _315_slot
                let _316 := add(expr_636_slot, 0)
                let _317 := _316
                let expr_637 := _317
                let expr_638 := 0x03
                let _318 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_3_by_1(expr_637,expr_638)
                let _319 := read_from_storage_offset_0_t_uint256(_318)
                expr_646 := checked_add_t_uint256(_319, expr_646)
                update_storage_value_offset_0t_uint256_to_t_uint256(_318, expr_646)
                let expr_647 := expr_646
                let _320 := 0x0a
                let expr_656 := _320
                let expr_658 := caller()
                let _321 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_656,expr_658)
                let _322_slot := _321
                let expr_659_slot := _322_slot
                let _323 := add(expr_659_slot, 2)
                let _324 := _323
                let expr_660 := _324
                let expr_661 := 0x05
                let _325 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_5_by_1(expr_660,expr_661)
                let _326 := read_from_storage_offset_0_t_uint256(_325)
                let expr_662 := _326
                let _327 := 0x0a
                let expr_649 := _327
                let expr_651 := caller()
                let _328 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_649,expr_651)
                let _329_slot := _328
                let expr_652_slot := _329_slot
                let _330 := add(expr_652_slot, 0)
                let _331 := _330
                let expr_653 := _331
                let expr_654 := 0x04
                let _332 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_4_by_1(expr_653,expr_654)
                let _333 := read_from_storage_offset_0_t_uint256(_332)
                expr_662 := checked_add_t_uint256(_333, expr_662)
                update_storage_value_offset_0t_uint256_to_t_uint256(_332, expr_662)
                let expr_663 := expr_662
                let expr_671 := timestamp()
                let _334 := 0x0a
                let expr_665 := _334
                let expr_667 := caller()
                let _335 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_665,expr_667)
                let _336_slot := _335
                let expr_668_slot := _336_slot
                let _337 := add(expr_668_slot, 6)
                update_storage_value_offset_0t_uint256_to_t_uint256(_337, expr_671)
                let expr_672 := expr_671

            }

            function fun_claimSpecialResource_745(vloc_shopIndex_677) {

                let vloc_item_681
                let zero_value_for_type_t_uint256_338 := zero_value_for_split_t_uint256()
                vloc_item_681 := zero_value_for_type_t_uint256_338
                let expr_684 := 0x00
                let _339 := convert_t_rational_0_by_1_to_t_uint256(expr_684)
                vloc_item_681 := _339
                let expr_685 := _339
                for {
                    } 1 {
                }
                {
                    let _340 := vloc_item_681
                    let expr_687 := _340
                    let _341 := 0x0a
                    let expr_688 := _341
                    let expr_690 := caller()
                    let _342 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_688,expr_690)
                    let _343_slot := _342
                    let expr_691_slot := _343_slot
                    let _344 := add(expr_691_slot, 2)
                    let _345 := _344
                    let expr_692 := _345
                    let _346 := vloc_shopIndex_677
                    let expr_693 := _346
                    let _347 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_692,expr_693)
                    let _348 := read_from_storage_offset_0_t_uint256(_347)
                    let expr_694 := _348
                    let expr_695 := lt(cleanup_t_uint256(expr_687), cleanup_t_uint256(expr_694))
                    let expr_696 := expr_695
                    if iszero(expr_696) { break }
                    let vloc_select_698
                    let zero_value_for_type_t_uint256_349 := zero_value_for_split_t_uint256()
                    vloc_select_698 := zero_value_for_type_t_uint256_349
                    let expr_702 := timestamp()
                    let _350 := vloc_item_681
                    let expr_703 := _350
                    let _351 := vloc_shopIndex_677
                    let expr_704 := _351
                    let expr_705 := checked_add_t_uint256(expr_703, expr_704)

                    let expr_706 := expr_705
                    let expr_707 := expr_706
                    let expr_708 := checked_sub_t_uint256(expr_702, expr_707)

                    let expr_709 := expr_708
                    let expr_710 := expr_709
                    let expr_711 := 0x0d
                    let expr_712 := checked_mod_t_uint256(expr_710, convert_t_rational_13_by_1_to_t_uint256(expr_711))

                    let expr_713 := expr_712
                    let expr_714 := expr_713
                    vloc_select_698 := expr_714
                    let expr_715 := expr_714
                    let expr_724 := 0x01
                    let _352 := convert_t_rational_1_by_1_to_t_uint256(expr_724)
                    let _353 := 0x0a
                    let expr_717 := _353
                    let expr_719 := caller()
                    let _354 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_717,expr_719)
                    let _355_slot := _354
                    let expr_720_slot := _355_slot
                    let _356 := add(expr_720_slot, 0)
                    let _357 := _356
                    let expr_721 := _357
                    let _358 := vloc_shopIndex_677
                    let expr_722 := _358
                    let _359 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_721,expr_722)
                    let _360 := read_from_storage_offset_0_t_uint256(_359)
                    _352 := checked_add_t_uint256(_360, _352)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_359, _352)
                    let expr_725 := _352
                    let _362 := vloc_item_681
                    let _361 := increment_t_uint256(_362)
                    vloc_item_681 := _361
                    let expr_728 := _362
                }
                let expr_741 := timestamp()
                let _363 := 0x0a
                let expr_733 := _363
                let expr_735 := caller()
                let _364 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_733,expr_735)
                let _365_slot := _364
                let expr_736_slot := _365_slot
                let _366 := add(expr_736_slot, 7)
                let _367 := _366
                let expr_737 := _367
                let _368 := vloc_shopIndex_677
                let expr_738 := _368
                let _369 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_737,expr_738)
                update_storage_value_offset_0t_uint256_to_t_uint256(_369, expr_741)
                let expr_742 := expr_741

            }

            function fun_expandX_570() {

                let expr_566 := 0x01
                let _252 := convert_t_rational_1_by_1_to_t_uint256(expr_566)
                let _253 := 0x0a
                let expr_561 := _253
                let expr_563 := caller()
                let _254 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_561,expr_563)
                let _255_slot := _254
                let expr_564_slot := _255_slot
                let _256 := add(expr_564_slot, 4)
                let _257 := read_from_storage_offset_0_t_uint256(_256)
                _252 := checked_add_t_uint256(_257, _252)
                update_storage_value_offset_0t_uint256_to_t_uint256(_256, _252)
                let expr_567 := _252

            }

            function fun_expandY_582() {

                let expr_578 := 0x01
                let _258 := convert_t_rational_1_by_1_to_t_uint256(expr_578)
                let _259 := 0x0a
                let expr_573 := _259
                let expr_575 := caller()
                let _260 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_573,expr_575)
                let _261_slot := _260
                let expr_576_slot := _261_slot
                let _262 := add(expr_576_slot, 5)
                let _263 := read_from_storage_offset_0_t_uint256(_262)
                _258 := checked_add_t_uint256(_263, _258)
                update_storage_value_offset_0t_uint256_to_t_uint256(_262, _258)
                let expr_579 := _258

            }

            function fun_initBuilding_223(vloc_r0_184, vloc_r1_186, vloc_p0_188, vloc_p1_190, vloc_m_192, vloc_a_194) {

                let expr_199 := caller()
                let _1 := read_from_storage_offset_0_t_address(0x00)
                let expr_200 := _1
                let expr_201 := eq(convert_t_address_payable_to_t_address(expr_199), cleanup_t_address(expr_200))
                let expr_202 := expr_201
                require_helper(expr_202)
                let _2 := vloc_r0_184
                let expr_209 := _2
                let _3 := vloc_r1_186
                let expr_210 := _3
                let _4 := vloc_p0_188
                let expr_211 := _4
                let _5 := vloc_p1_190
                let expr_212 := _5
                let _6 := vloc_m_192
                let expr_213 := _6
                let _7 := vloc_a_194
                let expr_214 := _7
                let expr_215_mpos := allocate_memory_struct_t_struct$_Building_$43_storage_ptr()
                write_to_memory_t_uint256(add(expr_215_mpos, 0), expr_209)
                write_to_memory_t_uint256(add(expr_215_mpos, 32), expr_210)
                write_to_memory_t_uint256(add(expr_215_mpos, 64), expr_211)
                write_to_memory_t_uint256(add(expr_215_mpos, 96), expr_212)
                write_to_memory_t_uint256(add(expr_215_mpos, 128), expr_213)
                write_to_memory_t_uint256(add(expr_215_mpos, 160), expr_214)
                let _8 := 0x0b
                let expr_205 := _8
                let _9 := read_from_storage_offset_0_t_uint256(0x06)
                let expr_206 := _9
                let _10 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(expr_205,expr_206)
                update_storage_value_offset_0t_struct$_Building_$43_memory_ptr_to_t_struct$_Building_$43_storage(_10, expr_215_mpos)
                let expr_219 := 0x01
                let _11 := convert_t_rational_1_by_1_to_t_uint256(expr_219)
                let _12 := read_from_storage_offset_0_t_uint256(0x06)
                _11 := checked_add_t_uint256(_12, _11)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x06, _11)
                let expr_220 := _11

            }

            function fun_initiateUser_371() {

                let _45 := 0x0a
                let expr_284 := _45
                let expr_286 := caller()
                let _46 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_284,expr_286)
                let _47_slot := _46
                let expr_287_slot := _47_slot
                let _48 := add(expr_287_slot, 8)
                let _49 := read_from_storage_offset_0_t_bool(_48)
                let expr_288 := _49
                let expr_289 := cleanup_t_bool(iszero(expr_288))
                if expr_289 {
                    let expr_295 := 0x01
                    let _50 := 0x0a
                    let expr_290 := _50
                    let expr_292 := caller()
                    let _51 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_290,expr_292)
                    let _52_slot := _51
                    let expr_293_slot := _52_slot
                    let _53 := add(expr_293_slot, 8)
                    update_storage_value_offset_0t_bool_to_t_bool(_53, expr_295)
                    let expr_296 := expr_295
                    let expr_305 := 0x05
                    let _54 := convert_t_rational_5_by_1_to_t_uint256(expr_305)
                    let _55 := 0x0a
                    let expr_298 := _55
                    let expr_300 := caller()
                    let _56 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_298,expr_300)
                    let _57_slot := _56
                    let expr_301_slot := _57_slot
                    let _58 := add(expr_301_slot, 0)
                    let _59 := _58
                    let expr_302 := _59
                    let expr_303 := 0x00
                    let _60 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(expr_302,expr_303)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_60, _54)
                    let expr_306 := _54
                    let expr_315 := 0x05
                    let _61 := convert_t_rational_5_by_1_to_t_uint256(expr_315)
                    let _62 := 0x0a
                    let expr_308 := _62
                    let expr_310 := caller()
                    let _63 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_308,expr_310)
                    let _64_slot := _63
                    let expr_311_slot := _64_slot
                    let _65 := add(expr_311_slot, 0)
                    let _66 := _65
                    let expr_312 := _66
                    let expr_313 := 0x01
                    let _67 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(expr_312,expr_313)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_67, _61)
                    let expr_316 := _61
                    let expr_325 := 0x05
                    let _68 := convert_t_rational_5_by_1_to_t_uint256(expr_325)
                    let _69 := 0x0a
                    let expr_318 := _69
                    let expr_320 := caller()
                    let _70 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_318,expr_320)
                    let _71_slot := _70
                    let expr_321_slot := _71_slot
                    let _72 := add(expr_321_slot, 0)
                    let _73 := _72
                    let expr_322 := _73
                    let expr_323 := 0x02
                    let _74 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(expr_322,expr_323)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_74, _68)
                    let expr_326 := _68
                    let expr_335 := 0x05
                    let _75 := convert_t_rational_5_by_1_to_t_uint256(expr_335)
                    let _76 := 0x0a
                    let expr_328 := _76
                    let expr_330 := caller()
                    let _77 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_328,expr_330)
                    let _78_slot := _77
                    let expr_331_slot := _78_slot
                    let _79 := add(expr_331_slot, 0)
                    let _80 := _79
                    let expr_332 := _80
                    let expr_333 := 0x03
                    let _81 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_3_by_1(expr_332,expr_333)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_81, _75)
                    let expr_336 := _75
                    let expr_345 := 0x05
                    let _82 := convert_t_rational_5_by_1_to_t_uint256(expr_345)
                    let _83 := 0x0a
                    let expr_338 := _83
                    let expr_340 := caller()
                    let _84 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_338,expr_340)
                    let _85_slot := _84
                    let expr_341_slot := _85_slot
                    let _86 := add(expr_341_slot, 0)
                    let _87 := _86
                    let expr_342 := _87
                    let expr_343 := 0x04
                    let _88 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_4_by_1(expr_342,expr_343)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_88, _82)
                    let expr_346 := _82
                    let expr_353 := 0x06
                    let _89 := convert_t_rational_6_by_1_to_t_uint256(expr_353)
                    let _90 := 0x0a
                    let expr_348 := _90
                    let expr_350 := caller()
                    let _91 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_348,expr_350)
                    let _92_slot := _91
                    let expr_351_slot := _92_slot
                    let _93 := add(expr_351_slot, 4)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_93, _89)
                    let expr_354 := _89
                    let expr_361 := 0x06
                    let _94 := convert_t_rational_6_by_1_to_t_uint256(expr_361)
                    let _95 := 0x0a
                    let expr_356 := _95
                    let expr_358 := caller()
                    let _96 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_356,expr_358)
                    let _97_slot := _96
                    let expr_359_slot := _97_slot
                    let _98 := add(expr_359_slot, 5)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_98, _94)
                    let expr_362 := _94
                    let expr_365 := 0x01
                    let _99 := convert_t_rational_1_by_1_to_t_uint256(expr_365)
                    let _100 := read_from_storage_offset_0_t_uint256(0x05)
                    _99 := checked_add_t_uint256(_100, _99)
                    update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _99)
                    let expr_366 := _99
                }

            }

            function fun_newLeader_281() {

                let _13 := 0x0a
                let expr_226 := _13
                let expr_228 := caller()
                let _14 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_226,expr_228)
                let _15_slot := _14
                let expr_229_slot := _15_slot
                let _16 := add(expr_229_slot, 2)
                let _17 := _16
                let expr_230 := _17
                let expr_231 := 0x0a
                let _18 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_10_by_1(expr_230,expr_231)
                let _19 := read_from_storage_offset_0_t_uint256(_18)
                let expr_232 := _19
                let _20 := read_from_storage_offset_0_t_uint256(0x02)
                let expr_233 := _20
                let expr_234 := gt(cleanup_t_uint256(expr_232), cleanup_t_uint256(expr_233))
                let expr_235 := expr_234
                if expr_235 {
                    let _21 := 0x0a
                    let expr_237 := _21
                    let expr_239 := caller()
                    let _22 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_237,expr_239)
                    let _23_slot := _22
                    let expr_240_slot := _23_slot
                    let _24 := add(expr_240_slot, 2)
                    let _25 := _24
                    let expr_241 := _25
                    let expr_242 := 0x0a
                    let _26 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_10_by_1(expr_241,expr_242)
                    let _27 := read_from_storage_offset_0_t_uint256(_26)
                    let expr_243 := _27
                    update_storage_value_offset_0t_uint256_to_t_uint256(0x02, expr_243)
                    let expr_244 := expr_243
                    let expr_248 := caller()
                    let _28 := convert_t_address_payable_to_t_address(expr_248)
                    update_storage_value_offset_0t_address_to_t_address(0x01, _28)
                    let expr_249 := _28
                }
                let _29 := 0x0a
                let expr_253 := _29
                let expr_255 := caller()
                let _30 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_253,expr_255)
                let _31_slot := _30
                let expr_256_slot := _31_slot
                let _32 := add(expr_256_slot, 2)
                let _33 := _32
                let expr_257 := _33
                let expr_258 := 0x0b
                let _34 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_11_by_1(expr_257,expr_258)
                let _35 := read_from_storage_offset_0_t_uint256(_34)
                let expr_259 := _35
                let _36 := read_from_storage_offset_0_t_uint256(0x04)
                let expr_260 := _36
                let expr_261 := gt(cleanup_t_uint256(expr_259), cleanup_t_uint256(expr_260))
                let expr_262 := expr_261
                if expr_262 {
                    let _37 := 0x0a
                    let expr_264 := _37
                    let expr_266 := caller()
                    let _38 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_264,expr_266)
                    let _39_slot := _38
                    let expr_267_slot := _39_slot
                    let _40 := add(expr_267_slot, 2)
                    let _41 := _40
                    let expr_268 := _41
                    let expr_269 := 0x0b
                    let _42 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_11_by_1(expr_268,expr_269)
                    let _43 := read_from_storage_offset_0_t_uint256(_42)
                    let expr_270 := _43
                    update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_270)
                    let expr_271 := expr_270
                    let expr_275 := caller()
                    let _44 := convert_t_address_payable_to_t_address(expr_275)
                    update_storage_value_offset_0t_address_to_t_address(0x03, _44)
                    let expr_276 := _44
                }

            }

            function fun_observe__0_939(vloc_i_928) -> vloc__931 {
                let zero_value_for_type_t_uint256_448 := zero_value_for_split_t_uint256()
                vloc__931 := zero_value_for_type_t_uint256_448

                let _449 := 0x0a
                let expr_933 := _449
                let _450 := vloc_i_928
                let expr_934 := _450
                let _451 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address(expr_933,expr_934)
                let _452_slot := _451
                let expr_935_slot := _452_slot
                let _453 := add(expr_935_slot, 3)
                let _454 := read_from_storage_offset_0_t_uint256(_453)
                let expr_936 := _454
                vloc__931 := expr_936
                leave

            }

            function fun_observe__1_952(vloc_i_941) -> vloc__944 {
                let zero_value_for_type_t_uint256_455 := zero_value_for_split_t_uint256()
                vloc__944 := zero_value_for_type_t_uint256_455

                let _456 := 0x0a
                let expr_946 := _456
                let _457 := vloc_i_941
                let expr_947 := _457
                let _458 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address(expr_946,expr_947)
                let _459_slot := _458
                let expr_948_slot := _459_slot
                let _460 := add(expr_948_slot, 4)
                let _461 := read_from_storage_offset_0_t_uint256(_460)
                let expr_949 := _461
                vloc__944 := expr_949
                leave

            }

            function fun_observe__2_965(vloc_i_954) -> vloc__957 {
                let zero_value_for_type_t_uint256_462 := zero_value_for_split_t_uint256()
                vloc__957 := zero_value_for_type_t_uint256_462

                let _463 := 0x0a
                let expr_959 := _463
                let _464 := vloc_i_954
                let expr_960 := _464
                let _465 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address(expr_959,expr_960)
                let _466_slot := _465
                let expr_961_slot := _466_slot
                let _467 := add(expr_961_slot, 5)
                let _468 := read_from_storage_offset_0_t_uint256(_467)
                let expr_962 := _468
                vloc__957 := expr_962
                leave

            }

            function fun_observe__3_978(vloc_i_967) -> vloc__970 {
                let zero_value_for_type_t_uint256_469 := zero_value_for_split_t_uint256()
                vloc__970 := zero_value_for_type_t_uint256_469

                let _470 := 0x0a
                let expr_972 := _470
                let _471 := vloc_i_967
                let expr_973 := _471
                let _472 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address(expr_972,expr_973)
                let _473_slot := _472
                let expr_974_slot := _473_slot
                let _474 := add(expr_974_slot, 6)
                let _475 := read_from_storage_offset_0_t_uint256(_474)
                let expr_975 := _475
                vloc__970 := expr_975
                leave

            }

            function fun_observe__4_991(vloc_i_980) -> vloc__983 {
                let zero_value_for_type_t_bool_476 := zero_value_for_split_t_bool()
                vloc__983 := zero_value_for_type_t_bool_476

                let _477 := 0x0a
                let expr_985 := _477
                let _478 := vloc_i_980
                let expr_986 := _478
                let _479 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address(expr_985,expr_986)
                let _480_slot := _479
                let expr_987_slot := _480_slot
                let _481 := add(expr_987_slot, 8)
                let _482 := read_from_storage_offset_0_t_bool(_481)
                let expr_988 := _482
                vloc__983 := expr_988
                leave

            }

            function fun_observe__5_1008(vloc_i_993, vloc_key_995) -> vloc__998 {
                let zero_value_for_type_t_uint256_483 := zero_value_for_split_t_uint256()
                vloc__998 := zero_value_for_type_t_uint256_483

                let _484 := 0x0a
                let expr_1000 := _484
                let _485 := vloc_i_993
                let expr_1001 := _485
                let _486 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address(expr_1000,expr_1001)
                let _487_slot := _486
                let expr_1002_slot := _487_slot
                let _488 := add(expr_1002_slot, 0)
                let _489 := _488
                let expr_1003 := _489
                let _490 := vloc_key_995
                let expr_1004 := _490
                let _491 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_1003,expr_1004)
                let _492 := read_from_storage_offset_0_t_uint256(_491)
                let expr_1005 := _492
                vloc__998 := expr_1005
                leave

            }

            function fun_observe__6_1022() -> vloc__1011 {
                let zero_value_for_type_t_uint256_493 := zero_value_for_split_t_uint256()
                vloc__1011 := zero_value_for_type_t_uint256_493

                let _494 := 0x0a
                let expr_1013 := _494
                let expr_1015 := caller()
                let _495 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_1013,expr_1015)
                let _496_slot := _495
                let expr_1016_slot := _496_slot
                let _497 := add(expr_1016_slot, 2)
                let _498 := _497
                let expr_1017 := _498
                let expr_1018 := 0x0a
                let _499 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_10_by_1(expr_1017,expr_1018)
                let _500 := read_from_storage_offset_0_t_uint256(_499)
                let expr_1019 := _500
                vloc__1011 := expr_1019
                leave

            }

            function fun_observe__7_1036() -> vloc__1025 {
                let zero_value_for_type_t_uint256_501 := zero_value_for_split_t_uint256()
                vloc__1025 := zero_value_for_type_t_uint256_501

                let _502 := 0x0a
                let expr_1027 := _502
                let expr_1029 := caller()
                let _503 := mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(expr_1027,expr_1029)
                let _504_slot := _503
                let expr_1030_slot := _504_slot
                let _505 := add(expr_1030_slot, 2)
                let _506 := _505
                let expr_1031 := _506
                let expr_1032 := 0x0b
                let _507 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_11_by_1(expr_1031,expr_1032)
                let _508 := read_from_storage_offset_0_t_uint256(_507)
                let expr_1033 := _508
                vloc__1025 := expr_1033
                leave

            }

            function fun_sellItem_775(vloc_item_747, vloc_price_749) {

                let _370 := vloc_price_749
                let expr_758 := _370
                let _371 := 0x08
                let expr_752 := _371
                let expr_754 := caller()
                let _372 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_address_payable(expr_752,expr_754)
                let _373 := _372
                let expr_756 := _373
                let _374 := vloc_item_747
                let expr_755 := _374
                let _375 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_756,expr_755)
                update_storage_value_offset_0t_uint256_to_t_uint256(_375, expr_758)
                let expr_759 := expr_758
                let _376 := read_from_storage_offset_0_t_uint256(0x07)
                let expr_767 := _376
                let _377 := 0x09
                let expr_761 := _377
                let expr_763 := caller()
                let _378 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_address_payable(expr_761,expr_763)
                let _379 := _378
                let expr_765 := _379
                let _380 := vloc_item_747
                let expr_764 := _380
                let _381 := mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_uint256(expr_765,expr_764)
                update_storage_value_offset_0t_uint256_to_t_uint256(_381, expr_767)
                let expr_768 := expr_767
                let expr_771 := 0x01
                let _382 := convert_t_rational_1_by_1_to_t_uint256(expr_771)
                let _383 := read_from_storage_offset_0_t_uint256(0x07)
                _382 := checked_add_t_uint256(_383, _382)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x07, _382)
                let expr_772 := _382

            }

            function getter_fun_buildings_total_57() -> ret {

                let slot := 6
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_kingSpirit_49() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_king_47() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_owner_45() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_queenPrestige_53() -> ret {

                let slot := 4
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_queen_51() -> ret {

                let slot := 3
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_sell_id_59() -> ret {

                let slot := 7
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_totalCities_55() -> ret {

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

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_City_$30_storage_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_uint256_$_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Building_$43_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_0_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_0_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_10_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_10_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_11_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_11_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_1_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_2_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_2_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_3_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_3_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_4_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_4_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint256_$_of_t_rational_5_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_5_by_1_to_t_uint256(key))
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

            function update_storage_value_offset_0t_struct$_Building_$43_memory_ptr_to_t_struct$_Building_$43_storage(slot, value) {

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

