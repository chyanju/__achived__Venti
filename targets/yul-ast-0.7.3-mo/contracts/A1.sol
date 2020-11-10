pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract A1 {
    mapping(uint => uint) arr;
    function foo(uint x) public {
        arr[x] = 999;
    }
    function observe_0(uint i) public view returns (uint) {
      return arr[i];
    }
}