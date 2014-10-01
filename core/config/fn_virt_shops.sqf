/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Rebellen Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Kaffe Club",["coffee","donuts"]]};
	case "heroin": {["Drogen Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fisch Markt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glas Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamant Dealer",["diamond","diamondc"]]};
	case "salt": {["Salz Dealer",["salt_r"]]};
	case "cop": {["Polizei Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "adac": {["ADAC Item Shop",["donuts","coffee","water","rabbit","apple","redgull","fuelF"]]};
	case "cement": {["Zement Dealer",["cement"]]};
	case "gold": {["Gold Käufer",["goldbar"]]};
	case "organ": {["Organschmuggler",["kidney"]]}; 
};