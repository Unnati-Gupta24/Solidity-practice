// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint public age;
    address public owner = msg.sender;

    modifier onlyOwner(){
        require(owner==msg.sender,"you are not the owner");
        _;
    }

    function startAuction() public view onlyOwner {
        //code
    }

    function stopAuction() public view onlyOwner {
        //code
    }

    //a contract can have only one constructor but it can have multiple modifiers
    //a modifier is similar to a constructor in a blockchain
    
    modifier temp(uint _x){
        age = age+_x;
        _;
    }

    function ageAdd(uint _y) public temp(_y){
        //code
    }

}
