#include <macro.h>
/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various vehicle actions
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Title 37401
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6", "_BtnFree", "_BtnArray", "_checkPullOut"];
if(!dialog) then {
	createDialog "vInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;};
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
life_vInact_curTarget = _curTarget;

_BtnArray = [_Btn1, _Btn2, _Btn3, _Btn4, _Btn5, _Btn6];

_BtnNumber = 0;

//Set Repair Action
(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_Repair";
(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_repairTruck;";

if("ToolKit" in (items player) && (damage _curTarget < 1)) then {(_BtnArray select _BtnNumber) ctrlEnable true;} else {(_BtnArray select _BtnNumber) ctrlEnable false;};
_BtnNumber = _BtnNumber + 1;

if(playerSide == west) then {
	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_Registration";
	(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_searchVehAction;";
	_BtnNumber = _BtnNumber + 1;

	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_SearchVehicle";
	(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_vehInvSearch;";
	_BtnNumber = _BtnNumber + 1;

	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_PullOut";
	(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction;";
	if(count crew _curTarget == 0) then {(_BtnArray select _BtnNumber) ctrlEnable false;};
	_BtnNumber = _BtnNumber + 1;
	
	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_Impound";
	(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction;";
	_BtnNumber = _BtnNumber + 1;
	
};
if (playerSide == east) then {
	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_Impound";
	(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_adacImpound;";
	_BtnNumber = _BtnNumber + 1;

	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_ConnectVehicles";
	(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_connectVehicles;";
	_BtnNumber = _BtnNumber + 1;

	_ConntectedVehicle = life_vInact_curTarget getVariable ["AttachedVehicle", _curTarget];
	
	if (_ConntectedVehicle != _curTarget) then {
		(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_DeConnectVehicles";
		(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deconnectVehicles;";
		_BtnNumber = _BtnNumber + 1;
	};
};


_checkPullOut = false;
{
	if (_x getVariable["restrained",false]) then {
		_checkPullOut = true;
	};
} foreach crew cursorTarget;

if (_checkPullOut) then {
	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_PullOut";
	(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction;";
	_BtnNumber = _BtnNumber + 1;	
};

// PUSH BOAT | UNFLIP | GET IN KART HANDLING

if(_curTarget isKindOf "Ship") then {
	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_PushBoat";
	(_BtnArray select _BtnNumber) buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
	if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { (_BtnArray select _BtnNumber) ctrlEnable true;} else {(_BtnArray select _BtnNumber) ctrlEnable false};
} else {
	if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F"]) then {
		(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_GetInKart";
		(_BtnArray select _BtnNumber) buttonSetAction "player moveInDriver life_vInact_curTarget; closeDialog 0;";
		if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {(_BtnArray select _BtnNumber) ctrlEnable true;} else {(_BtnArray select _BtnNumber) ctrlEnable false};
	} else {
		(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_Unflip";
		(_BtnArray select _BtnNumber) buttonSetAction "life_vInact_curTarget setPos [getPos life_vInact_curTarget select 0, getPos life_vInact_curTarget select 1, (getPos life_vInact_curTarget select 2)+0.5]; closeDialog 0;";
		if(count crew _curTarget == 0 && {canMove _curTarget}) then { (_BtnArray select _BtnNumber) ctrlEnable false;} else {(_BtnArray select _BtnNumber) ctrlEnable true;};
	};
};
_BtnNumber = _BtnNumber + 1; // ALWAYS ONLY ONE MORE 

// AUTO MINE HANDLING
	
if(typeOf _curTarget == "O_Truck_03_device_F") then {
	(_BtnArray select _BtnNumber) ctrlSetText localize "STR_vInAct_DeviceMine";
	(_BtnArray select _BtnNumber) buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deviceMine";
	if(!isNil {(_curTarget getVariable "mining")} OR !local _curTarget && {_curTarget in life_vehicles}) then {
		(_BtnArray select _BtnNumber) ctrlEnable false;
	} else {
		(_BtnArray select _BtnNumber) ctrlEnable true;
	};
} else {
	(_BtnArray select _BtnNumber) ctrlShow false;
};
_BtnNumber = _BtnNumber + 1; // ALWAYS ONLY ONE MORE 

for "_x" from (_BtnNumber) to 5 do {
	(_BtnArray select _x) ctrlShow false;	
};

