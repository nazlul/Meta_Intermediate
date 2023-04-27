// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

/*
    REQUIREMENTS:
        1. A new token is created on Ethereum
        2. Tokens are minted to your wallet

*/

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BribeIt is ERC20, Ownable 
{
    constructor() ERC20("BribeIt", "BRB") 
    {
        _mint(msg.sender, 10 * 10 ** decimals()); 
    }

    function mint(address to, uint256 amount) public onlyOwner 
    {
        _mint(to, amount);
    }

}