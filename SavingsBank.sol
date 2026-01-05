// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SavingsBank {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Anyone can deposit ETH
    function deposit() external payable {
        
    }

    // Total balance of the contract
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    // Only owner can withdraw ETH
    function withdraw(uint _amount) external {
        require(msg.sender == owner, "Only owner can withdraw");
        require(_amount <= address(this).balance, "Not enough balance");
        (bool success, ) = payable(owner).call{value: _amount}("");
        require(success, "Transfer failed");
    }
}
