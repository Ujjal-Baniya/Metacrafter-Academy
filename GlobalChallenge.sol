//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

contract GlobalChallenge{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You're not a Owner");
        _;
    }

    function CheckWEI() public payable onlyOwner returns(uint){
        return (msg.value);
    }
    function CheckAddress() public view returns(address){
        return (msg.sender);
    }
}