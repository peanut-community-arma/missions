/**
	Saves the data for use later
	
	Parameters: 
	0: the unit <OBJECT>
	
	Example: 
	bob call pca_fnc_saveVehicle;
	
	Returns: 
	an array of the vehicle and crew data
*/

if (!isServer) exitWith {};

params ["_unit"];

private _vehicleData = [];
private _vehicle = vehicle _unit;

_vehicleData pushBack (typeOf _vehicle);
_vehicleData pushBack (getPos _vehicle);
_vehicleData pushBack (getDir _vehicle);
_vehicleData pushBack (locked _vehicle);
_vehicleData pushBack (itemCargo _vehicle);
_vehicleData pushBack (magazineCargo _vehicle);
_vehicleData pushBack (weaponCargo _vehicle);
_vehicleData pushBack (backpackCargo _vehicle);
_vehicleData pushBack (getPylonMagazines _vehicle);
_vehicleData pushBack (getObjectMaterials _vehicle);
_vehicleData pushBack (getObjectTextures _vehicle);

_crewData = [];

{
	_crewData pushBack ([_x] call pca_fnc_saveCrew);
} forEach (fullCrew _vehicle);

_vehicleData pushBack _crewData;

//return
_vehicleData;