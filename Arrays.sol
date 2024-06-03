// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays {
    // Arrays
    // Public array elements can be accessed through their index

    // 1D Arrays
    uint[] public uintArr = [1, 2, 3];
    string[] public stringArr = ["Hello", "World", "!"];
    string[] public values;

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function countValue() public view returns (uint) {
        return values.length;
    }

    // 2D Arrays
    uint256[][] public array2D = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];
}
