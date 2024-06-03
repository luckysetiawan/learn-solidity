// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mappings {
    // Mappings
    // Mappings are a data type that lets you store data on the blockchain with key-value pairs

    struct Book {
        string title;
        string author;
    }

    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    constructor() {
        names[1] = "Lucky";
        names[2] = "Setiawan";
    }

    function addBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
