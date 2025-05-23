/**
	Force unit to hold fire within random intervals
	
	Parameters:
	0: unit holding fire <OBJECT> 
	1: random interval before holding fire <NUMBER>
	2: random interval after holding fire <NUMBER>
	
	Example:
	[bob, 10, 15] call pca_fnc_doHoldFireInterval;
	
	Returns: 
	BOOL
*/

params ["_unit", ["_interval", 3], ["_intervalEnd", 10]]; 

if (_unit isEqualTo []) exitWith {};

sleep (random _interval);

_unit setUnitCombatMode "BLUE";

sleep (2 + (random _intervalEnd));
	
_unit setUnitCombatMode "RED";

//end
true;
