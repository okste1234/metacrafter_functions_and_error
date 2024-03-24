// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FunctionsAndErrors {
    uint256 public maxVal = 6;
    uint256 public three = 3;

    function requireError(uint256 _val) public view {
        require(
            maxVal >= _val,
            "You can't pass a value greater than than maxVal"
        );
    }

    function assertError(uint256 _val) public view {
        assert(_val == three);
    }

    function revertError(uint256 _val) public view {
        if (_val != three) {
            revert("_val must be 3");
        }
    }
}
