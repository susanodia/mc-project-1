# SimpleStore

This Solidity contract demonstrates how to use `require`, `assert`, and `revert` for basic error handling and input validation in smart contracts.

## Overview

The contract manages a single item’s quantity and includes functions to `increase`, `decrease`, and `reset` this quantity. It uses `require` to check inputs, `assert` to ensure internal conditions, and `revert` to handle errors.

## Getting Started

### Running the Code

1. Go to Remix and create a new file with a `.sol` extension (e.g., `SimpleStore.sol`).
2. Paste the following code into the file:
   ```sol
     // SPDX-License-Identifier: MIT
      pragma solidity ^0.8.0;
      
      contract SimpleStore {
          uint256 public itemQuantity;
      
          constructor() {
              itemQuantity = 10; // Initialize with 10 items
          }
      
          function increaseQuantity(uint256 _amount) public {
              require(_amount > 0, "Amount must be positive");
              itemQuantity += _amount;
          }
      
          function decreaseQuantity(uint256 _amount) public {
              require(_amount > 0, "Amount must be positive");
              assert(itemQuantity >= _amount); // Check if enough items are available
              
              if (itemQuantity < _amount) {
                  revert("Not enough items to subtract");
              }
      
              itemQuantity -= _amount;
          }
      
          function resetQuantity(uint256 _newQuantity) public {
              require(_newQuantity >= 0, "Quantity must be non-negative");
              itemQuantity = _newQuantity;
          }
      }
   ```
3. Compile the contract by selecting the "Solidity Compiler" tab and clicking "Compile".
4. Deploy the contract using the "Deploy & Run Transactions" tab.

### Functions
`increaseQuantity`: Adds a positive amount to the item quantity.
`decreaseQuantity`: Subtracts a positive amount, checks for sufficient quantity, and reverts if not enough items are available.
`resetQuantity`: Sets the item quantity to a new non-negative value.

## Authors

Susan Odianosen
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This version provides a concise overview and instructions for working with the contract.
