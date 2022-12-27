// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract3 {
    // struct
    struct User {
        address addr;
        uint score;
        string name;
    }
    User[] users;
    mapping(address => User) userList;

    // Enum
    enum STATE {ACTIVE, INACTIVE} // no semicolon ";"
    STATE state;

    function foo(string calldata _name) external {
        User memory user1 = User(msg.sender, 0, _name);
        User memory user2 = User({name: _name, score: 0, addr: msg.sender}); // declaration way 2
        users.push(user1);
        userList[msg.sender] = user1;
    }

    /*
    1. storage : store persistently, example: state variables
    2. memory : scope within function, won't change outside function
    3. stack : variable inside a function
    4. calldata : complex data type with function external or public, example uint[]
    */

    function foo(uint[] calldata _users) external {    
    }

}