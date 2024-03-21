// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays{
    //Arrays

    uint [] public arr = [1,2,3];
    string[] public arrS = ["Apple","Orange"];
    string[] public myArr;
    uint[][] public twoArr = [[1,2,3], [4,5,6]];

    function modify(string memory value) public{
            myArr.push(value);
    }
    function valueount() public view returns (uint){
        return myArr.length;
    }
    function twoValueCount() public view returns (uint){
        return twoArr.length;
    }
}