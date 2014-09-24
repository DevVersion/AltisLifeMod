/*
    Author: Paul Gschwendtner
    
    Description:
    Auto Save Gear and so on
*/

while {true} do {
    sleep 480;
    [] call SOCK_fnc_updateRequest;
    hint "Dein Spielstand wurde automatisch gespeichert!";
};