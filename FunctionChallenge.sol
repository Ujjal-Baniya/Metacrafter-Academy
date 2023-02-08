pragma solidity ^0.8.17;


contract FunctionChallenge{
    uint public x = 5;
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function add(uint a, uint b) public pure returns(uint){
        return (a + b);
    }

    function add(uint y) private view returns(uint){
        return (x + y);
    }

    function sender(address reciever) external payable{

    }

    function showBalance() external view returns(uint){
        return address(this).balance;
    }
}