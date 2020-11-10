pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract A2 {
    mapping(uint => uint) arr;
    function foo(uint x, uint y) public {
        arr[x+1] = 999;
    }
    function observe_0(uint i) public view returns (uint) {
      return arr[i];
    }
}