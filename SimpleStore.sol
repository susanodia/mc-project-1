// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStore {
    uint256 public itemQuantity = 10;

    function increaseQuantity(uint256 _amount) public {
        require(_amount > 0, "Amount must be greater than zero");
        itemQuantity += _amount;
    }

    function decreaseQuantity(uint256 _amount) public {
        require(_amount > 0, "Amount must be greater than zero");
        assert(itemQuantity >= _amount);
        
        if (itemQuantity < _amount) {
            revert("Not enough items to decrease");
        }

        itemQuantity -= _amount;
    }

    function resetQuantity(uint256 _newQuantity) public {
        require(_newQuantity >= 0, "Quantity must be non-negative");
        itemQuantity = _newQuantity;
    }
}
