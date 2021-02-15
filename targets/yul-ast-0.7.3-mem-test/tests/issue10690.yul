object "issue10690" {
    code {
        function fn_test() {
            let _1 := 128
            // write to 64, but this is redundant
            mstore(64, _1)
            if callvalue() { revert(0, 0) }
            let _2 := 0
            // does not write to location 64
            calldatacopy(_1, _2, calldatasize())
            // does not write to location 64
            mstore(add(_1, calldatasize()), _2)
            // does not write to location 64
            pop(delegatecall(gas(), 25, _1, calldatasize(), _2, _2))
            let data := _2
            switch returndatasize()
            case 0 { data := 96 }
            default {
                let newFreePtr := add(_1, and(add(returndatasize(), 63), not(31)))
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, _1))
                {
                    // this block does not read or write from 64
                    mstore(_2, shl(224, 0x4e487b71))
                    mstore(4, 0x41)
                    revert(_2, 0x24)
                }
                // modifies 64; but this is redundant
                mstore(64, newFreePtr)
                data := _1
                // does not modify or read memory location 64
                mstore(_1, returndatasize())
                // does not modify or read memory location 64
                returndatacopy(160, _2, returndatasize())
            }
            return(add(data, 0x20), mload(data))
        }
    }
    object "issue10690" {
        code {
            
        }
    }
}