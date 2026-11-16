//*** Configure the aircraft rearm and refuel triggers (requires SERVERSIDE context only!)
sxf_fnc_stripAircraft = {
	//_this must be the aircraft vehicle itself
	{	
		if (_x != "CMFlareLauncher") then	//i don't know how to re-add this back into the chaff slot for some reason... :'c
		{
			_this removeWeaponTurret [_x, [-1]]; 
		};
	} forEach (_this weaponsTurret [-1]);
	{
		_this removeMagazineTurret [_x, [-1]];
	} forEach (_this magazinesTurret [-1]);
};
sxf_fnc_equipAircraft = {
	_this addWeaponTurret ["gatling_30mm", [-1]]; 
	_this addMagazineTurret ["250Rnd_30mm_APDS_shells", [-1]];
	_this addWeaponTurret ["GBU12BombLauncher", [-1]]; 
	_this addMagazineTurret ["2Rnd_GBU12_LGB", [-1]];
};
sxf_fnc_refuelAircraft = {
	_this setFuel 0.33;
};
sxf_fnc_repairAircraft = {
	_this setDamage 0;
};
sxf_fnc_handleRearmAircraft = {
	//_this is meant to be thisList according to the trigger that called this function
	if (! ((_this select 0) isKindOf "Plane")) exitWith {};
	_aircraft = _this select 0;
	["TaskUpdated", ["", "Rearm process initiated!"]] remoteExec ["BIS_fnc_showNotification", driver _aircraft];
	_aircraft call sxf_fnc_stripAircraft;
	sleep 3;
	_aircraft call sxf_fnc_equipAircraft;
	["TaskUpdated", ["", "Rearm process completed!"]] remoteExec ["BIS_fnc_showNotification", driver _aircraft];
};
sxf_fnc_handleRefuelAircraft = {
	//_this is meant to be thisList according to the trigger that called this function
	if (! ((_this select 0) isKindOf "Plane")) exitWith {};
	_aircraft = _this select 0;
	["TaskUpdated", ["", "Refuel process initiated!"]] remoteExec ["BIS_fnc_showNotification", driver _aircraft];
	sleep 3;
	_aircraft call sxf_fnc_refuelAircraft;
	["TaskUpdated", ["", "Refuel process completed!"]] remoteExec ["BIS_fnc_showNotification", driver _aircraft];
};
sxf_fnc_handleRepairAircraft = {
	//_this is meant to be thisList according to the trigger that called this function
	if (! ((_this select 0) isKindOf "Plane")) exitWith {};
	_aircraft = _this select 0;
	["TaskUpdated", ["", "Repair process initiated!"]] remoteExec ["BIS_fnc_showNotification", driver _aircraft];
	sleep 3;
	_aircraft call sxf_fnc_repairAircraft;
	["TaskUpdated", ["", "Repair process completed!"]] remoteExec ["BIS_fnc_showNotification", driver _aircraft];
};
trg_rearmZone setTriggerStatements ["this", "thisList spawn sxf_fnc_handleRearmAircraft", ""];
trg_refuelZone setTriggerStatements ["this", "thisList spawn sxf_fnc_handleRefuelAircraft", ""];
trg_repairZone setTriggerStatements ["this", "thisList spawn sxf_fnc_handleRepairAircraft", ""];
{	//initialize the jets
	_x call sxf_fnc_stripAircraft;
	_x call sxf_fnc_equipAircraft;
	_x call sxf_fnc_refuelAircraft;
	_x call sxf_fnc_repairAircraft;
} forEach [jet_1, jet_2];
