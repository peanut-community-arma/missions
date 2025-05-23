/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

// Attach hi-red infinite chemlights to every single laptop lol lmao
_centerPos = getMarkerPos "mk_laptoparea";

private _laptopList = missionNamespace getVariable "VRS_laptopList";

{
	_chem = "ACE_G_Chemlight_HiRed" createVehicle _centerPos;	
	_chem attachto [_x, [0,-0.165,0.135]];
	_chem setVectorDirAndUp [[1,0,0],[0,0,1]];
	
	_light = "#lightpoint" createVehicle position _chem;
	_light setlightbrightness 15;
	_light setlightcolor [1,0.1,0.1];
	_light setlightambient [1,0,0.01];
	_light setlightintensity 10;
	
} forEach _laptopList;

/*Add laptop count check to ONLY PltCo
if (player == B_PLT_CO) then 
	{
		player addAction ["Check minimum reboot number", 
		{
			hint format ["You need to reboot %1 laptops", missionNamespace getVariable "VRS_minLaptops"];
			[
				"t1", 
				[format ["Reboot at least %1 laptops in this area."], missionNamespace getVariable "VRS_minLaptops", "Reboot Laptops", ""]
			] call BIS_fnc_setTaskDescription;
		}];
	};
	
*/