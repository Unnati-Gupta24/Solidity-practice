// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract check{
    int public num;

    function get(int _num) public{
        num = _num;
    }

    function chec() view public returns(string memory){
       if(num<0){
        return "negative num";
       }else{
        return "positive num";
       }
    }

    //format => condition?true:false
    function ternary() view public returns(uint){
        return num<0?1:2;
    }
}
