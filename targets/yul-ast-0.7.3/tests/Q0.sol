pragma solidity >=0.7.3;
// SPDX-License-Identifier: UNLICENSED

contract Q0 {
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
    constructor() {
        nextElectionIndex++;
    }
    function observe() public view returns (
        address tmp4
        ) {

        // modified in sumbitForElection
        uint nextCandidateId = elections[nextElectionIndex].nextCandidateIndex;
        tmp4 = foos[nextElectionIndex - 1].candidateIndex[nextCandidateId]; // address
    }
}
