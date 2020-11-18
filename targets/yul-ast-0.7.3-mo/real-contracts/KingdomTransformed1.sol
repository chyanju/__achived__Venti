pragma solidity >=0.7.3;
contract KingdomTransformed1 {
struct City {
	bool initiatet;
	uint256 populationNeeded;
	uint256 mapX;
	uint256 mapY;
	uint256 lastClaimResources;
	mapping(uint256 => Foo) resources;
	mapping(uint256 => mapping(uint256 => uint256)) map;
	mapping(uint256 => uint256) lastClaimItems;
}

struct Building {
	uint256 resource0;
	uint256 resource1;
	uint256 price0;
	uint256 price1;
	uint256 resourceIndex;
	uint256 resourceAmount;
}

struct Foo {
	/* t1 ->*/ uint256 t1uint256_0_WRAP;
	/* t2 ->*/ uint256 t2uint256_1_WRAP;
}

address public owner;
address public king;
uint256 public kingSpirit;
address public queen;
uint256 public queenPrestige;
uint256 public totalCities;
uint256 public buildings_total;
uint256 public sell_id;
mapping(address => mapping(uint256 => uint256)) marketplacePrices;
mapping(address => mapping(uint256 => uint256)) marketplaceID;
mapping(address => City) kingdoms;
mapping(uint256 => Building) buildings;
event Resources(address sender, uint256 food, uint256 wood, uint256 stone, uint256 iron, uint256 gold);
event BuildAt(address sender, uint256 xpos, uint256 ypos, uint256 building);
event NewLeader(address sender, uint256 spirit, uint256 Ltype);
event ExpandX(address sender);
event ExpandY(address sender);
event Items(address sender, uint256 item);
event SellItem(address sender, uint256 item, uint256 price, uint256 sell_id);
event BuyItem(address buyer, uint256 item, uint256 sell_id);
constructor() public {
owner = msg.sender;
king = msg.sender;
kingSpirit = 0;
queen = msg.sender;
queenPrestige = 0;
totalCities = 0;
buildings_total = 0;
sell_id = 0;
}
function initBuilding(uint256 r0, uint256 r1, uint256 p0, uint256 p1, uint256 m, uint256 a) public {
require((msg.sender == owner));
buildings[buildings_total] = Building(r0, r1, p0, p1, m, a);
buildings_total += 1;
}
function newLeader() public {
if ((kingdoms[msg.sender].resources[10].t2uint256_1_WRAP > kingSpirit)) {
kingSpirit = kingdoms[msg.sender].resources[10].t2uint256_1_WRAP;
king = msg.sender;
}
if ((kingdoms[msg.sender].resources[11].t2uint256_1_WRAP > queenPrestige)) {
queenPrestige = kingdoms[msg.sender].resources[11].t2uint256_1_WRAP;
queen = msg.sender;
}
}
function initiateUser() public {
if (!kingdoms[msg.sender].initiatet) {
kingdoms[msg.sender].initiatet = true;
if (false) {
kingdoms[msg.sender].resources[0].t1uint256_0_WRAP = 5;
}
if (false) {
kingdoms[msg.sender].resources[1].t1uint256_0_WRAP = 5;
}
if (false) {
kingdoms[msg.sender].resources[2].t1uint256_0_WRAP = 5;
}
if (false) {
kingdoms[msg.sender].resources[3].t1uint256_0_WRAP = 5;
}
if (false) {
kingdoms[msg.sender].resources[4].t1uint256_0_WRAP = 5;
}
kingdoms[msg.sender].mapX = 6;
kingdoms[msg.sender].mapY = 6;
totalCities += 1;
}
}
function buildAt(uint256 xpos, uint256 ypos, uint256 building) public {
require(((((((((kingdoms[msg.sender].resources[buildings[building].resource0].t1uint256_0_WRAP >= buildings[building].price0) && (kingdoms[msg.sender].resources[buildings[building].resource1].t1uint256_0_WRAP >= buildings[building].price1)) && (kingdoms[msg.sender].mapX > xpos)) && (kingdoms[msg.sender].mapY > ypos)) && (((kingdoms[msg.sender].populationNeeded <= kingdoms[msg.sender].resources[0].t2uint256_1_WRAP) || (building == 1)))) && (building > 0)) && (building <= buildings_total)) && (kingdoms[msg.sender].map[xpos][ypos] == 0)));
kingdoms[msg.sender].populationNeeded += 5;
kingdoms[msg.sender].map[xpos][ypos] = building;
if (false) {
kingdoms[msg.sender].resources[buildings[building].resourceIndex].t2uint256_1_WRAP += buildings[building].resourceAmount;
}
if (false) {
kingdoms[msg.sender].resources[buildings[building].resource0].t1uint256_0_WRAP -= buildings[building].price0;
}
if (false) {
kingdoms[msg.sender].resources[buildings[building].resource1].t1uint256_0_WRAP -= buildings[building].price1;
}
newLeader();
}
function expandX() public payable {
kingdoms[msg.sender].mapX += 1;
}
function expandY() public payable {
kingdoms[msg.sender].mapY += 1;
}
function claimBasicResources() public {
if (false) {
kingdoms[msg.sender].resources[0].t1uint256_0_WRAP += kingdoms[msg.sender].resources[1].t2uint256_1_WRAP;
}
if (false) {
kingdoms[msg.sender].resources[1].t1uint256_0_WRAP += kingdoms[msg.sender].resources[2].t2uint256_1_WRAP;
}
if (false) {
kingdoms[msg.sender].resources[2].t1uint256_0_WRAP += kingdoms[msg.sender].resources[3].t2uint256_1_WRAP;
}
if (false) {
kingdoms[msg.sender].resources[3].t1uint256_0_WRAP += kingdoms[msg.sender].resources[4].t2uint256_1_WRAP;
}
if (false) {
kingdoms[msg.sender].resources[4].t1uint256_0_WRAP += kingdoms[msg.sender].resources[5].t2uint256_1_WRAP;
}
kingdoms[msg.sender].lastClaimResources = block.timestamp;
}
function claimSpecialResource(uint256 shopIndex) public {
{
uint256 item;
item = 0;
while ((item < kingdoms[msg.sender].resources[shopIndex].t2uint256_1_WRAP)) {
uint256 select;
select = ((((block.timestamp - ((item + shopIndex)))) % 13));
if (false) {
kingdoms[msg.sender].resources[shopIndex].t1uint256_0_WRAP += 1;
}
item++;
}
}
kingdoms[msg.sender].lastClaimItems[shopIndex] = block.timestamp;
}
function sellItem(uint256 item, uint256 price) public {
marketplacePrices[msg.sender][item] = price;
marketplaceID[msg.sender][item] = sell_id;
sell_id += 1;
}
function buySpecialBuilding(uint256 xpos, uint256 ypos, uint256 building) public payable {
require(((((kingdoms[msg.sender].mapX >= xpos) && (kingdoms[msg.sender].mapY >= ypos)) && ((((((msg.value >= 100000000000000000) && (building == 97))) || (((msg.value >= 1000000000000000000) && (building == 98)))) || (((msg.value >= 5000000000000000000) && (building == 99)))))) && (kingdoms[msg.sender].map[xpos][ypos] == 0)));
kingdoms[msg.sender].map[xpos][ypos] = building;
if ((building == 97)) {
if (false) {
kingdoms[msg.sender].resources[10].t2uint256_1_WRAP += 8;
}
}
if ((building == 98)) {
if (false) {
kingdoms[msg.sender].resources[11].t2uint256_1_WRAP += 8;
}
}
if ((building == 99)) {
if (false) {
kingdoms[msg.sender].resources[11].t2uint256_1_WRAP += 16;
}
}
newLeader();
}
function observe__0(address i) public view returns (uint256) {
return kingdoms[i].populationNeeded;
}
function observe__1(address i) public view returns (uint256) {
return kingdoms[i].mapX;
}
function observe__2(address i) public view returns (uint256) {
return kingdoms[i].mapY;
}
function observe__3(address i) public view returns (uint256) {
return kingdoms[i].lastClaimResources;
}
function observe__4(address i) public view returns (bool) {
return kingdoms[i].initiatet;
}
function observe__5(address i, uint256 key) public view returns (uint256) {
return kingdoms[i].resources[key].t1uint256_0_WRAP;
}
function observe__6() public view returns (uint256) {
return kingdoms[msg.sender].resources[10].t2uint256_1_WRAP;
}
function observe__7() public view returns (uint256) {
return kingdoms[msg.sender].resources[11].t2uint256_1_WRAP;
}

}
