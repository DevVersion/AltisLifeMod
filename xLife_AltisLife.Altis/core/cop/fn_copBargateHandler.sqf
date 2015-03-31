/*
	File: fn_copBargateHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens Bargate for Cops by Paul Gschwendtner
*/

{
	if (_x animationPhase "Door_1_rot" == 1) then {
		_x animate ["Door_1_rot", 0];
		hint localize "STR_cop_closeBargate";
	} 
	else 
	{
		_x animate ["Door_1_rot", 1];
		hint localize "STR_cop_openBargate";
	};
	
} forEach (nearestObjects [player, ["Land_BarGate_F"], 50]);
