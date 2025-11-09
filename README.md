🎓 FASTCoin Faucet dApp

A simple decentralized application (dApp) built using Solidity, Ethers.js, and MetaMask on the Sepolia Testnet.
The dApp allows users to claim 10 FASTCoin (FSC) tokens every 24 hours from an on-chain faucet.

🚀 Project Overview

This project demonstrates the interaction between a smart contract and a web-based frontend using MetaMask.
Users can connect their wallets, claim free tokens, and view the faucet’s balance and next claim time.

🧱 Smart Contract Details

Name: FASTCoin Faucet

Symbol: FSC

Network: Sepolia Testnet

Contract Address: 0xfa685308eae1822a5b9e3986c96b7414fbe4873b

Language: Solidity (v0.8.20)

Framework: Remix IDE

📄 Functions
Function	Type	Description
claimTokens()	Write	Allows a user to claim 10 FSC tokens every 24 hours
faucetBalance()	Read	Returns the remaining token balance in the faucet
timeUntilNextClaim(address)	Read	Shows the time (in seconds) before the user can claim again
refillFaucet(uint256)	Write (owner only)	Allows the owner to refill the faucet with new tokens.

🌐 Frontend (index.html):

The frontend is a single-page HTML app built with Ethers.js and connects directly to the deployed contract.

Features:

1. Connect Wallet: Connects user’s MetaMask wallet

2. Claim Tokens: Calls the claimTokens() function to receive 10 FSC

3. Display Faucet Info: Shows faucet balance and claim cooldown timer

4. Auto Refresh: Updates data every 20 seconds

Tech Stack:

HTML5 / CSS3 / JavaScript

Ethers.js (v5.6)

MetaMask (Browser Extension)

🧩 How to Run Locally
Prerequisites

MetaMask
 installed and connected to Sepolia Test Network

Some Sepolia ETH (for gas fees)

Modern browser (Chrome recommended)

Steps

1. Clone the repository:

git clone https://github.com/yourusername/fastcoin-faucet.git


2. Open the folder and run a local server:

python -m http.server 8000


or use VS Code → “Open with Live Server”

3. Open in browser:

http://localhost:8000


4. Click “Connect MetaMask” → then “Claim 10 FASTCoin”.
