/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "EtherRacing_1016" {
    code {
        mstore(64, 128)

        constructor_EtherRacing_1016()

        codecopy(0, dataoffset("EtherRacing_1016_deployed"), datasize("EtherRacing_1016_deployed"))

        return(0, datasize("EtherRacing_1016_deployed"))

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

        function constant_INITIAL_SUPPLY_186() -> ret {
            let expr_175 := 0x2710
            let expr_176 := 0x0a
            let expr_179 := constant_decimals_173()
            let expr_180 := convert_t_uint8_to_t_uint256(expr_179)
            let _3 := convert_t_rational_10_by_1_to_t_uint256(expr_176)
            let expr_181 := checked_exp_t_rational_10_by_1_t_uint256(expr_180)
            let expr_182 := expr_181
            let expr_183 := expr_182
            let expr_184 := checked_mul_t_uint256(convert_t_rational_10000_by_1_to_t_uint256(expr_175), expr_183)

            let expr_185 := expr_184
            let _4 := expr_185

            ret := _4
        }

        function constant_decimals_173() -> ret {
            let expr_172 := 0x12
            let _2 := convert_t_rational_18_by_1_to_t_uint8(expr_172)

            ret := _2
        }

        function constructor_EtherRacing_1016() {

            let expr_258 := 0x00
            let _1 := convert_t_rational_0_by_1_to_t_uint256(expr_258)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _1)
            let expr_259 := _1
            let expr_265 := constant_INITIAL_SUPPLY_186()
            let _5 := 0x05
            let expr_261 := _5
            let expr_263 := origin()
            let _6 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_261,expr_263)
            update_storage_value_offset_0t_uint256_to_t_uint256(_6, expr_265)
            let expr_266 := expr_265

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
    object "EtherRacing_1016_deployed" {
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
                    let ret_0 :=  getter_fun_name_167()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x1aa6b297
                {
                    // observe__1(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__1_878(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint16__to_t_uint16__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2e1a7d4d
                {
                    // withdraw(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_withdraw_847(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2ff2e9dc
                {
                    // INITIAL_SUPPLY()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_INITIAL_SUPPLY_186()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x313ce567
                {
                    // decimals()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_decimals_173()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3cc45596
                {
                    // updateCar(uint256,bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10 :=  abi_decode_tuple_t_uint256t_bytes32t_uint256t_uint256t_uint256t_uint16t_uint8t_uint8t_uint8t_uint8t_uint8(4, calldatasize())
                    fun_updateCar_493(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9, param_10)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3e6b3297
                {
                    // observe__3(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__3_919(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4d664182
                {
                    // observe__10(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_observe__10_1007(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bytes32__to_t_bytes32__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0, ret_1 :=  fun_observe__2_906()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint16__to_t_uint256_t_uint16__fromStack(memPos , ret_0, ret_1)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x60098088
                {
                    // deleteCar(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_deleteCar_521(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x601047f4
                {
                    // observe__11()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__11_1015()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x6c231060
                {
                    // buyCar(uint256)

                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  fun_buyCar_780(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7ecd3aa9
                {
                    // observe__6(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__6_944(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x90a833f2
                {
                    // observe__8(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6 :=  fun_observe__8_994(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16__to_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x95d89b41
                {
                    // symbol()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_symbol_170()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x96e4ee3d
                {
                    // convert(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    let ret_0 :=  fun_convert_862(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa43dc510
                {
                    // yesBuyer(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_yesBuyer_204(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbe9f7a20
                {
                    // setInsertCar(bytes32,uint256,uint256,uint256,uint16,uint8,uint8,uint8,uint8,uint8)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9 :=  abi_decode_tuple_t_bytes32t_uint256t_uint256t_uint256t_uint16t_uint8t_uint8t_uint8t_uint8t_uint8(4, calldatasize())
                    fun_setInsertCar_398(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf034936b
                {
                    // observe__4(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__4_932(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint16__to_t_uint16__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf7746e36
                {
                    // cars(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11, ret_12 :=  getter_fun_cars_198(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16_t_uint16_t_uint8_t_uint8_t_uint8_t_uint8_t_uint8__to_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16_t_uint16_t_uint8_t_uint8_t_uint8_t_uint8_t_uint8__fromStack(memPos , ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11, ret_12)
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

            function abi_encode_tuple_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16_t_uint16_t_uint8_t_uint8_t_uint8_t_uint8_t_uint8__to_t_uint256_t_bytes32_t_uint256_t_uint256_t_uint256_t_uint256_t_uint16_t_uint16_t_uint8_t_uint8_t_uint8_t_uint8_t_uint8__fromStack(headStart , value0, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11, value12) -> tail {
                tail := add(headStart, 416)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                abi_encode_t_uint256_to_t_uint256_fromStack(value4,  add(headStart, 128))

                abi_encode_t_uint256_to_t_uint256_fromStack(value5,  add(headStart, 160))

                abi_encode_t_uint16_to_t_uint16_fromStack(value6,  add(headStart, 192))

                abi_encode_t_uint16_to_t_uint16_fromStack(value7,  add(headStart, 224))

                abi_encode_t_uint8_to_t_uint8_fromStack(value8,  add(headStart, 256))

                abi_encode_t_uint8_to_t_uint8_fromStack(value9,  add(headStart, 288))

                abi_encode_t_uint8_to_t_uint8_fromStack(value10,  add(headStart, 320))

                abi_encode_t_uint8_to_t_uint8_fromStack(value11,  add(headStart, 352))

                abi_encode_t_uint8_to_t_uint8_fromStack(value12,  add(headStart, 384))

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

            function constant_INITIAL_SUPPLY_186() -> ret {
                let expr_175 := 0x2710
                let expr_176 := 0x0a
                let expr_179 := constant_decimals_173()
                let expr_180 := convert_t_uint8_to_t_uint256(expr_179)
                let _3 := convert_t_rational_10_by_1_to_t_uint256(expr_176)
                let expr_181 := checked_exp_t_rational_10_by_1_t_uint256(expr_180)
                let expr_182 := expr_181
                let expr_183 := expr_182
                let expr_184 := checked_mul_t_uint256(convert_t_rational_10000_by_1_to_t_uint256(expr_175), expr_183)

                let expr_185 := expr_184
                let _4 := expr_185

                ret := _4
            }

            function constant_decimals_173() -> ret {
                let expr_172 := 0x12
                let _2 := convert_t_rational_18_by_1_to_t_uint8(expr_172)

                ret := _2
            }

            function constant_name_167() -> ret_mpos {
                let _1_mpos := convert_t_stringliteral_5abbcfd06159bfa2b1d5c037e159ee689272226b0e4d8f307bea4bf292f8f6c5_to_t_string_memory_ptr()

                ret_mpos := _1_mpos
            }

            function constant_symbol_170() -> ret_mpos {
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

            function extract_from_storage_value_offset_2t_uint16(slot_value) -> value {
                value := cleanup_from_storage_t_uint16(shift_right_16_unsigned(slot_value))
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

            function extract_from_storage_value_offset_7t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_56_unsigned(slot_value))
            }

            function extract_from_storage_value_offset_8t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_64_unsigned(slot_value))
            }

            function fun_buyCar_780(vloc__id_523) -> vloc_success_526 {
                let zero_value_for_type_t_bool_132 := zero_value_for_split_t_bool()
                vloc_success_526 := zero_value_for_type_t_bool_132

                let _133 := vloc__id_523
                let expr_529 := _133
                let expr_530 := 0x00
                let expr_531 := gt(cleanup_t_uint256(expr_529), convert_t_rational_0_by_1_to_t_uint256(expr_530))
                let expr_532 := expr_531
                require_helper(expr_532)
                let _134 := 0x03
                let expr_536 := _134
                let _135 := vloc__id_523
                let expr_537 := _135
                let _136 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_536,expr_537)
                let _137_slot := _136
                let expr_538_slot := _137_slot
                let _138 := add(expr_538_slot, 3)
                let _139 := read_from_storage_offset_0_t_uint256(_138)
                let expr_539 := _139
                let expr_540 := 0x00
                let expr_541 := gt(cleanup_t_uint256(expr_539), convert_t_rational_0_by_1_to_t_uint256(expr_540))
                let expr_542 := expr_541
                let expr_555 := expr_542
                if expr_555 {
                    let expr_544 := callvalue()
                    let _140 := 0x05
                    let expr_545 := _140
                    let expr_547 := caller()
                    let _141 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_545,expr_547)
                    let _142 := read_from_storage_offset_0_t_uint256(_141)
                    let expr_548 := _142
                    let expr_549 := checked_add_t_uint256(expr_544, expr_548)

                    let expr_550 := expr_549
                    let expr_551 := expr_550
                    let expr_552 := 0x00
                    let expr_553 := gt(cleanup_t_uint256(expr_551), convert_t_rational_0_by_1_to_t_uint256(expr_552))
                    let expr_554 := expr_553
                    expr_555 := expr_554
                }
                let expr_556 := expr_555
                require_helper(expr_556)
                let expr_561 := callvalue()
                let _143 := 0x05
                let expr_562 := _143
                let expr_564 := caller()
                let _144 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_562,expr_564)
                let _145 := read_from_storage_offset_0_t_uint256(_144)
                let expr_565 := _145
                let expr_566 := checked_add_t_uint256(expr_561, expr_565)

                let expr_567 := expr_566
                let expr_568 := expr_567
                let _146 := 0x03
                let expr_569 := _146
                let _147 := vloc__id_523
                let expr_570 := _147
                let _148 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_569,expr_570)
                let _149_slot := _148
                let expr_571_slot := _149_slot
                let _150 := add(expr_571_slot, 3)
                let _151 := read_from_storage_offset_0_t_uint256(_150)
                let expr_572 := _151
                let expr_573 := iszero(lt(cleanup_t_uint256(expr_568), cleanup_t_uint256(expr_572)))
                let expr_574 := expr_573
                require_helper(expr_574)
                let vloc_customer_578_slot
                let _152 := 0x02
                let expr_581 := _152
                let expr_583 := caller()
                let _153 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(expr_581,expr_583)
                let _154_slot := _153
                let expr_584_slot := _154_slot
                let _155_slot := convert_t_struct$_Customer_$130_storage_to_t_struct$_Customer_$130_storage_ptr(expr_584_slot)
                vloc_customer_578_slot := _155_slot
                let expr_592 := 0x01
                let _156 := convert_t_rational_1_by_1_to_t_uint16(expr_592)
                let _157_slot := vloc_customer_578_slot
                let expr_587_slot := _157_slot
                let _158 := add(expr_587_slot, 3)
                let _159 := _158
                let expr_590 := _159
                let _160 := vloc__id_523
                let expr_589 := _160
                let _161 := mapping_index_access_t_mapping$_t_uint256_$_t_uint16_$_of_t_uint256(expr_590,expr_589)
                let _162 := read_from_storage_offset_0_t_uint16(_161)
                _156 := checked_add_t_uint16(_162, _156)
                update_storage_value_offset_0t_uint16_to_t_uint16(_161, _156)
                let expr_593 := _156
                let expr_598 := 0x01
                let _163 := convert_t_rational_1_by_1_to_t_uint16(expr_598)
                let _164_slot := vloc_customer_578_slot
                let expr_595_slot := _164_slot
                let _165 := add(expr_595_slot, 2)
                let _166 := read_from_storage_offset_0_t_uint16(_165)
                _163 := checked_add_t_uint16(_166, _163)
                update_storage_value_offset_0t_uint16_to_t_uint16(_165, _163)
                let expr_599 := _163
                let expr_605 := 0x01
                let _167 := convert_t_rational_1_by_1_to_t_uint16(expr_605)
                let _168 := 0x03
                let expr_601 := _168
                let _169 := vloc__id_523
                let expr_602 := _169
                let _170 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_601,expr_602)
                let _171_slot := _170
                let expr_603_slot := _171_slot
                let _172 := add(expr_603_slot, 6)
                let _173 := read_from_storage_offset_0_t_uint16(_172)
                _167 := checked_add_t_uint16(_173, _167)
                update_storage_value_offset_0t_uint16_to_t_uint16(_172, _167)
                let expr_606 := _167
                let expr_609 := callvalue()
                let _174 := 0x05
                let expr_610 := _174
                let expr_612 := caller()
                let _175 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_610,expr_612)
                let _176 := read_from_storage_offset_0_t_uint256(_175)
                let expr_613 := _176
                let expr_614 := checked_add_t_uint256(expr_609, expr_613)

                let expr_615 := expr_614
                let expr_616 := expr_615
                let _177 := 0x03
                let expr_617 := _177
                let _178 := vloc__id_523
                let expr_618 := _178
                let _179 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_617,expr_618)
                let _180_slot := _179
                let expr_619_slot := _180_slot
                let _181 := add(expr_619_slot, 3)
                let _182 := read_from_storage_offset_0_t_uint256(_181)
                let expr_620 := _182
                let expr_621 := gt(cleanup_t_uint256(expr_616), cleanup_t_uint256(expr_620))
                let expr_622 := expr_621
                if expr_622 {
                    let expr_628 := callvalue()
                    let _183 := 0x03
                    let expr_629 := _183
                    let _184 := vloc__id_523
                    let expr_630 := _184
                    let _185 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_629,expr_630)
                    let _186_slot := _185
                    let expr_631_slot := _186_slot
                    let _187 := add(expr_631_slot, 3)
                    let _188 := read_from_storage_offset_0_t_uint256(_187)
                    let expr_632 := _188
                    let expr_633 := checked_sub_t_uint256(expr_628, expr_632)

                    let expr_634 := expr_633
                    let _189 := 0x05
                    let expr_623 := _189
                    let expr_625 := caller()
                    let _190 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_623,expr_625)
                    let _191 := read_from_storage_offset_0_t_uint256(_190)
                    expr_634 := checked_add_t_uint256(_191, expr_634)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_190, expr_634)
                    let expr_635 := expr_634
                }
                let vloc_f_price_640
                let zero_value_for_type_t_uint256_192 := zero_value_for_split_t_uint256()
                vloc_f_price_640 := zero_value_for_type_t_uint256_192
                let _193 := 0x03
                let expr_643 := _193
                let _194 := vloc__id_523
                let expr_644 := _194
                let _195 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_643,expr_644)
                let _196_slot := _195
                let expr_645_slot := _196_slot
                let _197 := add(expr_645_slot, 4)
                let _198 := read_from_storage_offset_0_t_uint256(_197)
                let expr_646 := _198
                let _199 := 0x03
                let expr_647 := _199
                let _200 := vloc__id_523
                let expr_648 := _200
                let _201 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_647,expr_648)
                let _202_slot := _201
                let expr_649_slot := _202_slot
                let _203 := add(expr_649_slot, 6)
                let _204 := read_from_storage_offset_0_t_uint16(_203)
                let expr_650 := _204
                let expr_651 := checked_mul_t_uint256(expr_646, convert_t_uint16_to_t_uint256(expr_650))

                let expr_652 := expr_651
                let _205 := 0x03
                let expr_653 := _205
                let _206 := vloc__id_523
                let expr_654 := _206
                let _207 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_653,expr_654)
                let _208_slot := _207
                let expr_655_slot := _208_slot
                let _209 := add(expr_655_slot, 5)
                let _210 := read_from_storage_offset_0_t_uint256(_209)
                let expr_656 := _210
                let expr_657 := checked_add_t_uint256(expr_652, expr_656)

                let expr_658 := expr_657
                vloc_f_price_640 := expr_658
                let expr_659 := expr_658
                let _211 := vloc_f_price_640
                let expr_661 := _211
                let _212 := 0x03
                let expr_662 := _212
                let _213 := vloc__id_523
                let expr_663 := _213
                let _214 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_662,expr_663)
                let _215_slot := _214
                let expr_664_slot := _215_slot
                let _216 := add(expr_664_slot, 2)
                let _217 := read_from_storage_offset_0_t_uint256(_216)
                let expr_665 := _217
                let expr_666 := gt(cleanup_t_uint256(expr_661), cleanup_t_uint256(expr_665))
                let expr_667 := expr_666
                if expr_667 {
                    let _218 := vloc_f_price_640
                    let expr_672 := _218
                    let _219 := 0x03
                    let expr_668 := _219
                    let _220 := vloc__id_523
                    let expr_669 := _220
                    let _221 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_668,expr_669)
                    let _222_slot := _221
                    let expr_670_slot := _222_slot
                    let _223 := add(expr_670_slot, 3)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_223, expr_672)
                    let expr_673 := expr_672
                }
                let vloc_i_678
                let zero_value_for_type_t_uint256_224 := zero_value_for_split_t_uint256()
                vloc_i_678 := zero_value_for_type_t_uint256_224
                let expr_681 := 0x00
                let _225 := convert_t_rational_0_by_1_to_t_uint256(expr_681)
                vloc_i_678 := _225
                let expr_682 := _225
                for {
                    } 1 {
                }
                {
                    let _226 := vloc_i_678
                    let expr_684 := _226
                    let _227 := 0x03
                    let expr_685 := _227
                    let _228 := vloc__id_523
                    let expr_686 := _228
                    let _229 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_685,expr_686)
                    let _230_slot := _229
                    let expr_687_slot := _230_slot
                    let _231 := add(expr_687_slot, 6)
                    let _232 := read_from_storage_offset_0_t_uint16(_231)
                    let expr_688 := _232
                    let expr_689 := lt(cleanup_t_uint256(expr_684), convert_t_uint16_to_t_uint256(expr_688))
                    let expr_690 := expr_689
                    if iszero(expr_690) { break }
                    let vloc_buyer_692
                    let zero_value_for_type_t_address_233 := zero_value_for_split_t_address()
                    vloc_buyer_692 := zero_value_for_type_t_address_233
                    let _234 := 0x04
                    let expr_695 := _234
                    let _235 := vloc__id_523
                    let expr_696 := _235
                    let _236 := mapping_index_access_t_mapping$_t_uint256_$_t_mapping$_t_uint256_$_t_address_$_$_of_t_uint256(expr_695,expr_696)
                    let _237 := _236
                    let expr_697 := _237
                    let _238 := vloc_i_678
                    let expr_698 := _238
                    let _239 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_697,expr_698)
                    let _240 := read_from_storage_offset_0_t_address(_239)
                    let expr_699 := _240
                    vloc_buyer_692 := expr_699
                    let expr_700 := expr_699
                    let vloc_buy_count_703
                    let zero_value_for_type_t_uint16_241 := zero_value_for_split_t_uint16()
                    vloc_buy_count_703 := zero_value_for_type_t_uint16_241
                    let _242 := 0x03
                    let expr_706 := _242
                    let _243 := vloc__id_523
                    let expr_707 := _243
                    let _244 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_706,expr_707)
                    let _245_slot := _244
                    let expr_708_slot := _245_slot
                    let _246 := add(expr_708_slot, 7)
                    let _247 := _246
                    let expr_709 := _247
                    let _248 := vloc_buyer_692
                    let expr_710 := _248
                    let _249 := mapping_index_access_t_mapping$_t_address_$_t_uint16_$_of_t_address(expr_709,expr_710)
                    let _250 := read_from_storage_offset_0_t_uint16(_249)
                    let expr_711 := _250
                    vloc_buy_count_703 := expr_711
                    let expr_712 := expr_711
                    let vloc_earned_715
                    let zero_value_for_type_t_uint256_251 := zero_value_for_split_t_uint256()
                    vloc_earned_715 := zero_value_for_type_t_uint256_251
                    let _252 := 0x03
                    let expr_718 := _252
                    let _253 := vloc__id_523
                    let expr_719 := _253
                    let _254 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_718,expr_719)
                    let _255_slot := _254
                    let expr_720_slot := _255_slot
                    let _256 := add(expr_720_slot, 4)
                    let _257 := read_from_storage_offset_0_t_uint256(_256)
                    let expr_721 := _257
                    let _258 := vloc_buy_count_703
                    let expr_722 := _258
                    let expr_723 := checked_mul_t_uint256(expr_721, convert_t_uint16_to_t_uint256(expr_722))

                    let expr_724 := expr_723
                    vloc_earned_715 := expr_724
                    let expr_725 := expr_724
                    let _259 := vloc_earned_715
                    let expr_730 := _259
                    let _260 := 0x05
                    let expr_727 := _260
                    let _261 := vloc_buyer_692
                    let expr_728 := _261
                    let _262 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_727,expr_728)
                    let _263 := read_from_storage_offset_0_t_uint256(_262)
                    expr_730 := checked_add_t_uint256(_263, expr_730)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_262, expr_730)
                    let expr_731 := expr_730
                    let _264 := vloc_earned_715
                    let expr_737 := _264
                    let _265 := 0x02
                    let expr_733 := _265
                    let _266 := vloc_buyer_692
                    let expr_734 := _266
                    let _267 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address(expr_733,expr_734)
                    let _268_slot := _267
                    let expr_735_slot := _268_slot
                    let _269 := add(expr_735_slot, 1)
                    let _270 := read_from_storage_offset_0_t_uint256(_269)
                    expr_737 := checked_add_t_uint256(_270, expr_737)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_269, expr_737)
                    let expr_738 := expr_737
                    let _272 := vloc_i_678
                    let _271 := increment_t_uint256(_272)
                    vloc_i_678 := _271
                    let expr_741 := _271
                }
                let _273 := 0x03
                let expr_749 := _273
                let _274 := vloc__id_523
                let expr_750 := _274
                let _275 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_749,expr_750)
                let _276_slot := _275
                let expr_751_slot := _276_slot
                let _277 := add(expr_751_slot, 3)
                let _278 := read_from_storage_offset_0_t_uint256(_277)
                let expr_752 := _278
                let _279 := 0x03
                let expr_753 := _279
                let _280 := vloc__id_523
                let expr_754 := _280
                let _281 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_753,expr_754)
                let _282_slot := _281
                let expr_755_slot := _282_slot
                let _283 := add(expr_755_slot, 4)
                let _284 := read_from_storage_offset_0_t_uint256(_283)
                let expr_756 := _284
                let _285 := 0x03
                let expr_757 := _285
                let _286 := vloc__id_523
                let expr_758 := _286
                let _287 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_757,expr_758)
                let _288_slot := _287
                let expr_759_slot := _288_slot
                let _289 := add(expr_759_slot, 6)
                let _290 := read_from_storage_offset_0_t_uint16(_289)
                let expr_760 := _290
                let expr_761 := checked_mul_t_uint256(expr_756, convert_t_uint16_to_t_uint256(expr_760))

                let expr_762 := expr_761
                let expr_763 := checked_sub_t_uint256(expr_752, expr_762)

                let expr_764 := expr_763
                let _291 := 0x05
                let expr_746 := _291
                let _292 := read_from_storage_offset_0_t_address(0x01)
                let expr_747 := _292
                let _293 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_746,expr_747)
                let _294 := read_from_storage_offset_0_t_uint256(_293)
                expr_764 := checked_add_t_uint256(_294, expr_764)
                update_storage_value_offset_0t_uint256_to_t_uint256(_293, expr_764)
                let expr_765 := expr_764
                let expr_774 := 0x01
                let _295 := convert_t_rational_1_by_1_to_t_uint16(expr_774)
                let _296 := 0x03
                let expr_767 := _296
                let _297 := vloc__id_523
                let expr_768 := _297
                let _298 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_767,expr_768)
                let _299_slot := _298
                let expr_769_slot := _299_slot
                let _300 := add(expr_769_slot, 7)
                let _301 := _300
                let expr_770 := _301
                let expr_772 := caller()
                let _302 := mapping_index_access_t_mapping$_t_address_$_t_uint16_$_of_t_address_payable(expr_770,expr_772)
                let _303 := read_from_storage_offset_0_t_uint16(_302)
                _295 := checked_add_t_uint16(_303, _295)
                update_storage_value_offset_0t_uint16_to_t_uint16(_302, _295)
                let expr_775 := _295
                let expr_777 := 0x01
                vloc_success_526 := expr_777
                leave

            }

            function fun_convert_862(vloc_amount_849, vloc_conversionRate_851) -> vloc_convertedAmount_854 {
                let zero_value_for_type_t_uint256_324 := zero_value_for_split_t_uint256()
                vloc_convertedAmount_854 := zero_value_for_type_t_uint256_324

                let _325 := vloc_amount_849
                let expr_856 := _325
                let _326 := vloc_conversionRate_851
                let expr_857 := _326
                let expr_858 := checked_mul_t_uint256(expr_856, expr_857)

                let expr_859 := expr_858
                vloc_convertedAmount_854 := expr_859
                leave

            }

            function fun_deleteCar_521(vloc__id_495) -> vloc_success_498 {
                let zero_value_for_type_t_bool_122 := zero_value_for_split_t_bool()
                vloc_success_498 := zero_value_for_type_t_bool_122

                let vloc_car_501_slot
                let _123 := 0x03
                let expr_504 := _123
                let _124 := vloc__id_495
                let expr_505 := _124
                let _125 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_504,expr_505)
                let _126_slot := _125
                let expr_506_slot := _126_slot
                let _127_slot := convert_t_struct$_Car_$161_storage_to_t_struct$_Car_$161_storage_ptr(expr_506_slot)
                vloc_car_501_slot := _127_slot
                let _128_slot := vloc_car_501_slot
                let expr_509_slot := _128_slot
                let _129 := add(expr_509_slot, 0)
                let _130 := read_from_storage_offset_0_t_uint256(_129)
                let expr_510 := _130
                let _131 := vloc__id_495
                let expr_511 := _131
                let expr_512 := eq(cleanup_t_uint256(expr_510), cleanup_t_uint256(expr_511))
                let expr_513 := expr_512
                if expr_513 {
                    let expr_514 := 0x01
                    vloc_success_498 := expr_514
                    leave
                }
                let expr_518 := 0x00
                vloc_success_498 := expr_518
                leave

            }

            function fun_observe__10_1007(vloc__id_996) -> vloc__999 {
                let zero_value_for_type_t_bytes32_418 := zero_value_for_split_t_bytes32()
                vloc__999 := zero_value_for_type_t_bytes32_418

                let _419 := 0x03
                let expr_1001 := _419
                let _420 := vloc__id_996
                let expr_1002 := _420
                let _421 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_1001,expr_1002)
                let _422_slot := _421
                let expr_1003_slot := _422_slot
                let _423 := add(expr_1003_slot, 1)
                let _424 := read_from_storage_offset_0_t_bytes32(_423)
                let expr_1004 := _424
                vloc__999 := expr_1004
                leave

            }

            function fun_observe__11_1015() -> vloc__1010 {
                let zero_value_for_type_t_uint256_425 := zero_value_for_split_t_uint256()
                vloc__1010 := zero_value_for_type_t_uint256_425

                let _426 := read_from_storage_offset_0_t_uint256(0x07)
                let expr_1012 := _426
                vloc__1010 := expr_1012
                leave

            }

            function fun_observe__1_878(vloc__id_864) -> vloc__867 {
                let zero_value_for_type_t_uint16_327 := zero_value_for_split_t_uint16()
                vloc__867 := zero_value_for_type_t_uint16_327

                let _328 := 0x02
                let expr_869 := _328
                let expr_871 := caller()
                let _329 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(expr_869,expr_871)
                let _330_slot := _329
                let expr_872_slot := _330_slot
                let _331 := add(expr_872_slot, 3)
                let _332 := _331
                let expr_873 := _332
                let _333 := vloc__id_864
                let expr_874 := _333
                let _334 := mapping_index_access_t_mapping$_t_uint256_$_t_uint16_$_of_t_uint256(expr_873,expr_874)
                let _335 := read_from_storage_offset_0_t_uint16(_334)
                let expr_875 := _335
                vloc__867 := expr_875
                leave

            }

            function fun_observe__2_906() -> vloc__earned_881, vloc__c_num_883 {
                let zero_value_for_type_t_uint256_336 := zero_value_for_split_t_uint256()
                vloc__earned_881 := zero_value_for_type_t_uint256_336
                let zero_value_for_type_t_uint16_337 := zero_value_for_split_t_uint16()
                vloc__c_num_883 := zero_value_for_type_t_uint16_337

                let _338 := 0x02
                let expr_886 := _338
                let expr_888 := caller()
                let _339 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(expr_886,expr_888)
                let _340_slot := _339
                let expr_889_slot := _340_slot
                let _341 := add(expr_889_slot, 1)
                let _342 := read_from_storage_offset_0_t_uint256(_341)
                let expr_890 := _342
                vloc__earned_881 := expr_890
                let expr_891 := expr_890
                let _343 := 0x02
                let expr_894 := _343
                let expr_896 := caller()
                let _344 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address_payable(expr_894,expr_896)
                let _345_slot := _344
                let expr_897_slot := _345_slot
                let _346 := add(expr_897_slot, 2)
                let _347 := read_from_storage_offset_0_t_uint16(_346)
                let expr_898 := _347
                vloc__c_num_883 := expr_898
                let expr_899 := expr_898
                let _348 := vloc__earned_881
                let expr_901 := _348
                let expr_903_component_1 := expr_901
                let _349 := vloc__c_num_883
                let expr_902 := _349
                let expr_903_component_2 := expr_902
                vloc__earned_881 := expr_903_component_1
                vloc__c_num_883 := expr_903_component_2
                leave

            }

            function fun_observe__3_919(vloc__address_908) -> vloc__911 {
                let zero_value_for_type_t_uint256_350 := zero_value_for_split_t_uint256()
                vloc__911 := zero_value_for_type_t_uint256_350

                let _351 := 0x02
                let expr_913 := _351
                let _352 := vloc__address_908
                let expr_914 := _352
                let _353 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address(expr_913,expr_914)
                let _354_slot := _353
                let expr_915_slot := _354_slot
                let _355 := add(expr_915_slot, 1)
                let _356 := read_from_storage_offset_0_t_uint256(_355)
                let expr_916 := _356
                vloc__911 := expr_916
                leave

            }

            function fun_observe__4_932(vloc__address_921) -> vloc__924 {
                let zero_value_for_type_t_uint16_357 := zero_value_for_split_t_uint16()
                vloc__924 := zero_value_for_type_t_uint16_357

                let _358 := 0x02
                let expr_926 := _358
                let _359 := vloc__address_921
                let expr_927 := _359
                let _360 := mapping_index_access_t_mapping$_t_address_$_t_struct$_Customer_$130_storage_$_of_t_address(expr_926,expr_927)
                let _361_slot := _360
                let expr_928_slot := _361_slot
                let _362 := add(expr_928_slot, 2)
                let _363 := read_from_storage_offset_0_t_uint16(_362)
                let expr_929 := _363
                vloc__924 := expr_929
                leave

            }

            function fun_observe__6_944(vloc_addr_934) -> vloc__937 {
                let zero_value_for_type_t_uint256_364 := zero_value_for_split_t_uint256()
                vloc__937 := zero_value_for_type_t_uint256_364

                let _365 := 0x05
                let expr_939 := _365
                let _366 := vloc_addr_934
                let expr_940 := _366
                let _367 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_939,expr_940)
                let _368 := read_from_storage_offset_0_t_uint256(_367)
                let expr_941 := _368
                vloc__937 := expr_941
                leave

            }

            function fun_observe__8_994(vloc__id_946) -> vloc__949, vloc__951, vloc__953, vloc__955, vloc__957, vloc__959, vloc__961 {
                let zero_value_for_type_t_uint256_369 := zero_value_for_split_t_uint256()
                vloc__949 := zero_value_for_type_t_uint256_369
                let zero_value_for_type_t_bytes32_370 := zero_value_for_split_t_bytes32()
                vloc__951 := zero_value_for_type_t_bytes32_370
                let zero_value_for_type_t_uint256_371 := zero_value_for_split_t_uint256()
                vloc__953 := zero_value_for_type_t_uint256_371
                let zero_value_for_type_t_uint256_372 := zero_value_for_split_t_uint256()
                vloc__955 := zero_value_for_type_t_uint256_372
                let zero_value_for_type_t_uint256_373 := zero_value_for_split_t_uint256()
                vloc__957 := zero_value_for_type_t_uint256_373
                let zero_value_for_type_t_uint256_374 := zero_value_for_split_t_uint256()
                vloc__959 := zero_value_for_type_t_uint256_374
                let zero_value_for_type_t_uint16_375 := zero_value_for_split_t_uint16()
                vloc__961 := zero_value_for_type_t_uint16_375

                let _376 := 0x03
                let expr_963 := _376
                let _377 := vloc__id_946
                let expr_964 := _377
                let _378 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_963,expr_964)
                let _379_slot := _378
                let expr_965_slot := _379_slot
                let _380 := add(expr_965_slot, 0)
                let _381 := read_from_storage_offset_0_t_uint256(_380)
                let expr_966 := _381
                let expr_991_component_1 := expr_966
                let _382 := 0x03
                let expr_967 := _382
                let _383 := vloc__id_946
                let expr_968 := _383
                let _384 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_967,expr_968)
                let _385_slot := _384
                let expr_969_slot := _385_slot
                let _386 := add(expr_969_slot, 1)
                let _387 := read_from_storage_offset_0_t_bytes32(_386)
                let expr_970 := _387
                let expr_991_component_2 := expr_970
                let _388 := 0x03
                let expr_971 := _388
                let _389 := vloc__id_946
                let expr_972 := _389
                let _390 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_971,expr_972)
                let _391_slot := _390
                let expr_973_slot := _391_slot
                let _392 := add(expr_973_slot, 2)
                let _393 := read_from_storage_offset_0_t_uint256(_392)
                let expr_974 := _393
                let expr_991_component_3 := expr_974
                let _394 := 0x03
                let expr_975 := _394
                let _395 := vloc__id_946
                let expr_976 := _395
                let _396 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_975,expr_976)
                let _397_slot := _396
                let expr_977_slot := _397_slot
                let _398 := add(expr_977_slot, 3)
                let _399 := read_from_storage_offset_0_t_uint256(_398)
                let expr_978 := _399
                let expr_991_component_4 := expr_978
                let _400 := 0x03
                let expr_979 := _400
                let _401 := vloc__id_946
                let expr_980 := _401
                let _402 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_979,expr_980)
                let _403_slot := _402
                let expr_981_slot := _403_slot
                let _404 := add(expr_981_slot, 4)
                let _405 := read_from_storage_offset_0_t_uint256(_404)
                let expr_982 := _405
                let expr_991_component_5 := expr_982
                let _406 := 0x03
                let expr_983 := _406
                let _407 := vloc__id_946
                let expr_984 := _407
                let _408 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_983,expr_984)
                let _409_slot := _408
                let expr_985_slot := _409_slot
                let _410 := add(expr_985_slot, 5)
                let _411 := read_from_storage_offset_0_t_uint256(_410)
                let expr_986 := _411
                let expr_991_component_6 := expr_986
                let _412 := 0x03
                let expr_987 := _412
                let _413 := vloc__id_946
                let expr_988 := _413
                let _414 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_987,expr_988)
                let _415_slot := _414
                let expr_989_slot := _415_slot
                let _416 := add(expr_989_slot, 6)
                let _417 := read_from_storage_offset_0_t_uint16(_416)
                let expr_990 := _417
                let expr_991_component_7 := expr_990
                vloc__949 := expr_991_component_1
                vloc__951 := expr_991_component_2
                vloc__953 := expr_991_component_3
                vloc__955 := expr_991_component_4
                vloc__957 := expr_991_component_5
                vloc__959 := expr_991_component_6
                vloc__961 := expr_991_component_7
                leave

            }

            function fun_setInsertCar_398(vloc__name_271, vloc__s_price_273, vloc__earning_275, vloc__o_earning_277, vloc__brand_279, vloc__ctype_281, vloc__spd_283, vloc__acc_285, vloc__dur_287, vloc__hndl_289) {

                let vloc__id_293
                let zero_value_for_type_t_uint256_6 := zero_value_for_split_t_uint256()
                vloc__id_293 := zero_value_for_type_t_uint256_6
                let _7 := read_from_storage_offset_0_t_uint256(0x07)
                let expr_296 := _7
                vloc__id_293 := expr_296
                let expr_297 := expr_296
                let _8 := vloc__id_293
                let expr_303 := _8
                let _9 := 0x03
                let expr_299 := _9
                let _10 := vloc__id_293
                let expr_300 := _10
                let _11 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_299,expr_300)
                let _12_slot := _11
                let expr_301_slot := _12_slot
                let _13 := add(expr_301_slot, 0)
                update_storage_value_offset_0t_uint256_to_t_uint256(_13, expr_303)
                let expr_304 := expr_303
                let _14 := vloc__name_271
                let expr_310 := _14
                let _15 := 0x03
                let expr_306 := _15
                let _16 := vloc__id_293
                let expr_307 := _16
                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_306,expr_307)
                let _18_slot := _17
                let expr_308_slot := _18_slot
                let _19 := add(expr_308_slot, 1)
                update_storage_value_offset_0t_bytes32_to_t_bytes32(_19, expr_310)
                let expr_311 := expr_310
                let _20 := vloc__s_price_273
                let expr_317 := _20
                let _21 := 0x03
                let expr_313 := _21
                let _22 := vloc__id_293
                let expr_314 := _22
                let _23 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_313,expr_314)
                let _24_slot := _23
                let expr_315_slot := _24_slot
                let _25 := add(expr_315_slot, 2)
                update_storage_value_offset_0t_uint256_to_t_uint256(_25, expr_317)
                let expr_318 := expr_317
                let _26 := vloc__s_price_273
                let expr_324 := _26
                let _27 := 0x03
                let expr_320 := _27
                let _28 := vloc__id_293
                let expr_321 := _28
                let _29 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_320,expr_321)
                let _30_slot := _29
                let expr_322_slot := _30_slot
                let _31 := add(expr_322_slot, 3)
                update_storage_value_offset_0t_uint256_to_t_uint256(_31, expr_324)
                let expr_325 := expr_324
                let _32 := vloc__earning_275
                let expr_331 := _32
                let _33 := 0x03
                let expr_327 := _33
                let _34 := vloc__id_293
                let expr_328 := _34
                let _35 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_327,expr_328)
                let _36_slot := _35
                let expr_329_slot := _36_slot
                let _37 := add(expr_329_slot, 4)
                update_storage_value_offset_0t_uint256_to_t_uint256(_37, expr_331)
                let expr_332 := expr_331
                let _38 := vloc__o_earning_277
                let expr_338 := _38
                let _39 := 0x03
                let expr_334 := _39
                let _40 := vloc__id_293
                let expr_335 := _40
                let _41 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_334,expr_335)
                let _42_slot := _41
                let expr_336_slot := _42_slot
                let _43 := add(expr_336_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_43, expr_338)
                let expr_339 := expr_338
                let expr_345 := 0x00
                let _44 := convert_t_rational_0_by_1_to_t_uint16(expr_345)
                let _45 := 0x03
                let expr_341 := _45
                let _46 := vloc__id_293
                let expr_342 := _46
                let _47 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_341,expr_342)
                let _48_slot := _47
                let expr_343_slot := _48_slot
                let _49 := add(expr_343_slot, 6)
                update_storage_value_offset_0t_uint16_to_t_uint16(_49, _44)
                let expr_346 := _44
                let _50 := vloc__brand_279
                let expr_352 := _50
                let _51 := 0x03
                let expr_348 := _51
                let _52 := vloc__id_293
                let expr_349 := _52
                let _53 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_348,expr_349)
                let _54_slot := _53
                let expr_350_slot := _54_slot
                let _55 := add(expr_350_slot, 6)
                update_storage_value_offset_2t_uint16_to_t_uint16(_55, expr_352)
                let expr_353 := expr_352
                let _56 := vloc__ctype_281
                let expr_359 := _56
                let _57 := 0x03
                let expr_355 := _57
                let _58 := vloc__id_293
                let expr_356 := _58
                let _59 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_355,expr_356)
                let _60_slot := _59
                let expr_357_slot := _60_slot
                let _61 := add(expr_357_slot, 6)
                update_storage_value_offset_4t_uint8_to_t_uint8(_61, expr_359)
                let expr_360 := expr_359
                let _62 := vloc__spd_283
                let expr_366 := _62
                let _63 := 0x03
                let expr_362 := _63
                let _64 := vloc__id_293
                let expr_363 := _64
                let _65 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_362,expr_363)
                let _66_slot := _65
                let expr_364_slot := _66_slot
                let _67 := add(expr_364_slot, 6)
                update_storage_value_offset_5t_uint8_to_t_uint8(_67, expr_366)
                let expr_367 := expr_366
                let _68 := vloc__acc_285
                let expr_373 := _68
                let _69 := 0x03
                let expr_369 := _69
                let _70 := vloc__id_293
                let expr_370 := _70
                let _71 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_369,expr_370)
                let _72_slot := _71
                let expr_371_slot := _72_slot
                let _73 := add(expr_371_slot, 6)
                update_storage_value_offset_6t_uint8_to_t_uint8(_73, expr_373)
                let expr_374 := expr_373
                let _74 := vloc__dur_287
                let expr_380 := _74
                let _75 := 0x03
                let expr_376 := _75
                let _76 := vloc__id_293
                let expr_377 := _76
                let _77 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_376,expr_377)
                let _78_slot := _77
                let expr_378_slot := _78_slot
                let _79 := add(expr_378_slot, 6)
                update_storage_value_offset_7t_uint8_to_t_uint8(_79, expr_380)
                let expr_381 := expr_380
                let _80 := vloc__hndl_289
                let expr_387 := _80
                let _81 := 0x03
                let expr_383 := _81
                let _82 := vloc__id_293
                let expr_384 := _82
                let _83 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_383,expr_384)
                let _84_slot := _83
                let expr_385_slot := _84_slot
                let _85 := add(expr_385_slot, 6)
                update_storage_value_offset_8t_uint8_to_t_uint8(_85, expr_387)
                let expr_388 := expr_387
                let _86 := read_from_storage_offset_0_t_uint256(0x07)
                let expr_391 := _86
                let expr_392 := 0x01
                let expr_393 := checked_add_t_uint256(expr_391, convert_t_rational_1_by_1_to_t_uint256(expr_392))

                let expr_394 := expr_393
                update_storage_value_offset_0t_uint256_to_t_uint256(0x07, expr_394)
                let expr_395 := expr_394

            }

            function fun_updateCar_493(vloc__id_400, vloc__name_402, vloc__s_price_404, vloc__earning_406, vloc__o_earning_408, vloc__brand_410, vloc__ctype_412, vloc__spd_414, vloc__acc_416, vloc__dur_418, vloc__hndl_420) {

                let vloc_car_424_slot
                let _87 := 0x03
                let expr_427 := _87
                let _88 := vloc__id_400
                let expr_428 := _88
                let _89 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(expr_427,expr_428)
                let _90_slot := _89
                let expr_429_slot := _90_slot
                let _91_slot := convert_t_struct$_Car_$161_storage_to_t_struct$_Car_$161_storage_ptr(expr_429_slot)
                vloc_car_424_slot := _91_slot
                let _92 := vloc__name_402
                let expr_435 := _92
                let _93_slot := vloc_car_424_slot
                let expr_432_slot := _93_slot
                let _94 := add(expr_432_slot, 1)
                update_storage_value_offset_0t_bytes32_to_t_bytes32(_94, expr_435)
                let expr_436 := expr_435
                let _95 := vloc__s_price_404
                let expr_441 := _95
                let _96_slot := vloc_car_424_slot
                let expr_438_slot := _96_slot
                let _97 := add(expr_438_slot, 2)
                update_storage_value_offset_0t_uint256_to_t_uint256(_97, expr_441)
                let expr_442 := expr_441
                let _98 := vloc__earning_406
                let expr_447 := _98
                let _99_slot := vloc_car_424_slot
                let expr_444_slot := _99_slot
                let _100 := add(expr_444_slot, 4)
                update_storage_value_offset_0t_uint256_to_t_uint256(_100, expr_447)
                let expr_448 := expr_447
                let _101 := vloc__o_earning_408
                let expr_453 := _101
                let _102_slot := vloc_car_424_slot
                let expr_450_slot := _102_slot
                let _103 := add(expr_450_slot, 5)
                update_storage_value_offset_0t_uint256_to_t_uint256(_103, expr_453)
                let expr_454 := expr_453
                let _104 := vloc__brand_410
                let expr_459 := _104
                let _105_slot := vloc_car_424_slot
                let expr_456_slot := _105_slot
                let _106 := add(expr_456_slot, 6)
                update_storage_value_offset_2t_uint16_to_t_uint16(_106, expr_459)
                let expr_460 := expr_459
                let _107 := vloc__ctype_412
                let expr_465 := _107
                let _108_slot := vloc_car_424_slot
                let expr_462_slot := _108_slot
                let _109 := add(expr_462_slot, 6)
                update_storage_value_offset_4t_uint8_to_t_uint8(_109, expr_465)
                let expr_466 := expr_465
                let _110 := vloc__spd_414
                let expr_471 := _110
                let _111_slot := vloc_car_424_slot
                let expr_468_slot := _111_slot
                let _112 := add(expr_468_slot, 6)
                update_storage_value_offset_5t_uint8_to_t_uint8(_112, expr_471)
                let expr_472 := expr_471
                let _113 := vloc__acc_416
                let expr_477 := _113
                let _114_slot := vloc_car_424_slot
                let expr_474_slot := _114_slot
                let _115 := add(expr_474_slot, 6)
                update_storage_value_offset_6t_uint8_to_t_uint8(_115, expr_477)
                let expr_478 := expr_477
                let _116 := vloc__dur_418
                let expr_483 := _116
                let _117_slot := vloc_car_424_slot
                let expr_480_slot := _117_slot
                let _118 := add(expr_480_slot, 6)
                update_storage_value_offset_7t_uint8_to_t_uint8(_118, expr_483)
                let expr_484 := expr_483
                let _119 := vloc__hndl_420
                let expr_489 := _119
                let _120_slot := vloc_car_424_slot
                let expr_486_slot := _120_slot
                let _121 := add(expr_486_slot, 6)
                update_storage_value_offset_8t_uint8_to_t_uint8(_121, expr_489)
                let expr_490 := expr_489

            }

            function fun_withdraw_847(vloc__amount_782) -> vloc__785 {
                let zero_value_for_type_t_bool_304 := zero_value_for_split_t_bool()
                vloc__785 := zero_value_for_type_t_bool_304

                let _305 := vloc__amount_782
                let expr_788 := _305
                let expr_789 := 0x00
                let expr_790 := iszero(lt(cleanup_t_uint256(expr_788), convert_t_rational_0_by_1_to_t_uint256(expr_789)))
                let expr_791 := expr_790
                require_helper(expr_791)
                let _306 := vloc__amount_782
                let expr_795 := _306
                let _307 := vloc__amount_782
                let expr_800 := _307
                let expr_801 := convert_t_uint256_to_t_uint128(expr_800)
                let expr_802 := convert_t_uint128_to_t_uint256(expr_801)
                let expr_803 := eq(cleanup_t_uint256(expr_795), cleanup_t_uint256(expr_802))
                let expr_804 := expr_803
                require_helper(expr_804)
                let _308 := 0x05
                let expr_808 := _308
                let expr_810 := caller()
                let _309 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_808,expr_810)
                let _310 := read_from_storage_offset_0_t_uint256(_309)
                let expr_811 := _310
                let _311 := vloc__amount_782
                let expr_812 := _311
                let expr_813 := iszero(lt(cleanup_t_uint256(expr_811), cleanup_t_uint256(expr_812)))
                let expr_814 := expr_813
                require_helper(expr_814)
                let _312 := vloc__amount_782
                let expr_817 := _312
                let expr_818 := 0x00
                let expr_819 := eq(cleanup_t_uint256(expr_817), convert_t_rational_0_by_1_to_t_uint256(expr_818))
                let expr_820 := expr_819
                if expr_820 {
                    let _313 := 0x05
                    let expr_822 := _313
                    let expr_824 := caller()
                    let _314 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_822,expr_824)
                    let _315 := read_from_storage_offset_0_t_uint256(_314)
                    let expr_825 := _315
                    vloc__amount_782 := expr_825
                    let expr_826 := expr_825
                }
                let _316 := vloc__amount_782
                let expr_834 := _316
                let _317 := 0x05
                let expr_830 := _317
                let expr_832 := caller()
                let _318 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_830,expr_832)
                let _319 := read_from_storage_offset_0_t_uint256(_318)
                expr_834 := checked_sub_t_uint256(_319, expr_834)
                update_storage_value_offset_0t_uint256_to_t_uint256(_318, expr_834)
                let expr_835 := expr_834
                let _320 := vloc__amount_782
                let expr_841 := _320
                let _321 := 0x05
                let expr_837 := _321
                let expr_839 := caller()
                let _322 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_837,expr_839)
                let _323 := read_from_storage_offset_0_t_uint256(_322)
                expr_841 := checked_add_t_uint256(_323, expr_841)
                update_storage_value_offset_0t_uint256_to_t_uint256(_322, expr_841)
                let expr_842 := expr_841
                let expr_844 := 0x01
                vloc__785 := expr_844
                leave

            }

            function getter_fun_INITIAL_SUPPLY_186() -> ret_0 {
                ret_0 := constant_INITIAL_SUPPLY_186()
            }

            function getter_fun_cars_198(key_0) -> ret_0, ret_1, ret_2, ret_3, ret_4, ret_5, ret_6, ret_7, ret_8, ret_9, ret_10, ret_11, ret_12 {

                let slot := 3
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Car_$161_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint256(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_bytes32(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_uint256(add(slot, 2))

                ret_3 := read_from_storage_split_offset_0_t_uint256(add(slot, 3))

                ret_4 := read_from_storage_split_offset_0_t_uint256(add(slot, 4))

                ret_5 := read_from_storage_split_offset_0_t_uint256(add(slot, 5))

                ret_6 := read_from_storage_split_offset_0_t_uint16(add(slot, 6))

                ret_7 := read_from_storage_split_offset_2_t_uint16(add(slot, 6))

                ret_8 := read_from_storage_split_offset_4_t_uint8(add(slot, 6))

                ret_9 := read_from_storage_split_offset_5_t_uint8(add(slot, 6))

                ret_10 := read_from_storage_split_offset_6_t_uint8(add(slot, 6))

                ret_11 := read_from_storage_split_offset_7_t_uint8(add(slot, 6))

                ret_12 := read_from_storage_split_offset_8_t_uint8(add(slot, 6))

            }

            function getter_fun_decimals_173() -> ret_0 {
                ret_0 := constant_decimals_173()
            }

            function getter_fun_name_167() -> ret_0 {
                ret_0 := constant_name_167()
            }

            function getter_fun_symbol_170() -> ret_0 {
                ret_0 := constant_symbol_170()
            }

            function getter_fun_yesBuyer_204(key_0, key_1) -> ret {

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

            function read_from_storage_split_offset_2_t_uint16(slot) -> value {
                value := extract_from_storage_value_offset_2t_uint16(sload(slot))
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

            function read_from_storage_split_offset_7_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_7t_uint8(sload(slot))
            }

            function read_from_storage_split_offset_8_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_8t_uint8(sload(slot))
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

            function shift_left_56(value) -> newValue {
                newValue :=

                shl(56, value)

            }

            function shift_left_64(value) -> newValue {
                newValue :=

                shl(64, value)

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

            function shift_right_56_unsigned(value) -> newValue {
                newValue :=

                shr(56, value)

            }

            function shift_right_64_unsigned(value) -> newValue {
                newValue :=

                shr(64, value)

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

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

            function update_byte_slice_1_shift_7(value, toInsert) -> result {
                let mask := 0xff00000000000000
                toInsert := shift_left_56(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_1_shift_8(value, toInsert) -> result {
                let mask := 0xff0000000000000000
                toInsert := shift_left_64(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_2_shift_0(value, toInsert) -> result {
                let mask := 65535
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_byte_slice_2_shift_2(value, toInsert) -> result {
                let mask := 0xffff0000
                toInsert := shift_left_16(toInsert)
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

            function update_storage_value_offset_2t_uint16_to_t_uint16(slot, value) {
                sstore(slot, update_byte_slice_2_shift_2(sload(slot), prepare_store_t_uint16(value)))
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

            function update_storage_value_offset_7t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_7(sload(slot), prepare_store_t_uint8(value)))
            }

            function update_storage_value_offset_8t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_8(sload(slot), prepare_store_t_uint8(value)))
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

