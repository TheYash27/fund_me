// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FallbackExample {
    uint8 public result;

    // Fallback function must be declared as external.
    receive() external payable {
        result = 1;
    }

    fallback() external payable {
        result = 2;
    }
}

// Explainer from: https://solidity-by-example.org/fallback/
// Ether is sent to contract
//      is msg.data empty?
//          /   \
//         yes  no
//         /     \
//    receive()?  fallback()
//     /   \
//   yes   no
//  /        \
//receive()  fallback()
