// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//if same name function is present in multiple contract and the child
//inherits the properties of both the contracts
//then overriding is done in a bit different way

contract A{
    uint public a;

    constructor(){
        a=10;
    }

    function callA() public{
        a=100;
    }

    function cat() pure public virtual returns(string memory){
        return "I am in A";
    }
}

contract B is A{
    uint public b;

    constructor(){
        b=20;
    }

    function callB() public{
        b=200;
    }

    function cat() pure public virtual override  returns (string memory){
        return "I am in B";
    }
}

contract C is A,B{
    
    function cat() pure public override(B,A) returns (string memory){
        return "I am in C";
    }
}
