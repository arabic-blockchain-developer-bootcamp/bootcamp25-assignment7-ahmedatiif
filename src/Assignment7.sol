// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Assignment7 is ERC20, Ownable {
    // Constructor to initialize the token with a name and symbol
    constructor() ERC20("Blokkat", "BLK") {}

    // Function to mint tokens
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
