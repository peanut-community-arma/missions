/**
	Retrieves data and spawns the unit 
	
	Parameters: 
	0: unit data <ARRAY>
	1: spawned group <GROUP>
	2: spawn position <ARRAY>
	3: unit is stationary <BOOL>
	
	Example: 
	[<unitData>, <group>, <spawnPos>] call pca_fnc_spawnUnit;
	
	Returns: 
	the spawned units
*/

if (!isServer) exitWith {};

params ["_unitData", "_newGrp", "_spawnPos", ["_isStationary", false]];

_unitData params ["_unitType", "_unitPos", "_unitLoadout", "_unitFaction"];

//use CAN_COLLIDE for more precise spawning position
private _newUnit = _newGrp createUnit [_unitType, _spawnPos, [], 0, "NONE"];

waitUntil {alive _newUnit};

_newUnit setVariable ["tmf_assignGear_role", _unitLoadout];
[_newUnit, _unitFaction, _unitLoadout] call tmf_assigngear_fnc_assigngear;

if (_isStationary) then 
{
	_newUnit disableAI "PATH";
	_newUnit setPosATL _unitPos;
};

//return
_newUnit;