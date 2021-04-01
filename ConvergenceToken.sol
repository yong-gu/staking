// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title ConvergenceToken
 *
 * @dev A minimal ERC20 token contract for the Convergence token.
 */
contract ConvergenceToken is ERC20("Convergence", "CONV") {
    uint256 private constant TOTAL_SUPPLY = 10000000000e18;

    constructor(address genesis_holder) {
        require(genesis_holder != address(0), "ConvergenceToken: zero address");
        _mint(genesis_holder, TOTAL_SUPPLY);
    }
}
