pragma solidity >=0.5.8;
// SPDX-License-Identifier: UNLICENSED
contract Bx {
	uint m_f1_UNWRAP;
	uint m_f2_UNWRAP;
	function foo(uint256 x, uint256 y) public {

			m_f1_UNWRAP = x;

			m_f2_UNWRAP = y;
		
	}
	function bar() public view returns (uint256) {
		return m_f1_UNWRAP;
	}
	function observe() public view returns (uint256, uint256) {
		return (m_f1_UNWRAP, m_f2_UNWRAP);
	}
}