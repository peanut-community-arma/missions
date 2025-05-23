/*
params ["_wave","_spawnedGroups","_spawnedUnits","_spawnedVehicles","_spawnedObjects","_logic","_wavehandlerID"];
nul = [_spawnedUnits] execVM "scripts\setup_wavespawner.sqf";
*/

// Assume the passed argument is the list of spawned units
_spawnedUnits = _this select 0;

// Set the behavior of each spawned unit to "SAFE"
{_x setBehaviour "SAFE";} forEach _spawnedUnits;