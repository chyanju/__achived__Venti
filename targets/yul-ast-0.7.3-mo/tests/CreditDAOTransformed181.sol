pragma solidity >=0.7.3;
contract CreditDAOTransformed181 {
struct Election {
	/* t1 ->*/ uint256 startBlock;
	/* t2 ->*/ uint256 endBlock;
	/* t3 ->*/ uint256 totalCrbSupply;
	/* t5 ->*/ uint256 nextCandidateIndex;
	/* t12 ->*/ uint256 numOfMaxVotes;
	/* t13 ->*/ uint256 idProcessed;
}

struct Foo {
	mapping(uint256 => /* t8 ->*/ uint256) candidateVotes;
	mapping(address => Candidate) candidateAddyToIndexMap_WRAP;
	/* t11 ->*/ address maxVotes;
	/* t4 ->*/ bool electionsFinished;
	mapping(uint256 => /* t6 ->*/ address) candidateIndex;
}

struct Candidate {
	/* t7 ->*/ uint256 t7uint256_0_WRAP;
	/* t9 ->*/ bool t9bool_1_WRAP;
	/* t10 ->*/ bool t10bool_2_WRAP;
}

uint256 public nextElectionIndex;
mapping(uint256 => Election) public elections__1;
mapping(uint256 => Foo) public elections__2;
address public creditCEO;
uint256 public mandateInBlocks;
uint256 public blocksPerMonth;
constructor() public {
	mandateInBlocks = 0;
	blocksPerMonth = 76235;
	elections__1[nextElectionIndex].startBlock = block.number;
	elections__1[nextElectionIndex].endBlock = (block.number + blocksPerMonth);
	nextElectionIndex++;
}
function vote(address _participant) public {
	require((elections__1[(nextElectionIndex - 1)].endBlock > block.number));
	require(!elections__2[nextElectionIndex].candidateAddyToIndexMap_WRAP[msg.sender].t10bool_2_WRAP);
	uint256 candidateId;
	candidateId = elections__2[nextElectionIndex].candidateAddyToIndexMap_WRAP[_participant].t7uint256_0_WRAP;
	elections__2[nextElectionIndex].candidateVotes[candidateId] += 1;
	if (true) {
		elections__2[nextElectionIndex].candidateAddyToIndexMap_WRAP[msg.sender].t10bool_2_WRAP = true;
	}
}
function observe__8(uint i) public view returns (bool) {
	return elections__2[i].candidateAddyToIndexMap_WRAP[msg.sender].t10bool_2_WRAP;
}

}
