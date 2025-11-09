// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FastCoinFaucet is ERC20, Ownable {

    mapping(address => uint256) public lastClaimTime;

    uint256 public constant CLAIM_INTERVAL = 86400;

    uint256 public constant CLAIM_AMOUNT = 10 * 10**18;

    constructor() ERC20("FASTCoin", "FSC") Ownable(msg.sender) {

        _mint(address(this), 1000000 * 10**18);
    }

   
    // Write Function: Claim Tokens
    function claimTokens() external {
        require(block.timestamp - lastClaimTime[msg.sender] >= CLAIM_INTERVAL, "You can only claim once every 24 hours");
        require(balanceOf(address(this)) >= CLAIM_AMOUNT, "Faucet empty!");

        lastClaimTime[msg.sender] = block.timestamp;
        _transfer(address(this), msg.sender, CLAIM_AMOUNT);
    }

   
    // Read Function: Time Remaining
    function timeUntilNextClaim(address user) public view returns (uint256) {
        if (block.timestamp - lastClaimTime[user] >= CLAIM_INTERVAL) {
            return 0;
        } else {
            return CLAIM_INTERVAL - (block.timestamp - lastClaimTime[user]);
        }
    }

    
    // Admin Function: Refill Faucet
    function refillFaucet(uint256 amount) external onlyOwner {
        _mint(address(this), amount);
    }


    // Read Function: Faucet Balance
    function faucetBalance() public view returns (uint256) {
        return balanceOf(address(this));
    }
}
