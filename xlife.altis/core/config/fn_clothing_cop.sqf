#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Uniform",25]];

		if(__GETC__(life_coplevel) > 4) then {
			_ret set[count _ret,["U_B_CombatUniform_mcam",nil,550]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,350]];
		};
	};
	
	//Hats
	case 1:
	{

		_ret set[count _ret, ["H_Beret_blk", "Barett Schwarz",100]];
		_ret set[count _ret, ["H_Beret_blk_POLICE", "Barett Polizei",100]];

		if(__GETC__(life_coplevel) > 2) then {
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
		};

		if(__GETC__(life_coplevel) > 5) then {
			_ret set[count _ret,["H_HelmetB",nil,2000]];
			_ret set[count _ret,["H_HelmetB_light",nil,2000]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
		};

		if(__GETC__(life_coplevel) > 8) then {
			_ret set[count _ret, ["H_PilotHelmetFighter_B",nil,2000]];
			_ret set[count _ret, ["H_PilotHelmetHeli_B",nil,2000]];
		};

		if(__GETC__(life_coplevel) > 11) then {
			_ret set[count _ret, ["H_Beret_Colonel","Polizei Barett",100]];
		}
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];

		if(__GETC__(life_coplevel) > 4) then {
			_ret set[count _ret,["V_I_G_resistanceLeader_F",nil,1500]];
			_ret set[count _ret,["V_PlateCarrierH_CTRG",nil,1500]];
		};
		if(__GETC__(life_coplevel) > 7) then {
			_ret set[count ret, ["V_PlateCarrierIA2_dgtl",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_TacticalPack_rgr",nil,2000],
			["B_Kitbag_cbr",nil,2000],
			["B_Kitbag_sgg",nil,2000],
			["B_Kitbag_mcamo",nil,2000],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_mcamo",nil,5000],
			["B_Carryall_oucamo",nil,5000],
			["B_Carryall_ocamo",nil,5000]
		];
	};
};

_ret;