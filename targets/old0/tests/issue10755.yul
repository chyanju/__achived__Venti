object "issue10755" {
    code {
        function fn_test() {
            let _1 := 0
            if eq(0x26121ff0, shr(224, calldataload(_1)))
            {
                if callvalue() { revert(_1, _1) }
                if slt(add(calldatasize(), not(3)), _1) { revert(_1, _1) }
                let memPtr := allocateMemory(96)
                mstore(memPtr, _1)
                mstore(add(memPtr, 32), _1)
                mstore(add(memPtr, 64), _1)
                return(allocateMemory(_1), _1)
            }
        }
    }
    object "issue10690" {
        code {
            
        }
    }
}