// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypes {
    // State Variables
    // This variable can be accessed from this entire contract
    // This variable will be stored on the blockchain
    uint public stateVariable = 1;

    function getLocalVariable() public pure returns (uint) {
        // Local Variables
        // This variable can only be accessed from this function
        uint localVariable = 1;
        return localVariable;
    }

    // Booleans
    bool public myBool = true;

    // Signed Integers
    int public myInt = -1;
    int8 public myInt8 = -1;
    int256 public myInt256 = -1;

    // Unsigned Integers
    uint public myUint = 1;
    uint8 public myUint8 = 1;
    uint256 public myUint256 = 1;

    // Address
    // Replace address(0) a.k.a. zero address with a specific address (0x...)
    address public myAddress = address(0);

    // Strings and Bytes
    string public myString = "Hello World!";
    bytes1 public myBytes1 = "H";
    bytes32 public myBytes32 = "Hello World!";

    // Struct
    struct MyStruct {
        uint256 myUint256;
        string myString;
    }
    MyStruct public myStruct = MyStruct(1, "Hello World!");
}
