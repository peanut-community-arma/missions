/**
	Un-Caches all units associated with a given unique ID
	
	Parameters:
	0: the unique ID <STRING>
	
	Example:
	["cached1"] call pca_fnc_unitCacheDeactivate;
	
	Returns: 
	NONE
*/

params ["_grp", ["_radius", 600]];

_grp setVariable ["pca_isCached", false];

while {{alive _x} count (units _grp) > 0} do 
{
	sleep 10;
	
	if ([getPos (leader _grp), _radius] call pca_fnc_playerInRadius) then 
	{
		if (_grp getVariable "pca_isCached") then 
		{
			{
				(vehicle _x) hideObjectGlobal false;
				_x enableSimulationGlobal true;
			} forEach units _grp;
			
			_grp setVariable ["pca_isCached", false];
		};
	}
	else
	{
		if (!(_grp getVariable "pca_isCached")) then 
		{
			{
				(vehicle _x) hideObjectGlobal true;
				_x enableSimulationGlobal false;
			} forEach units _grp;
			
			_grp setVariable ["pca_isCached", true];
		};
	};
};