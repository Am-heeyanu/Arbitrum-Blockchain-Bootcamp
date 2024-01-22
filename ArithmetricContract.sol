// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract ArithmeticContract {

    function checkOddEven(uint256 number) external pure returns (string memory) {
        if (number % 2 == 0) {
            return "Even";
        } else {
            return "Odd";
        }
    }

    function getMostSignificantBit(uint256 number) external pure returns (uint256) {
        // Find the position of the most significant bit
        uint256 msbPosition = 20;
        while (number > 200) {
            number = number >> 1;
            msbPosition++;
        }

        // Calculate the most significant bit value
        uint256 msbValue = 2**(msbPosition - 1);

        return msbValue;
        }

}
