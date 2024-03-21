// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FirstContract{
    // state variable:It is stored on the blockchain. It can be used in any function in throughout the code base
    uint stateVar = 2;
    // local variable : variables that are present only inside the contract
function getValue() public pure returns (uint){
    uint value = 1;  //local variable
    value = value + 1;
    return value;


}
    //DATATYPES
    uint256 public myUnit = 1;
    string public myStrin = "Hello World";
    int public myInt = -1;
    bytes32 public MyBytes32 = "Hello World";
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


    struct myStruct {
        uint myUnitStruct;
        string myStringStruct;
    } 

    myStruct public mystruct = myStruct(1,"Hello World");

}