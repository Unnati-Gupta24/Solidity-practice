// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract struc{
    struct Boss{
        string bo;
        uint go;
        int yo;
        bool vo;
    }
    Boss Boss1;
    Boss Boss2;

    function show1() public {
        Boss2 = Boss("yo",76,-76,false);
    }

    function insertboss1(string memory _bo,uint _go,int _yo,bool _vo) public{
        Boss1.bo = _bo;
        Boss1.go = _go;
        Boss1.yo = _yo;
        Boss1.vo = _vo;
    }

    function showboss1() view public returns(string memory,uint,int,bool){
        return(Boss1.bo,Boss1.go,Boss1.yo,Boss1.vo);
    }

    function showboss2() view public returns(string memory,uint,int,bool){
        return(Boss2.bo,Boss2.go,Boss2.yo,Boss2.vo);
    }
}
