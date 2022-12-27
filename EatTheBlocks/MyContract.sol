// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    /*
    0. build-in variables
    (1) tx
        tx.origin
    (2) msg
        msg.value
        msg.sender

        Alice => smart contract A => smart contract B => C
                tx.origin = Alice    tx.origin = Alice
                msg.sender = Alice   msg.sender = smart contract A
    (3) block
        block.timestamp / now => 1970 (s)
    */

    // 1. fixed-size variable
    bool isReady; // state variable
    uint public value; // solidity will create public function value() for you to fetch value 
    address recipent;
    bytes data;

    // 2. variable-size types
    string name;
    bytes _data;
    uint[] amounts;
    mapping(uint => string) users;

    // 3. user-defined data
    struct User {
        uint userId;
        string name;
        uint[] friendIds; 
    }
    enum Color{
        RED,
        GREEN,
        BLUE
    }
    // 4. functions
    /* function visibility keywords:
        1. private , function has _ at beginning, cannot be called from outside of smart contract
        2. internal , similar to "protected"
        3. external , call only be called from outside (not inside)
        4. public , call from both outside & inside, largest visibility
    */
    function getValue() external view returns(uint) { // "view" is read-only
        return value;
    }
    function setValue(uint _value) external {
        value = _value;
    }
    // eth_transaction ; eth_call
    // JSON_RPC ?
}