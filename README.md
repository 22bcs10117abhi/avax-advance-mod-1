# Game Tokens

This Solidity project implements ERC20 tokens for "GEMS" and "GOLD" in the Game Tokens. Players can mine gold, trade gems, transfer gems, battle, and redeem cards using these tokens.

## Contracts Overview

## Contract 1: GEMS
Description: ERC20 token contract for GEMS.
Functions:
constructor(): Initializes the token with name "GEM" and symbol "GM", mints 1 billion tokens to the deployer.
burn(uint amount, address _of): Allows burning tokens from _of address. This burn() will be needed to defined in IERC20 interface in vault.sol.

## Contract 2: GOLD
Description: ERC20 token contract for GOLD.
Functions:
constructor(): Initializes the token with name "Gold" and symbol "GLD", mints 1 billion tokens to the deployer.
burn(uint amount, address _of): Allows burning tokens from _of address. This burn() will be needed to defined in IERC20 interface in vault.sol.

## Contract 3: Vault
Description: Manages interactions with GEMS and GOLD tokens for game tokens gameplay.
Features:
Gold mining, token balances, and gameplay logic.
Token transfers, gem trading, gems transfer, and card redemption using GEMS tokens.
Interaction with ERC20 tokens via IERC20 interface from OpenZeppelin.

<b> NOTE- add this function in IERC20.sol by ctrl +click on IERC20.sol in imported openzipline file.

`function burn(uint amount,address _of)external;`

This smart contract is deployed on avalanche subnet.
## Getting Started

Prerequisites:
Avalanche subnet deployed and wallet imported in metamask.
Deployment:
Compile and deployment of contracts:

>> Deploy your avalanche subnet.
>> open remix IDE.
    >> create new folder Game Tokens
    >> copy and paste GEMS.sol, GOLD.sol, Vault.sol into it.
    >> Compile all three contracts and switch to avalance subnet network in metamask.
    >> Select Injected metamask and deploy GEMS and GOLD contracts individually then using its address deploy vault contract. deploy all 3 using the same wallet account.
    >> copy the address of vault and paste in approve function of GOLD and GEMS and approve desired amount.
## Interaction

Players can start gold mining, trade gems, battle, and redeem cards within the Clash of Village game environment.
Usage:
`Mining Gold`:
Players can start gold mining using startGoldMining() and claim mined gold with claimGold(). start Mining is 1st and compulsory to get golds.

`Trading Gems`:
Use tradeGems(uint _noOfCoins) to trade GEMS tokens for GOLD tokens and collect the gems using withdrawGems().

`Battle and Rewards`:
Engage in battles using battle() to earn rewards in 100 GOLD tokens and battle fee is 20 GOLD token.

`Redeem Cards`:
Redeem cards of varying rarities (rare, super rare, epic, mythic, legendary) using redeemCards(Cards _card) and gems will be used to redeem these.

`Transfer Tokens`:
Transfer tokens between players using transferGems(address to, uint amount). Before using this user first need to approve the contract for transfer. copy the contract address in gems approve function and enter desired value


## Authors
Abhishek Kumar  
[@Abhishek](https://www.linkedin.com/in/abhishek-kumar-75273024b/)


## License

This MyToken is licensed under the MIT License 
