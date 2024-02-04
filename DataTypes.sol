// SPDX-License-Identifier: MIT
pragma solidity >=0.8.22 <0.8.24;

// DataTypes contract
contract DataTypes {
    // All variables are assumed as private unless set otherwise
    // State Variable
    uint result;
    int betterResult;
    bool public isEmpty = true;
    address myAddress;
    bytes1 letter = 'X';
    string sentence = "The quick brown fox jumps over the lazy dog!";
    enum Jobs {FE, BE, QA}

    // add adds two input variables and set it to result
    function add(uint x, uint y) public {
        // Local Variable
        uint temp = x + y;

        result = temp;
        isEmpty = false;
    }

    // substract substracts two input variables and set it to betterResult
    function substract(int x, int y) public {
        // Local Variable
        int temp = x - y;

        betterResult = temp;
        isEmpty = false;
    }

    // getResult returns result
    function getResult() public view returns (uint) {
        return result;
    }

    // getBetterResult returns betterResult
    function getBetterResult() public view returns (int) {
        return betterResult;
    }

    // getBE returns BE enum from Jobs
    function getBE() public pure returns(Jobs) {
        return Jobs.BE;
    }
}