// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//revert is just another way of writing conditions but it is used with if statements

contract A{
    address public owner = msg.sender;
    uint public age = 25;

    error throwError(string,address);

    function check(uint _x) public{
        age = age+5;
        if(_x<2){
            revert throwError("value is less than 2",msg.sender);
        }
    }

    function ownah() public {
        age = age-2;
        if(owner!=msg.sender){
            revert ("you are not the owner");
        }
    }

    //Assert
    function checkowner() public view{
        assert(owner!=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }
    
}
