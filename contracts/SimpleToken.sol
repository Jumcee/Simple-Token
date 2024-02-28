// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    // Token details
    string public name;
    string public symbol;
    uint256 public totalSupply;

    // Balances mapping
    mapping(address => uint256) public balances;

    // Events
    event Mint(address indexed account, uint256 value);
    event Burn(address indexed account, uint256 value);

    // Constructor to initialize token details
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    // Mint function
    function mint(address _account, uint256 _value) public {
        require(_value > 0, "Value must be greater than zero");
        totalSupply += _value;
        balances[_account] += _value;
        emit Mint(_account, _value);
    }

    // Burn function
    function burn(address _account, uint256 _value) public {
        require(_value > 0, "Value must be greater than zero");
        require(balances[_account] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_account] -= _value;
        emit Burn(_account, _value);
    }
}
