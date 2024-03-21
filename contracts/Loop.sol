// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loop{
    //Conditions

    //IF
    //FOR
    //WHILE

    uint[] public myArr = [1,2,3,4,5,6,7,8,9];
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function Checker(uint number) public pure  returns (bool){
       if(number % 2 == 0){
        return true;
       }else {
        return false;
       }

        
    }

    function countEvenNumber() public view  returns(uint){
        uint count = 0;
       for(uint i = 0; i < myArr.length;i++){
            if(i % 2 == 0){
                count++;
            }
       }
       return count;
    }


    function isOwner() public view returns (bool){
        return (msg.sender == owner);
    }
}