//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract incdec{
    uint public mynumber;

    function get(uint _mynum) public{
        mynumber = _mynum;
    }

    function inc() public returns(uint){
        return mynumber++;
    }

    function dec() public returns(uint){
        return mynumber--;
    }
}
