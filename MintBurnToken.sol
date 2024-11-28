// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenDrick is ERC20, Ownable {
    // Constructor to initialize token name, symbol, and mint an initial supply to the owner
    constructor(address ownerAddress, uint256 initialSupply) ERC20("TokenDrick", "TSP") Ownable(ownerAddress) {
        // Mint the initial supply to the owner
        _mint(ownerAddress, initialSupply);
    }

    // Function to mint new tokens (only accessible by owner)
    function mintTokens(address recipient, uint256 amount) external onlyOwner {
        require(recipient != address(0), "Cannot mint to the zero address");
        _mint(recipient, amount);
    }

    // Function to burn tokens from the caller's balance
    function burnTokens(uint256 amount) external {
        require(amount > 0, "Burn amount must be greater than zero");
        require(amount <= balanceOf(msg.sender), "Insufficient balance to burn");
        _burn(msg.sender, amount);
    }

    // Function to transfer tokens (any user can transfer tokens)
    function transferTokens(address recipient, uint256 amount) external returns (bool) {
        require(recipient != address(0), "Recipient address cannot be the zero address");
        require(amount > 0, "Amount must be greater than zero");
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}

