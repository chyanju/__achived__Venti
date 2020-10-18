pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract B2 {
	mapping(uint256 => uint256) m_f1_UNWRAP;
	mapping(uint256 => uint256) m_f2_UNWRAP;
	function foo(uint256 x, uint256 y) public {
		uint256 s_f1_UNWRAP = x;
		uint256 s_f2_UNWRAP = y;
		if (false) {
			m_f1_UNWRAP[1] = m_f1_UNWRAP[1];
		}
		if (true) {
			m_f2_UNWRAP[1] = m_f2_UNWRAP[1];
		}
	}
	function bar() public view returns (uint256) {
		return m_f2_UNWRAP[1];
	}
	function observe() public view returns (uint256, uint256) {
		return (m_f2_UNWRAP[1], m_f2_UNWRAP[1]);
	}
}