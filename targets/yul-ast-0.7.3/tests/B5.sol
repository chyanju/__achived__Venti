pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract B5 {
    mapping(uint256 => uint256) f1;
    function set_f1(uint256 x, uint256 y, uint256 z) public {
        f1[0] = x;
        f1[1] = y;
        f1[2] = z;
    }
    function get_f1(uint256 ind) public view returns (uint val) {
        val = f1[ind];
    }
    function observe_f1() public view returns (uint256 obsX, uint256 obsY, uint256 obsZ) {
        obsX = f1[0];
        obsY = f1[1];
        obsZ = f1[2];
    }
}