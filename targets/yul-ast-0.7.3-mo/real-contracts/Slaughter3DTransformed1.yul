/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "Slaughter3DTransformed1_583" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_Slaughter3DTransformed1_583()

        codecopy(0, dataoffset("Slaughter3DTransformed1_583_deployed"), datasize("Slaughter3DTransformed1_583_deployed"))

        return(0, datasize("Slaughter3DTransformed1_583_deployed"))

        function checked_mul_t_uint256(x, y) -> product {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)

            // overflow, if x != 0 and y > (maxValue / x)
            if and(iszero(iszero(x)), gt(y, div(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, x))) { panic_error() }

            product := mul(x, y)
        }

        function checked_sub_t_uint8(x, y) -> diff {
            x := cleanup_t_uint8(x)
            y := cleanup_t_uint8(y)

            if lt(x, y) { panic_error() }

            diff := sub(x, y)
        }

        function cleanup_from_storage_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function constant_MAX_PLAYERS_PER_STAGE_30() -> ret {
            let expr_29 := 0x02
            let _2 := convert_t_rational_2_by_1_to_t_uint8(expr_29)

            ret := _2
        }

        function constant_P3D_SHARE_27() -> ret {
            let expr_26 := 0x00
            let _1 := convert_t_rational_0_by_1_to_t_uint256(expr_26)

            ret := _1
        }

        function constructor_Slaughter3DTransformed1_583() {

            let expr_45 := constant_P3D_SHARE_27()
            let expr_46 := constant_MAX_PLAYERS_PER_STAGE_30()
            let expr_47 := 0x01
            let expr_48 := checked_sub_t_uint8(expr_46, convert_t_rational_1_by_1_to_t_uint8(expr_47))

            let expr_49 := expr_48
            let expr_50 := expr_49
            let expr_51 := checked_mul_t_uint256(expr_45, convert_t_uint8_to_t_uint256(expr_50))

            let expr_52 := expr_51
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_52)
            let expr_55 := 0x00
            update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(0x05, expr_55)

            let expr_157 := constant_P3D_SHARE_27()
            let expr_158 := constant_MAX_PLAYERS_PER_STAGE_30()
            let expr_159 := 0x01
            let expr_160 := checked_sub_t_uint8(expr_158, convert_t_rational_1_by_1_to_t_uint8(expr_159))

            let expr_161 := expr_160
            let expr_162 := expr_161
            let expr_163 := checked_mul_t_uint256(expr_157, convert_t_uint8_to_t_uint256(expr_162))

            let expr_164 := expr_163
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_164)
            let expr_165 := expr_164
            let expr_168 := 0x00
            let _3 := convert_t_rational_0_by_1_to_t_uint256(expr_168)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _3)
            let expr_169 := _3
            let expr_175 := 0x00
            let _4 := convert_t_rational_0_by_1_to_t_uint8(expr_175)
            let _5 := 0x08
            let expr_171 := _5
            let _6 := read_from_storage_offset_0_t_uint256(0x0e)
            let expr_172 := _6
            let _7 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_171,expr_172)
            let _8_slot := _7
            let expr_173_slot := _8_slot
            let _9 := add(expr_173_slot, 0)
            update_storage_value_offset_0t_uint8_to_t_uint8(_9, _4)
            let expr_176 := _4
            let expr_182 := 0x00
            let _10 := convert_t_rational_0_by_1_to_t_uint256(expr_182)
            let _11 := 0x08
            let expr_178 := _11
            let _12 := read_from_storage_offset_0_t_uint256(0x0e)
            let expr_179 := _12
            let _13 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_178,expr_179)
            let _14_slot := _13
            let expr_180_slot := _14_slot
            let _15 := add(expr_180_slot, 1)
            update_storage_value_offset_0t_uint256_to_t_uint256(_15, _10)
            let expr_183 := _10
            let expr_189 := 0x00
            let _16 := 0x08
            let expr_185 := _16
            let _17 := read_from_storage_offset_0_t_uint256(0x0e)
            let expr_186 := _17
            let _18 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_185,expr_186)
            let _19_slot := _18
            let expr_187_slot := _19_slot
            let _20 := add(expr_187_slot, 2)
            update_storage_value_offset_0t_bool_to_t_bool(_20, expr_189)
            let expr_190 := expr_189
            let _22 := read_from_storage_offset_0_t_uint256(0x0e)
            let _21 := increment_t_uint256(_22)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x0e, _21)
            let expr_193 := _22

        }

        function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_rational_0_by_1_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(value)
        }

        function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(value)
        }

        function convert_t_rational_2_by_1_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(value)
        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(value)
        }

        function convert_t_uint8_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint8(value)
        }

        function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
            value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
        }

        function increment_t_uint256(value) -> ret {
            value := cleanup_t_uint256(value)
            if gt(value, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe) { panic_error() }
            ret := add(value, 1)
        }

        function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(slot , key) -> dataSlot {
            mstore(0, convert_t_uint256_to_t_uint256(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function panic_error() {
            invalid()
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

        function update_byte_slice_1_shift_0(value, toInsert) -> result {
            let mask := 255
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

        function update_storage_value_offset_0t_bool_to_t_bool(slot, value) {
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(value)))
        }

        function update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value) {
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(value)))
        }

        function update_storage_value_offset_0t_uint8_to_t_uint8(slot, value) {
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(value)))
        }

    }
    object "Slaughter3DTransformed1_583_deployed" {
        code {
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x04c2a0ae
                {
                    // DonateToLosers()

                    abi_decode_tuple_(4, calldatasize())
                    fun_DonateToLosers_128()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x0d874f7a
                {
                    // RefundWaitingLine(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_RefundWaitingLine_72(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2dfc8606
                {
                    // observe__4()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__4_505()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x376fdba1
                {
                    // observe__9()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__9_571()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x39f56550
                {
                    // NextAtLineEnd()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_NextAtLineEnd_80()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3ccfd60b
                {
                    // withdraw()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_withdraw_244()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4eff13dc
                {
                    // OFFER_SIZE()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_OFFER_SIZE_33()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x545c0716
                {
                    // observe__8()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__8_560()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_475()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5e377b51
                {
                    // Jackpot()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_Jackpot_37()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x680478b1
                {
                    // offerAsSacrifice(address)

                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_offerAsSacrifice_206(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x73cf2988
                {
                    // observe__6()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__6_527()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7e487822
                {
                    // ETHtoP3Dbymasternode(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_ETHtoP3Dbymasternode_43(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x845ddcb2
                {
                    // stages(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2 :=  getter_fun_stages_68(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint8_t_uint256_t_bool__to_t_uint8_t_uint256_t_bool__fromStack(memPos , ret_0, ret_1, ret_2)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x92100265
                {
                    // Vanity(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_Vanity_60(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x95dd489b
                {
                    // winningsPerRound()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_winningsPerRound_56()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa0c5c83b
                {
                    // NextInLine()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_NextInLine_78()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa9e4d2ea
                {
                    // observe__3()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__3_490()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbeb7597b
                {
                    // observe__7()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__7_549()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xc24ad463
                {
                    // Refundpot()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_Refundpot_35()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xc3a7b2ad
                {
                    // SPASMfee()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_SPASMfee_39()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd13a73c4
                {
                    // numberOfStages()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_numberOfStages_84()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd988a0f9
                {
                    // Payoutnextrefund()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_Payoutnextrefund_153()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xda704c86
                {
                    // observe__5(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__5_518(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe3b22ff7
                {
                    // observe__1()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__1_460()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xecdc98ee
                {
                    // observe__10()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__10_582()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xefe6c772
                {
                    // MAX_PLAYERS_PER_STAGE()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_MAX_PLAYERS_PER_STAGE_30()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf355aa8f
                {
                    // observe__0()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__0_445()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xfc04c62e
                {
                    // offerAsSacrificeFromVault(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_offerAsSacrificeFromVault_223(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xfe74622a
                {
                    // Loser(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_Loser_76(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
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

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint8_t_uint256_t_bool__to_t_uint8_t_uint256_t_bool__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_bool_to_t_bool_fromStack(value2,  add(headStart, 64))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
            }

            function assert_helper(condition) {
                if iszero(condition) { panic_error() }
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

            function constant_MAX_PLAYERS_PER_STAGE_30() -> ret {
                let expr_29 := 0x02
                let _2 := convert_t_rational_2_by_1_to_t_uint8(expr_29)

                ret := _2
            }

            function constant_OFFER_SIZE_33() -> ret {
                let expr_32 := 0x00
                let _1 := convert_t_rational_0_by_1_to_t_uint256(expr_32)

                ret := _1
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

            function convert_t_rational_0_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(value)
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

            function convert_t_uint8_to_t_uint8(value) -> converted {
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

            function fun_DonateToLosers_128() {

                let expr_113 := callvalue()
                let expr_114 := 0x00
                let expr_115 := gt(cleanup_t_uint256(expr_113), convert_t_rational_0_by_1_to_t_uint256(expr_114))
                let expr_116 := expr_115
                require_helper(expr_116)
                let _3 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_120 := _3
                let expr_123 := callvalue()
                let expr_124 := fun_add_607(expr_120, expr_123)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, expr_124)
                let expr_125 := expr_124

            }

            function fun_Payoutnextrefund_153() {

                let vloc_Pot_132
                let zero_value_for_type_t_uint256_4 := zero_value_for_split_t_uint256()
                vloc_Pot_132 := zero_value_for_type_t_uint256_4
                let _5 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_135 := _5
                vloc_Pot_132 := expr_135
                let expr_136 := expr_135
                let _6 := vloc_Pot_132
                let expr_139 := _6
                let expr_140 := 0x00
                let expr_141 := gt(cleanup_t_uint256(expr_139), convert_t_rational_0_by_1_to_t_uint256(expr_140))
                let expr_142 := expr_141
                require_helper(expr_142)
                let expr_146 := 0x00
                let _7 := convert_t_rational_0_by_1_to_t_uint256(expr_146)
                let _8 := read_from_storage_offset_0_t_uint256(0x00)
                _7 := checked_sub_t_uint256(_8, _7)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _7)
                let expr_147 := _7
                let _10 := read_from_storage_offset_0_t_uint256(0x0b)
                let _9 := increment_t_uint256(_10)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x0b, _9)
                let expr_150 := _10

            }

            function fun_acceptOffer_342(vloc_MN_246) {

                let vloc_stageIndex_250
                let zero_value_for_type_t_uint256_23 := zero_value_for_split_t_uint256()
                vloc_stageIndex_250 := zero_value_for_type_t_uint256_23
                let _24 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_253 := _24
                let expr_254 := 0x01
                let expr_255 := checked_sub_t_uint256(expr_253, convert_t_rational_1_by_1_to_t_uint256(expr_254))

                let expr_256 := expr_255
                vloc_stageIndex_250 := expr_256
                let expr_257 := expr_256
                let _25 := 0x08
                let expr_260 := _25
                let _26 := vloc_stageIndex_250
                let expr_261 := _26
                let _27 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_260,expr_261)
                let _28_slot := _27
                let expr_262_slot := _28_slot
                let _29 := add(expr_262_slot, 0)
                let _30 := read_from_storage_offset_0_t_uint8(_29)
                let expr_263 := _30
                let expr_264 := constant_MAX_PLAYERS_PER_STAGE_30()
                let expr_265 := lt(cleanup_t_uint8(expr_263), cleanup_t_uint8(expr_264))
                let expr_266 := expr_265
                assert_helper(expr_266)
                let vloc_player_270
                let zero_value_for_type_t_address_31 := zero_value_for_split_t_address()
                vloc_player_270 := zero_value_for_type_t_address_31
                let expr_274 := caller()
                let _32 := convert_t_address_payable_to_t_address(expr_274)
                vloc_player_270 := _32
                let expr_275 := _32
                let expr_277 := 0x00
                if expr_277 {
                    let _33 := vloc_player_270
                    let expr_288 := _33
                    let _34 := 0x08
                    let expr_278 := _34
                    let _35 := vloc_stageIndex_250
                    let expr_279 := _35
                    let _36 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_278,expr_279)
                    let _37_slot := _36
                    let expr_280_slot := _37_slot
                    let _38 := add(expr_280_slot, 3)
                    let _39 := _38
                    let expr_281 := _39
                    let _40 := 0x08
                    let expr_282 := _40
                    let _41 := vloc_stageIndex_250
                    let expr_283 := _41
                    let _42 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_282,expr_283)
                    let _43_slot := _42
                    let expr_284_slot := _43_slot
                    let _44 := add(expr_284_slot, 0)
                    let _45 := read_from_storage_offset_0_t_uint8(_44)
                    let expr_285 := _45
                    let _46 := mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_uint8(expr_281,expr_285)
                    let _47_slot := _46
                    let expr_286_slot := _47_slot
                    let _48 := add(expr_286_slot, 0)
                    update_storage_value_offset_0t_address_to_t_address(_48, expr_288)
                    let expr_289 := expr_288
                }
                let _49 := 0x08
                let expr_293 := _49
                let _50 := vloc_stageIndex_250
                let expr_294 := _50
                let _51 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_293,expr_294)
                let _52_slot := _51
                let expr_295_slot := _52_slot
                let _53 := add(expr_295_slot, 0)
                let _55 := read_from_storage_offset_0_t_uint8(_53)
                let _54 := increment_t_uint8(_55)
                update_storage_value_offset_0t_uint8_to_t_uint8(_53, _54)
                let expr_297 := _55
                let expr_305 := 0x01
                let _56 := 0x08
                let expr_299 := _56
                let _57 := vloc_stageIndex_250
                let expr_300 := _57
                let _58 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_299,expr_300)
                let _59_slot := _58
                let expr_301_slot := _59_slot
                let _60 := add(expr_301_slot, 4)
                let _61 := _60
                let expr_302 := _61
                let _62 := vloc_player_270
                let expr_303 := _62
                let _63 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_302,expr_303)
                update_storage_value_offset_0t_bool_to_t_bool(_63, expr_305)
                let expr_306 := expr_305
                let expr_308 := 0x00
                if expr_308 {
                    let _64 := vloc_MN_246
                    let expr_319 := _64
                    let _65 := 0x08
                    let expr_309 := _65
                    let _66 := vloc_stageIndex_250
                    let expr_310 := _66
                    let _67 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_309,expr_310)
                    let _68_slot := _67
                    let expr_311_slot := _68_slot
                    let _69 := add(expr_311_slot, 3)
                    let _70 := _69
                    let expr_312 := _70
                    let _71 := 0x08
                    let expr_313 := _71
                    let _72 := vloc_stageIndex_250
                    let expr_314 := _72
                    let _73 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_313,expr_314)
                    let _74_slot := _73
                    let expr_315_slot := _74_slot
                    let _75 := add(expr_315_slot, 0)
                    let _76 := read_from_storage_offset_0_t_uint8(_75)
                    let expr_316 := _76
                    let _77 := mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_uint8(expr_312,expr_316)
                    let _78_slot := _77
                    let expr_317_slot := _78_slot
                    let _79 := add(expr_317_slot, 1)
                    update_storage_value_offset_0t_address_to_t_address(_79, expr_319)
                    let expr_320 := expr_319
                }
                let _80 := 0x08
                let expr_324 := _80
                let _81 := vloc_stageIndex_250
                let expr_325 := _81
                let _82 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_324,expr_325)
                let _83_slot := _82
                let expr_326_slot := _83_slot
                let _84 := add(expr_326_slot, 0)
                let _85 := read_from_storage_offset_0_t_uint8(_84)
                let expr_327 := _85
                let expr_328 := constant_MAX_PLAYERS_PER_STAGE_30()
                let expr_329 := eq(cleanup_t_uint8(expr_327), cleanup_t_uint8(expr_328))
                let expr_330 := expr_329
                if expr_330 {
                    let expr_336 := number()
                    let _86 := 0x08
                    let expr_331 := _86
                    let _87 := vloc_stageIndex_250
                    let expr_332 := _87
                    let _88 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_331,expr_332)
                    let _89_slot := _88
                    let expr_333_slot := _89_slot
                    let _90 := add(expr_333_slot, 1)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_90, expr_336)
                    let expr_337 := expr_336
                }

            }

            function fun_add_607(vloc_a_585, vloc_b_587) -> vloc_c_590 {
                let zero_value_for_type_t_uint256_168 := zero_value_for_split_t_uint256()
                vloc_c_590 := zero_value_for_type_t_uint256_168

                let _169 := vloc_a_585
                let expr_593 := _169
                let _170 := vloc_b_587
                let expr_594 := _170
                let expr_595 := checked_add_t_uint256(expr_593, expr_594)

                let expr_596 := expr_595
                vloc_c_590 := expr_596
                let expr_597 := expr_596
                let _171 := vloc_c_590
                let expr_600 := _171
                let _172 := vloc_a_585
                let expr_601 := _172
                let expr_602 := iszero(lt(cleanup_t_uint256(expr_600), cleanup_t_uint256(expr_601)))
                let expr_603 := expr_602
                require_helper(expr_603)

            }

            function fun_observe__0_445() -> vloc__437 {
                let zero_value_for_type_t_address_91 := zero_value_for_split_t_address()
                vloc__437 := zero_value_for_type_t_address_91

                let _92 := 0x0a
                let expr_439 := _92
                let _93 := read_from_storage_offset_0_t_uint256(0x0d)
                let expr_440 := _93
                let _94 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_439,expr_440)
                let _95 := read_from_storage_offset_0_t_address(_94)
                let expr_441 := _95
                let expr_442 := expr_441
                vloc__437 := expr_442
                leave

            }

            function fun_observe__10_582() -> vloc__574 {
                let zero_value_for_type_t_uint256_161 := zero_value_for_split_t_uint256()
                vloc__574 := zero_value_for_type_t_uint256_161

                let _162 := 0x08
                let expr_576 := _162
                let _163 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_577 := _163
                let _164 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_576,expr_577)
                let _165_slot := _164
                let expr_578_slot := _165_slot
                let _166 := add(expr_578_slot, 0)
                let _167 := read_from_storage_offset_0_t_uint8(_166)
                let expr_579 := _167
                vloc__574 := convert_t_uint8_to_t_uint256(expr_579)
                leave

            }

            function fun_observe__1_460() -> vloc__448 {
                let zero_value_for_type_t_address_96 := zero_value_for_split_t_address()
                vloc__448 := zero_value_for_type_t_address_96

                let _97 := 0x08
                let expr_450 := _97
                let _98 := read_from_storage_offset_0_t_uint256(0x0d)
                let expr_451 := _98
                let _99 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_450,expr_451)
                let _100_slot := _99
                let expr_452_slot := _100_slot
                let _101 := add(expr_452_slot, 3)
                let _102 := _101
                let expr_453 := _102
                let expr_454 := 0x00
                let _103 := mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_rational_0_by_1(expr_453,expr_454)
                let _104_slot := _103
                let expr_455_slot := _104_slot
                let _105 := add(expr_455_slot, 0)
                let _106 := read_from_storage_offset_0_t_address(_105)
                let expr_456 := _106
                let expr_457 := expr_456
                vloc__448 := expr_457
                leave

            }

            function fun_observe__2_475() -> vloc__463 {
                let zero_value_for_type_t_address_107 := zero_value_for_split_t_address()
                vloc__463 := zero_value_for_type_t_address_107

                let _108 := 0x08
                let expr_465 := _108
                let _109 := read_from_storage_offset_0_t_uint256(0x0d)
                let expr_466 := _109
                let _110 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_465,expr_466)
                let _111_slot := _110
                let expr_467_slot := _111_slot
                let _112 := add(expr_467_slot, 3)
                let _113 := _112
                let expr_468 := _113
                let expr_469 := 0x02
                let _114 := mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_rational_2_by_1(expr_468,expr_469)
                let _115_slot := _114
                let expr_470_slot := _115_slot
                let _116 := add(expr_470_slot, 0)
                let _117 := read_from_storage_offset_0_t_address(_116)
                let expr_471 := _117
                let expr_472 := expr_471
                vloc__463 := expr_472
                leave

            }

            function fun_observe__3_490() -> vloc__478 {
                let zero_value_for_type_t_address_118 := zero_value_for_split_t_address()
                vloc__478 := zero_value_for_type_t_address_118

                let _119 := 0x08
                let expr_480 := _119
                let _120 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_481 := _120
                let _121 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_480,expr_481)
                let _122_slot := _121
                let expr_482_slot := _122_slot
                let _123 := add(expr_482_slot, 3)
                let _124 := _123
                let expr_483 := _124
                let expr_484 := 0x00
                let _125 := mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_rational_0_by_1(expr_483,expr_484)
                let _126_slot := _125
                let expr_485_slot := _126_slot
                let _127 := add(expr_485_slot, 0)
                let _128 := read_from_storage_offset_0_t_address(_127)
                let expr_486 := _128
                let expr_487 := expr_486
                vloc__478 := expr_487
                leave

            }

            function fun_observe__4_505() -> vloc__493 {
                let zero_value_for_type_t_address_129 := zero_value_for_split_t_address()
                vloc__493 := zero_value_for_type_t_address_129

                let _130 := 0x08
                let expr_495 := _130
                let _131 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_496 := _131
                let _132 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(expr_495,expr_496)
                let _133_slot := _132
                let expr_497_slot := _133_slot
                let _134 := add(expr_497_slot, 3)
                let _135 := _134
                let expr_498 := _135
                let expr_499 := 0x01
                let _136 := mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_rational_1_by_1(expr_498,expr_499)
                let _137_slot := _136
                let expr_500_slot := _137_slot
                let _138 := add(expr_500_slot, 0)
                let _139 := read_from_storage_offset_0_t_address(_138)
                let expr_501 := _139
                let expr_502 := expr_501
                vloc__493 := expr_502
                leave

            }

            function fun_observe__5_518(vloc_theplayer_507) -> vloc__510 {
                let zero_value_for_type_t_uint256_140 := zero_value_for_split_t_uint256()
                vloc__510 := zero_value_for_type_t_uint256_140

                let _141 := 0x06
                let expr_512 := _141
                let _142 := vloc_theplayer_507
                let expr_513 := _142
                let _143 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_512,expr_513)
                let _144 := read_from_storage_offset_0_t_uint256(_143)
                let expr_514 := _144
                let expr_515 := expr_514
                vloc__510 := expr_515
                leave

            }

            function fun_observe__6_527() -> vloc_SizeOfJackpot_521 {
                let zero_value_for_type_t_uint256_145 := zero_value_for_split_t_uint256()
                vloc_SizeOfJackpot_521 := zero_value_for_type_t_uint256_145

                let _146 := read_from_storage_offset_0_t_uint256(0x01)
                let expr_523 := _146
                let expr_524 := expr_523
                vloc_SizeOfJackpot_521 := expr_524
                leave

            }

            function fun_observe__7_549() -> vloc__530 {
                let zero_value_for_type_t_bool_147 := zero_value_for_split_t_bool()
                vloc__530 := zero_value_for_type_t_bool_147

                let vloc_check_533
                let zero_value_for_type_t_bool_148 := zero_value_for_split_t_bool()
                vloc_check_533 := zero_value_for_type_t_bool_148
                let _149 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_535 := _149
                let _150 := read_from_storage_offset_0_t_uint256(0x0d)
                let expr_536 := _150
                let expr_537 := iszero(lt(cleanup_t_uint256(expr_535), cleanup_t_uint256(expr_536)))
                let expr_538 := expr_537
                if expr_538 {
                    let expr_540 := 0x01
                    vloc_check_533 := expr_540
                    let expr_541 := expr_540
                }
                let _151 := vloc_check_533
                let expr_545 := _151
                let expr_546 := expr_545
                vloc__530 := expr_546
                leave

            }

            function fun_observe__8_560() -> vloc__552 {
                let zero_value_for_type_t_address_152 := zero_value_for_split_t_address()
                vloc__552 := zero_value_for_type_t_address_152

                let _153 := 0x09
                let expr_554 := _153
                let _154 := read_from_storage_offset_0_t_uint256(0x0b)
                let expr_555 := _154
                let _155 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_554,expr_555)
                let _156 := read_from_storage_offset_0_t_address(_155)
                let expr_556 := _156
                let expr_557 := expr_556
                vloc__552 := expr_557
                leave

            }

            function fun_observe__9_571() -> vloc__563 {
                let zero_value_for_type_t_uint256_157 := zero_value_for_split_t_uint256()
                vloc__563 := zero_value_for_type_t_uint256_157

                let _158 := 0x07
                let expr_565 := _158
                let expr_567 := caller()
                let _159 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_565,expr_567)
                let _160 := read_from_storage_offset_0_t_uint256(_159)
                let expr_568 := _160
                vloc__563 := expr_568
                leave

            }

            function fun_offerAsSacrificeFromVault_223(vloc_MN_208) {

                let expr_215 := constant_OFFER_SIZE_33()
                let _12 := 0x07
                let expr_211 := _12
                let expr_213 := caller()
                let _13 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_211,expr_213)
                let _14 := read_from_storage_offset_0_t_uint256(_13)
                expr_215 := checked_sub_t_uint256(_14, expr_215)
                update_storage_value_offset_0t_uint256_to_t_uint256(_13, expr_215)
                let expr_216 := expr_215
                let expr_218_functionIdentifier := 342
                let _15 := vloc_MN_208
                let expr_219 := _15
                fun_acceptOffer_342(expr_219)

            }

            function fun_offerAsSacrifice_206(vloc_MN_198) {

                let expr_201_functionIdentifier := 342
                let _11 := vloc_MN_198
                let expr_202 := _11
                fun_acceptOffer_342(expr_202)

            }

            function fun_withdraw_244() {

                let vloc_amount_227
                let zero_value_for_type_t_uint256_16 := zero_value_for_split_t_uint256()
                vloc_amount_227 := zero_value_for_type_t_uint256_16
                let _17 := 0x07
                let expr_230 := _17
                let expr_232 := caller()
                let _18 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_230,expr_232)
                let _19 := read_from_storage_offset_0_t_uint256(_18)
                let expr_233 := _19
                vloc_amount_227 := expr_233
                let expr_234 := expr_233
                let expr_240 := 0x00
                let _20 := convert_t_rational_0_by_1_to_t_uint256(expr_240)
                let _21 := 0x07
                let expr_236 := _21
                let expr_238 := caller()
                let _22 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_236,expr_238)
                update_storage_value_offset_0t_uint256_to_t_uint256(_22, _20)
                let expr_241 := _20

            }

            function getter_fun_ETHtoP3Dbymasternode_43(key_0) -> ret {

                let slot := 3
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_Jackpot_37() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_Loser_76(key_0) -> ret {

                let slot := 10
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_MAX_PLAYERS_PER_STAGE_30() -> ret_0 {
                ret_0 := constant_MAX_PLAYERS_PER_STAGE_30()
            }

            function getter_fun_NextAtLineEnd_80() -> ret {

                let slot := 12
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_NextInLine_78() -> ret {

                let slot := 11
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_OFFER_SIZE_33() -> ret_0 {
                ret_0 := constant_OFFER_SIZE_33()
            }

            function getter_fun_RefundWaitingLine_72(key_0) -> ret {

                let slot := 9
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_Refundpot_35() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_SPASMfee_39() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_Vanity_60(key_0) -> ret {

                let slot := 6
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_numberOfStages_84() -> ret {

                let slot := 14
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_stages_68(key_0) -> ret_0, ret_1, ret_2 {

                let slot := 8
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint8(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_bool(add(slot, 2))

            }

            function getter_fun_winningsPerRound_56() -> ret {

                let slot := 5
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

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
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

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$16_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_rational_0_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_0_by_1_to_t_uint8(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_1_by_1_to_t_uint8(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_rational_2_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_2_by_1_to_t_uint8(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint8_$_t_struct$_A_$21_storage_$_of_t_uint8(slot , key) -> dataSlot {
                mstore(0, convert_t_uint8_to_t_uint8(key))
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

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function read_from_storage_offset_0_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint8(sload(slot))
            }

            function read_from_storage_split_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0t_bool(sload(slot))
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

            function update_storage_value_offset_0t_uint8_to_t_uint8(slot, value) {
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(value)))
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

