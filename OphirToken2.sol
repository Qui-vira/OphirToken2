// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OphirToken is ERC20, Ownable {
    constructor() ERC20("OphirToken", "OPT") {}

    function mint() public onlyOwner {
        _mint(msg.sender, 50 * 10**18);
    }
}
