pragma solidity ^0.8.0;

contract add{
    uint[] arr;

    function get(uint _num) public {
        for(uint i=1;i<_num;i++){
           arr.push(i);
        }
    }

    function show() public view returns(uint[] memory,uint){
        return(arr,arr.length);
    }
}
