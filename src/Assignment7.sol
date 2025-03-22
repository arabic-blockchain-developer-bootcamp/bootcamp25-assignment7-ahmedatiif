// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Assignment7 is ERC20, Ownable {
    // Constructor to initialize the token with a name and symbol
    constructor(string memory _name , string memory _symbol) ERC20("_name", "_symbol") Ownable (msg.sender){}

    // Function to mint tokens
    function mint(address to, uint256 amount) public  onlyOwner {
        _mint(to, amount);
    }
}
