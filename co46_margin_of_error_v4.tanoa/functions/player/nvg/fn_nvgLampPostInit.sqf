//Original Author: Diwako

["CAManBase", "killed", 
	{
		params ["_unit"];
		if !(local _unit) exitWith {};

		if !(isNull (_unit getVariable ["nvglamp_reflector", objNull])) then 
		{
			deleteVehicle (_unit getVariable ["nvglamp_reflector", objNull]);
		};
	}
] call CBA_fnc_addClassEventHandler;

if !(hasInterface) exitWith {};
