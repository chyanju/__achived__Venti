pragma solidity >=0.7.3;
contract Ownable {
address public owner;
event OwnershipTransferred(address previousOwner, address newOwner);
modifier onlyOwner() {
require((msg.sender == owner));
_;
}
constructor() public {
owner = msg.sender;
return ();
}
function transferOwnership(address newOwner) public onlyOwner {
require((newOwner != address(0)));
owner = newOwner;
return ();
}

}
library SafeMath {
function mul(uint256 a, uint256 b) internal pure returns (uint256) {
if ((a == 0)) {
return 0;
}
uint256 c = (a * b);
assert(((c / a) == b));
return c;
}
function div(uint256 a, uint256 b) internal pure returns (uint256) {
uint256 c = (a / b);
return c;
}
function sub(uint256 a, uint256 b) internal pure returns (uint256) {
assert((b <= a));
return (a - b);
}
function add(uint256 a, uint256 b) internal pure returns (uint256) {
uint256 c = (a + b);
assert((c >= a));
return c;
}

}
contract EtherRacing is Ownable {
struct Customer {
	bytes32 name;
	uint256 earned;
	uint16 c_num;
	mapping(uint256 => uint16) garage;
	uint256[] garage_idx;
}

struct Car {
	uint256 id;
	bytes32 name;
	uint256 s_price;
	uint256 c_price;
	uint256 earning;
	uint256 o_earning;
	uint16 s_count;
	uint16 brand;
	uint8 ctype;
	uint8 spd;
	uint8 acc;
	uint8 dur;
	uint8 hndl;
	mapping(address => uint16) c_owners;
}

using SafeMath for uint256;
string public constant name = "CarToken";
string public constant symbol = "CAR";
uint8 public constant decimals = 18;
uint256 public constant INITIAL_SUPPLY = (10000 * ((10 ** uint256(decimals))));
uint256 private store_balance;
mapping(address => Customer) private customers;
mapping(uint256 => Car) public cars;
mapping(uint256 => address[]) public yesBuyer;
mapping(address => uint256) balances;
uint256[] public carAccts;
event CarRegistered(uint256 carId);
event CarUpdated(uint256 carId);
event CarDeregistered(uint256 carId);
event CarRegistrationFailed(uint256 carId);
event CarDeregistrationFaled(uint256 carId);
event BuyCarCompleted(address customer, uint256 paymentSum);
event BuyCarFailed(address customer, uint256 customerBalance, uint256 paymentSum);
event EventCashOut(address player, uint256 amount);
constructor() public payable {
store_balance = 0;
balances[tx.origin] = INITIAL_SUPPLY;
return ();
}
function setInsertCar(bytes32 _name, uint256 _s_price, uint256 _earning, uint256 _o_earning, uint16 _brand, uint8 _ctype, uint8 _spd, uint8 _acc, uint8 _dur, uint8 _hndl) public onlyOwner {
uint256 _id = (carAccts.length + 1);
cars[_id].id = _id;
cars[_id].name = _name;
cars[_id].s_price = _s_price;
cars[_id].c_price = _s_price;
cars[_id].earning = _earning;
cars[_id].o_earning = _o_earning;
cars[_id].s_count = 0;
cars[_id].brand = _brand;
cars[_id].ctype = _ctype;
cars[_id].spd = _spd;
cars[_id].acc = _acc;
cars[_id].dur = _dur;
cars[_id].hndl = _hndl;
carAccts.push(_id);
return ();
}
function updateCar(uint256 _id, bytes32 _name, uint256 _s_price, uint256 _earning, uint256 _o_earning, uint16 _brand, uint8 _ctype, uint8 _spd, uint8 _acc, uint8 _dur, uint8 _hndl) public onlyOwner {
Car storage car = cars[_id];
car.name = _name;
car.s_price = _s_price;
car.earning = _earning;
car.o_earning = _o_earning;
car.brand = _brand;
car.ctype = _ctype;
car.spd = _spd;
car.acc = _acc;
car.dur = _dur;
car.hndl = _hndl;
return ();
}
function deleteCar(uint256 _id) public onlyOwner returns (bool) {
bool;
Car storage car = cars[_id];
if ((car.id == _id)) {
return true;
}
return false;
return (success);
}
function buyCar(uint256 _id) public payable returns (bool) {
bool;
require((_id > 0));
require(((cars[_id].c_price > 0) && (((msg.value + balances[msg.sender])) > 0)));
require((((msg.value + balances[msg.sender])) >= cars[_id].c_price));
Customer storage customer = customers[msg.sender];
customer.garage[_id] += 1;
customer.garage_idx.push(_id);
customer.c_num += 1;
cars[_id].s_count += 1;
if ((((msg.value + balances[msg.sender])) > cars[_id].c_price)) {
balances[msg.sender] += (msg.value - cars[_id].c_price);
}
uint256 f_price = ((cars[_id].earning * cars[_id].s_count) + cars[_id].o_earning);
if ((f_price > cars[_id].s_price)) {
cars[_id].c_price = f_price;
}
{
uint256 i = 0;
while ((i < yesBuyer[_id].length)) {
address buyer = yesBuyer[_id][i];
uint16 buy_count = cars[_id].c_owners[buyer];
uint256 earned = (cars[_id].earning * buy_count);
balances[buyer] += earned;
customers[buyer].earned += earned;
++i;
}
}
balances[owner] += (cars[_id].c_price - (cars[_id].earning * cars[_id].s_count));
cars[_id].c_owners[msg.sender] += 1;
if ((cars[_id].c_owners[msg.sender] == 1)) {
yesBuyer[_id].push(msg.sender);
}
return true;
return (success);
}
function withdraw(uint256 _amount) public returns (bool) {
require((_amount >= 0));
require((_amount == uint256(uint128(_amount))));
require((balances[msg.sender] >= _amount));
if ((_amount == 0)) {
_amount = balances[msg.sender];
}
balances[msg.sender] -= _amount;
if (!msg.sender.send(_amount)) {
balances[msg.sender] += _amount;
}
return false;
return true;
}
function convert(uint256 amount, uint256 conversionRate) public pure returns (uint256) {
uint256;
return (amount * conversionRate);
return (convertedAmount);
}
function observe__0() public view returns (uint256[] memory) {
Customer storage customer = customers[msg.sender];
return customer.garage_idx;
}
function observe__1(uint256 _id) public view returns (uint16) {
Customer storage customer = customers[msg.sender];
return customer.garage[_id];
}
function observe__2() public view returns (bytes32, uint256, uint256, uint16) {
bytes32;
uint256;
uint256;
uint16;
if ((msg.sender != address(0))) {
_name = customers[msg.sender].name;
_balance = balances[msg.sender];
_earned = customers[msg.sender].earned;
_c_num = customers[msg.sender].c_num;
}
return (_name, _balance, _earned, _c_num);
return (_name, _balance, _earned, _c_num);
}
function observe__3(address _address) public view returns (uint256) {
return customers[_address].earned;
}
function observe__4(address _address) public view returns (uint16) {
return customers[_address].c_num;
}
function observe__6(address addr) public view returns (uint256) {
return balances[addr];
}
function observe__8(uint256 _id) public view returns (uint256, bytes32, uint256, uint256, uint256, uint256, uint16) {
Car storage car = cars[_id];
return (car.id, car.name, car.s_price, car.c_price, car.earning, car.o_earning, car.s_count);
}
function observe__9() public view returns (uint256[] memory) {
return carAccts;
}
function observe__10(uint256 _id) public view returns (bytes32) {
return cars[_id].name;
}
function observe__11() public view returns (uint256) {
return carAccts.length;
}

}
