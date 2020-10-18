pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract B8 {
    mapping(uint256 => uint256) f1;
    function modify_pos(uint256 pos) public {
    	f1[pos] = 555;
    }
    function observe(uint256 pos) public view returns (uint256 obsX) {
    	obsX = f1[pos];
    }
}