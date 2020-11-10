pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED

/* typedef: t1 -> uint */
/* typedef: t2 -> uint */
/* typedef: t3 -> uint */
/* typedef: t4 -> bool */
/* typedef: t5 -> uint */
/* typedef: t6 -> address */
/* typedef: t7 -> uint */
/* typedef: t8 -> uint */
/* typedef: t9 -> bool */
/* typedef: t10 -> bool */
/* typedef: t11 -> address */
/* typedef: t12 -> uint */
/* typedef: t13 -> uint */

contract CreditDAO {
    struct Election {
        /* t1 -> */ uint startBlock;
        /* t2 -> */ uint endBlock;
        /* t3 -> */ uint totalCrbSupply;
        /* t4 -> */ bool electionsFinished;
        /* t5 -> */ uint nextCandidateIndex;
        mapping (uint => /* t6 -> */ address) candidateIndex;
        mapping (address => /* t7 -> */ uint) candidateAddyToIndexMap;
        mapping (uint => /* t8 -> */ uint) candidateVotes;
        mapping (address => /* t9 -> */ bool) candidates;
        mapping (address => /* t10 -> */ bool) userHasVoted;
        /* t11 -> */ address maxVotes;
        /* t12 -> */ uint numOfMaxVotes;
        /* t13 -> */ uint idProcessed;
    }
    uint public nextElectionIndex;
    mapping(uint => Election) public elections;
    address public creditCEO;
    uint public mandateInBlocks = 0;
    uint public blocksPerMonth = 76235;
    constructor() {
        elections[nextElectionIndex].startBlock = block.number;
        elections[nextElectionIndex].endBlock = block.number + blocksPerMonth;
        nextElectionIndex++;
    }
    function vote(address _participant) public {
        require(elections[nextElectionIndex - 1].endBlock > block.number);
        // (avaliableBalance, lockedBalance, bondMultiplier, lockedUntilBlock, lastBlockClaimed) = creditBitContract.getAccountData(msg.sender);
        // require(lockedUntilBlock >= elections[nextElectionIndex - 1].endBlock);
        require(!elections[nextElectionIndex - 1].userHasVoted[msg.sender]);
        uint candidateId = elections[nextElectionIndex - 1].candidateAddyToIndexMap[_participant];
        elections[nextElectionIndex - 1].candidateVotes[candidateId] += 1;
        elections[nextElectionIndex - 1].userHasVoted[msg.sender] = true; //
    }
    function observe__8(uint i) public view returns (bool) {
        return elections[i].userHasVoted[msg.sender];
    }
}
