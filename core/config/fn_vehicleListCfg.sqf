#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	// KART SHOP

	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",50000],
			["C_Kart_01_Fuel_F",50000],
			["C_Kart_01_Red_F",50000],
			["C_Kart_01_Vrana_F",50000]
		];
	};


	//MEDIC CAR

	case "med_shop":
	{

		if(__GETC__(life_medicLevel) > 0) then {
			_return set[count _return, ["C_Offroad_01_F",12000]];
		};
		if(__GETC__(life_medicLevel) > 1) then {
			_return set[count _return, ["C_Van_01_box_F", 20000]];
		};
		if(__GETC__(life_medicLevel) > 2) then {
			_return set[count _return, ["B_Truck_01_medical_F",200000]];
		};
		if(__GETC__(life_medicLevel) > 3) then {
			_return set[count _return, ["C_SUV_01_F",23000]];
		};
	};
	
	// MEDIC HELICOPTER
	
	case "med_air_hs": {
		if(__GETC__(life_medicLevel) > 1) then {
			_return set[count _return, ["B_Heli_Light_01_F",133000]];
		};
		if(__GETC__(life_medicLevel) > 4) then {
			_return set[count _return, ["O_Heli_Light_02_unarmed_F",380000]];
		};
	};
	
	// ADAC CAR
	case "adac_car": 
	{

		if(__GETC__(life_adaclevel) > 0) then {
			_return set[count _return, ["C_Offroad_01_F",12000]];
		};

		if(__GETC__(life_adaclevel) > 1) then {
			_return set[count _return, ["C_SUV_01_F",23000]];
		};

		if(__GETC__(life_adaclevel) > 2) then {
			_return set[count _return, ["B_Truck_01_mover_F",200000]];
			_return set[count _return, ["C_Hatchback_01_sport_F",30000]];
		};

		if(__GETC__(life_adaclevel) > 3) then {
			_return set[count _return, ["B_Heli_Light_01_F",133000]];
		};
		if(__GETC__(life_adaclevel) > 4) then {
			_return set[count _return, ["O_Heli_Light_02_unarmed_F",380000]];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1000],
			["C_Hatchback_01_F",10600],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",34000],
			["C_Van_01_transport_F",56000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",73000],
			["I_Truck_02_transport_F",133500],
			["I_Truck_02_covered_F",166500],
			["B_Truck_01_transport_F",266000],
			["O_Truck_03_transport_F",400000],
			["B_Truck_01_box_F",666000],
			["O_Truck_03_device_F",866000],
			["B_Truck_01_fuel_F",1000000],
			["O_Truck_03_fuel_F",1200000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",1000],
			["B_G_Offroad_01_F",12000],
			["O_MRAP_02_F",800000],
			["B_MRAP_01_F", 880000],
			["B_Heli_Light_01_F",533000],
			["B_G_Offroad_01_armed_F",666000],
			["O_Truck_03_covered_F", 1500000]
		];
	};
	
	case "cop_car":
	{
		_return set[count _return,["C_Quadbike_01_F",1000]];
		_return set[count _return,["C_Offroad_01_F",12000]];

		if(__GETC__(life_coplevel) > 1) then {
			_return set[count _return,["C_Hatchback_01_F",10600]];
		};
		if(__GETC__(life_coplevel) > 2) then {
			_return set[count _return,["C_SUV_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 4) then {
			_return set[count _return, ["C_Hatchback_01_sport_F",30000]];
			_return set[count _return, ["B_MRAP_01_F",400000]];
		};
		if(__GETC__(life_coplevel) > 7) then {
			_return set[count _return, ["B_MRAP_01_hmg_F",733300]];
		};
		if(__GETC__(life_coplevel) > 10) then {
			_return set[count _return, ["I_MRAP_03_F",913000]];
			_return set[count _return, ["I_MRAP_03_hmg_F",966000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",533000],
			["O_Heli_Light_02_unarmed_F",800000],
			["I_Heli_Transport_02_F", 1333000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 3) then {
			_return set[count _return, ["B_Heli_Light_01_F",466000]];
		};
		if(__GETC__(life_coplevel) > 5) then {
			_return set[count _return, ["I_Heli_light_03_unarmed_F",733000]];
		};
		if(__GETC__(life_coplevel) > 10) then {
			_return set[count _return, ["B_Heli_Transport_01_F",933000]];
		};	
	};
	
	case "cop_airhq":
	{
		_return set[count _return, ["B_Heli_Light_01_F",466000]];

		if(__GETC__(life_coplevel) > 5) then {
			_return set[count _return, ["I_Heli_light_03_unarmed_F",733000]];
		};
		if(__GETC__(life_coplevel) > 10) then {
			_return set[count _return, ["B_Heli_Transport_01_F",933000]];
		};	
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["O_Lifeboat",10000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
