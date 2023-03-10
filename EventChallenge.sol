//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

contract EventChallenge {
    event log1(address indexed _to, string message);
    event NoPara();

    event Status(address indexed _owner, string Status);

    event deposit(address indexed _from, bytes32 indexed _to, uint amount);

    function EventTrigger(bytes32 _to, uint amount) public payable{
        emit log1(msg.sender, "Yes the event is emitted");
        emit NoPara();

        emit Status(msg.sender, "Connected");
        emit deposit(msg.sender, _to, amount);
    }

}