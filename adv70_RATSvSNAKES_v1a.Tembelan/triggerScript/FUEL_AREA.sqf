{
	if (_x getVariable ["ace_refuel_isrefueling", false]) then {
		private _jerryCan = _x getVariable ["ace_refuel_nozzle", objNull];
		[_x,  _x getVariable ["ace_refuel_nozzle", objNull], false] remoteExec ["ace_refuel_fnc_dropNozzle"];
		deleteVehicle _jerryCan;
		(synchronizedObjects thisTrigger select 0) setVariable ["RATSNAKE_CansFueled", 1 + ((synchronizedObjects thisTrigger select 0) getVariable "RATSNAKE_CansFueled"), true];
		format [
			"Fuel added.\n%1/%2",
			(synchronizedObjects thisTrigger select 0) getVariable "RATSNAKE_CansFueled",
			"cans" call BIS_fnc_getParamValue
		] remoteExec ["hint", _x];
	};
} forEach thisList;
if (((synchronizedObjects thisTrigger select 0) getVariable "RATSNAKE_CansFueled") >= ("cans" call BIS_fnc_getParamValue)) then {
    (synchronizedObjects thisTrigger select 0) setVehicleLock "UNLOCKED";
	(format ["The %1 has been refueled!", triggerText thisTrigger]) remoteExec ["hint"];
};

//count (thisList select {(_x getVariable ["ace_refuel_isrefueling", false])}) > 0;