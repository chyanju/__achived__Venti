pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED
contract Symbolic1A {
	uint xValue;
	constructor() {
		xValue = 6;
	}
	function modifyX(uint newX) public {
		xValue = newX;
	}
	function observe() public view returns (uint obsX) {
		obsX = xValue;
	}
}