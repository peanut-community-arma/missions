/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

//Defusable explosives at objective antenna

//Create array of positions
_explosives = (getMarkerPos "antenna_explosives") nearObjects ["CBA_BuildingPos", 5];

//Place explosives at each position
{
	_rotation = [0, 179] call BIS_fnc_randomInt;
	[O_DET, getPosATL _x, _rotation, "rhsusf_m112x4_mag", "Command", []] call ace_explosives_fnc_placeExplosive;
} forEach _explosives;

//Place the jammer + IED crate
//Make arrays of possible truck + crate locs
_truckloc = selectRandom [truck_1, truck_2, truck_3];

//Set loc and rotation of truck
obj_jammer setPosATL (getPosATL _truckloc);
obj_jammer setDir (getDir _truckloc);

//Set location of IED crate, dependent on chosen truck location
switch (_truckloc) do {
	case truck_1: {
		obj_ied setPosATL (getPosATL ied_1); 
		obj_ied setDir 0;
		};
	case truck_2: {
		obj_ied setPosATL (getPosATL ied_2); 
		obj_ied setDir 220;
		};
	case truck_3: {
		obj_ied setPosATL (getPosATL ied_3); 
		obj_ied setDir 97;
		};
};