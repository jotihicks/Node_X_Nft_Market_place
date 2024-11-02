// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple contract to perform arithmetic operations
contract ArithmeticOperations {

    // Function to add two unsigned integers
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // Function to subtract one unsigned integer from another
    // Handles the case where b is greater than a
    function subtract(uint a, uint b) public pure returns (uint) {
        require(b <= a, "Subtraction would result in a negative value");
        return a - b;
    }

    // Function to multiply two unsigned integers
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    // Function to divide one unsigned integer by another
    // Prevents division by zero
    function divide(uint a, uint b) public pure returns (uint) {
        require(b > 0, "Cannot divide by zero");
        return a / b;
    }
}
