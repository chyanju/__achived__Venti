pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract Bk {
    struct S {
        uint f1;
    }
    mapping(uint => S) m;
    function foo(uint x) public {
        S memory s = S(x);
        m[1] = s;
    }
    function observe() public view returns (uint) {
      return m[1].f1;
    }
}