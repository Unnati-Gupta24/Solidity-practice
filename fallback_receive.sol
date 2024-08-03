// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Fallback
It is executed when a non existence function is called on the contract.
It has to be marked external.
It has no name.
It has no arguments.
It cannot return anything.
It can be defined one per contract.
If not marked payable it will throw error while receiving ether.
It's main use is to directly send Eth to contract.
*/
// RECEIVE
// same as fallback except it can receive only Eth not any data and it is mandatory payable.

contract fallback_receive{

    event log(string _fun,address _sender,uint _value,bytes _data);

    fallback() external payable {
        // receives both data and ether
        emit log("fallback",msg.sender,msg.value,msg.data);
    }

    receive() external payable{
        // receives only ether
        emit log("receive",msg.sender,msg.value,"");
    }

    function checkBalance()public view returns(uint){
        return address(this).balance;
    }
}
