pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract EthconToken is ERC20 {
    string public name = "EthconToken";
    string public symbol = "ETH";
    uint8 public decimals = 2;
    uint public INITIAL_SUPPLY = 12000;
    
    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}

