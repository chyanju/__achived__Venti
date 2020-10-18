pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED
contract MulRetsA {
	uint xValue;
	uint yValue;
	constructor() {
		xValue = 6;
		yValue = 7;
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