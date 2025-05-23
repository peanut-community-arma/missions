/**
	UnCaches all units with a given unique ID.
	
	Parameters:
	0: unique ID STRING <STRING>
	
	Example:
	["cached1"] call pca_fnc_unitCacheReactivate;
	
	Returns: 
	NONE
*/

if (!isServer || {isNil "pca_cachedGroups"}) exitWith {false};
if (!params [["_uniqueID", "", [""]]]) exitWith {false};

private _units = [pca_cachedGroups, _uniqueID] call CBA_fnc_hashGet;

{
	_x allowDamage false;
	_x enableSimulationGlobal false;
	_x hideObjectGlobal true;
	
	private _veh = vehicle _x;
	if (_veh != _x && {!simulationEnabled _veh}) then 
	{
		_veh enableSimulationGlobal false;
		_veh hideObjectGlobal true;
	};
} forEach _units;

//end
true;
