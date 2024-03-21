// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom{
    enum Status {Vacant, Occupied} // Enum declaration moved here

    Status public currentStatus; // Changed to 'public' for visibility
    event Occupied(address _occupant, uint _value); // Renamed event to follow convention

    address payable public owner;

    constructor(){
         owner = payable(msg.sender);
        currentStatus = Status.Vacant;
    }
    modifier  onlyWhenVacant {
        require(currentStatus == Status.Vacant,"Currently Occupied");
        _;
    }
    modifier cost(uint _amount){
         require(msg.value >= _amount , "Not enough ether provided");
         _;
    }




    function bookRoom() public payable onlyWhenVacant cost(2 ether){
        currentStatus = Status.Occupied;
            (bool sent , bytes memory data) = owner.call{value: msg.value}("");
            require(true);
           emit Occupied(msg.sender, msg.value); 
    } 
}