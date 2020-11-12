pragma solidity >=0.7.3;
contract CreditDAOCorrect {
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
	function createNewElections() public {
		elections__1[nextElectionIndex].startBlock = block.number;
		elections__1[nextElectionIndex].endBlock = (block.number + blocksPerMonth);
		nextElectionIndex++;
		creditCEO = address(0);
	}
	function sumbitForElection() public {
		require((elections__1[(nextElectionIndex - 1)].endBlock > block.number));
		require(!elections__2[(nextElectionIndex - 1)].candidateAddyToIndexMap_WRAP[msg.sender].t9bool_1_WRAP);
		uint256 nextCandidateId;
		nextCandidateId = elections__1[nextElectionIndex].nextCandidateIndex;
		elections__2[(nextElectionIndex-1)].candidateIndex[nextCandidateId] = msg.sender;
		elections__2[(nextElectionIndex - 1)].candidateAddyToIndexMap_WRAP[msg.sender].t7uint256_0_WRAP = nextCandidateId;
		elections__1[(nextElectionIndex - 1)].nextCandidateIndex++;
		elections__2[(nextElectionIndex - 1)].candidateAddyToIndexMap_WRAP[msg.sender].t9bool_1_WRAP = true;
	}
	function vote(address _participant) public {
		require((elections__1[(nextElectionIndex - 1)].endBlock > block.number));
		require(!elections__2[(nextElectionIndex - 1)].candidateAddyToIndexMap_WRAP[msg.sender].t10bool_2_WRAP);
		uint256 candidateId;
		candidateId = elections__2[(nextElectionIndex - 1)].candidateAddyToIndexMap_WRAP[_participant].t7uint256_0_WRAP;
		elections__2[(nextElectionIndex - 1)].candidateVotes[candidateId] += 1;
		elections__2[(nextElectionIndex - 1)].candidateAddyToIndexMap_WRAP[msg.sender].t10bool_2_WRAP = true;
	}
	function finishElections(uint256 _iterations) public {
		uint256 curentVotes;
		uint256 nextCandidateId;
		nextCandidateId = elections__1[(nextElectionIndex - 1)].idProcessed;
		{
			uint256 cnt;
			cnt = 0;
			while ((cnt < _iterations)) {
				curentVotes = elections__2[(nextElectionIndex-1)].candidateVotes[nextCandidateId];
				if ((curentVotes > elections__1[(nextElectionIndex - 1)].numOfMaxVotes)) {
					elections__2[(nextElectionIndex-1)].maxVotes = elections__2[(nextElectionIndex-1)].candidateIndex[nextCandidateId];
					elections__1[(nextElectionIndex - 1)].numOfMaxVotes = curentVotes;
				}
				nextCandidateId++;
				cnt++;
			}
		}
		elections__1[(nextElectionIndex - 1)].idProcessed = nextCandidateId;
		if ((elections__2[(nextElectionIndex-1)].candidateIndex[nextCandidateId] == address(0))) {
			creditCEO = elections__2[(nextElectionIndex - 1)].maxVotes;
			elections__2[(nextElectionIndex-1)].electionsFinished = true;
			if ((elections__1[(nextElectionIndex - 1)].numOfMaxVotes == 0)) {
				elections__1[nextElectionIndex].startBlock = block.number;
				elections__1[nextElectionIndex].endBlock = (block.number + blocksPerMonth);
				nextElectionIndex++;
			}
		}
	}
	function observe__0(uint256 i) public view returns (uint256) {
		return elections__1[i].nextCandidateIndex;
	}
	function observe__1(uint256 i) public view returns (bool) {
		return elections__2[i].candidateAddyToIndexMap_WRAP[msg.sender].t9bool_1_WRAP;
	}
	function observe__2() public view returns (uint256) {
		return nextElectionIndex;
	}
	function observe__3(uint256 i) public view returns (uint256) {
		return elections__2[i].candidateAddyToIndexMap_WRAP[msg.sender].t7uint256_0_WRAP;
	}
	function observe__4(uint256 i) public view returns (bool) {
		return elections__2[i].candidateAddyToIndexMap_WRAP[msg.sender].t10bool_2_WRAP;
	}
	function observe__5(uint256 i) public view returns (uint256) {
		return elections__2[i].candidateVotes[elections__2[i].candidateAddyToIndexMap_WRAP[msg.sender].t7uint256_0_WRAP];
	}
	function observe__6(uint256 i) public view returns (uint256) {
		return elections__1[i].numOfMaxVotes;
	}
	function observe__7(uint256 i) public view returns (uint256) {
		return elections__1[i].endBlock;
	}
	function observe__8(uint256 i) public view returns (uint256) {
		return elections__1[i].startBlock;
	}

}
