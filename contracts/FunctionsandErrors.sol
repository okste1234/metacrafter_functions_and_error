// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FunctionsandErrors {
    uint256 public maxVal;
    uint256 three;

    function requireError(uint256 _val) public view {
        require(maxVal >= _val, "You can't pass a greater than than maxVal");
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
