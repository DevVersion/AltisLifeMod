/*
	File: fn_civLights.sqf
	Author: Paul Gschwendtner
	
	Description:
	Adds the light effect to adac vehicles
*/
private["_vehicle","_lightYellow","_lightleft","_lightright","_leftRed","_brightness1","_brightness2", "_attach"];
_vehicle = _this select 0;

if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};

switch (typeOf _vehicle) do {
	case "C_Hatchback_01_F": { _attach = [[-0.6, 2, -0.95], [0.6, 2, -0.95]]; };
    case "C_Hatchback_01_sport_F": { _attach = [[-0.6, 2, -0.95], [0.6, 2, -0.95]]; };
	case "C_Offroad_01_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "C_Offroad_01_repair_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "C_SUV_01_F": { _attach = [[-0.4, 2.3, -0.55], [0.4, 2.3, -0.52]]; };
	case "B_Heli_Light_01_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "B_Heli_Transport_01_F": { _attach = [[-0.5, 0.0, 0.96], [0.5, 0.0, 0.96]]; };
	case "B_Heli_Transport_01_camo_F": { _attach = [[-0.5, 0.0, 0.96], [0.5, 0.0, 0.96]]; };
	case "I_Heli_light_03_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "I_MRAP_03_hmg_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "I_MRAP_03_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };	
	case "B_APC_Wheeled_01_cannon_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };	
	case "B_MRAP_01_hmg_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "B_MRAP_01_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	default { _attach = [[0, 0, 0], [0, 0, 0]] };
};

_lightYellow = [255, 209, 1];

_lightleft = createVehicle ["#lightpoint", (getPos _vehicle), [], 0, "NONE"];
sleep 0.2;
_lightleft setLightColor _lightYellow; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [255, 209, 1];

_lightleft lightAttachObject [_vehicle, _attach select 0];

_lightleft setLightAttenuation [0.1, 0, 1000, 130]; 
_lightleft setLightFlareSize 0.34;
_lightleft setLightFlareMaxDistance 100;
_lightleft setLightUseFlare true;

_lightright = createVehicle ["#lightpoint", (getPos _vehicle), [], 0, "NONE"];
sleep 0.2;	
_lightright setLightColor _lightYellow; 
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [255, 209, 1]; 

_lightright lightAttachObject [_vehicle, _attach select 1];

_lightright setLightAttenuation [0.1, 0, 1000, 130]; 
_lightright setLightFlareSize 0.34;
_lightright setLightFlareMaxDistance 100;
_lightright setLightUseFlare true;

_lightleft setLightDayLight true;
_lightright setLightDayLight true;

if(sunOrMoon == 1) then {
_brightness1 = 6;
_brightness2 = 2;
} else {
_brightness1 = 1;
_brightness2 = 0.3;
};

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		sleep 0.03;
		_lightleft setLightBrightness _brightness1;
		sleep 0.02;
		_lightleft setLightBrightness _brightness2; 
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		sleep 0.03;
		_lightright setLightBrightness _brightness1;
		sleep 0.02;
		_lightright setLightBrightness _brightness2; 
	};  
	sleep (_this select 1);  
};

deleteVehicle _lightleft;
deleteVehicle _lightright;