#include <macro.h>
/*
	File: fn_adminLevel.sqf
	Author: Paul Gschwendtner
	
	Description:
	Change Life_Level Script by Paul Gschwendtner
*/
private["_unit", "_variable", "_level"];

if(__GETC__(life_adminlevel) < 3) exitWith {hint "Du hast für das Level setzten keine Rechte!"};

_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];

_variable = _this select 0;
_tmp = "";
_level = parseNumber(ctrlText 9334);

if(isNil "_unit") exitwith {};
if(isNull _unit) exitWith {};

if (_variable == "admin") then {
	_tmp = "adminlevel";
};
if (_variable == "cop") then {
	_tmp = "coplevel";
};
if (_variable == "adac") then {
	_tmp = "adaclevel";
};
if (_variable == "medic") then {
	_tmp = "mediclevel";
};

[[_tmp, _level, (getPlayerUID _unit)],"DB_fnc_updateLevelRequest",false,false] spawn life_fnc_MP;

hint "Der Spieler wurde erfolgreich geändert!";


