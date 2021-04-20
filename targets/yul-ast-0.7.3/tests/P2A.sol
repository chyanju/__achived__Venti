pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED
contract P2A {
	uint xValue;
	uint yValue;
	constructor() {
		xValue = 100;
		yValue = 200;
	}
	function modifyX(uint newX) public {
		xValue = newX;
	}
	function modifyY(uint newY) public {
		yValue = newY;
	}
	function observe() public view returns (uint obsX) {
		obsX = xValue;
	}
}