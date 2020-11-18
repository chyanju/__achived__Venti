/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "Slaughter3D_569" {
    code {
        mstore(64, 128)
        if callvalue() { revert(0, 0) }

        constructor_Slaughter3D_569()

        codecopy(0, dataoffset("Slaughter3D_569_deployed"), datasize("Slaughter3D_569_deployed"))

        return(0, datasize("Slaughter3D_569_deployed"))

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

        function constant_MAX_PLAYERS_PER_STAGE_29() -> ret {
            let expr_28 := 0x02
            let _2 := convert_t_rational_2_by_1_to_t_uint8(expr_28)

            ret := _2
        }

        function constant_P3D_SHARE_26() -> ret {
            let expr_25 := 0x00
            let _1 := convert_t_rational_0_by_1_to_t_uint256(expr_25)

            ret := _1
        }

        function constructor_Slaughter3D_569() {

            let expr_44 := constant_P3D_SHARE_26()
            let expr_45 := constant_MAX_PLAYERS_PER_STAGE_29()
            let expr_46 := 0x01
            let expr_47 := checked_sub_t_uint8(expr_45, convert_t_rational_1_by_1_to_t_uint8(expr_46))

            let expr_48 := expr_47
            let expr_49 := expr_48
            let expr_50 := checked_mul_t_uint256(expr_44, convert_t_uint8_to_t_uint256(expr_49))

            let expr_51 := expr_50
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_51)
            let expr_54 := 0x00
            update_storage_value_offset_0t_rational_0_by_1_to_t_uint256(0x05, expr_54)

            let expr_156 := constant_P3D_SHARE_26()
            let expr_157 := constant_MAX_PLAYERS_PER_STAGE_29()
            let expr_158 := 0x01
            let expr_159 := checked_sub_t_uint8(expr_157, convert_t_rational_1_by_1_to_t_uint8(expr_158))

            let expr_160 := expr_159
            let expr_161 := expr_160
            let expr_162 := checked_mul_t_uint256(expr_156, convert_t_uint8_to_t_uint256(expr_161))

            let expr_163 := expr_162
            update_storage_value_offset_0t_uint256_to_t_uint256(0x04, expr_163)
            let expr_164 := expr_163
            let expr_167 := 0x00
            let _3 := convert_t_rational_0_by_1_to_t_uint256(expr_167)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x05, _3)
            let expr_168 := _3
            let expr_174 := 0x00
            let _4 := convert_t_rational_0_by_1_to_t_uint8(expr_174)
            let _5 := 0x08
            let expr_170 := _5
            let _6 := read_from_storage_offset_0_t_uint256(0x0e)
            let expr_171 := _6
            let _7 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_170,expr_171)
            let _8_slot := _7
            let expr_172_slot := _8_slot
            let _9 := add(expr_172_slot, 0)
            update_storage_value_offset_0t_uint8_to_t_uint8(_9, _4)
            let expr_175 := _4
            let expr_181 := 0x00
            let _10 := convert_t_rational_0_by_1_to_t_uint256(expr_181)
            let _11 := 0x08
            let expr_177 := _11
            let _12 := read_from_storage_offset_0_t_uint256(0x0e)
            let expr_178 := _12
            let _13 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_177,expr_178)
            let _14_slot := _13
            let expr_179_slot := _14_slot
            let _15 := add(expr_179_slot, 1)
            update_storage_value_offset_0t_uint256_to_t_uint256(_15, _10)
            let expr_182 := _10
            let expr_188 := 0x00
            let _16 := 0x08
            let expr_184 := _16
            let _17 := read_from_storage_offset_0_t_uint256(0x0e)
            let expr_185 := _17
            let _18 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_184,expr_185)
            let _19_slot := _18
            let expr_186_slot := _19_slot
            let _20 := add(expr_186_slot, 2)
            update_storage_value_offset_0t_bool_to_t_bool(_20, expr_188)
            let expr_189 := expr_188
            let _22 := read_from_storage_offset_0_t_uint256(0x0e)
            let _21 := increment_t_uint256(_22)
            update_storage_value_offset_0t_uint256_to_t_uint256(0x0e, _21)
            let expr_192 := _22

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

        function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(slot , key) -> dataSlot {
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
    object "Slaughter3D_569_deployed" {
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
                    fun_DonateToLosers_127()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x0d874f7a
                {
                    // RefundWaitingLine(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_RefundWaitingLine_71(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x2dfc8606
                {
                    // observe__4()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__4_488()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x376fdba1
                {
                    // observe__9()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__9_554()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x39f56550
                {
                    // NextAtLineEnd()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_NextAtLineEnd_79()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x3ccfd60b
                {
                    // withdraw()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_withdraw_243()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x4eff13dc
                {
                    // OFFER_SIZE()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_OFFER_SIZE_32()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x545c0716
                {
                    // observe__8()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__8_543()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x58a73f74
                {
                    // observe__2()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__2_460()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x5e377b51
                {
                    // Jackpot()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_Jackpot_36()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x680478b1
                {
                    // offerAsSacrifice(address)

                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_offerAsSacrifice_205(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x73cf2988
                {
                    // observe__6()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__6_510()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x7e487822
                {
                    // ETHtoP3Dbymasternode(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_ETHtoP3Dbymasternode_42(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x845ddcb2
                {
                    // stages(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0, ret_1, ret_2 :=  getter_fun_stages_67(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint8_t_uint256_t_bool__to_t_uint8_t_uint256_t_bool__fromStack(memPos , ret_0, ret_1, ret_2)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x92100265
                {
                    // Vanity(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  getter_fun_Vanity_59(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x95dd489b
                {
                    // winningsPerRound()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_winningsPerRound_55()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa0c5c83b
                {
                    // NextInLine()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_NextInLine_77()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa9e4d2ea
                {
                    // observe__3()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__3_474()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xbeb7597b
                {
                    // observe__7()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__7_532()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xc24ad463
                {
                    // Refundpot()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_Refundpot_34()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xc3a7b2ad
                {
                    // SPASMfee()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_SPASMfee_38()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd13a73c4
                {
                    // numberOfStages()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_numberOfStages_83()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xd988a0f9
                {
                    // Payoutnextrefund()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    fun_Payoutnextrefund_152()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xda704c86
                {
                    // observe__5(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_observe__5_501(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xe3b22ff7
                {
                    // observe__1()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__1_446()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xecdc98ee
                {
                    // observe__10()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__10_568()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xefe6c772
                {
                    // MAX_PLAYERS_PER_STAGE()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  getter_fun_MAX_PLAYERS_PER_STAGE_29()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xf355aa8f
                {
                    // observe__0()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_observe__0_432()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xfc04c62e
                {
                    // offerAsSacrificeFromVault(address)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    fun_offerAsSacrificeFromVault_222(param_0)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xfe74622a
                {
                    // Loser(uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                    let ret_0 :=  getter_fun_Loser_75(param_0)
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

            function constant_MAX_PLAYERS_PER_STAGE_29() -> ret {
                let expr_28 := 0x02
                let _2 := convert_t_rational_2_by_1_to_t_uint8(expr_28)

                ret := _2
            }

            function constant_OFFER_SIZE_32() -> ret {
                let expr_31 := 0x00
                let _1 := convert_t_rational_0_by_1_to_t_uint256(expr_31)

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

            function fun_DonateToLosers_127() {

                let expr_112 := callvalue()
                let expr_113 := 0x00
                let expr_114 := gt(cleanup_t_uint256(expr_112), convert_t_rational_0_by_1_to_t_uint256(expr_113))
                let expr_115 := expr_114
                require_helper(expr_115)
                let _3 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_119 := _3
                let expr_122 := callvalue()
                let expr_123 := fun_add_593(expr_119, expr_122)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, expr_123)
                let expr_124 := expr_123

            }

            function fun_Payoutnextrefund_152() {

                let vloc_Pot_131
                let zero_value_for_type_t_uint256_4 := zero_value_for_split_t_uint256()
                vloc_Pot_131 := zero_value_for_type_t_uint256_4
                let _5 := read_from_storage_offset_0_t_uint256(0x00)
                let expr_134 := _5
                vloc_Pot_131 := expr_134
                let expr_135 := expr_134
                let _6 := vloc_Pot_131
                let expr_138 := _6
                let expr_139 := 0x00
                let expr_140 := gt(cleanup_t_uint256(expr_138), convert_t_rational_0_by_1_to_t_uint256(expr_139))
                let expr_141 := expr_140
                require_helper(expr_141)
                let expr_145 := 0x00
                let _7 := convert_t_rational_0_by_1_to_t_uint256(expr_145)
                let _8 := read_from_storage_offset_0_t_uint256(0x00)
                _7 := checked_sub_t_uint256(_8, _7)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x00, _7)
                let expr_146 := _7
                let _10 := read_from_storage_offset_0_t_uint256(0x0b)
                let _9 := increment_t_uint256(_10)
                update_storage_value_offset_0t_uint256_to_t_uint256(0x0b, _9)
                let expr_149 := _10

            }

            function fun_acceptOffer_333(vloc_MN_245) {

                let vloc_stageIndex_249
                let zero_value_for_type_t_uint256_23 := zero_value_for_split_t_uint256()
                vloc_stageIndex_249 := zero_value_for_type_t_uint256_23
                let _24 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_252 := _24
                let expr_253 := 0x01
                let expr_254 := checked_sub_t_uint256(expr_252, convert_t_rational_1_by_1_to_t_uint256(expr_253))

                let expr_255 := expr_254
                vloc_stageIndex_249 := expr_255
                let expr_256 := expr_255
                let _25 := 0x08
                let expr_259 := _25
                let _26 := vloc_stageIndex_249
                let expr_260 := _26
                let _27 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_259,expr_260)
                let _28_slot := _27
                let expr_261_slot := _28_slot
                let _29 := add(expr_261_slot, 0)
                let _30 := read_from_storage_offset_0_t_uint8(_29)
                let expr_262 := _30
                let expr_263 := constant_MAX_PLAYERS_PER_STAGE_29()
                let expr_264 := lt(cleanup_t_uint8(expr_262), cleanup_t_uint8(expr_263))
                let expr_265 := expr_264
                assert_helper(expr_265)
                let vloc_player_269
                let zero_value_for_type_t_address_31 := zero_value_for_split_t_address()
                vloc_player_269 := zero_value_for_type_t_address_31
                let expr_273 := caller()
                let _32 := convert_t_address_payable_to_t_address(expr_273)
                vloc_player_269 := _32
                let expr_274 := _32
                let _33 := vloc_player_269
                let expr_285 := _33
                let _34 := 0x08
                let expr_276 := _34
                let _35 := vloc_stageIndex_249
                let expr_277 := _35
                let _36 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_276,expr_277)
                let _37_slot := _36
                let expr_278_slot := _37_slot
                let _38 := add(expr_278_slot, 3)
                let _39 := _38
                let expr_279 := _39
                let _40 := 0x08
                let expr_280 := _40
                let _41 := vloc_stageIndex_249
                let expr_281 := _41
                let _42 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_280,expr_281)
                let _43_slot := _42
                let expr_282_slot := _43_slot
                let _44 := add(expr_282_slot, 0)
                let _45 := read_from_storage_offset_0_t_uint8(_44)
                let expr_283 := _45
                let _46 := mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_uint8(expr_279,expr_283)
                update_storage_value_offset_0t_address_to_t_address(_46, expr_285)
                let expr_286 := expr_285
                let _47 := 0x08
                let expr_288 := _47
                let _48 := vloc_stageIndex_249
                let expr_289 := _48
                let _49 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_288,expr_289)
                let _50_slot := _49
                let expr_290_slot := _50_slot
                let _51 := add(expr_290_slot, 0)
                let _53 := read_from_storage_offset_0_t_uint8(_51)
                let _52 := increment_t_uint8(_53)
                update_storage_value_offset_0t_uint8_to_t_uint8(_51, _52)
                let expr_292 := _53
                let expr_300 := 0x01
                let _54 := 0x08
                let expr_294 := _54
                let _55 := vloc_stageIndex_249
                let expr_295 := _55
                let _56 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_294,expr_295)
                let _57_slot := _56
                let expr_296_slot := _57_slot
                let _58 := add(expr_296_slot, 4)
                let _59 := _58
                let expr_297 := _59
                let _60 := vloc_player_269
                let expr_298 := _60
                let _61 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_297,expr_298)
                update_storage_value_offset_0t_bool_to_t_bool(_61, expr_300)
                let expr_301 := expr_300
                let _62 := vloc_MN_245
                let expr_312 := _62
                let _63 := 0x08
                let expr_303 := _63
                let _64 := vloc_stageIndex_249
                let expr_304 := _64
                let _65 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_303,expr_304)
                let _66_slot := _65
                let expr_305_slot := _66_slot
                let _67 := add(expr_305_slot, 5)
                let _68 := _67
                let expr_306 := _68
                let _69 := 0x08
                let expr_307 := _69
                let _70 := vloc_stageIndex_249
                let expr_308 := _70
                let _71 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_307,expr_308)
                let _72_slot := _71
                let expr_309_slot := _72_slot
                let _73 := add(expr_309_slot, 0)
                let _74 := read_from_storage_offset_0_t_uint8(_73)
                let expr_310 := _74
                let _75 := mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_uint8(expr_306,expr_310)
                update_storage_value_offset_0t_address_to_t_address(_75, expr_312)
                let expr_313 := expr_312
                let _76 := 0x08
                let expr_315 := _76
                let _77 := vloc_stageIndex_249
                let expr_316 := _77
                let _78 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_315,expr_316)
                let _79_slot := _78
                let expr_317_slot := _79_slot
                let _80 := add(expr_317_slot, 0)
                let _81 := read_from_storage_offset_0_t_uint8(_80)
                let expr_318 := _81
                let expr_319 := constant_MAX_PLAYERS_PER_STAGE_29()
                let expr_320 := eq(cleanup_t_uint8(expr_318), cleanup_t_uint8(expr_319))
                let expr_321 := expr_320
                if expr_321 {
                    let expr_327 := number()
                    let _82 := 0x08
                    let expr_322 := _82
                    let _83 := vloc_stageIndex_249
                    let expr_323 := _83
                    let _84 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_322,expr_323)
                    let _85_slot := _84
                    let expr_324_slot := _85_slot
                    let _86 := add(expr_324_slot, 1)
                    update_storage_value_offset_0t_uint256_to_t_uint256(_86, expr_327)
                    let expr_328 := expr_327
                }

            }

            function fun_add_593(vloc_a_571, vloc_b_573) -> vloc_c_576 {
                let zero_value_for_type_t_uint256_156 := zero_value_for_split_t_uint256()
                vloc_c_576 := zero_value_for_type_t_uint256_156

                let _157 := vloc_a_571
                let expr_579 := _157
                let _158 := vloc_b_573
                let expr_580 := _158
                let expr_581 := checked_add_t_uint256(expr_579, expr_580)

                let expr_582 := expr_581
                vloc_c_576 := expr_582
                let expr_583 := expr_582
                let _159 := vloc_c_576
                let expr_586 := _159
                let _160 := vloc_a_571
                let expr_587 := _160
                let expr_588 := iszero(lt(cleanup_t_uint256(expr_586), cleanup_t_uint256(expr_587)))
                let expr_589 := expr_588
                require_helper(expr_589)

            }

            function fun_observe__0_432() -> vloc__424 {
                let zero_value_for_type_t_address_87 := zero_value_for_split_t_address()
                vloc__424 := zero_value_for_type_t_address_87

                let _88 := 0x0a
                let expr_426 := _88
                let _89 := read_from_storage_offset_0_t_uint256(0x0d)
                let expr_427 := _89
                let _90 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_426,expr_427)
                let _91 := read_from_storage_offset_0_t_address(_90)
                let expr_428 := _91
                let expr_429 := expr_428
                vloc__424 := expr_429
                leave

            }

            function fun_observe__10_568() -> vloc__557 {
                let zero_value_for_type_t_uint256_149 := zero_value_for_split_t_uint256()
                vloc__557 := zero_value_for_type_t_uint256_149

                let _150 := 0x08
                let expr_559 := _150
                let _151 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_560 := _151
                let expr_561 := 0x01
                let expr_562 := checked_sub_t_uint256(expr_560, convert_t_rational_1_by_1_to_t_uint256(expr_561))

                let expr_563 := expr_562
                let _152 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_559,expr_563)
                let _153_slot := _152
                let expr_564_slot := _153_slot
                let _154 := add(expr_564_slot, 0)
                let _155 := read_from_storage_offset_0_t_uint8(_154)
                let expr_565 := _155
                vloc__557 := convert_t_uint8_to_t_uint256(expr_565)
                leave

            }

            function fun_observe__1_446() -> vloc__435 {
                let zero_value_for_type_t_address_92 := zero_value_for_split_t_address()
                vloc__435 := zero_value_for_type_t_address_92

                let _93 := 0x08
                let expr_437 := _93
                let _94 := read_from_storage_offset_0_t_uint256(0x0d)
                let expr_438 := _94
                let _95 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_437,expr_438)
                let _96_slot := _95
                let expr_439_slot := _96_slot
                let _97 := add(expr_439_slot, 3)
                let _98 := _97
                let expr_440 := _98
                let expr_441 := 0x00
                let _99 := mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_rational_0_by_1(expr_440,expr_441)
                let _100 := read_from_storage_offset_0_t_address(_99)
                let expr_442 := _100
                let expr_443 := expr_442
                vloc__435 := expr_443
                leave

            }

            function fun_observe__2_460() -> vloc__449 {
                let zero_value_for_type_t_address_101 := zero_value_for_split_t_address()
                vloc__449 := zero_value_for_type_t_address_101

                let _102 := 0x08
                let expr_451 := _102
                let _103 := read_from_storage_offset_0_t_uint256(0x0d)
                let expr_452 := _103
                let _104 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_451,expr_452)
                let _105_slot := _104
                let expr_453_slot := _105_slot
                let _106 := add(expr_453_slot, 3)
                let _107 := _106
                let expr_454 := _107
                let expr_455 := 0x02
                let _108 := mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_rational_2_by_1(expr_454,expr_455)
                let _109 := read_from_storage_offset_0_t_address(_108)
                let expr_456 := _109
                let expr_457 := expr_456
                vloc__449 := expr_457
                leave

            }

            function fun_observe__3_474() -> vloc__463 {
                let zero_value_for_type_t_address_110 := zero_value_for_split_t_address()
                vloc__463 := zero_value_for_type_t_address_110

                let _111 := 0x08
                let expr_465 := _111
                let _112 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_466 := _112
                let _113 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_465,expr_466)
                let _114_slot := _113
                let expr_467_slot := _114_slot
                let _115 := add(expr_467_slot, 3)
                let _116 := _115
                let expr_468 := _116
                let expr_469 := 0x00
                let _117 := mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_rational_0_by_1(expr_468,expr_469)
                let _118 := read_from_storage_offset_0_t_address(_117)
                let expr_470 := _118
                let expr_471 := expr_470
                vloc__463 := expr_471
                leave

            }

            function fun_observe__4_488() -> vloc__477 {
                let zero_value_for_type_t_address_119 := zero_value_for_split_t_address()
                vloc__477 := zero_value_for_type_t_address_119

                let _120 := 0x08
                let expr_479 := _120
                let _121 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_480 := _121
                let _122 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(expr_479,expr_480)
                let _123_slot := _122
                let expr_481_slot := _123_slot
                let _124 := add(expr_481_slot, 3)
                let _125 := _124
                let expr_482 := _125
                let expr_483 := 0x01
                let _126 := mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_rational_1_by_1(expr_482,expr_483)
                let _127 := read_from_storage_offset_0_t_address(_126)
                let expr_484 := _127
                let expr_485 := expr_484
                vloc__477 := expr_485
                leave

            }

            function fun_observe__5_501(vloc_theplayer_490) -> vloc__493 {
                let zero_value_for_type_t_uint256_128 := zero_value_for_split_t_uint256()
                vloc__493 := zero_value_for_type_t_uint256_128

                let _129 := 0x06
                let expr_495 := _129
                let _130 := vloc_theplayer_490
                let expr_496 := _130
                let _131 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_495,expr_496)
                let _132 := read_from_storage_offset_0_t_uint256(_131)
                let expr_497 := _132
                let expr_498 := expr_497
                vloc__493 := expr_498
                leave

            }

            function fun_observe__6_510() -> vloc_SizeOfJackpot_504 {
                let zero_value_for_type_t_uint256_133 := zero_value_for_split_t_uint256()
                vloc_SizeOfJackpot_504 := zero_value_for_type_t_uint256_133

                let _134 := read_from_storage_offset_0_t_uint256(0x01)
                let expr_506 := _134
                let expr_507 := expr_506
                vloc_SizeOfJackpot_504 := expr_507
                leave

            }

            function fun_observe__7_532() -> vloc__513 {
                let zero_value_for_type_t_bool_135 := zero_value_for_split_t_bool()
                vloc__513 := zero_value_for_type_t_bool_135

                let vloc_check_516
                let zero_value_for_type_t_bool_136 := zero_value_for_split_t_bool()
                vloc_check_516 := zero_value_for_type_t_bool_136
                let _137 := read_from_storage_offset_0_t_uint256(0x0e)
                let expr_518 := _137
                let _138 := read_from_storage_offset_0_t_uint256(0x0d)
                let expr_519 := _138
                let expr_520 := iszero(lt(cleanup_t_uint256(expr_518), cleanup_t_uint256(expr_519)))
                let expr_521 := expr_520
                if expr_521 {
                    let expr_523 := 0x01
                    vloc_check_516 := expr_523
                    let expr_524 := expr_523
                }
                let _139 := vloc_check_516
                let expr_528 := _139
                let expr_529 := expr_528
                vloc__513 := expr_529
                leave

            }

            function fun_observe__8_543() -> vloc__535 {
                let zero_value_for_type_t_address_140 := zero_value_for_split_t_address()
                vloc__535 := zero_value_for_type_t_address_140

                let _141 := 0x09
                let expr_537 := _141
                let _142 := read_from_storage_offset_0_t_uint256(0x0b)
                let expr_538 := _142
                let _143 := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(expr_537,expr_538)
                let _144 := read_from_storage_offset_0_t_address(_143)
                let expr_539 := _144
                let expr_540 := expr_539
                vloc__535 := expr_540
                leave

            }

            function fun_observe__9_554() -> vloc__546 {
                let zero_value_for_type_t_uint256_145 := zero_value_for_split_t_uint256()
                vloc__546 := zero_value_for_type_t_uint256_145

                let _146 := 0x07
                let expr_548 := _146
                let expr_550 := caller()
                let _147 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_548,expr_550)
                let _148 := read_from_storage_offset_0_t_uint256(_147)
                let expr_551 := _148
                vloc__546 := expr_551
                leave

            }

            function fun_offerAsSacrificeFromVault_222(vloc_MN_207) {

                let expr_214 := constant_OFFER_SIZE_32()
                let _12 := 0x07
                let expr_210 := _12
                let expr_212 := caller()
                let _13 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_210,expr_212)
                let _14 := read_from_storage_offset_0_t_uint256(_13)
                expr_214 := checked_sub_t_uint256(_14, expr_214)
                update_storage_value_offset_0t_uint256_to_t_uint256(_13, expr_214)
                let expr_215 := expr_214
                let expr_217_functionIdentifier := 333
                let _15 := vloc_MN_207
                let expr_218 := _15
                fun_acceptOffer_333(expr_218)

            }

            function fun_offerAsSacrifice_205(vloc_MN_197) {

                let expr_200_functionIdentifier := 333
                let _11 := vloc_MN_197
                let expr_201 := _11
                fun_acceptOffer_333(expr_201)

            }

            function fun_withdraw_243() {

                let vloc_amount_226
                let zero_value_for_type_t_uint256_16 := zero_value_for_split_t_uint256()
                vloc_amount_226 := zero_value_for_type_t_uint256_16
                let _17 := 0x07
                let expr_229 := _17
                let expr_231 := caller()
                let _18 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_229,expr_231)
                let _19 := read_from_storage_offset_0_t_uint256(_18)
                let expr_232 := _19
                vloc_amount_226 := expr_232
                let expr_233 := expr_232
                let expr_239 := 0x00
                let _20 := convert_t_rational_0_by_1_to_t_uint256(expr_239)
                let _21 := 0x07
                let expr_235 := _21
                let expr_237 := caller()
                let _22 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address_payable(expr_235,expr_237)
                update_storage_value_offset_0t_uint256_to_t_uint256(_22, _20)
                let expr_240 := _20

            }

            function getter_fun_ETHtoP3Dbymasternode_42(key_0) -> ret {

                let slot := 3
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_Jackpot_36() -> ret {

                let slot := 1
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_Loser_75(key_0) -> ret {

                let slot := 10
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_MAX_PLAYERS_PER_STAGE_29() -> ret_0 {
                ret_0 := constant_MAX_PLAYERS_PER_STAGE_29()
            }

            function getter_fun_NextAtLineEnd_79() -> ret {

                let slot := 12
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_NextInLine_77() -> ret {

                let slot := 11
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_OFFER_SIZE_32() -> ret_0 {
                ret_0 := constant_OFFER_SIZE_32()
            }

            function getter_fun_RefundWaitingLine_71(key_0) -> ret {

                let slot := 9
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_address_$_of_t_uint256(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_address(slot, offset)

            }

            function getter_fun_Refundpot_34() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_SPASMfee_38() -> ret {

                let slot := 2
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_Vanity_59(key_0) -> ret {

                let slot := 6
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot, key_0)

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_numberOfStages_83() -> ret {

                let slot := 14
                let offset := 0

                ret := read_from_storage_value_type_dynamicsplit__t_uint256(slot, offset)

            }

            function getter_fun_stages_67(key_0) -> ret_0, ret_1, ret_2 {

                let slot := 8
                let offset := 0

                slot := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(slot, key_0)

                ret_0 := read_from_storage_split_offset_0_t_uint8(add(slot, 0))

                ret_1 := read_from_storage_split_offset_0_t_uint256(add(slot, 1))

                ret_2 := read_from_storage_split_offset_0_t_bool(add(slot, 2))

            }

            function getter_fun_winningsPerRound_55() -> ret {

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

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_Stage_$20_storage_$_of_t_uint256(slot , key) -> dataSlot {
                mstore(0, convert_t_uint256_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_rational_0_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_0_by_1_to_t_uint8(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_1_by_1_to_t_uint8(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_rational_2_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_2_by_1_to_t_uint8(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_uint8_$_t_address_$_of_t_uint8(slot , key) -> dataSlot {
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

