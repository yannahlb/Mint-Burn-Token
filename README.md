# ETH+AVAX PROJECT: Create and Mint Token

This Solidity program is a basic implementation of an ERC20 token system with added functionality for minting, burning, and transferring tokens. The program showcases the management of token supply, owner permissions, and basic token interactions on the Ethereum blockchain.


## Description

The TokenDrick contract is an ERC20-compliant token that introduces the following features:
- Minting: Only the contract owner can mint new tokens, increasing the total supply.
- Burning: Any user can reduce their token balance by burning tokens, which decreases the total supply.
- Transferring: Users can transfer tokens to any valid Ethereum address.

## Getting Started

Follow these steps to run the program using Remix, an online Solidity IDE:

1. Create a file named MintBurnToken.sol in Remix and paste the contract code into it.

2. Ensure to select the appropriate Solidity version (0.8.18) and compile the code.

3. Deploy the contract.
   
4. Interact with the contract. The mintTokens function allows the owner to add tokens to a recipient's balance, but attempts by non-owner accounts will fail with an error. The burnTokens function enables any user to reduce their token balance. Lastly, the transferTokens function allows any user to send tokens to another address, but transfers to the zero address or without sufficient balance will fail.


## Authors

Reannah Lobaton
@yannahlb
