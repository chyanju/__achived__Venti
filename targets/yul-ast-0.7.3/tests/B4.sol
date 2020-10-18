pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract B4 {
    mapping(uint256 => uint256) f1;
    mapping(uint256 => uint256) f2;
    function set_f1(uint256 x, uint256 y, uint256 z) public {
        f1[0] = x;
        f1[1] = y;
        f1[2] = z;
    }
    function set_f2(uint256 x, uint256 y, uint256 z) public {
        f2[0] = x;
        f2[1] = y;
        f2[2] = z;
    }
    function observe_f1() public view returns (uint256 obsX, uint256 obsY, uint256 obsZ) {
        obsX = f1[0];
        obsY = f1[1];
        obsZ = f1[2];
    }
    function observe_f2() public view returns (uint256 obsX, uint256 obsY, uint256 obsZ) {
        obsX = f2[0];
        obsY = f2[1];
        obsZ = f2[2];
    }
}