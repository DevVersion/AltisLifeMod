/*
	File: fn_adacLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the adac out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "U_Rangemaster";
player addBackpack "B_Kitbag_cbr";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";

[] call life_fnc_updateClothing;
[] call life_fnc_saveGear;