//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract factorial{
    uint public number;
    uint i = 1;
    uint public ans = 1;

    function get(uint _num) public{
        number = _num;
    }

    function fact() public{
        for(i=1;i<=number;i++){
           ans = ans*i;
        }
    }
}
