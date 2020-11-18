pragma solidity >=0.7.3;
contract Slaughter3D {
struct Stage {
	uint8 numberOfPlayers;
	uint256 blocknumber;
	bool finalized;
	mapping(uint8 => /* t1 ->*/ address) slotXplayer;
	mapping(address => bool) players;
	mapping(uint8 => /* t2 ->*/ address) setMN;
}

using SafeMath for uint256;
uint256 private constant P3D_SHARE = 0 ether;
uint8 public constant MAX_PLAYERS_PER_STAGE = 2;
uint256 public constant OFFER_SIZE = 0 ether;
uint256 public Refundpot;
uint256 public Jackpot;
uint256 public SPASMfee;
mapping(address => uint256) public ETHtoP3Dbymasternode;
uint256 private p3dPerStage = (P3D_SHARE * ((MAX_PLAYERS_PER_STAGE - 1)));
uint256 public winningsPerRound = 0 ether;
mapping(address => uint256) public Vanity;
mapping(address => uint256) private playerVault;
mapping(uint256 => Stage) public stages;
mapping(uint256 => address) public RefundWaitingLine;
mapping(uint256 => address) public Loser;
uint256 public NextInLine;
uint256 public NextAtLineEnd;
uint256 private numberOfFinalizedStages;
uint256 public numberOfStages;
event JackpotWon(address winner, uint256 SizeOfJackpot);
event SacrificeOffered(address player);
event SacrificeChosen(address sarifice);
event EarningsWithdrawn(address player, uint256 amount);
event StageInvalidated(uint256 stage);
function DonateToLosers() public payable {
require((msg.value > 0));
Refundpot = Refundpot.add(msg.value);
}
function Payoutnextrefund() public {
uint256 Pot;
Pot = Refundpot;
require((Pot > 0 ether));
Refundpot -= 0 ether;
NextInLine++;
}
constructor() public {
p3dPerStage = (P3D_SHARE * ((MAX_PLAYERS_PER_STAGE - 1)));
winningsPerRound = 0 ether;
stages[numberOfStages].numberOfPlayers = 0;
stages[numberOfStages].blocknumber = 0;
stages[numberOfStages].finalized = false;
numberOfStages++;
}
function offerAsSacrifice(address MN) external payable {
acceptOffer(MN);
}
function offerAsSacrificeFromVault(address MN) external {
playerVault[msg.sender] -= OFFER_SIZE;
acceptOffer(MN);
}
function withdraw() external {
uint256 amount;
amount = playerVault[msg.sender];
playerVault[msg.sender] = 0;
}
function acceptOffer(address MN) private {
uint256 stageIndex;
stageIndex = (numberOfStages - 1);
assert((stages[stageIndex].numberOfPlayers < MAX_PLAYERS_PER_STAGE));
address player;
player = msg.sender;
stages[stageIndex].slotXplayer[stages[stageIndex].numberOfPlayers] = player;
stages[stageIndex].numberOfPlayers++;
stages[stageIndex].players[player] = true;
stages[stageIndex].setMN[stages[stageIndex].numberOfPlayers] = MN;
if ((stages[stageIndex].numberOfPlayers == MAX_PLAYERS_PER_STAGE)) {
stages[stageIndex].blocknumber = block.number;
}
}
function allocateSurvivorWinnings(address sacrifice) private {
{
uint8 i;
i = 0;
while ((i < MAX_PLAYERS_PER_STAGE)) {
address survivor;
survivor = stages[numberOfFinalizedStages].slotXplayer[i];
if ((survivor != sacrifice)) {
playerVault[survivor] += winningsPerRound;
}
i++;
}
}
}
function invalidateStage(uint256 stageIndex) private {
{
uint8 i;
i = 0;
while ((i < MAX_PLAYERS_PER_STAGE)) {
address player;
player = stages[stageIndex].slotXplayer[i];
playerVault[player] += OFFER_SIZE;
i++;
}
}
}
function observe__0() public view returns (address) {
return (Loser[numberOfFinalizedStages]);
}
function observe__1() public view returns (address) {
return (stages[numberOfFinalizedStages].slotXplayer[0]);
}
function observe__2() public view returns (address) {
return (stages[numberOfFinalizedStages].slotXplayer[2]);
}
function observe__3() public view returns (address) {
return (stages[numberOfStages].slotXplayer[0]);
}
function observe__4() public view returns (address) {
return (stages[numberOfStages].slotXplayer[1]);
}
function observe__5(address theplayer) public view returns (uint256) {
return (Vanity[theplayer]);
}
function observe__6() public view returns (uint256 SizeOfJackpot) {
return (Jackpot);
}
function observe__7() public view returns (bool) {
bool check;
if ((numberOfStages >= numberOfFinalizedStages)) {
check = true;
}
return (check);
}
function observe__8() public view returns (address) {
return (RefundWaitingLine[NextInLine]);
}
function observe__9() external view returns (uint256) {
return playerVault[msg.sender];
}
function observe__10() external view returns (uint256) {
return stages[(numberOfStages - 1)].numberOfPlayers;
}

}
library SafeMath {
function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
c = (a + b);
require((c >= a));
}
function sub(uint256 a, uint256 b) internal pure returns (uint256 c) {
require((b <= a));
c = (a - b);
}
function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
c = (a * b);
require(((a == 0) || ((c / a) == b)));
}
function div(uint256 a, uint256 b) internal pure returns (uint256 c) {
require((b > 0));
c = (a / b);
}

}
