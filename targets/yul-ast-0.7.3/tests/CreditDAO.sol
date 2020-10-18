pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED

contract CreditDAO {
    struct Election {
        uint startBlock;
        uint endBlock;
        uint totalCrbSupply;
        bool electionsFinished;
        uint nextCandidateIndex;
        mapping(uint => address) candidateIndex;
        mapping(address => uint) candidateAddyToIndexMap;
        mapping(uint => uint) candidateVotes;
        mapping(address => bool) candidates;
        mapping(address => bool) userHasVoted;
        address maxVotes;
        uint numOfMaxVotes;
        uint idProcessed;
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
    function observe() public view returns (
        uint tmp0, uint tmp1, uint tmp2, address tmp3, address tmp4, 
        uint tmp5, uint tmp6, bool tmp7, uint tmp8, bool tmp9, address tmp10, uint tmp11
        ) {
        // modified in constructor
        tmp0 = elections[nextElectionIndex].startBlock;
        tmp1 = elections[nextElectionIndex].endBlock;
        tmp2 = nextElectionIndex;
        // modified in createNewElections
        tmp3 = creditCEO; // address
        // modified in sumbitForElection
        uint nextCandidateId = elections[nextElectionIndex].nextCandidateIndex;
        tmp4 = elections[nextElectionIndex - 1].candidateIndex[nextCandidateId]; // address
        tmp5 = elections[nextElectionIndex - 1].candidateAddyToIndexMap[msg.sender];
        tmp6 = elections[nextElectionIndex - 1].nextCandidateIndex;
        tmp7 = elections[nextElectionIndex - 1].candidates[msg.sender]; // bool
        // modified in vote
        tmp8 = 0; // elections[nextElectionIndex - 1].candidateVotes[candidateId] += 1;
        tmp9 = elections[nextElectionIndex - 1].userHasVoted[msg.sender]; // bool
        // modified finishElections
        tmp10 = elections[nextElectionIndex - 1].maxVotes;
        tmp11 = elections[nextElectionIndex - 1].numOfMaxVotes;
    }
    function observe0() public view returns (uint tmp0) {
        tmp0 = nextElectionIndex;
    }
    function observe1() public view returns (uint tmp0) {
        tmp0 = elections[nextElectionIndex].startBlock;
    }
}

