// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct ejk{
    string name;
    uint age;
    uint don;
}

contract advmapin{
    mapping(address=>ejk) public player;

    function set(string memory _name,uint _age,uint _don)public{
        player[msg.sender] = ejk(_name,_age,player[msg.sender].don+_don);
    }

    function deleteplayer() public{
        delete player[msg.sender];
    }
}
