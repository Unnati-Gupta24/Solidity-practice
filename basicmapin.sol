//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mappin{
    mapping(uint => string) evm;

    function set() public{
        evm[1] = "a";
        evm[2] = "b";
        evm[3] = "c";
        evm[4] = "d";
        evm[5] = "e";
    }

    function get(uint _id) public view returns(uint,string memory){
        return(_id,evm[_id]);
    }
}
