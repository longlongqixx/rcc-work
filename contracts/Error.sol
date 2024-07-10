// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Error {

    function testRequire(uint256 _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    } 

    function testRevert(uint256 _i) public pure {
        if (_i < 10) {
            revert("Input must be greater than 10");
        }
    }

    uint256 public num;

    function testAssert() public view {
        assert(num == 0);
    }

    // custom error
    error InsufficientBalance(uint256 balance, uint256 withDrawAmount);

    function testCustomError(uint256 _withDrawAmount) public view {
        uint256 bal = address(this).balance;
        if (bal < _withDrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withDrawAmount: _withDrawAmount
            });
        }
    }
    
}