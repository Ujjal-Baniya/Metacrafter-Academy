pragma solidity ^0.8.17;

contract modifierchallenge {
    address owner;
    uint a = 1;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(owner == msg.sender, "This is only accessible to owner");
        _;
    }

    function verify() public view onlyOwner returns(uint){
        return(a);
    } 
        
}