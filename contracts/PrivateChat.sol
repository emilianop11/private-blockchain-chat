// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/utils/Counters.sol";
// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract PrivateChat {
    uint public unlockTime;
    address payable public owner;

    struct Chat{
      uint256 chatId;
      string compressionAlgorithm;
      uint createdAt;
      address[] parties;

      // messages are not simple strings. This is a base64 encoded json
      // following: https://github.com/emilianop11/private-chat
      string[] messages;
    }

    mapping(uint256 => Chat) _chats;
    mapping(address => uint256[]) _addressesToChats;
    Counters.Counter private _chatIdCounter;

    event ChatEvent(address from, address to, uint256 chatId);

    constructor()  {
        owner = msg.sender;
    }

    function newChat() public {
         _contractIdCounter.increment();
        uint256 contractId = _contractIdCounter.current();
        uint creationDate = block.timestamp;
        uint unlockTime = creationDate + (daysToUnlock * 1 days);

        Contract storage newContract = _contracts[contractId];
    }
}
