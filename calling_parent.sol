// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    event log(string name,uint age);

    function fun1() public virtual{
        emit log("A1",10);
    }
    function fun2() public virtual{
        emit log("A2",10);
    }
}

contract B is A{

    function fun1() public virtual override {
        emit log("B1",20);
        A.fun1(); //direct calling
    }
    function fun2() public virtual override {
        emit log("B2",20);
    }
}

contract C is A{

    function fun1() public virtual override {
        emit log("C1",30);
    }
    function fun2() public virtual override {
        emit log("C2",30);
        super.fun2(); //will call the function executed just before
    }
}

contract D is C,B{

    function fun1() public virtual override(B,C) {
        emit log("D1",40);
    }
    function fun2() public virtual override(B,C) {
        emit log("D2",40);
        super.fun2();//will call the rightmost function on inheritance execution line
        //output :- B2,20
    }
}
