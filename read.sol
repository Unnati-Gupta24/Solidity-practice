// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract readwrite{
    string public num;

    function get(string memory _num) public{
       num = _num;
    }

    function show() view public returns(string memory){
       return num;
    }
}
