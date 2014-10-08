/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			["textures\vehicles\mohawk_adac_01.jpg", "adac", "textures\vehicles\mohawk_adac_02.jpg", "textures\vehicles\mohawk_adac_03.jpg"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\vehicles\hatchback_blau.jpg", "cop"],
			["textures\vehicles\hatchback_gruen.jpg", "cop"],
			["textures\vehicles\hatchback_adac.jpg", "adac"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			["textures\vehicles\offroad_notarzt.jpg","med"],
			["textures\vehicles\offroad_blau.jpg", "cop"],
			["textures\vehicles\offroad_gruen.jpg", "cop"],
			["textures\vehicles\offroad_adac.jpg", "adac"]
		];
	};

	case "C_Offroad_01_repair_F": 
	{
		_ret = 
		[
			["textures\vehicles\offroad_adac.jpg", "adac"]
		];
	};

	case "I_G_Offroad_01_F":
	{
		_ret = 
		[
			["textures\vehicles\offroad_adac.jpg","adac"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\vehicles\hatchback_blau.jpg", "cop"],
			["textures\vehicles\hatchback_gruen.jpg", "cop"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\vehicles\suv_notarzt.jpg","med"],
			["textures\vehicles\suv_gruen.jpg","cop"],
			["textures\vehicles\suv_blau.jpg","cop"],
			["textures\vehicles\suv_adac.jpg","adac"],
			["textures\vehicles\suv_adac1.jpg","adac"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\vehicles\civ_box1.jpg","med","textures\vehicles\civ_box.jpg"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","civ"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["textures\vehicles\quad_cop.jpg", "cop"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\vehicles\Notarzt_Hummingbird.jpg", "med"],
			["textures\vehicles\hummingbird_gruen.jpg", "cop"],
			["textures\vehicles\hummingbird_blau.jpg", "cop"],
			["textures\vehicles\hummingbird_adac.jpg","adac"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\vehicles\Notarzt_Orca.jpg", "med"],
			["textures\vehicles\orca_adac.jpg","adac"]
		];
	};
	
	case "	B_Heli_Transport_01_F":
	{
		_ret = 
		[
			["textures\vehicles\ghosthawk1.jpg","cop","textures\vehicles\ghosthawk2.jpg"]
		];
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		_ret =
		[
			["textures\vehicles\hellcat_blau.jpg", "cop"],
			["textures\vehicles\hellcat_gruen.jpg", "cop"],
			["textures\vehicles\hellcat_skin.jpg", "cop"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\vehicles\police_hunter.jpg", "cop"],
			["textures\vehicles\sek_hunter_01.jpg", "cop", "textures\vehicles\sek_hunter_02.jpg"],
			["textures\vehicles\Hunter_flecktarn_base.jpg", "cop", "textures\vehicles\Hunter_flecktarn_adds.jpg"]
		];
	};
	
	case "B_MRAP_01_hmg_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\vehicles\police_hunter.jpg", "cop"],
			["textures\vehicles\sek_hunter_01.jpg", "cop", "textures\vehicles\sek_hunter_02.jpg"],
			["textures\vehicles\Hunter_flecktarn_base.jpg", "cop", "textures\vehicles\Hunter_flecktarn_adds.jpg"]
		];
	};
	
	case "B_Truck_01_mover_F":
	{
		_ret =
		[
			["textures\vehicles\hemtt_back.jpg", "adac"]
		];
	};


	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["textures\vehicles\notarzt_ifrit_teil1.paa", "med", "notarzt_ifrit_teil2.paa"]
		];
	};
	
	case "I_MRAP_03_F":
	{
		_ret =
		[
			["textures\vehicles\milit_strider.jpg", "cop"],
			["textures\vehicles\strider_bupo.paa", "cop"]
		];
	};
	
	case "I_MRAP_03_hmg_F":
	{
		_ret =
		[
			["textures\vehicles\milit_strider.jpg", "cop"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
};

_ret;