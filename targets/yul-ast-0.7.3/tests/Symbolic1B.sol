pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED
contract Symbolic1B {
	uint xValue;
	constructor() {
		xValue = 7;
	}
	function modifyX(uint newX) public {
		xValue = newX;
	}
	function observe() public view returns (uint obsX) {
		obsX = xValue;
	}
}