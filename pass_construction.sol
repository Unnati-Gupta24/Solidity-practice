// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    string public name;
    uint public age;

    constructor(string memory _name,uint _age){
        name = _name;
        age = _age;
    }
}

contract B{
    string public add;
    uint public salary;

    constructor(string memory _add,uint _salary){
        add = _add;
        salary = _salary;
    }
}

contract C is A("jason",22),B("NYC",100000){

}
