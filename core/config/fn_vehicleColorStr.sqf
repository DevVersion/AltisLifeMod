/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Beige";};
			case 2: {_color = "Weiss";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkelrot";};
			case 5: {_color = "Blauweiss"};
			case 6: {_color = "Schwarz"};
			case 7: {_color = "Gelb"};
			case 8: {_color = "Rettungsdienst"};
			case 9: {_color = "Polizei Blau"};
			case 10: {_color = "Polizei Grün"};
			case 11: {_color = "ADAC"};
		};
	};
	
	case "C_Offroad_01_repair_F" : 
	{
		case 0: {_color = "ADAC"};
	};

	case "I_G_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: { _color = "ADAC Service" };
		};
	};

	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Grün";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkelblau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weiss"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
			case 8: {_color = "Polizei Blau"};
			case 9: {_color = "Polizei Grün"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkelblau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz-Weiss"};
			case 4: {_color = "Rotbraun"};
			case 5: {_color = "Grün"};
			case 6: {_color = "Polizei Blau"};
			case 7: {_color = "Polizei Grün"};
			case 8: {_color = "ADAC"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkelrot";};
			case 1: {_color = "Geheimdienst";};
			case 2: {_color = "Silber";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Notarzt"};
			case 5: {_color = "Polizei Grün"};
			case 6: {_color = "Polizei Blau"};
			case 7: {_color = "ADAC"};
			case 8: {_color = "ADAC-2"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
			case 2: {_color = "Krankenwagen"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Hellcat Luftwaffe Blau"};
			case 1: {_color = "Hellcat Luftwaffe Grün"};
			case 2: {_color = "Hellcat Militärlook"};
		};
	};
	
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Luftwaffe"};
		};
	};
	
	case "C_Quadbike_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Digital Wüste"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
			case 5: {_color = "Weiss"};
			case 6: {_color = "Digital Grün"};
			case 7: {_color = "Hunter Camouflage"};
			case 8: {_color = "Rebel Camouflage"};
			case 9: {_color = "Polizei Quad"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Blau Zivil"};
			case 2: {_color = "Rot Zivil"};
			case 3: {_color = "Digital Grün"};
			case 4: {_color = "Blaulinie"};
			case 5: {_color = "Eliptisch"};
			case 6: {_color = "Furios"};
			case 7: {_color = "Jeans Blau"};
			case 8: {_color = "Rotline"};
			case 9: {_color = "Sonnenuntergang"};
			case 10: {_color = "Vrana"};
			case 11: {_color = "Wellenblau"};
			case 12: {_color = "Digital Rebell"};
			case 13: {_color = "Luftrettung"};
			case 14: {_color = "Polizei Grün"};
			case 15: {_color = "Polizei Blau"};
			case 16: {_color = "ADAC"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Weiss / Blau"};
			case 2: {_color = "Digital Grün"};
			case 3: {_color = "Digital Wüste"};
			case 4: {_color = "Luftrettung"};
			case 5: {_color = "ADAC"};
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Militär"};
		};
	};
	
	case "I_MRAP_03_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Militär"};
		};
	};
	
	case "B_Truck_01_mover_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Geheimdienst"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "SEK"};
			case 3: {_color = "Militär"};
		};
	};
	
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Geheimdienst"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "SEK"};
			case 3: {_color = "Militär"};
		};
	};
	
	case "I_Truck_02_coveRot_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "O_Heli_Attack_02_Schwarz_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
};

_color;