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

//static passing of values
//order of execution
//A,B,C
//order of inheritance = order of execution

contract C is A("jason",22),B("NYC",100000){

}

//order of execution
//B,A,D

contract D is B,A{

    constructor() A("raul",24) B("Bay Area",200000){

    }
}

//dynamic passing of values

contract E is A,B{

    constructor(string memory _name,uint _age,string memory _add,uint _salary) A(_name,_age) B(_add,_salary){
    }
}

//dynamic and static passing of values

contract F is A("loius",28),B{

    constructor(string memory _add,uint _salary) B(_add,_salary){
    
    }
}
