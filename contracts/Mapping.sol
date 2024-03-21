// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{

    //Mapping
     mapping(uint => string) public names;
     constructor() {
        names[1] = "Pratik";
        names[2] = "Srii";
        names[3] = "Krishna";
     }

    mapping (uint => book) public books;

     struct book{
        string title;
        string author;
     }

     function addBook(uint id , string memory title , string memory author) public {
             books[id] = book(title,author);   
     }

        //Mappnig inside Mapping
        mapping(address => mapping(uint => book)) public mybooks;
}