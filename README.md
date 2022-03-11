# DevBank

The purpose of this contract is to enable an ERC20 token to be deposited to the contract and be withdrawn from by the user. This is a simplifed bank contract thats focus was security and minimizing gas.

Prior to execution:
1) Setup and have an ethereum addresss wallet such as MetaMask
2) Change network from mainnet to Rinkeby testnet
3) Aquire test ether from https://faucet.rinkeby.io/ by pasting your eth address 
4) Find an ERC20 contract on https://rinkeby.etherscan.io/ for the token that will be deposited/withdrawn from the contract (bypass this to use the default token address already in the contract) 

Steps to execute:
1) Copy DevBank.sol and paste it in a new file under contracts in Remix https://remix.ethereum.org/
2) Give the file a name and end it with .sol
3) Can either launch with the usdt token thats currently in the contract or rename the variable usdt and input the erc20 token contract of your choosing thats on the rinkeby network
4) Left hand side of remix click on the 3rd icon the compiler and set it to 0.8.0
5) Click the big blue complie button on the left hand side.
6) Left hand side click on the next icon down that says deploy
7) Change enviroment to injected web3
8) approve metamask transaction if it pops up
9) Click deploy on the left hand side and approve the metmask transactions
10) Scrool down on the lefthand side under deployed contracts and copy the contract address
11) Go to https://rinkeby.etherscan.io/  and input the erc20 token address
12) Click on contract (above the transactions)
13) Click on write
14) Connect your wallet to web 3 (below the write header)
15) Click on the mint function and mint yourself tokens (add 18^10) i.e 10 tokens = 10 00000000000000000
16) Add the erc20 address to your metamask assets to verify the tokens you minted are in your wallet
17) Back under write click on the approve function
18) Input your contract address (copied from step 10)
19) Input the amount of tokens you plan to deposit into the contract. This amount requires the 10^18 (cannot be more than you minted yourself..duh) this step approves the contract allowance amount
20) Go back to remix under deployed contracts input the amount of tokens you want to deposit followed with the 10^18 (token amount followed by 18 zeros)
21) Hit deposit and complete the metamask transactions
22) To withdraw input the amount you want to withdraw from the contract (followed by 18 zeros) and hit the withdraw button to move the tokens from the contract back into your metamask account

