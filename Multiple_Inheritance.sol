// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    uint public a;

    constructor(){
        a=100;
    }

    function valA() public{
        a=10;
    }
}

contract B is A{
    uint public b;

    constructor(){
        b=200;
    }

    function valB() public{
        b=20;
    }
}


//during multiple inheritance we write base case first
//for example {contract C is B,A} is invalid becoz base is A and B is written before A

//right to left
//depth first manner
//most base like to most moved

contract C is A,B{
    
}
