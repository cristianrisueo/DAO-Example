// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract Timelock is TimelockController {
    /*
        minDelay: The time you have to wait before executing a proposal.
        proposers: The list of addresses who can propose.
        executors: The list of addresses who can execute after the
        proposal has passed.
    */
    constructor(
        uint256 minDelay, 
        address[] memory proposers, 
        address[] memory executors)
    TimelockController(minDelay, proposers, executors) {}
}