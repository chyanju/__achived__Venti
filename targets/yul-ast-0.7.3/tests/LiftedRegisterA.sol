pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED
contract LiftedRegisterA {
	uint xValue;
	constructor() {
		xValue = 6;
	}
	function modifyX(uint newX) public {
		if (newX > 100) {
			xValue = 999;
		} else {
			xValue = 100;
		}
	}
	function observe() public view returns (uint obsX) {
		obsX = xValue;
	}
}