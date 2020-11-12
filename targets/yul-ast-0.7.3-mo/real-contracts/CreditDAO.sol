pragma solidity >=0.7.3;
contract CreditDAO {
struct Election {
	/* t1 ->*/ uint256 startBlock;
	/* t2 ->*/ uint256 endBlock;
	/* t3 ->*/ uint256 totalCrbSupply;
	/* t4 ->*/ bool electionsFinished;
	/* t5 ->*/ uint256 nextCandidateIndex;
	mapping(uint256 => /* t6 ->*/ address) candidateIndex;
	mapping(address => /* t7 ->*/ uint256) candidateAddyToIndexMap;
	mapping(uint256 => /* t8 ->*/ uint256) candidateVotes;
	mapping(address => /* t9 ->*/ bool) candidates;
	mapping(address => /* t10 ->*/ bool) userHasVoted;
	/* t11 ->*/ address maxVotes;
	/* t12 ->*/ uint256 numOfMaxVotes;
	/* t13 ->*/ uint256 idProcessed;
}

uint256 public nextElectionIndex;
mapping(uint256 => Election) public elections;
address public creditCEO;
uint256 public mandateInBlocks = 0;
uint256 public blocksPerMonth = 76235;
constructor() public {
elections[nextElectionIndex].startBlock = block.number;
elections[nextElectionIndex].endBlock = (block.number + blocksPerMonth);
nextElectionIndex++;
}
function createNewElections() public {
elections[nextElectionIndex].startBlock = block.number;
elections[nextElectionIndex].endBlock = (block.number + blocksPerMonth);
nextElectionIndex++;
creditCEO = address(0);
}
function sumbitForElection() public {
require((elections[(nextElectionIndex - 1)].endBlock > block.number));
require(!elections[(nextElectionIndex - 1)].candidates[msg.sender]);
uint256 nextCandidateId = elections[nextElectionIndex].nextCandidateIndex;
elections[(nextElectionIndex - 1)].candidateIndex[nextCandidateId] = msg.sender;
elections[(nextElectionIndex - 1)].candidateAddyToIndexMap[msg.sender] = nextCandidateId;
elections[(nextElectionIndex - 1)].nextCandidateIndex++;
elections[(nextElectionIndex - 1)].candidates[msg.sender] = true;
}
function vote(address _participant) public {
require((elections[(nextElectionIndex - 1)].endBlock > block.number));
require(!elections[(nextElectionIndex - 1)].userHasVoted[msg.sender]);
uint256 candidateId = elections[(nextElectionIndex - 1)].candidateAddyToIndexMap[_participant];
elections[(nextElectionIndex - 1)].candidateVotes[candidateId] += 1;
elections[(nextElectionIndex - 1)].userHasVoted[msg.sender] = true;
}
function finishElections(uint256 _iterations) public {
uint256 curentVotes;
uint256 nextCandidateId = elections[(nextElectionIndex - 1)].idProcessed;
{
uint256 cnt = 0;
while ((cnt < _iterations)) {
curentVotes = elections[(nextElectionIndex - 1)].candidateVotes[nextCandidateId];
if ((curentVotes > elections[(nextElectionIndex - 1)].numOfMaxVotes)) {
elections[(nextElectionIndex - 1)].maxVotes = elections[(nextElectionIndex - 1)].candidateIndex[nextCandidateId];
elections[(nextElectionIndex - 1)].numOfMaxVotes = curentVotes;
}
nextCandidateId++;
cnt++;
}
}
elections[(nextElectionIndex - 1)].idProcessed = nextCandidateId;
if ((elections[(nextElectionIndex - 1)].candidateIndex[nextCandidateId] == address(0))) {
creditCEO = elections[(nextElectionIndex - 1)].maxVotes;
elections[(nextElectionIndex - 1)].electionsFinished = true;
if ((elections[(nextElectionIndex - 1)].numOfMaxVotes == 0)) {
elections[nextElectionIndex].startBlock = block.number;
elections[nextElectionIndex].endBlock = (block.number + blocksPerMonth);
nextElectionIndex++;
}
}
}
function observe__0(uint256 i) public view returns (uint256) {
return elections[i].nextCandidateIndex;
}
function observe__1(uint256 i) public view returns (bool) {
return elections[i].candidates[msg.sender];
}
function observe__2() public view returns (uint256) {
return nextElectionIndex;
}
function observe__3(uint256 i) public view returns (uint256) {
return elections[i].candidateAddyToIndexMap[msg.sender];
}
function observe__4(uint256 i) public view returns (bool) {
return elections[i].userHasVoted[msg.sender];
}
function observe__5(uint256 i) public view returns (uint256) {
return elections[i].candidateVotes[elections[i].candidateAddyToIndexMap[msg.sender]];
}
function observe__6(uint256 i) public view returns (uint256) {
return elections[i].numOfMaxVotes;
}
function observe__7(uint256 i) public view returns (uint256) {
return elections[i].endBlock;
}
function observe__8(uint256 i) public view returns (uint256) {
return elections[i].startBlock;
}

}
