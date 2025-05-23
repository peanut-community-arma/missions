/**
	Retrieves data and spawns the vehicle and associated crew 
	
	Parameters: 
	0: unit data <ARRAY>
	1: spawned group <GROUP>
	2: spawn position <ARRAY>
	
	Example: 
	[<unitData>, <group>, <spawnPos>] call pca_fnc_spawnVehicle;
	
	Returns: 
	the spawned units
*/

if (!isServer) exitWith {};

params ["_vehicleData", "_newGrp", "_spawnPos"];

_vehicleData params 
[
	"_vehicleType", 
	"_vehiclePos", 
	"_vehicleDir", 
	"_vehicleLocked", 
	"_vehicleItemCargo", 
	"_vehicleMagazineCargo",
	"_vehicleWeaponCargo",
	"_vehicleBackpackCargo",
	"_vehiclePylonMagazines",
	"_vehicleObjectMaterials",
	"_vehicleObjectTextures",
	"_vehicleCrewData"
];

_spawnPos = [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.1];

private _special = "NONE";

if (_vehicleType isKindOf "StaticWeapon") then 
{
	_special = "CAN_COLLIDE";
};

_newVehicle = createVehicle [_vehicleType, _spawnPos, [], 0, _special];
_newVehicle setDir _vehicleDir;
_newVehicle lock _vehicleLocked;

clearItemCargoGlobal _newVehicle;
clearMagazineCargoGlobal _newVehicle;
clearWeaponCargoGlobal _newVehicle;
clearBackpackCargoGlobal _newVehicle;

{_newVehicle addItemCargoGlobal [_x, 1];} forEach _vehicleItemCargo;
{_newVehicle addMagazineCargoGlobal [_x, 1];} forEach _vehicleMagazineCargo;
{_newVehicle addWeaponCargoGlobal [_x, 1];} forEach _vehicleWeaponCargo;
{_newVehicle addBackpackCargoGlobal [_x, 1];} forEach _vehicleBackpackCargo;
{_newVehicle setPylonLoadout [(_forEachIndex + 1), _x];} forEach _vehiclePylonMagazines;
{_newVehicle setObjectMaterialGlobal [_forEachIndex, _x];} forEach _vehicleObjectMaterials;
{_newVehicle setObjectTextureGlobal [_forEachIndex, _x];} forEach _vehicleObjectTextures;

_crewList = [];

{
	_newUnit = [_x # 0, _newGrp, _spawnPos] call pca_fnc_spawnUnit;
	_crewList pushBack _newUnit;
	
	switch toLower (_x # 1) do 
	{
		case "driver" : 
		{
			_newUnit assignAsDriver _newVehicle;
			_newUnit moveInDriver _newVehicle;
		};
		case "commander" : 
		{
			_newUnit assignAsCommander _newVehicle;
			_newUnit moveInCommander _newVehicle;
		};
		case "gunner" : 
		{
			_newUnit assignAsGunner _newVehicle;
			_newUnit moveInGunner _newVehicle;
		};
		case "cargo" : 
		{
			_newUnit assignAsCargoIndex [_newVehicle, (_x # 2)];
			_newUnit moveInCargo [_newVehicle, (_x # 2)];
		};
		case "turret" : 
		{
			_newUnit assignAsTurret [_newVehicle, (_x # 3)];
			_newUnit moveInTurret [_newVehicle, (_x # 3)];
		};
	};
} forEach _vehicleCrewData;

waitUntil {count crew _newVehicle == count (_crewList)};

if (_newVehicle isKindOf "Plane" && (_vehiclePos select 2 > 50)) then 
{
	_newVehicle setPos (_newVehicle modelToWorld [0, 0, 400]);
	_newVehicle engineOn true;
	_newVehicle setVelocity [100 * sin _vehicleDir, 100 * cos _vehicleDir, 0];
};

//return
_newVehicle;
