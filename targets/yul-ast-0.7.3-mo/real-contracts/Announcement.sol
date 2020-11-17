pragma solidity >=0.7.3;
contract Announcement {
struct Message {
	uint256 timestamp;
}

struct MessageAwaitingAudit {
	uint256 nAudits;
	uint256 nAlarms;
	Message msg;
	mapping(address => /* t1 ->*/ bool) auditedBy;
	mapping(address => /* t2 ->*/ bool) alarmedBy;
}

address public owner;
mapping(address => bool) public auditors;
address[] public auditorsList;
uint256 public nAuditors;
uint256 public nAuditorsRequired = 1;
uint256 public nAuditorsAlarm = 1;
uint256 public nAlarms = 0;
uint256[] public alarms;
mapping(uint256 => bool) public alarmRaised;
uint256 public nMsg = 0;
mapping(uint256 => Message) public msgMap;
uint256 public nMsgsWaiting = 0;
mapping(uint256 => MessageAwaitingAudit) msgsWaiting;
mapping(uint256 => bool) public msgsWaitingDone;
modifier isOwner() {
require((msg.sender == owner));
_;
}
modifier isAuditor() {
require((auditors[msg.sender] == true));
_;
}
function initAnnouncement(address[] memory _auditors, uint256 _nAuditorsRequired, uint256 _nAuditorsAlarm) public {
require((_nAuditorsRequired >= 1));
require((_nAuditorsAlarm >= 1));
{
uint256 i = 0;
while ((i < _auditors.length)) {
auditors[_auditors[i]] = true;
auditorsList.push(_auditors[i]);
i++;
}
}
nAuditors = _auditors.length;
owner = msg.sender;
nAuditorsRequired = _nAuditorsRequired;
nAuditorsAlarm = _nAuditorsAlarm;
return ();
}
function addAudit(uint256 msgWaitingN, bool msgGood) external isAuditor {
require((msgsWaitingDone[msgWaitingN] == false));
require((msgsWaiting[msgWaitingN].auditedBy[msg.sender] == false));
require((msgsWaiting[msgWaitingN].alarmedBy[msg.sender] == false));
require((alarmRaised[msgWaitingN] == false));
if ((msgGood == true)) {
msgsWaiting[msgWaitingN].nAudits += 1;
msgsWaiting[msgWaitingN].auditedBy[msg.sender] = true;
} else {
msgsWaiting[msgWaitingN].nAlarms += 1;
msgsWaiting[msgWaitingN].alarmedBy[msg.sender] = true;
}
if (((msgsWaiting[msgWaitingN].nAudits >= nAuditorsRequired) && (msgsWaiting[msgWaitingN].nAlarms < nAuditorsAlarm))) {
addMsgFinal(msgsWaiting[msgWaitingN].msg, msgWaitingN);
} else {
if ((msgsWaiting[msgWaitingN].nAlarms >= nAuditorsAlarm)) {
msgsWaitingDone[msgWaitingN] = true;
alarmRaised[msgWaitingN] = true;
alarms.push(msgWaitingN);
nAlarms += 1;
}
}
return ();
}
function addMsgFinal(Message memory msg, uint256 msgWaitingN) private {
msgMap[nMsg] = msg;
nMsg += 1;
msgsWaitingDone[msgWaitingN] = true;
return ();
}
function observe__5(uint256 msgWaitingN) public view returns (uint256, uint256, uint256, bool) {
return (msgsWaiting[msgWaitingN].nAudits, msgsWaiting[msgWaitingN].nAlarms, msgsWaiting[msgWaitingN].msg.timestamp, alarmRaised[msgWaitingN]);
}
function observe__0(uint256 i) public view returns (uint256) {
return msgsWaiting[i].nAudits;
}
function observe__1(uint256 i) public view returns (uint256) {
return msgsWaiting[i].nAlarms;
}
function observe__3(uint256 i) public view returns (uint256) {
return msgsWaiting[i].msg.timestamp;
}
function observe__4(uint256 i) public view returns (bool) {
return alarmRaised[i];
}

}
