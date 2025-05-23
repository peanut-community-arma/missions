/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

total_fixed = 0;
publicVariable "total_fixed";

_centerPos = getMarkerPos "mk_laptoparea";
missionNamespace setVariable ["VRS_laptopList", _centerPos nearObjects ["Land_Laptop_unfolded_F", 200], true];
//Chemlight attachment must be done in initplayerlocal.sqf since lights + particles are local

//Calculate min number of laptops for success - 50% of spawned laptops rounded down
VRS_minLaptops = floor ( ( count (missionNamespace getVariable "VRS_laptopList") ) / 2);
publicVariable "VRS_minLaptops";

//gross and nasty
VRS_taskDescription = format ["Reboot at least %1 laptops.", VRS_minLaptops];
publicVariable "VRS_taskDescription";