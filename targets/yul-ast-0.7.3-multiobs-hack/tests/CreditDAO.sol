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
    // Election part
    function createNewElections() public {
        // require(elections[nextElectionIndex - 1].endBlock + mandateInBlocks < block.number);
        elections[nextElectionIndex].startBlock = block.number;
        elections[nextElectionIndex].endBlock = block.number + blocksPerMonth;
        nextElectionIndex++;
        creditCEO = address(0x0);
    }
    function sumbitForElection() public {
        require(elections[nextElectionIndex - 1].endBlock > block.number);
        require(!elections[nextElectionIndex - 1].candidates[msg.sender]);
        uint nextCandidateId = elections[nextElectionIndex].nextCandidateIndex;
        elections[nextElectionIndex - 1].candidateIndex[nextCandidateId] = msg.sender;
        elections[nextElectionIndex - 1].candidateAddyToIndexMap[msg.sender] = nextCandidateId;
        elections[nextElectionIndex - 1].nextCandidateIndex++;
        elections[nextElectionIndex - 1].candidates[msg.sender] = true;
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
    function finishElections(uint _iterations) public {
        // require(elections[nextElectionIndex - 1].endBlock < block.number);
        // require(!elections[nextElectionIndex - 1].electionsFinished);
        uint curentVotes;
        uint nextCandidateId = elections[nextElectionIndex - 1].idProcessed;
        for (uint cnt = 0; cnt < _iterations; cnt++) {
            curentVotes = elections[nextElectionIndex - 1].candidateVotes[nextCandidateId];
            if (curentVotes > elections[nextElectionIndex - 1].numOfMaxVotes) {
                elections[nextElectionIndex - 1].maxVotes = elections[nextElectionIndex - 1].candidateIndex[nextCandidateId];
                elections[nextElectionIndex - 1].numOfMaxVotes = curentVotes;
            }
            nextCandidateId++;
        }
        elections[nextElectionIndex - 1].idProcessed = nextCandidateId;
        if (elections[nextElectionIndex - 1].candidateIndex[nextCandidateId] == address(0x0)) {
            creditCEO = elections[nextElectionIndex - 1].maxVotes;
            elections[nextElectionIndex - 1].electionsFinished = true;
            if (elections[nextElectionIndex - 1].numOfMaxVotes == 0) {
                elections[nextElectionIndex].startBlock = block.number;
                elections[nextElectionIndex].endBlock = block.number + blocksPerMonth;
                nextElectionIndex++;
            }
        }
    }
    function observe__0() public view returns (uint) {
        return elections[nextElectionIndex - 1].nextCandidateIndex;
    }
    function observe__1() public view returns (bool) {
        return elections[nextElectionIndex - 1].candidates[msg.sender];
    }
    function observe__2() public view returns (uint) {
        return nextElectionIndex;
    }
    function observe__3() public view returns (uint) {
        return elections[nextElectionIndex - 1].candidateAddyToIndexMap[msg.sender];
    }
    function observe__4() public view returns (bool) {
        return elections[nextElectionIndex - 1].userHasVoted[msg.sender];
    }
    function observe__5() public view returns (uint) {
        return elections[nextElectionIndex - 1].candidateVotes[elections[nextElectionIndex - 1].candidateAddyToIndexMap[msg.sender]];
    }
    function observe__6() public view returns (uint) {
        return elections[nextElectionIndex - 1].candidateAddyToIndexMap[msg.sender];
    }
    function observe__7() public view returns (bool) {
        return elections[(nextElectionIndex - 1)].candidates[msg.sender];
    }
    function observe__8(uint i) public view returns (bool) {
        return false;
    }
}
