// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract basicEvent{
    event balance(address location,string message,uint value);

    function displayLog(uint _value) public{
        emit balance(msg.sender," has ", _value);
    }

}

//you can create indexing in an event
//indexing cannot be applied to more than 3 elements in an event

//example of using event eg. chatApp

contract chatApp{
    event chat(address indexed from, address to, string message);

    function seeChat(address _to,string memory _message) public{
        emit chat(msg.sender,_to,_message);
    }
}
