// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract4 {
    event NewTrade ( // 1. event cannot be read from smart contract 2. lower gas fee than storage variables
        uint date,
        address indexed from, // at most 3 indexed fields from one event
        address to,
        uint amount
    );

    function trade(address to, uint amount) external {
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}