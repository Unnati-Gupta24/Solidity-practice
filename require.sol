// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//condition statement stops the execution of code further if condition
//does not fulfill
contract A{
    address public owner = msg.sender;
    uint public age = 25;

    function check(uint _x) public {
        age = age+5;
        require(_x>2, "entered value is less than 2");
    }

    function own() public {
        require(owner==msg.sender,"you impostor");
        age = age-2;
    }
}
