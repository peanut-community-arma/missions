/**
	Searches for and consumes a supply object to increment ACEX fortify budget (think gathering resources in an RTS).
	Attach to a trigger to loop.
	
	{[West, 50, true] call ace_fortify_fnc_updateBudget;deleteVehicle _x;} forEach (thisTrigger nearObjects ["CargoNet_01_box_F",20]);
	
	[bob, WEST, 50] call pca_fnc_consumeFortifySupply;
*/
if (hasInterface) exitWith {};

params [
	["_consumerZone", objNull],
	["_consumerItem","CargoNet_01_box_F"],
	["_consumerSide", WEST],
	["_consumerCash", 50]
];
private _objectsToConsume = vehicles select { _x isKindOf _consumerItem } inAreaArray _consumerZone;

{[_consumerSide, _consumerCash, true] call ace_fortify_fnc_updateBudget; deleteVehicle _x; } forEach _objectsToConsume;