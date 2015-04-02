/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
private['_copLevel', '_adminLevel'];

_copLevel = call life_coplevel;
_adminLevel = call life_adminlevel;

switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		
		// Organs Action
		life_actions = life_actions + [player addAction["Niere entnehmen",life_fnc_takeOrgans,"",0,false,false,"",'
		!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
	};
	case east: 
	{	
		//ADAC DROP VEHICLE 
		life_actions = [player addAction[format ["<t color=""#FFCC00"">%1</t>", (localize "STR_pAct_AdacDeAttach")], life_fnc_deconnectVehiclesAction, "", 0, false, false, "", '
			(vehicle player isKindOf "Air") && (speed (vehicle player) < 2) && (speed (vehicle player) > -1) && (vehicle player != vehicle player getVariable ["AttachedVehicle", vehicle player]) && ((getPos (vehicle player) select 2) < 10) && ((getPos (vehicle player) select 2) > 2.5)
		']];


		// ADAD ATTACH VEHICLE
		life_actions = life_actions + [player addAction[format ["<t color=""#FFCC00"">%1</t>", (localize "STR_pAct_AdacAttach")], life_fnc_connectVehiclesAction, "", 0, false, false, "", '
			(vehicle player isKindOf "Air") && (speed (vehicle player) < 2) && (speed (vehicle player) > -1) && (vehicle player == vehicle player getVariable ["AttachedVehicle", vehicle player]) && (count (nearestObjects [[(getPos vehicle player) select 0, (getPos vehicle player) select 1, 0], ["Car","Truck", "Air"], 5]) > 0) && ((getPos (vehicle player) select 2) < 10) && ((getPos (vehicle player) select 2) > 2.5)
		']];
	};

	case independent: {
	};

};

if (_adminLevel > 2) then {
	life_actions = life_actions + [player addAction ["<t color='#FF7D66'>Teleportieren</t>", {
		openMap [true, false];
		onMapSingleClick "vehicle player setPos _pos; onMapSingleClick ''; openMap [false, false]; true;";
	}, "", 0, false, false, "", ""]];
};