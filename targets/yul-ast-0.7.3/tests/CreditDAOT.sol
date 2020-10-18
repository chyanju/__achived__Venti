pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED

contract CreditDAOT {
    struct Election {
        uint startBlock;
        uint endBlock;
        uint totalCrbSupply;
        uint8 nextCandidateIndex;
        uint numOfMaxVotes;
        uint idProcessed;
    }
    struct Candidate {
        bool candidates;
        uint8 voted;
        uint8 addyToIndex;
    }
    struct Foo {
        address maxVotes;
        bool electionsFinished;
        mapping(address => Candidate) candidates;
        mapping(uint => address) candidateIndex;
        mapping(uint => uint) candidateVotes;
    }
    uint public nextElectionIndex;
    mapping(uint => Election) public elections;
    mapping(uint => Foo) foos;
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
        require(!foos[nextElectionIndex - 1].candidates[msg.sender].candidates);
        uint8 nextCandidateId = elections[nextElectionIndex].nextCandidateIndex;
        foos[nextElectionIndex - 1].candidateIndex[nextCandidateId] = msg.sender;
        foos[nextElectionIndex - 1].candidates[msg.sender].addyToIndex = nextCandidateId;
        elections[nextElectionIndex - 1].nextCandidateIndex++;
        foos[nextElectionIndex - 1].candidates[msg.sender].candidates = true;
    }
    function vote(address _participant) public {
        // require(elections[nextElectionIndex - 1].endBlock > block.number);
        // (avaliableBalance, lockedBalance, bondMultiplier, lockedUntilBlock, lastBlockClaimed) = creditBitContract.getAccountData(msg.sender);
        // require(lockedUntilBlock >= elections[nextElectionIndex - 1].endBlock);
        // require(!foos[nextElectionIndex - 1].candidates[msg.sender].voted);
        uint candidateId = foos[nextElectionIndex - 1].candidates[_participant].addyToIndex;
        foos[nextElectionIndex - 1].candidateVotes[candidateId] += 1;
        foos[nextElectionIndex - 1].candidates[msg.sender].voted = 2;
    }
    function finishElections(uint _iterations) public {
        // require(elections[nextElectionIndex - 1].endBlock < block.number);
        // require(!foos[nextElectionIndex - 1].electionsFinished);
        uint curentVotes;
        uint nextCandidateId = elections[nextElectionIndex - 1].idProcessed;
        for (uint cnt = 0; cnt < _iterations; cnt++) {
            curentVotes = foos[nextElectionIndex - 1].candidateVotes[nextCandidateId];
            if (curentVotes > elections[nextElectionIndex - 1].numOfMaxVotes) {
                foos[nextElectionIndex - 1].maxVotes = foos[nextElectionIndex - 1].candidateIndex[nextCandidateId];
                elections[nextElectionIndex - 1].numOfMaxVotes = curentVotes;
            }
            nextCandidateId++;
        }
        elections[nextElectionIndex - 1].idProcessed = nextCandidateId;
        if (foos[nextElectionIndex - 1].candidateIndex[nextCandidateId] == address(0x0)) {
            creditCEO = foos[nextElectionIndex - 1].maxVotes;
            foos[nextElectionIndex - 1].electionsFinished = true;
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
        tmp4 = foos[nextElectionIndex - 1].candidateIndex[nextCandidateId]; // address
        tmp5 = foos[nextElectionIndex - 1].candidates[msg.sender].addyToIndex;
        tmp6 = elections[nextElectionIndex - 1].nextCandidateIndex;
        tmp7 = foos[nextElectionIndex - 1].candidates[msg.sender].candidates; // bool
        // modified in vote
        tmp8 = 0; // foos[nextElectionIndex - 1].candidateVotes[candidateId] += 1;
        tmp9 = (foos[nextElectionIndex - 1].candidates[msg.sender].voted == 2); // bool
        // modified finishElections
        tmp10 = foos[nextElectionIndex - 1].maxVotes;
        tmp11 = elections[nextElectionIndex - 1].numOfMaxVotes;
    }
    function observe0() public view returns (uint tmp0) {
        tmp0 = nextElectionIndex;
    }
    function observe1() public view returns (uint tmp0) {
        tmp0 = elections[nextElectionIndex].startBlock;
    }
}
