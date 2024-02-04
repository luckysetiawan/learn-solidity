// SPDX-License-Identifier: MIT
pragma solidity >=0.8.22 <0.8.24;

// Syntax contract
contract Syntax {
    // Untyped Integer
    uint untypedInteger;

    // setUntypedInteger sets the untypedInteger
    function setUntypedInteger(uint x) public {
        untypedInteger = x;
    }

    // getUntypedInteger returns the untypedInteger
    function getUntypedInteger() public view returns (uint) {
        return untypedInteger;
    }
}
