pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract B7 {
    mapping(uint256 => uint256) f1;
    function modify_pos(uint256 pos) public {
    	f1[pos] = 999;
    }
    function observe(uint256 pos) public view returns (uint256 obsX) {
    	obsX = f1[pos];
    }
}