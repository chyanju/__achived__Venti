/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "EtherRacingTransformed1_1031" {
    code {
        mstore(64, 128)

        constructor_EtherRacingTransformed1_1031()

        codecopy(0, dataoffset("EtherRacingTransformed1_1031_deployed"), datasize("EtherRacingTransformed1_1031_deployed"))

        return(0, datasize("EtherRacingTransformed1_1031_deployed"))

        function checked_exp_t_rational_10_by_1_t_uint256(exponent) -> power {
            exponent := cleanup_t_uint256(exponent)

            if gt(exponent, 77) { panic_error() }

            power := exp(10, exponent)
        }

        function checked_mul_t_uint256(x, y) -> product {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)

            // overflow, if x != 0 and y > (maxValue / x)
            if and(iszero(iszero(x)), gt(y, div(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, x))) { panic_error() }

            product := mul(x, y)
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

        function constant_INITIAL_SUPPLY_201() -> ret {
            let expr_190 := 0x2710
            let expr_191 := 0x0a
            let expr_194 := constant_decimals_188()
            let expr_195 := convert_t_uint8_to_t_uint256(expr_194)
            let _3 := convert_t_rational_10_by_1_to_t_uint256(expr_191)
            let expr_196 := checked_exp_t_rational_10_by_1_t_uint256(expr_195)
            let expr_197 := expr_196
            let expr_198 := expr_197
            let expr_199 := checked_mul_t_uint256(convert_t_rational_10000_by_1_to_t_uint256(expr_190), expr_198)

            let expr_200 := expr_199
            let _4 := expr_200

            ret := _4
        }

        function constant_decimals_188() -> ret {
            let expr_187 := 0x12
            let _2 := convert_t_rational_18_by_1_to_t_uint8(expr_187)

            ret := _2
        }

        function constructor_EtherRacingTransformed1_1031() {

            let expr_273 := 0x00
            let _1 := convert_t_rational_0_by_1_to_t_uint256(expr_273)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _1)
            let expr_274 := _1
            let expr_280 := constant_INITIAL_SUPPLY_201()
            let _5 := 0x05
            let expr_276 := _5
            let expr_278 := origin()
            let _6 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_276,expr_278)
            update_storage_value_offset_0t_uint256_to_t_uint256(_6, expr_280)
            let expr_281 := expr_280

        }

        function convert_t_address_payable_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_rational_10000_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(value)
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(value)
        }

        function convert_t_uint8_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint8(value)
        }

        function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(slot , key) -> dataSlot {
            mstore(0, convert_t_address_payable_to_t_address(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function panic_error() {
            invalid()
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

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
    object "EtherRacingTransformed1_1031_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_name_182()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa6b297
                {
                    // observe__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__1_893(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint16__to_t_uint16__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2e1a7d4d
                {
                    // withdraw(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_withdraw_862(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2ff2e9dc
                {
                    // INITIAL_SUPPLY()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_INITIAL_SUPPLY_201()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x313ce567
                {
                    // decimals()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_decimals_188()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3cc45596
                {
                    // updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10 :=  abi_decode_tuple_t_uint256t_bytes32t_uint256t_uint256t_uint256t_uint16t_uint8t_uint8t_uint8t_uint8t_uint8(4, calldatasize())
                    fun_updateCar_508(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3e6b3297
                {
                    // observe__3(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__3_934(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4d664182
                {
                    // observe__10(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__10_1022(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0, ret_1 :=  fun_observe__2_921()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint16__to_t_uint256_t_uint16__fromStack(memPos , ret_0, ret_1)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x60098088
                {
                    // deleteCar(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_deleteCar_536(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x601047f4
                {
                    // observe__11()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__11_1030()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6c231060
                {
                    // buyCar(uint256)

                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_buyCar_795(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7ecd3aa9
                {
                    // observe__6(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__6_959(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6 :=  fun_observe__8_1009(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16__to_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x95d89b41
                {
                    // symbol()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_symbol_185()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x96e4ee3d
                {
                    // convert(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    let ret_0 :=  fun_convert_877(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa43dc510
                {
                    // yesBuyer(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_yesBuyer_219(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbe9f7a20
                {
                    // setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9 :=  abi_decode_tuple_t_bytes32t_uint256t_uint256t_uint256t_uint16t_uint8t_uint8t_uint8t_uint8t_uint8(4, calldatasize())
                    fun_setInsertCar_413(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf034936b
                {
                    // observe__4(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__4_947(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint16__to_t_uint16__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf7746e36
                {
                    // cars(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11, ret_12 :=  getter_fun_cars_213(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint16_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16_t_uint8_t_uint8_t_uint8_t_uint8_t_uint8__to_t_uint16_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16_t_uint8_t_uint8_t_uint8_t_uint8_t_uint8__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11, ret_12)
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

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_t_uint16(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint16(value)
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_t_uint8(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint8(value)
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

            function abi_decode_tuple_t_bytes32t_uint256t_uint256t_uint256t_uint16t_uint8t_uint8t_uint8t_uint8t_uint8(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6, value7, value8, value9 {
                if slt(sub(dataEnd, headStart), 320) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
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
                    value4 := abi_decode_t_uint16(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 160
                    value5 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 192
                    value6 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 224
                    value7 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 256
                    value8 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 288
                    value9 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_uint256t_bytes32t_uint256t_uint256t_uint256t_uint16t_uint8t_uint8t_uint8t_uint8t_uint8(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10 {
                if slt(sub(dataEnd, headStart), 352) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
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
                    value5 := abi_decode_t_uint16(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 192
                    value6 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 224
                    value7 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 256
                    value8 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 288
                    value9 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 320
                    value10 := abi_decode_t_uint8(add(headStart, offset), dataEnd)
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

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_t_uint16_to_t_uint16_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint16(value))
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

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function abi_encode_tuple_t_uint16__to_t_uint16__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint16_to_t_uint16_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint16_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16_t_uint8_t_uint8_t_uint8_t_uint8_t_uint8__to_t_uint16_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16_t_uint8_t_uint8_t_uint8_t_uint8_t_uint8__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11, value12) -> tail {
                tail := add(headStart, 416)

                abi_encode_t_uint16_to_t_uint16_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

                abi_encode_t_uint256_to_t_uint256_fromStack(value6,  add(headStart, 192))

                abi_encode_t_uint16_to_t_uint16_fromStack(value7,  add(headStart, 224))

                abi_encode_t_uint8_to_t_uint8_fromStack(value8,  add(headStart, 256))

                abi_encode_t_uint8_to_t_uint8_fromStack(value9,  add(headStart, 288))

                abi_encode_t_uint8_to_t_uint8_fromStack(value10,  add(headStart, 320))

                abi_encode_t_uint8_to_t_uint8_fromStack(value11,  add(headStart, 352))

                abi_encode_t_uint8_to_t_uint8_fromStack(value12,  add(headStart, 384))

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16__to_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6) -> tail {
                tail := add(headStart, 224)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

                abi_encode_t_uint16_to_t_uint16_fromStack(value6,  add(headStart, 192))

            }

            function abi_encode_tuple_t_uint256_t_uint16__to_t_uint256_t_uint16__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint16_to_t_uint16_fromStack(value1,  add(headStart, 32))

            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function checked_add_t_uint16(x, y) -> sum {
                x := cleanup_t_uint16(x)
                y := cleanup_t_uint16(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffff, y)) { panic_error() }

                sum := add(x, y)
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error() }

                sum := add(x, y)
            }

            function checked_exp_t_rational_10_by_1_t_uint256(exponent) -> power {
                exponent := cleanup_t_uint256(exponent)

                if gt(exponent, 77) { panic_error() }

                power := exp(10, exponent)
            }

            function checked_mul_t_uint256(x, y) -> product {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x != 0 and y > (maxValue / x)
                if and(iszero(iszero(x)), gt(y, div(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, x))) { panic_error() }

                product := mul(x, y)
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

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_from_storage_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function cleanup_from_storage_t_uint16(value) -> cleaned {
                cleaned := and(value, 0xffff)
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

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint128(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_uint16(value) -> cleaned {
                cleaned := and(value, 0xffff)
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

            function constant_INITIAL_SUPPLY_201() -> ret {
                let expr_190 := 0x2710
                let expr_191 := 0x0a
                let expr_194 := constant_decimals_188()
                let expr_195 := convert_t_uint8_to_t_uint256(expr_194)
                let _3 := convert_t_rational_10_by_1_to_t_uint256(expr_191)
                let expr_196 := checked_exp_t_rational_10_by_1_t_uint256(expr_195)
                let expr_197 := expr_196
                let expr_198 := expr_197
                let expr_199 := checked_mul_t_uint256(convert_t_rational_10000_by_1_to_t_uint256(expr_190), expr_198)

                let expr_200 := expr_199
                let _4 := expr_200

                ret := _4
            }

            function constant_decimals_188() -> ret {
                let expr_187 := 0x12
                let _2 := convert_t_rational_18_by_1_to_t_uint8(expr_187)

                ret := _2
            }

            function constant_name_182() -> ret_mpos {
                let _1_mpos := convert_t_stringliteral_5abbcfd06159bfa2b1d5c037e159ee689272226b0e4d8f307bea4bf292f8f6c5_to_t_string_memory_ptr()

                ret_mpos := _1_mpos
            }

            function constant_symbol_185() -> ret_mpos {
                let _5_mpos := convert_t_stringliteral_929262f89eb81206139cb5542322a1bc0f3e1f0f9a359f736d972609086feff1_to_t_string_memory_ptr()

                ret_mpos := _5_mpos
            }

            function convert_t_address_payable_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function convert_t_rational_0_by_1_to_t_uint16(value) -> converted {
                converted := cleanup_t_uint16(value)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_10000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_10_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
            }

            function convert_t_rational_1_by_1_to_t_uint16(value) -> converted {
                converted := cleanup_t_uint16(value)
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_stringliteral_5abbcfd06159bfa2b1d5c037e159ee689272226b0e4d8f307bea4bf292f8f6c5_to_t_string_memory_ptr() -> converted {
                converted := allocateMemory(64)
                mstore(converted, 8)

                mstore(add(converted, 32), "CarToken")

            }

            function convert_t_stringliteral_929262f89eb81206139cb5542322a1bc0f3e1f0f9a359f736d972609086feff1_to_t_string_memory_ptr() -> converted {
                converted := allocateMemory(64)
                mstore(converted, 3)

                mstore(add(converted, 32), "CAR")

            }

            function convert_t_struct$_Car_$161_storage_to_t_struct$_Car_$161_storage_ptr(value) -> converted {
                converted := value
            }

            function convert_t_struct$_Customer_$130_storage_to_t_struct$_Customer_$130_storage_ptr(value) -> converted {
                converted := value
            }

            function convert_t_uint128_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint128(value)
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(value)
            }

            function convert_t_uint16_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint16(value)
            }

            function convert_t_uint256_to_t_uint128(value) -> converted {
                converted := cleanup_t_uint128(value)
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint8(value)
            }

            function copy_memory_to_memory(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                if gt(i, length)
                {
                    // clear end
                    mstore(add(dst, length), 0)
                }
            }

            function extract_from_storage_value_dynamicsplit_t_address(slot_value, offset) -> value {
                value := cleanup_from_storage_split_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_bytes32(slot_value) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint16(slot_value) -> value {
                value := cleanup_from_storage_t_uint16(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_2t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_16_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_3t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_24_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_4t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_32_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_5t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_40_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_6t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_48_unsigned(slot_value))
            }

            function fun_buyCar_795(vloc__id_538) -> vloc_success_541 {
                let zero_value_for_type_t_bool_132 := zero_value_for_split_t_bool()
                vloc_success_541 := zero_value_for_type_t_bool_132

                let _133 := vloc__id_538
                let expr_544 := _133
                let expr_545 := 0x00
                let expr_546 := gt(cleanup_t_uint256(expr_544), convert_t_rational_0_by_1_to_t_uint256(expr_545))
                let expr_547 := expr_546
                require_helper(expr_547)
                let _134 := 0x03
                let expr_551 := _134
                let _135 := vloc__id_538
                let expr_552 := _135
                let _136 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_551,expr_552)
                let _137_slot := _136
                let expr_553_slot := _137_slot
                let _138 := add(expr_553_slot, 4)
                let _139 := read_from_storage_offset_0_t_uint256(_138)
                let expr_554 := _139
                let expr_555 := 0x00
                let expr_556 := gt(cleanup_t_uint256(expr_554), convert_t_rational_0_by_1_to_t_uint256(expr_555))
                let expr_557 := expr_556
                let expr_570 := expr_557
                if expr_570 {
                    let expr_559 := callvalue()
                    let _140 := 0x05
                    let expr_560 := _140
                    let expr_562 := caller()
                    let _141 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_560,expr_562)
                    let _142 := read_from_storage_offset_0_t_uint256(_141)
                    let expr_563 := _142
                    let expr_564 := checked_add_t_uint256(expr_559, expr_563)

                    let expr_565 := expr_564
                    let expr_566 := expr_565
                    let expr_567 := 0x00
                    let expr_568 := gt(cleanup_t_uint256(expr_566), convert_t_rational_0_by_1_to_t_uint256(expr_567))
                    let expr_569 := expr_568
                    expr_570 := expr_569
                }
                let expr_571 := expr_570
                require_helper(expr_571)
                let expr_576 := callvalue()
                let _143 := 0x05
                let expr_577 := _143
                let expr_579 := caller()
                let _144 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_577,expr_579)
                let _145 := read_from_storage_offset_0_t_uint256(_144)
                let expr_580 := _145
                let expr_581 := checked_add_t_uint256(expr_576, expr_580)

                let expr_582 := expr_581
                let expr_583 := expr_582
                let _146 := 0x03
                let expr_584 := _146
                let _147 := vloc__id_538
                let expr_585 := _147
                let _148 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_584,expr_585)
                let _149_slot := _148
                let expr_586_slot := _149_slot
                let _150 := add(expr_586_slot, 4)
                let _151 := read_from_storage_offset_0_t_uint256(_150)
                let expr_587 := _151
                let expr_588 := iszero(lt(cleanup_t_uint256(expr_583), cleanup_t_uint256(expr_587)))
                let expr_589 := expr_588
                require_helper(expr_589)
                let vloc_customer_593_slot
                let _152 := 0x02
                let expr_596 := _152
                let expr_598 := caller()
                let _153 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(expr_596,expr_598)
                let _154_slot := _153
                let expr_599_slot := _154_slot
                let _155_slot := convert_t_struct$_Customer_$130_storage_to_t_struct$_Customer_$130_storage_ptr(expr_599_slot)
                vloc_customer_593_slot := _155_slot
                let expr_607 := 0x01
                let _156 := convert_t_rational_1_by_1_to_t_uint16(expr_607)
                let _157_slot := vloc_customer_593_slot
                let expr_602_slot := _157_slot
                let _158 := add(expr_602_slot, 3)
                let _159 := _158
                let expr_605 := _159
                let _160 := vloc__id_538
                let expr_604 := _160
                let _161 := mapping_index_access_t_mapping$_t_uint256_$_t_uint16_$_of_t_uint256(expr_605,expr_604)
                let _162 := read_from_storage_offset_0_t_uint16(_161)
                _156 := checked_add_t_uint16(_162, _156)
                update_storage_value_offset_0t_uint16_to_t_uint16(_161, _156)
                let expr_608 := _156
                let expr_613 := 0x01
                let _163 := convert_t_rational_1_by_1_to_t_uint16(expr_613)
                let _164_slot := vloc_customer_593_slot
                let expr_610_slot := _164_slot
                let _165 := add(expr_610_slot, 2)
                let _166 := read_from_storage_offset_0_t_uint16(_165)
                _163 := checked_add_t_uint16(_166, _163)
                update_storage_value_offset_0t_uint16_to_t_uint16(_165, _163)
                let expr_614 := _163
                let expr_620 := 0x01
                let _167 := convert_t_rational_1_by_1_to_t_uint16(expr_620)
                let _168 := 0x03
                let expr_616 := _168
                let _169 := vloc__id_538
                let expr_617 := _169
                let _170 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_616,expr_617)
                let _171_slot := _170
                let expr_618_slot := _171_slot
                let _172 := add(expr_618_slot, 0)
                let _173 := read_from_storage_offset_0_t_uint16(_172)
                _167 := checked_add_t_uint16(_173, _167)
                update_storage_value_offset_0t_uint16_to_t_uint16(_172, _167)
                let expr_621 := _167
                let expr_624 := callvalue()
                let _174 := 0x05
                let expr_625 := _174
                let expr_627 := caller()
                let _175 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_625,expr_627)
                let _176 := read_from_storage_offset_0_t_uint256(_175)
                let expr_628 := _176
                let expr_629 := checked_add_t_uint256(expr_624, expr_628)

                let expr_630 := expr_629
                let expr_631 := expr_630
                let _177 := 0x03
                let expr_632 := _177
                let _178 := vloc__id_538
                let expr_633 := _178
                let _179 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_632,expr_633)
                let _180_slot := _179
                let expr_634_slot := _180_slot
                let _181 := add(expr_634_slot, 4)
                let _182 := read_from_storage_offset_0_t_uint256(_181)
                let expr_635 := _182
                let expr_636 := gt(cleanup_t_uint256(expr_631), cleanup_t_uint256(expr_635))
                let expr_637 := expr_636
                if expr_637 {
                    let expr_643 := callvalue()
                    let _183 := 0x03
                    let expr_644 := _183
                    let _184 := vloc__id_538
                    let expr_645 := _184
                    let _185 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_644,expr_645)
                    let _186_slot := _185
                    let expr_646_slot := _186_slot
                    let _187 := add(expr_646_slot, 4)
                    let _188 := read_from_storage_offset_0_t_uint256(_187)
                    let expr_647 := _188
                    let expr_648 := checked_sub_t_uint256(expr_643, expr_647)

                    let expr_649 := expr_648
                    let _189 := 0x05
                    let expr_638 := _189
                    let expr_640 := caller()
                    let _190 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_638,expr_640)
                    let _191 := read_from_storage_offset_0_t_uint256(_190)
                    expr_649 := checked_add_t_uint256(_191, expr_649)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_190, expr_649)
                    let expr_650 := expr_649
                }
                let vloc_f_price_655
                let zero_value_for_type_t_uint256_192 := zero_value_for_split_t_uint256()
                vloc_f_price_655 := zero_value_for_type_t_uint256_192
                let _193 := 0x03
                let expr_658 := _193
                let _194 := vloc__id_538
                let expr_659 := _194
                let _195 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_658,expr_659)
                let _196_slot := _195
                let expr_660_slot := _196_slot
                let _197 := add(expr_660_slot, 5)
                let _198 := read_from_storage_offset_0_t_uint256(_197)
                let expr_661 := _198
                let _199 := 0x03
                let expr_662 := _199
                let _200 := vloc__id_538
                let expr_663 := _200
                let _201 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_662,expr_663)
                let _202_slot := _201
                let expr_664_slot := _202_slot
                let _203 := add(expr_664_slot, 0)
                let _204 := read_from_storage_offset_0_t_uint16(_203)
                let expr_665 := _204
                let expr_666 := checked_mul_t_uint256(expr_661, convert_t_uint16_to_t_uint256(expr_665))

                let expr_667 := expr_666
                let _205 := 0x03
                let expr_668 := _205
                let _206 := vloc__id_538
                let expr_669 := _206
                let _207 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_668,expr_669)
                let _208_slot := _207
                let expr_670_slot := _208_slot
                let _209 := add(expr_670_slot, 6)
                let _210 := read_from_storage_offset_0_t_uint256(_209)
                let expr_671 := _210
                let expr_672 := checked_add_t_uint256(expr_667, expr_671)

                let expr_673 := expr_672
                vloc_f_price_655 := expr_673
                let expr_674 := expr_673
                let _211 := vloc_f_price_655
                let expr_676 := _211
                let _212 := 0x03
                let expr_677 := _212
                let _213 := vloc__id_538
                let expr_678 := _213
                let _214 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_677,expr_678)
                let _215_slot := _214
                let expr_679_slot := _215_slot
                let _216 := add(expr_679_slot, 3)
                let _217 := read_from_storage_offset_0_t_uint256(_216)
                let expr_680 := _217
                let expr_681 := gt(cleanup_t_uint256(expr_676), cleanup_t_uint256(expr_680))
                let expr_682 := expr_681
                if expr_682 {
                    let _218 := vloc_f_price_655
                    let expr_687 := _218
                    let _219 := 0x03
                    let expr_683 := _219
                    let _220 := vloc__id_538
                    let expr_684 := _220
                    let _221 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_683,expr_684)
                    let _222_slot := _221
                    let expr_685_slot := _222_slot
                    let _223 := add(expr_685_slot, 4)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_223, expr_687)
                    let expr_688 := expr_687
                }
                let vloc_i_693
                let zero_value_for_type_t_uint256_224 := zero_value_for_split_t_uint256()
                vloc_i_693 := zero_value_for_type_t_uint256_224
                let expr_696 := 0x00
                let _225 := convert_t_rational_0_by_1_to_t_uint256(expr_696)
                vloc_i_693 := _225
                let expr_697 := _225
                for {
                    } 1 {
                }
                {
                    let _226 := vloc_i_693
                    let expr_699 := _226
                    let _227 := 0x03
                    let expr_700 := _227
                    let _228 := vloc__id_538
                    let expr_701 := _228
                    let _229 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_700,expr_701)
                    let _230_slot := _229
                    let expr_702_slot := _230_slot
                    let _231 := add(expr_702_slot, 0)
                    let _232 := read_from_storage_offset_0_t_uint16(_231)
                    let expr_703 := _232
                    let expr_704 := lt(cleanup_t_uint256(expr_699), convert_t_uint16_to_t_uint256(expr_703))
                    let expr_705 := expr_704
                    if iszero(expr_705) { break }
                    let vloc_buyer_707
                    let zero_value_for_type_t_address_233 := zero_value_for_split_t_address()
                    vloc_buyer_707 := zero_value_for_type_t_address_233
                    let _234 := 0x04
                    let expr_710 := _234
                    let _235 := vloc__id_538
                    let expr_711 := _235
                    let _236 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_address_$_$_of_t_uint256(expr_710,expr_711)
                    let _237 := _236
                    let expr_712 := _237
                    let _238 := vloc_i_693
                    let expr_713 := _238
                    let _239 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_712,expr_713)
                    let _240 := read_from_storage_offset_0_t_address(_239)
                    let expr_714 := _240
                    vloc_buyer_707 := expr_714
                    let expr_715 := expr_714
                    let vloc_buy_count_718
                    let zero_value_for_type_t_uint16_241 := zero_value_for_split_t_uint16()
                    vloc_buy_count_718 := zero_value_for_type_t_uint16_241
                    let _242 := 0x03
                    let expr_721 := _242
                    let _243 := vloc__id_538
                    let expr_722 := _243
                    let _244 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_721,expr_722)
                    let _245_slot := _244
                    let expr_723_slot := _245_slot
                    let _246 := add(expr_723_slot, 8)
                    let _247 := _246
                    let expr_724 := _247
                    let _248 := vloc_buyer_707
                    let expr_725 := _248
                    let _249 := mapping_index_access_t_mapping$_t_address_$_t_uint16_$_of_t_address(expr_724,expr_725)
                    let _250 := read_from_storage_offset_0_t_uint16(_249)
                    let expr_726 := _250
                    vloc_buy_count_718 := expr_726
                    let expr_727 := expr_726
                    let vloc_earned_730
                    let zero_value_for_type_t_uint256_251 := zero_value_for_split_t_uint256()
                    vloc_earned_730 := zero_value_for_type_t_uint256_251
                    let _252 := 0x03
                    let expr_733 := _252
                    let _253 := vloc__id_538
                    let expr_734 := _253
                    let _254 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_733,expr_734)
                    let _255_slot := _254
                    let expr_735_slot := _255_slot
                    let _256 := add(expr_735_slot, 5)
                    let _257 := read_from_storage_offset_0_t_uint256(_256)
                    let expr_736 := _257
                    let _258 := vloc_buy_count_718
                    let expr_737 := _258
                    let expr_738 := checked_mul_t_uint256(expr_736, convert_t_uint16_to_t_uint256(expr_737))

                    let expr_739 := expr_738
                    vloc_earned_730 := expr_739
                    let expr_740 := expr_739
                    let _259 := vloc_earned_730
                    let expr_745 := _259
                    let _260 := 0x05
                    let expr_742 := _260
                    let _261 := vloc_buyer_707
                    let expr_743 := _261
                    let _262 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_742,expr_743)
                    let _263 := read_from_storage_offset_0_t_uint256(_262)
                    expr_745 := checked_add_t_uint256(_263, expr_745)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_262, expr_745)
                    let expr_746 := expr_745
                    let _264 := vloc_earned_730
                    let expr_752 := _264
                    let _265 := 0x02
                    let expr_748 := _265
                    let _266 := vloc_buyer_707
                    let expr_749 := _266
                    let _267 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address(expr_748,expr_749)
                    let _268_slot := _267
                    let expr_750_slot := _268_slot
                    let _269 := add(expr_750_slot, 1)
                    let _270 := read_from_storage_offset_0_t_uint256(_269)
                    expr_752 := checked_add_t_uint256(_270, expr_752)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_269, expr_752)
                    let expr_753 := expr_752
                    let _272 := vloc_i_693
                    let _271 := increment_t_uint256(_272)
                    vloc_i_693 := _271
                    let expr_756 := _271
                }
                let _273 := 0x03
                let expr_764 := _273
                let _274 := vloc__id_538
                let expr_765 := _274
                let _275 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_764,expr_765)
                let _276_slot := _275
                let expr_766_slot := _276_slot
                let _277 := add(expr_766_slot, 4)
                let _278 := read_from_storage_offset_0_t_uint256(_277)
                let expr_767 := _278
                let _279 := 0x03
                let expr_768 := _279
                let _280 := vloc__id_538
                let expr_769 := _280
                let _281 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_768,expr_769)
                let _282_slot := _281
                let expr_770_slot := _282_slot
                let _283 := add(expr_770_slot, 5)
                let _284 := read_from_storage_offset_0_t_uint256(_283)
                let expr_771 := _284
                let _285 := 0x03
                let expr_772 := _285
                let _286 := vloc__id_538
                let expr_773 := _286
                let _287 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_772,expr_773)
                let _288_slot := _287
                let expr_774_slot := _288_slot
                let _289 := add(expr_774_slot, 0)
                let _290 := read_from_storage_offset_0_t_uint16(_289)
                let expr_775 := _290
                let expr_776 := checked_mul_t_uint256(expr_771, convert_t_uint16_to_t_uint256(expr_775))

                let expr_777 := expr_776
                let expr_778 := checked_sub_t_uint256(expr_767, expr_777)

                let expr_779 := expr_778
                let _291 := 0x05
                let expr_761 := _291
                let _292 := read_from_storage_offset_0_t_address(0x01)
                let expr_762 := _292
                let _293 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_761,expr_762)
                let _294 := read_from_storage_offset_0_t_uint256(_293)
                expr_779 := checked_add_t_uint256(_294, expr_779)
                update_storage_value_offset_0t_uint256_to_t_uint256(_293, expr_779)
                let expr_780 := expr_779
                let expr_789 := 0x01
                let _295 := convert_t_rational_1_by_1_to_t_uint16(expr_789)
                let _296 := 0x03
                let expr_782 := _296
                let _297 := vloc__id_538
                let expr_783 := _297
                let _298 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_782,expr_783)
                let _299_slot := _298
                let expr_784_slot := _299_slot
                let _300 := add(expr_784_slot, 8)
                let _301 := _300
                let expr_785 := _301
                let expr_787 := caller()
                let _302 := mapping_index_access_t_mapping$_t_address_$_t_uint16_$_of_t_address_payable(expr_785,expr_787)
                let _303 := read_from_storage_offset_0_t_uint16(_302)
                _295 := checked_add_t_uint16(_303, _295)
                update_storage_value_offset_0t_uint16_to_t_uint16(_302, _295)
                let expr_790 := _295
                let expr_792 := 0x01
                vloc_success_541 := expr_792
                leave

            }

            function fun_convert_877(vloc_amount_864, vloc_conversionRate_866) -> vloc_convertedAmount_869 {
                let zero_value_for_type_t_uint256_324 := zero_value_for_split_t_uint256()
                vloc_convertedAmount_869 := zero_value_for_type_t_uint256_324

                let _325 := vloc_amount_864
                let expr_871 := _325
                let _326 := vloc_conversionRate_866
                let expr_872 := _326
                let expr_873 := checked_mul_t_uint256(expr_871, expr_872)

                let expr_874 := expr_873
                vloc_convertedAmount_869 := expr_874
                leave

            }

            function fun_deleteCar_536(vloc__id_510) -> vloc_success_513 {
                let zero_value_for_type_t_bool_122 := zero_value_for_split_t_bool()
                vloc_success_513 := zero_value_for_type_t_bool_122

                let vloc_car_516_slot
                let _123 := 0x03
                let expr_519 := _123
                let _124 := vloc__id_510
                let expr_520 := _124
                let _125 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_519,expr_520)
                let _126_slot := _125
                let expr_521_slot := _126_slot
                let _127_slot := convert_t_struct$_Car_$161_storage_to_t_struct$_Car_$161_storage_ptr(expr_521_slot)
                vloc_car_516_slot := _127_slot
                let _128_slot := vloc_car_516_slot
                let expr_524_slot := _128_slot
                let _129 := add(expr_524_slot, 1)
                let _130 := read_from_storage_offset_0_t_uint256(_129)
                let expr_525 := _130
                let _131 := vloc__id_510
                let expr_526 := _131
                let expr_527 := eq(cleanup_t_uint256(expr_525), cleanup_t_uint256(expr_526))
                let expr_528 := expr_527
                if expr_528 {
                    let expr_529 := 0x01
                    vloc_success_513 := expr_529
                    leave
                }
                let expr_533 := 0x00
                vloc_success_513 := expr_533
                leave

            }

            function fun_observe__10_1022(vloc__id_1011) -> vloc__1014 {
                let zero_value_for_type_t_bytes32_418 := zero_value_for_split_t_bytes32()
                vloc__1014 := zero_value_for_type_t_bytes32_418

                let _419 := 0x03
                let expr_1016 := _419
                let _420 := vloc__id_1011
                let expr_1017 := _420
                let _421 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_1016,expr_1017)
                let _422_slot := _421
                let expr_1018_slot := _422_slot
                let _423 := add(expr_1018_slot, 2)
                let _424 := read_from_storage_offset_0_t_bytes32(_423)
                let expr_1019 := _424
                vloc__1014 := expr_1019
                leave

            }

            function fun_observe__11_1030() -> vloc__1025 {
                let zero_value_for_type_t_uint256_425 := zero_value_for_split_t_uint256()
                vloc__1025 := zero_value_for_type_t_uint256_425

                let _426 := read_from_storage_offset_0_t_uint256(0x07)
                let expr_1027 := _426
                vloc__1025 := expr_1027
                leave

            }

            function fun_observe__1_893(vloc__id_879) -> vloc__882 {
                let zero_value_for_type_t_uint16_327 := zero_value_for_split_t_uint16()
                vloc__882 := zero_value_for_type_t_uint16_327

                let _328 := 0x02
                let expr_884 := _328
                let expr_886 := caller()
                let _329 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(expr_884,expr_886)
                let _330_slot := _329
                let expr_887_slot := _330_slot
                let _331 := add(expr_887_slot, 3)
                let _332 := _331
                let expr_888 := _332
                let _333 := vloc__id_879
                let expr_889 := _333
                let _334 := mapping_index_access_t_mapping$_t_uint256_$_t_uint16_$_of_t_uint256(expr_888,expr_889)
                let _335 := read_from_storage_offset_0_t_uint16(_334)
                let expr_890 := _335
                vloc__882 := expr_890
                leave

            }

            function fun_observe__2_921() -> vloc__earned_896, vloc__c_num_898 {
                let zero_value_for_type_t_uint256_336 := zero_value_for_split_t_uint256()
                vloc__earned_896 := zero_value_for_type_t_uint256_336
                let zero_value_for_type_t_uint16_337 := zero_value_for_split_t_uint16()
                vloc__c_num_898 := zero_value_for_type_t_uint16_337

                let _338 := 0x02
                let expr_901 := _338
                let expr_903 := caller()
                let _339 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(expr_901,expr_903)
                let _340_slot := _339
                let expr_904_slot := _340_slot
                let _341 := add(expr_904_slot, 1)
                let _342 := read_from_storage_offset_0_t_uint256(_341)
                let expr_905 := _342
                vloc__earned_896 := expr_905
                let expr_906 := expr_905
                let _343 := 0x02
                let expr_909 := _343
                let expr_911 := caller()
                let _344 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(expr_909,expr_911)
                let _345_slot := _344
                let expr_912_slot := _345_slot
                let _346 := add(expr_912_slot, 2)
                let _347 := read_from_storage_offset_0_t_uint16(_346)
                let expr_913 := _347
                vloc__c_num_898 := expr_913
                let expr_914 := expr_913
                let _348 := vloc__earned_896
                let expr_916 := _348
                let expr_918_component_1 := expr_916
                let _349 := vloc__c_num_898
                let expr_917 := _349
                let expr_918_component_2 := expr_917
                vloc__earned_896 := expr_918_component_1
                vloc__c_num_898 := expr_918_component_2
                leave

            }

            function fun_observe__3_934(vloc__address_923) -> vloc__926 {
                let zero_value_for_type_t_uint256_350 := zero_value_for_split_t_uint256()
                vloc__926 := zero_value_for_type_t_uint256_350

                let _351 := 0x02
                let expr_928 := _351
                let _352 := vloc__address_923
                let expr_929 := _352
                let _353 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address(expr_928,expr_929)
                let _354_slot := _353
                let expr_930_slot := _354_slot
                let _355 := add(expr_930_slot, 1)
                let _356 := read_from_storage_offset_0_t_uint256(_355)
                let expr_931 := _356
                vloc__926 := expr_931
                leave

            }

            function fun_observe__4_947(vloc__address_936) -> vloc__939 {
                let zero_value_for_type_t_uint16_357 := zero_value_for_split_t_uint16()
                vloc__939 := zero_value_for_type_t_uint16_357

                let _358 := 0x02
                let expr_941 := _358
                let _359 := vloc__address_936
                let expr_942 := _359
                let _360 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address(expr_941,expr_942)
                let _361_slot := _360
                let expr_943_slot := _361_slot
                let _362 := add(expr_943_slot, 2)
                let _363 := read_from_storage_offset_0_t_uint16(_362)
                let expr_944 := _363
                vloc__939 := expr_944
                leave

            }

            function fun_observe__6_959(vloc_addr_949) -> vloc__952 {
                let zero_value_for_type_t_uint256_364 := zero_value_for_split_t_uint256()
                vloc__952 := zero_value_for_type_t_uint256_364

                let _365 := 0x05
                let expr_954 := _365
                let _366 := vloc_addr_949
                let expr_955 := _366
                let _367 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_954,expr_955)
                let _368 := read_from_storage_offset_0_t_uint256(_367)
                let expr_956 := _368
                vloc__952 := expr_956
                leave

            }

            function fun_observe__8_1009(vloc__id_961) -> vloc__964, vloc__966, vloc__968, vloc__970, vloc__972, vloc__974, vloc__976 {
                let zero_value_for_type_t_uint256_369 := zero_value_for_split_t_uint256()
                vloc__964 := zero_value_for_type_t_uint256_369
                let zero_value_for_type_t_bytes32_370 := zero_value_for_split_t_bytes32()
                vloc__966 := zero_value_for_type_t_bytes32_370
                let zero_value_for_type_t_uint256_371 := zero_value_for_split_t_uint256()
                vloc__968 := zero_value_for_type_t_uint256_371
                let zero_value_for_type_t_uint256_372 := zero_value_for_split_t_uint256()
                vloc__970 := zero_value_for_type_t_uint256_372
                let zero_value_for_type_t_uint256_373 := zero_value_for_split_t_uint256()
                vloc__972 := zero_value_for_type_t_uint256_373
                let zero_value_for_type_t_uint256_374 := zero_value_for_split_t_uint256()
                vloc__974 := zero_value_for_type_t_uint256_374
                let zero_value_for_type_t_uint16_375 := zero_value_for_split_t_uint16()
                vloc__976 := zero_value_for_type_t_uint16_375

                let _376 := 0x03
                let expr_978 := _376
                let _377 := vloc__id_961
                let expr_979 := _377
                let _378 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_978,expr_979)
                let _379_slot := _378
                let expr_980_slot := _379_slot
                let _380 := add(expr_980_slot, 1)
                let _381 := read_from_storage_offset_0_t_uint256(_380)
                let expr_981 := _381
                let expr_1006_component_1 := expr_981
                let _382 := 0x03
                let expr_982 := _382
                let _383 := vloc__id_961
                let expr_983 := _383
                let _384 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_982,expr_983)
                let _385_slot := _384
                let expr_984_slot := _385_slot
                let _386 := add(expr_984_slot, 2)
                let _387 := read_from_storage_offset_0_t_bytes32(_386)
                let expr_985 := _387
                let expr_1006_component_2 := expr_985
                let _388 := 0x03
                let expr_986 := _388
                let _389 := vloc__id_961
                let expr_987 := _389
                let _390 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_986,expr_987)
                let _391_slot := _390
                let expr_988_slot := _391_slot
                let _392 := add(expr_988_slot, 3)
                let _393 := read_from_storage_offset_0_t_uint256(_392)
                let expr_989 := _393
                let expr_1006_component_3 := expr_989
                let _394 := 0x03
                let expr_990 := _394
                let _395 := vloc__id_961
                let expr_991 := _395
                let _396 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_990,expr_991)
                let _397_slot := _396
                let expr_992_slot := _397_slot
                let _398 := add(expr_992_slot, 4)
                let _399 := read_from_storage_offset_0_t_uint256(_398)
                let expr_993 := _399
                let expr_1006_component_4 := expr_993
                let _400 := 0x03
                let expr_994 := _400
                let _401 := vloc__id_961
                let expr_995 := _401
                let _402 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_994,expr_995)
                let _403_slot := _402
                let expr_996_slot := _403_slot
                let _404 := add(expr_996_slot, 5)
                let _405 := read_from_storage_offset_0_t_uint256(_404)
                let expr_997 := _405
                let expr_1006_component_5 := expr_997
                let _406 := 0x03
                let expr_998 := _406
                let _407 := vloc__id_961
                let expr_999 := _407
                let _408 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_998,expr_999)
                let _409_slot := _408
                let expr_1000_slot := _409_slot
                let _410 := add(expr_1000_slot, 6)
                let _411 := read_from_storage_offset_0_t_uint256(_410)
                let expr_1001 := _411
                let expr_1006_component_6 := expr_1001
                let _412 := 0x03
                let expr_1002 := _412
                let _413 := vloc__id_961
                let expr_1003 := _413
                let _414 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_1002,expr_1003)
                let _415_slot := _414
                let expr_1004_slot := _415_slot
                let _416 := add(expr_1004_slot, 0)
                let _417 := read_from_storage_offset_0_t_uint16(_416)
                let expr_1005 := _417
                let expr_1006_component_7 := expr_1005
                vloc__964 := expr_1006_component_1
                vloc__966 := expr_1006_component_2
                vloc__968 := expr_1006_component_3
                vloc__970 := expr_1006_component_4
                vloc__972 := expr_1006_component_5
                vloc__974 := expr_1006_component_6
                vloc__976 := expr_1006_component_7
                leave

            }

            function fun_setInsertCar_413(vloc__name_286, vloc__s_price_288, vloc__earning_290, vloc__o_earning_292, vloc__brand_294, vloc__ctype_296, vloc__spd_298, vloc__acc_300, vloc__dur_302, vloc__hndl_304) {

                let vloc__id_308
                let zero_value_for_type_t_uint256_6 := zero_value_for_split_t_uint256()
                vloc__id_308 := zero_value_for_type_t_uint256_6
                let _7 := read_from_storage_offset_0_t_uint256(0x07)
                let expr_311 := _7
                vloc__id_308 := expr_311
                let expr_312 := expr_311
                let _8 := vloc__id_308
                let expr_318 := _8
                let _9 := 0x03
                let expr_314 := _9
                let _10 := vloc__id_308
                let expr_315 := _10
                let _11 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_314,expr_315)
                let _12_slot := _11
                let expr_316_slot := _12_slot
                let _13 := add(expr_316_slot, 1)
                update_storage_value_offset_0t_uint256_to_t_uint256(_13, expr_318)
                let expr_319 := expr_318
                let _14 := vloc__name_286
                let expr_325 := _14
                let _15 := 0x03
                let expr_321 := _15
                let _16 := vloc__id_308
                let expr_322 := _16
                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_321,expr_322)
                let _18_slot := _17
                let expr_323_slot := _18_slot
                let _19 := add(expr_323_slot, 2)
                update_storage_value_offset_0t_bytes32_to_t_bytes32(_19, expr_325)
                let expr_326 := expr_325
                let _20 := vloc__s_price_288
                let expr_332 := _20
                let _21 := 0x03
                let expr_328 := _21
                let _22 := vloc__id_308
                let expr_329 := _22
                let _23 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_328,expr_329)
                let _24_slot := _23
                let expr_330_slot := _24_slot
                let _25 := add(expr_330_slot, 3)
                update_storage_value_offset_0t_uint256_to_t_uint256(_25, expr_332)
                let expr_333 := expr_332
                let _26 := vloc__s_price_288
                let expr_339 := _26
                let _27 := 0x03
                let expr_335 := _27
                let _28 := vloc__id_308
                let expr_336 := _28
                let _29 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_335,expr_336)
                let _30_slot := _29
                let expr_337_slot := _30_slot
                let _31 := add(expr_337_slot, 4)
                update_storage_value_offset_0t_uint256_to_t_uint256(_31, expr_339)
                let expr_340 := expr_339
                let _32 := vloc__earning_290
                let expr_346 := _32
                let _33 := 0x03
                let expr_342 := _33
                let _34 := vloc__id_308
                let expr_343 := _34
                let _35 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_342,expr_343)
                let _36_slot := _35
                let expr_344_slot := _36_slot
                let _37 := add(expr_344_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_37, expr_346)
                let expr_347 := expr_346
                let _38 := vloc__o_earning_292
                let expr_353 := _38
                let _39 := 0x03
                let expr_349 := _39
                let _40 := vloc__id_308
                let expr_350 := _40
                let _41 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_349,expr_350)
                let _42_slot := _41
                let expr_351_slot := _42_slot
                let _43 := add(expr_351_slot, 6)
                update_storage_value_offset_0t_uint256_to_t_uint256(_43, expr_353)
                let expr_354 := expr_353
                let expr_360 := 0x00
                let _44 := convert_t_rational_0_by_1_to_t_uint16(expr_360)
                let _45 := 0x03
                let expr_356 := _45
                let _46 := vloc__id_308
                let expr_357 := _46
                let _47 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_356,expr_357)
                let _48_slot := _47
                let expr_358_slot := _48_slot
                let _49 := add(expr_358_slot, 0)
                update_storage_value_offset_0t_uint16_to_t_uint16(_49, _44)
                let expr_361 := _44
                let _50 := vloc__brand_294
                let expr_367 := _50
                let _51 := 0x03
                let expr_363 := _51
                let _52 := vloc__id_308
                let expr_364 := _52
                let _53 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_363,expr_364)
                let _54_slot := _53
                let expr_365_slot := _54_slot
                let _55 := add(expr_365_slot, 7)
                update_storage_value_offset_0t_uint16_to_t_uint16(_55, expr_367)
                let expr_368 := expr_367
                let _56 := vloc__ctype_296
                let expr_374 := _56
                let _57 := 0x03
                let expr_370 := _57
                let _58 := vloc__id_308
                let expr_371 := _58
                let _59 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_370,expr_371)
                let _60_slot := _59
                let expr_372_slot := _60_slot
                let _61 := add(expr_372_slot, 7)
                update_storage_value_offset_2t_uint8_to_t_uint8(_61, expr_374)
                let expr_375 := expr_374
                let _62 := vloc__spd_298
                let expr_381 := _62
                let _63 := 0x03
                let expr_377 := _63
                let _64 := vloc__id_308
                let expr_378 := _64
                let _65 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_377,expr_378)
                let _66_slot := _65
                let expr_379_slot := _66_slot
                let _67 := add(expr_379_slot, 7)
                update_storage_value_offset_3t_uint8_to_t_uint8(_67, expr_381)
                let expr_382 := expr_381
                let _68 := vloc__acc_300
                let expr_388 := _68
                let _69 := 0x03
                let expr_384 := _69
                let _70 := vloc__id_308
                let expr_385 := _70
                let _71 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_384,expr_385)
                let _72_slot := _71
                let expr_386_slot := _72_slot
                let _73 := add(expr_386_slot, 7)
                update_storage_value_offset_4t_uint8_to_t_uint8(_73, expr_388)
                let expr_389 := expr_388
                let _74 := vloc__dur_302
                let expr_395 := _74
                let _75 := 0x03
                let expr_391 := _75
                let _76 := vloc__id_308
                let expr_392 := _76
                let _77 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_391,expr_392)
                let _78_slot := _77
                let expr_393_slot := _78_slot
                let _79 := add(expr_393_slot, 7)
                update_storage_value_offset_5t_uint8_to_t_uint8(_79, expr_395)
                let expr_396 := expr_395
                let _80 := vloc__hndl_304
                let expr_402 := _80
                let _81 := 0x03
                let expr_398 := _81
                let _82 := vloc__id_308
                let expr_399 := _82
                let _83 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_398,expr_399)
                let _84_slot := _83
                let expr_400_slot := _84_slot
                let _85 := add(expr_400_slot, 7)
                update_storage_value_offset_6t_uint8_to_t_uint8(_85, expr_402)
                let expr_403 := expr_402
                let _86 := read_from_storage_offset_0_t_uint256(0x07)
                let expr_406 := _86
                let expr_407 := 0x01
                let expr_408 := checked_add_t_uint256(expr_406, convert_t_rational_1_by_1_to_t_uint256(expr_407))

                let expr_409 := expr_408
                update_storage_value_offset_0t_uint256_to_t_uint256(0x07, expr_409)
                let expr_410 := expr_409

            }

            function fun_updateCar_508(vloc__id_415, vloc__name_417, vloc__s_price_419, vloc__earning_421, vloc__o_earning_423, vloc__brand_425, vloc__ctype_427, vloc__spd_429, vloc__acc_431, vloc__dur_433, vloc__hndl_435) {

                let vloc_car_439_slot
                let _87 := 0x03
                let expr_442 := _87
                let _88 := vloc__id_415
                let expr_443 := _88
                let _89 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_442,expr_443)
                let _90_slot := _89
                let expr_444_slot := _90_slot
                let _91_slot := convert_t_struct$_Car_$161_storage_to_t_struct$_Car_$161_storage_ptr(expr_444_slot)
                vloc_car_439_slot := _91_slot
                let _92 := vloc__name_417
                let expr_450 := _92
                let _93_slot := vloc_car_439_slot
                let expr_447_slot := _93_slot
                let _94 := add(expr_447_slot, 2)
                update_storage_value_offset_0t_bytes32_to_t_bytes32(_94, expr_450)
                let expr_451 := expr_450
                let _95 := vloc__s_price_419
                let expr_456 := _95
                let _96_slot := vloc_car_439_slot
                let expr_453_slot := _96_slot
                let _97 := add(expr_453_slot, 3)
                update_storage_value_offset_0t_uint256_to_t_uint256(_97, expr_456)
                let expr_457 := expr_456
                let _98 := vloc__earning_421
                let expr_462 := _98
                let _99_slot := vloc_car_439_slot
                let expr_459_slot := _99_slot
                let _100 := add(expr_459_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_100, expr_462)
                let expr_463 := expr_462
                let _101 := vloc__o_earning_423
                let expr_468 := _101
                let _102_slot := vloc_car_439_slot
                let expr_465_slot := _102_slot
                let _103 := add(expr_465_slot, 6)
                update_storage_value_offset_0t_uint256_to_t_uint256(_103, expr_468)
                let expr_469 := expr_468
                let _104 := vloc__brand_425
                let expr_474 := _104
                let _105_slot := vloc_car_439_slot
                let expr_471_slot := _105_slot
                let _106 := add(expr_471_slot, 7)
                update_storage_value_offset_0t_uint16_to_t_uint16(_106, expr_474)
                let expr_475 := expr_474
                let _107 := vloc__ctype_427
                let expr_480 := _107
                let _108_slot := vloc_car_439_slot
                let expr_477_slot := _108_slot
                let _109 := add(expr_477_slot, 7)
                update_storage_value_offset_2t_uint8_to_t_uint8(_109, expr_480)
                let expr_481 := expr_480
                let _110 := vloc__spd_429
                let expr_486 := _110
                let _111_slot := vloc_car_439_slot
                let expr_483_slot := _111_slot
                let _112 := add(expr_483_slot, 7)
                update_storage_value_offset_3t_uint8_to_t_uint8(_112, expr_486)
                let expr_487 := expr_486
                let _113 := vloc__acc_431
                let expr_492 := _113
                let _114_slot := vloc_car_439_slot
                let expr_489_slot := _114_slot
                let _115 := add(expr_489_slot, 7)
                update_storage_value_offset_4t_uint8_to_t_uint8(_115, expr_492)
                let expr_493 := expr_492
                let _116 := vloc__dur_433
                let expr_498 := _116
                let _117_slot := vloc_car_439_slot
                let expr_495_slot := _117_slot
                let _118 := add(expr_495_slot, 7)
                update_storage_value_offset_5t_uint8_to_t_uint8(_118, expr_498)
                let expr_499 := expr_498
                let _119 := vloc__hndl_435
                let expr_504 := _119
                let _120_slot := vloc_car_439_slot
                let expr_501_slot := _120_slot
                let _121 := add(expr_501_slot, 7)
                update_storage_value_offset_6t_uint8_to_t_uint8(_121, expr_504)
                let expr_505 := expr_504

            }

            function fun_withdraw_862(vloc__amount_797) -> vloc__800 {
                let zero_value_for_type_t_bool_304 := zero_value_for_split_t_bool()
                vloc__800 := zero_value_for_type_t_bool_304

                let _305 := vloc__amount_797
                let expr_803 := _305
                let expr_804 := 0x00
                let expr_805 := iszero(lt(cleanup_t_uint256(expr_803), convert_t_rational_0_by_1_to_t_uint256(expr_804)))
                let expr_806 := expr_805
                require_helper(expr_806)
                let _306 := vloc__amount_797
                let expr_810 := _306
                let _307 := vloc__amount_797
                let expr_815 := _307
                let expr_816 := convert_t_uint256_to_t_uint128(expr_815)
                let expr_817 := convert_t_uint128_to_t_uint256(expr_816)
                let expr_818 := eq(cleanup_t_uint256(expr_810), cleanup_t_uint256(expr_817))
                let expr_819 := expr_818
                require_helper(expr_819)
                let _308 := 0x05
                let expr_823 := _308
                let expr_825 := caller()
                let _309 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_823,expr_825)
                let _310 := read_from_storage_offset_0_t_uint256(_309)
                let expr_826 := _310
                let _311 := vloc__amount_797
                let expr_827 := _311
                let expr_828 := iszero(lt(cleanup_t_uint256(expr_826), cleanup_t_uint256(expr_827)))
                let expr_829 := expr_828
                require_helper(expr_829)
                let _312 := vloc__amount_797
                let expr_832 := _312
                let expr_833 := 0x00
                let expr_834 := eq(cleanup_t_uint256(expr_832), convert_t_rational_0_by_1_to_t_uint256(expr_833))
                let expr_835 := expr_834
                if expr_835 {
                    let _313 := 0x05
                    let expr_837 := _313
                    let expr_839 := caller()
                    let _314 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_837,expr_839)
                    let _315 := read_from_storage_offset_0_t_uint256(_314)
                    let expr_840 := _315
                    vloc__amount_797 := expr_840
                    let expr_841 := expr_840
                }
                let _316 := vloc__amount_797
                let expr_849 := _316
                let _317 := 0x05
                let expr_845 := _317
                let expr_847 := caller()
                let _318 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_845,expr_847)
                let _319 := read_from_storage_offset_0_t_uint256(_318)
                expr_849 := checked_sub_t_uint256(_319, expr_849)
                update_storage_value_offset_0t_uint256_to_t_uint256(_318, expr_849)
                let expr_850 := expr_849
                let _320 := vloc__amount_797
                let expr_856 := _320
                let _321 := 0x05
                let expr_852 := _321
                let expr_854 := caller()
                let _322 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_852,expr_854)
                let _323 := read_from_storage_offset_0_t_uint256(_322)
                expr_856 := checked_add_t_uint256(_323, expr_856)
                update_storage_value_offset_0t_uint256_to_t_uint256(_322, expr_856)
                let expr_857 := expr_856
                let expr_859 := 0x01
                vloc__800 := expr_859
                leave

            }

            function getter_fun_INITIAL_SUPPLY_201() -> ret_0 {
                ret_0 := constant_INITIAL_SUPPLY_201()
            }

            function getter_fun_cars_213(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11, ret_12 {

                let slot := 3
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint16(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_bytes32(add(slot, 2))

                ret_3 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))

                ret_4 := read_from_storage_split_offset_0_t_uint256(add(slot, 4))

                ret_5 := read_from_storage_split_offset_0_t_uint256(add(slot, 5))

                ret_6 := read_from_storage_split_offset_0_t_uint256(add(slot, 6))

                ret_7 := read_from_storage_split_offset_0_t_uint16(add(slot, 7))

                ret_8 := read_from_storage_split_offset_2_t_uint8(add(slot, 7))

                ret_9 := read_from_storage_split_offset_3_t_uint8(add(slot, 7))

                ret_10 := read_from_storage_split_offset_4_t_uint8(add(slot, 7))

                ret_11 := read_from_storage_split_offset_5_t_uint8(add(slot, 7))

                ret_12 := read_from_storage_split_offset_6_t_uint8(add(slot, 7))

            }

            function getter_fun_decimals_188() -> ret_0 {
                ret_0 := constant_decimals_188()
            }

            function getter_fun_name_182() -> ret_0 {
                ret_0 := constant_name_182()
            }

            function getter_fun_symbol_185() -> ret_0 {
                ret_0 := constant_symbol_185()
            }

            function getter_fun_yesBuyer_219(key_0, key_1) -> ret {

                let slot := 4
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_address_$_$_of_t_uint256(slot, key_0)

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_1)

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function increment_t_uint256(value) -> ret {
                value := cleanup_t_uint256(value)
                if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { panic_error() }
                ret := add(value, 1)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(slot , key) -> dataSlot {
                mstore(0, convert_t_address_payable_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint16_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint16_$_of_t_address_payable(slot , key) -> dataSlot {
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

            function mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_address_$_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_uint16_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function panic_error() {
                invalid()
            }

            function prepare_store_t_bytes32(value) -> ret {
                ret := shift_right_0_unsigned(value)
            }

            function prepare_store_t_uint16(value) -> ret {
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

            function read_from_storage_offset_0_t_bytes32(slot) -> value {
                value := extract_from_storage_value_offset_0t_bytes32(sload(slot))
            }

            function read_from_storage_offset_0_t_uint16(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint16(sload(slot))
            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_split_offset_0_t_bytes32(slot) -> value {
                value := extract_from_storage_value_offset_0t_bytes32(sload(slot))
            }

            function read_from_storage_split_offset_0_t_uint16(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint16(sload(slot))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_split_offset_2_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_2t_uint8(sload(slot))
            }

            function read_from_storage_split_offset_3_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_3t_uint8(sload(slot))
            }

            function read_from_storage_split_offset_4_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_4t_uint8(sload(slot))
            }

            function read_from_storage_split_offset_5_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_5t_uint8(sload(slot))
            }

            function read_from_storage_split_offset_6_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_6t_uint8(sload(slot))
            }

            function read_from_storage_value_type_dynamicsplit__t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamicsplit_t_address(sload(slot), offset)
            }

            function require_helper(condition) {
                if iszero(condition) { revert(0, 0) }
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function shift_left_16(value) -> newValue {
                newValue :=

                shl(16, value)

            }

            function shift_left_24(value) -> newValue {
                newValue :=

                shl(24, value)

            }

            function shift_left_32(value) -> newValue {
                newValue :=

                shl(32, value)

            }

            function shift_left_40(value) -> newValue {
                newValue :=

                shl(40, value)

            }

            function shift_left_48(value) -> newValue {
                newValue :=

                shl(48, value)

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

            function shift_right_24_unsigned(value) -> newValue {
                newValue :=

                shr(24, value)

            }

            function shift_right_32_unsigned(value) -> newValue {
                newValue :=

                shr(32, value)

            }

            function shift_right_40_unsigned(value) -> newValue {
                newValue :=

                shr(40, value)

            }

            function shift_right_48_unsigned(value) -> newValue {
                newValue :=

                shr(48, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function update_byte_slice_1_shift_2(value, toInsert) -> result {
                let mask := 16711680
                toInsert := shift_left_16(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_1_shift_3(value, toInsert) -> result {
                let mask := 0xff000000
                toInsert := shift_left_24(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_1_shift_4(value, toInsert) -> result {
                let mask := 0xff00000000
                toInsert := shift_left_32(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_1_shift_5(value, toInsert) -> result {
                let mask := 0xff0000000000
                toInsert := shift_left_40(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_1_shift_6(value, toInsert) -> result {
                let mask := 0xff000000000000
                toInsert := shift_left_48(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_2_shift_0(value, toInsert) -> result {
                let mask := 65535
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

            function update_storage_value_offset_0t_bytes32_to_t_bytes32(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_bytes32(value)))
            }

            function update_storage_value_offset_0t_uint16_to_t_uint16(slot, value) {
                sstore(slot, update_byte_slice_2_shift_0(sload(slot), prepare_store_t_uint16(value)))
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
            }

            function update_storage_value_offset_2t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_2(sload(slot), prepare_store_t_uint8(value)))
            }

            function update_storage_value_offset_3t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_3(sload(slot), prepare_store_t_uint8(value)))
            }

            function update_storage_value_offset_4t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_4(sload(slot), prepare_store_t_uint8(value)))
            }

            function update_storage_value_offset_5t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_5(sload(slot), prepare_store_t_uint8(value)))
            }

            function update_storage_value_offset_6t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_6(sload(slot), prepare_store_t_uint8(value)))
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint16(value) {
                if iszero(eq(value, cleanup_t_uint16(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function validator_revert_t_uint8(value) {
                if iszero(eq(value, cleanup_t_uint8(value))) { revert(0, 0) }
            }

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint16() -> ret {
                ret := 0
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

        }

    }

}

