pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract B1 {
    struct S {
        uint f1;
        uint f2;
    }
    mapping(uint => S) m;
    function foo(uint x, uint y) public {
        S memory s = S(x, y);
        m[1] = s;
    }
    function bar() public view returns (uint) {
        return m[1].f2;
    }
    function observe() public view returns (uint, uint) {
      return (m[1].f1, m[1].f2);
    }
}