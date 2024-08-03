// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    //while declaring state variables write payable befor public
    address payable public owner = payable(msg.sender);

    //if a constructor is payable then the deploy button becomes red
    //and transaction is done at the time of deployment
    constructor() payable {

    }

    //in case of functions payable can be written
    //either before or after public
    function getEth() public payable{

    }

    function checkBalance() public view returns(uint){
        return address(this).balance;
    }
}
