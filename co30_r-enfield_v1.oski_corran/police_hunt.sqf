if (hasInterface) exitWith {};

params ["_group"];

[_group,_group, 1000] call lambs_wp_fnc_taskPatrol;