// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//revert is just another way of writing conditions but it is used with if statements

contract A{
    address public owner = msg.sender;
    uint public age = 25;

    function check(uint _x) public{
        age = age+5;
        if(_x<2){
            revert("value is less than 2");
        }
    }

    function ownah() public {
        age = age-2;
        if(owner!=msg.sender){
            revert("you are not the owner");
        }
    }
    
}
