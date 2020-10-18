pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract B6 {
    mapping(uint256 => mapping(uint256 => uint256)) f1;
    function observe_f1() public view returns (uint256 obsX) {
        obsX = f1[1][2];
    }
}