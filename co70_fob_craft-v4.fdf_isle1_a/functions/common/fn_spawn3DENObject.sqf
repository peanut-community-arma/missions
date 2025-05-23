/**
	Spawn a 3DEN entity (aka zeusable) item at a location if there is not one there already.
	[bob, 50, "B_Heli_Light_01_armed_F"] call pca_fnc_spawn3DENObject;
*/
if (hasInterface) exitWith {};

params [
	["_spawnPoint", objNull],
	["_spawnCheckRange", 10],
	["_spawnedObject","CargoNet_01_box_F"]
];

if(count (_spawnPoint nearObjects [_spawnedObject ,_spawnCheckRange]) == 0) 
then { spawned = create3DENEntity [ "Object", _spawnedObject, getPosATL _spawnPoint, true ] };