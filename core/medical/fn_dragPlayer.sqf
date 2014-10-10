private["_injuredperson","_dragger"];
_injuredperson = cursorTarget;
_dragger = vehicle player;

if (_injuredperson == "noCorpse") exitWith { hint "Es ist ein Fehler aufgetreten!" };
if (_injuredperson distance _dragger > 2.5) exitWith {[format ["%1 ist zu weit von dir weg!", name _injuredperson],0, 0.035 * safezoneH + safezoneY,5,0.3] spawn BIS_fnc_dynamicText};

_injuredperson setVariable ["dragger",_dragger,true];
_injuredperson attachTo [_dragger, [0, 1, 0.08]];
_injuredperson setDir 180;

_injuredperson switchMove "AinjPpneMrunSnonWnonDb";
_dragger playAction "grabDrag";
sleep 1;

dropaction = _dragger addAction [format["<t color='#FC9512'>Spieler loslassen</t>",name _injuredperson], {_this spawn life_fnc_dropPlayer},_injuredperson, 0, false, true];
_dragger setVariable ["drop_action", dropaction];
