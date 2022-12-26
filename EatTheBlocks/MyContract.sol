// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    // 1. fixed-size variable
    bool isReady; // state variable
    uint value;
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
    enum Color {
        RED,
        GREEN,
        BLUE
    }
    
    // 4. functions
    function getValue() external view returns(uint) { // "view" is read-only
        return value;
    }
    function setValue(uint _value) external {
        value = _value;
    }
}