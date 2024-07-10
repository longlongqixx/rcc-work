// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherUnits {
    uint256 public onewei = 1 wei;

    bool public isOneWei = (onewei == 1);

    uint256 public oneGwei = 1 gwei;

    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public oneEther = 1 ether;

    bool public isOneEther = (oneEther == 1e17);
    
}