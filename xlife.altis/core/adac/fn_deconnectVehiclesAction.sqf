/*
	File: fn_deconnectVehicles.sqf
	Author: Paul Gschwendtner

	Description:
	DeConnects two Vehicles
*/
private["_targetVehicle", "_otherVehicle", "_ZeroPos", "_vehPos"];

/*
	
	_otherVehicle = ATTACHED FAHRZEUG
	_targetVehicle = FAHRZEUG VOM SPIELER
	
*/

_targetVehicle = vehicle player;
_otherVehicle = _targetVehicle getVariable ["AttachedVehicle", _targetVehicle];

if (_otherVehicle == _targetVehicle) exitWith { hint "Es ist kein Fahrzeug mit diesem Fahrzeug verbunden!"; };

detach _otherVehicle;

_targetVehicle setVariable ["AttachedVehicle", nil];

hint "Die Fahrzeuge wurden getrennt!";