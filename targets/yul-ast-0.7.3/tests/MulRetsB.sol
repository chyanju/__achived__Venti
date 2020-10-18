pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED
contract MulRetsB {
	uint xValue;
	uint yValue;
	constructor() {
		xValue = 3;
		yValue = 4;
	}
	function modify(uint newX, uint newY) public {
		xValue = newX;
		yValue = newY;
	}
	function observe() public view returns (uint obsX, uint obsY) {
		obsX = xValue;
		obsY = yValue;
	}
}