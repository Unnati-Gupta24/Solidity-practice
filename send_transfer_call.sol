// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{

    receive() external payable {}

    function checkBalance() public view returns(uint) {
        return address(this).balance;
    }

    function SEND(address payable getter) public{
        require(getter.send(1000000000),"transaction failed");
    }

    function TRANSFER(address payable getter) public{
        getter.transfer(1000000000);
    }

    function CALL(address payable getter) public{
        (bool sent,) = getter.call{value:100000000}("");
        require(sent,"transaction failed");
    }
}
