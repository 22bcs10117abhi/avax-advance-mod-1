// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GEMS is ERC20 {
    constructor() ERC20("GEM", "GM") {
        _mint(msg.sender, 10**18);
    }

    function decimals() public pure override returns (uint8) {
        return 0;
    }

    function burn(uint amount, address _of) public {
        _burn(_of, amount);
    }
}
