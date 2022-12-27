// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract2 {
    /*
    1. storage arrays
    2. memory arrays
    3. array arguments and return arrays from function
    */
    uint[] myArr; // dynamic size (storage arrays)

    // 2. declare mappings
    mapping(address => uint) balances;
    mapping(address => mapping(address => bool)) approved;
    mapping(address => uint[]) scores;
    constructor () {
        uint[] memory newArr = new uint[](10); // fixed size (memory array)
    }

    function foo() external {
        myArr.push(1);
        myArr[0] = 10;
        delete myArr[0]; // size not change, myArr[0] = 0
    }

    // calldata & memory keyword
    function fooBar(uint[] memory myArg) public pure returns(uint[] memory) {
        // a function that pass & returns array
        return myArg;
    }


    function foo2(address spender) external {
        // 1. create
        balances[msg.sender] = 100;
        // 2. read
        balances[msg.sender];
        // 3. delete
        delete balances[msg.sender];
        // 4. default values, all keys are accessible even though not exist
        /* an address literal must:
            1. contain 40 character (20 bytes long), and
            2. be prefixed with 0x.
            3. have a valid checksum */
        address addr = 0x001d3F1ef827552Ae1114027BD3ECF1f086bA0F9;
        balances[addr];
        // 5. exotic mapping 1 : nested mapping
        approved[msg.sender][spender] = true;

        // 6. exotic mapping 2 : array inside mapping
        scores[msg.sender].push(1); // instantiated
        scores[msg.sender][0];
    }
}