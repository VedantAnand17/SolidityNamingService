// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    uint256 private num;

    constructor(uint _num) {
        num = _num;
    }

    function getNum() public view returns (uint) {
        return num;
    }

    function add() public  {
        num += 1;
    }
}

// 0x38cB7800C3Fddb8dda074C1c650A155154924C73 