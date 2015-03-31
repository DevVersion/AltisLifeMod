/*
	File: fn_connectVehicles.sqf
	Author: Paul Gschwendtner

	Description:
	Connects two Vehicles with a Rope to Transport them
*/
private["_nearestVehicles", "_targetVehicle", "_otherVehicle", "_attachPos", "_find", "_vehtype", "_variableCheck"];

_targetVehicle = cursorTarget;
_nearestVehicles = nearestObjects[getPosATL player,["Car","Air"],10];
_otherVehicle = _targetVehicle;
_attachPos = [0,-5.24,0];
_find = true;

_cnt = (count _nearestVehicles) - 1; 

for "_x" from 0 to _cnt do {
	_currentElement = _nearestVehicles select _x;
	if (_currentElement != _targetVehicle && _find) then {
		_otherVehicle = _currentElement;
		_find = false;
	};
};

if (_otherVehicle == _targetVehicle) exitWith { hint "Es ist kein Fahrzeug in der nähe welches zum Abschleppen geignet ist!"; };
_variableCheck = _otherVehicle getVariable ["AttachedVehicle", _targetVehicle];
if (_variableCheck != _targetVehicle) exitWith { hint "Dieses Fahrzeug ist bereits mit eienm anderen Verbunden!"; };

if (_otherVehicle isKindOf "Air") then {
	_attachPos = [0,0,-3.4];
} else {
	_vehtype = typeOf _otherVehicle;
	if (_vehtype == "B_Truck_01_mover_F") then {
		_attachPos = [0,-2.3,0.98];
	};
};

_otherVehicle setVariable ["AttachedVehicle", _targetVehicle];
_targetVehicle attachTo [_otherVehicle, _attachPos];
hint "Fahrzeug erfolgreich mit einem Seil verbunden!";

