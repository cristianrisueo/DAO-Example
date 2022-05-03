// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceToken is ERC20Votes {
    // Max supply of the token
    uint256 public maxSupply = 1000000000000000;

    // The contructor mints the max supply to the sender
    constructor() 
    ERC20("Governance Token", "GET") 
    ERC20Permit("GovernanceToken") {
        _mint(msg.sender, maxSupply);
    }

    // Overrided functions from the ERC20Votes contract 
    function _afterTokenTransfer(address from, address to, uint256 amount) 
    internal override(ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount) internal override(ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount) internal override(ERC20Votes) {
        super._burn(account, amount);
    }
}