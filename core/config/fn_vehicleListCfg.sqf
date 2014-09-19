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
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",220000],
			["C_Kart_01_Fuel_F",220000],
			["C_Kart_01_Red_F",220000],
			["C_Kart_01_Vrana_F",220000]
		];
	};
	case "med_shop":
	{
		if(__GETC__(life_medicLevel) == 1) then
		{
			_return set[count _return,
			["C_Offroad_01_F",10000]];
			_return set[count _return,
			["C_Van_01_box_F",20000]];
		};
		if(__GETC__(life_medicLevel) == 2) then
		{
			_return set[count _return,
			["B_Truck_01_medical_F",50000]];
			_return set[count _return,
			["C_Offroad_01_F",10000]];
			_return set[count _return,
			["C_Van_01_box_F",20000]];
		};
		if(__GETC__(life_medicLevel) == 3) then
		{
			_return set[count _return,
			["B_Truck_01_medical_F",50000]];
			_return set[count _return,
			["C_Offroad_01_F",10000]];
			_return set[count _return,
			["C_Van_01_box_F",20000]];
			_return set[count _return,
			["C_SUV_01_F",50000]];
		};
		if(__GETC__(life_medicLevel) == 4) then
		{
			_return set[count _return,
			["B_Truck_01_medical_F",50000]];
			_return set[count _return,
			["C_Offroad_01_F",10000]];
			_return set[count _return,
			["C_Van_01_box_F",20000]];
			_return set[count _return,
			["C_SUV_01_F",50000]];
		};
		if(__GETC__(life_medicLevel) == 5) then
		{
			_return set[count _return,
			["B_Truck_01_medical_F",50000]];
			_return set[count _return,
			["C_Offroad_01_F",10000]];
			_return set[count _return,
			["C_Van_01_box_F",20000]];
			_return set[count _return,
			["C_SUV_01_F",50000]];
		};

		if(__GETC__(life_medicLevel) > 5) then
		{
		_return set[count _return,
		["I_G_Offroad_01_F",10000]];
		};
		if(__GETC__(life_medicLevel) > 6) then
		{
			_return set[count _return,
			["C_SUV_01_F",50000]];
			_return set[count _return,
			["B_Truck_01_mover_F",50000]];
		};
	};
	
	
	case "med_air_hs": {
		if(__GETC__(life_medicLevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",75000]];
		};
		if(__GETC__(life_medicLevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",100000]];
		};
	};
	
	/*	case "adac_air": {
		if(__GETC__(life_medicLevel) > 5) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",75000]];
		};
		if(__GETC__(life_medicLevel) > 6) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",100000]];
		};
	};*/
	
	// ADAC CAR
	case "adac_car": 
	{

		if(__GETC__(life_adaclevel) > 0) then {
			_return set[count _return, ["C_Offroad_01_F",10000]];
		};

		if(__GETC__(life_adaclevel) > 1) then {
			_return set[count _return, ["C_SUV_01_F",30000]];
		};

		if(__GETC__(life_adaclevel) > 2) then {
			_return set[count _return, ["B_Truck_01_mover_F",640000]];
			_return set[count _return, ["C_Hatchback_01_sport_F",44000]];
		};

		if(__GETC__(life_adaclevel) > 3) then {
			_return set[count _return, ["B_Heli_Light_01_F",400000]];
		};
		if(__GETC__(life_adaclevel) > 4) then {
			_return set[count _return, ["O_Heli_Light_02_unarmed_F",750000]];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",5000],
			["C_Hatchback_01_F",15000],
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",50000],
			["C_Van_01_transport_F",75000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",100000],
			["I_Truck_02_transport_F",150000],
			["I_Truck_02_covered_F",185000],
			["B_Truck_01_transport_F",550000],
			["O_Truck_03_transport_F",250000],
			["B_Truck_01_box_F",1500000],
			["O_Truck_03_device_F",2500000],
			["C_Van_01_fuel_F",125000],
			["B_Truck_01_fuel_F",450000],
			["O_Truck_02_fuel_F",175000],
			["O_Truck_03_fuel_F",250000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",4000],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",1300000],
			["B_Heli_Light_01_F",500000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",2000000]],
			_return set[count _return,
			["O_Truck_03_covered_F",1500000]];
		};
	};
	
	case "cop_car":

	// >1 
	{
		_return set[count _return,
		["C_Quadbike_01_F",5000]];
		_return set[count _return,
		["C_Offroad_01_F",20000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",40000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",60000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",100000]];
			_return set[count _return,
			["B_MRAP_01_F",250000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
		};
		if(__GETC__(life_coplevel) > 10) then
		{
			_return set[count _return,
			["I_MRAP_03_F",800000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",1000000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",450000],
			["O_Heli_Light_02_unarmed_F",2500000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",75000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",100000]];
		};
		if(__GETC__(life_coplevel) == 11) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",500000]];
		};	
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",100000]];
		};
		if(__GETC__(life_coplevel) == 11) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",500000]];
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
