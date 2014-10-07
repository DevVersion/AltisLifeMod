/*
	File: fn_updateLevelRequest.sqf
	Author: Paul Gschwendtner
	
	Description:
	Insert into Database new Rank
*/
private["_query","_thread"];

_variable = _this select 0;
_newrank = _this select 1;
_playerid = _this select 2;

_query = format["UPDATE players SET %1='%2' WHERE playerid='%3'",_variable, _newrank, _playerid];

waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;