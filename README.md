# SimpleToken

Overview
SimpleToken is a basic ERC-20 compatible smart contract written in Solidity. It represents a simple token on the Ethereum blockchain with functionalities to mint and burn tokens. Users can deploy this contract to create their own tokens with specified details such as name, symbol, and initial supply.

Contract Details
Name: SimpleToken
Symbol: [Your Symbol]
Total Supply: [Initial Supply]

Usage

Minting: Use the mint function to create new tokens and increase the total supply.
Provide the target account and the value to be minted.

function mint(address _account, uint256 _value) public {
    // ...
}
Burning: Use the burn function to destroy tokens and decrease the total supply.
Provide the target account and the value to be burned.

function burn(address _account, uint256 _value) public {
    // ...
}

Events
Mint Event: Triggered when new tokens are minted.
Provides information about the account and the minted value.
Burn Event: Triggered when tokens are burned.
Provides information about the account and the burned value.

// Deploy SimpleToken
SimpleToken simpleToken = new SimpleToken("MyToken", "MTK", 1000000);

// Mint tokens
simpleToken.mint(address(this), 500000);

// Burn tokens
simpleToken.burn(address(this), 200000);
License
This project is licensed under the MIT License.Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
