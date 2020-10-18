pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract B3 {
    mapping(uint256 => uint256) m_f1_UNWRAP;
    mapping(uint256 => uint256) m_f2_UNWRAP;
    function foo(uint256 x, uint256 y) public {
        m_f1_UNWRAP[1] = x;
        m_f2_UNWRAP[1] = y;
    }
    function bar() public view returns (uint256) {
        return m_f2_UNWRAP[1];
    }
    function observe() public view returns (uint256 obsX, uint256 obsY) {
        obsX = m_f2_UNWRAP[1];
        obsY = m_f2_UNWRAP[1];
    }
}