pragma solidity >=0.7.3;
library SafeMath {
function mul(uint256 a, uint256 b) internal pure returns (uint256) {
if ((a == 0)) {
return 0;
}
uint256 c;
c = (a * b);
assert(((c / a) == b));
return c;
}
function div(uint256 a, uint256 b) internal pure returns (uint256) {
uint256 c;
c = (a / b);
return c;
}
function sub(uint256 a, uint256 b) internal pure returns (uint256) {
assert((b <= a));
return (a - b);
}
function add(uint256 a, uint256 b) internal pure returns (uint256) {
uint256 c;
c = (a + b);
assert((c >= a));
return c;
}

}
contract EtherRacing {
struct Customer {
	bytes32 name;
	uint256 earned;
	uint16 c_num;
	mapping(uint256 => uint16) garage;
	mapping(uint256 => uint16) garage_idx;
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
address owner;
mapping(address => Customer) private customers;
mapping(uint256 => Car) public cars;
mapping(uint256 => mapping(uint256 => address)) public yesBuyer;
mapping(address => uint256) balances;
mapping(uint256 => uint256) carAccts;
uint256 carAccts_num;
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
}
function setInsertCar(bytes32 _name, uint256 _s_price, uint256 _earning, uint256 _o_earning, uint16 _brand, uint8 _ctype, uint8 _spd, uint8 _acc, uint8 _dur, uint8 _hndl) public {
uint256 _id;
_id = carAccts_num;
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
carAccts_num = (carAccts_num + 1);
}
function updateCar(uint256 _id, bytes32 _name, uint256 _s_price, uint256 _earning, uint256 _o_earning, uint16 _brand, uint8 _ctype, uint8 _spd, uint8 _acc, uint8 _dur, uint8 _hndl) public {
Car storage car;
car = cars[_id];
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
}
function deleteCar(uint256 _id) public returns (bool success) {
Car storage car;
car = cars[_id];
if ((car.id == _id)) {
return true;
}
return false;
}
function buyCar(uint256 _id) public payable returns (bool success) {
require((_id > 0));
require(((cars[_id].c_price > 0) && (((msg.value + balances[msg.sender])) > 0)));
require((((msg.value + balances[msg.sender])) >= cars[_id].c_price));
Customer storage customer;
customer = customers[msg.sender];
customer.garage[_id] += 1;
customer.c_num += 1;
cars[_id].s_count += 1;
if ((((msg.value + balances[msg.sender])) > cars[_id].c_price)) {
balances[msg.sender] += (msg.value - cars[_id].c_price);
}
uint256 f_price;
f_price = ((cars[_id].earning * cars[_id].s_count) + cars[_id].o_earning);
if ((f_price > cars[_id].s_price)) {
cars[_id].c_price = f_price;
}
{
uint256 i;
i = 0;
while ((i < cars[_id].s_count)) {
address buyer;
buyer = yesBuyer[_id][i];
uint16 buy_count;
buy_count = cars[_id].c_owners[buyer];
uint256 earned;
earned = (cars[_id].earning * buy_count);
balances[buyer] += earned;
customers[buyer].earned += earned;
++i;
}
}
balances[owner] += (cars[_id].c_price - (cars[_id].earning * cars[_id].s_count));
cars[_id].c_owners[msg.sender] += 1;
return true;
}
function withdraw(uint256 _amount) public returns (bool) {
require((_amount >= 0));
require((_amount == uint256(uint128(_amount))));
require((balances[msg.sender] >= _amount));
if ((_amount == 0)) {
_amount = balances[msg.sender];
}
balances[msg.sender] -= _amount;
balances[msg.sender] += _amount;
return true;
}
function convert(uint256 amount, uint256 conversionRate) public returns (uint256 convertedAmount) {
return (amount * conversionRate);
}
function observe__1(uint256 _id) public view returns (uint16) {
return customers[msg.sender].garage[_id];
}
function observe__2() public view returns (uint256 _earned, uint16 _c_num) {
_earned = customers[msg.sender].earned;
_c_num = customers[msg.sender].c_num;
return (_earned, _c_num);
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
return (cars[_id].id, cars[_id].name, cars[_id].s_price, cars[_id].c_price, cars[_id].earning, cars[_id].o_earning, cars[_id].s_count);
}
function observe__10(uint256 _id) public view returns (bytes32) {
return cars[_id].name;
}
function observe__11() public view returns (uint256) {
return carAccts_num;
}

}
