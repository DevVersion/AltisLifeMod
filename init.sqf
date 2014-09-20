enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf";
[] execVM "KRON_Strings.sqf";

if(isDedicated && isNil("life_market_prices")) then {
	[] call life_fnc_marketconfiguration;
	diag_log "Marktpreise generiert!";
     
	"life_market_prices" addPublicVariableEventHandler {
		diag_log format["Marktpreise aktualisiert! %1", _this select 1];
	};
     
	//Start server fsm
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM ausgefuehrt";
};

[] spawn life_fnc_fastRope;

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};