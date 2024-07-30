// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract length{
    string public str;

    function setstring(string memory _str)public{
        str = _str;
    }

    function calc()view public returns(uint){
        bytes memory hi = bytes(str);
        return hi.length;
    }
}
