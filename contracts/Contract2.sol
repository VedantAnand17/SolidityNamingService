// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Istorage {
    function getNum() external view returns (uint);
    function add() external;
}

contract Contract2 {
    constructor() {
        
    }

    function proxyAdd() public {
        Istorage(0x38cB7800C3Fddb8dda074C1c650A155154924C73).add();
    }

    function proxyGet() public view returns (uint) {
        uint num = Istorage(0x38cB7800C3Fddb8dda074C1c650A155154924C73).getNum();
        return num;
    }
}