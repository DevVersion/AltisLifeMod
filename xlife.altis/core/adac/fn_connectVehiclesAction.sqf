/*
	File: fn_connectVehicles.sqf
	Author: Paul Gschwendtner

	Description:
	Connects two Vehicles with a Rope to Transport them
*/
private["_vehPlayer", "_veh"];

_vehPlayer = vehicle player;

_veh = (nearestObjects [[(getPos _vehPlayer) select 0, (getPos _vehPlayer) select 1, 0], ["Car","Truck", "Air"], 5]) select 0;
_veh attachTo [_vehPlayer, [0,0,-3.5]];
_vehPlayer setVariable ["AttachedVehicle", _veh];
hint "Fahrzeug mitgenommen!";
