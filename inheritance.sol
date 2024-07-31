// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
     
    function fun1() public pure returns(string memory){
        return "I am A";
    }

    function fun2() public pure returns(string memory){
        return "I am A";
    }

    function fun3() public pure virtual returns(string memory){
        return "I am A";
    }

    function fun4() public pure virtual returns(string memory){
        return "I am A";
    }
}

contract B is A{
    function fun3() public pure override returns(string memory){
        return "I am B";
    }
    function fun4() public pure virtual override returns(string memory){
        return "I am B";
    }
}

contract C is B{
    function fun4() public pure override returns(string memory){
        return "I am C";
    }
}
