// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract SafeMathTester{
    uint8 public bigNumber = 255; // checked
    uint8 public smallNumber = 0; // unchecked

    function add() public {
        bigNumber = bigNumber + 1; // error and revert
     // unchecked {bigNumber = bigNumber + 1;} leads to overflow
    }

    function subtract() public {
        smallNumber = smallNumber - 1; // error and revert
     // unchecked {smallNumber = smallNumber - 1;} leads to underflow
    }
}