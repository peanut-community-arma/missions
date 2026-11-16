/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/
player addEventHandler ["GetInMan", {
    params ["_unit", "_role", "_vehicle", "_turret"];
    if (_role == "cargo" && {count _turret > 0}) then {
        ace_scopes_correctZeroing = false;
    };
}];

player addEventHandler ["GetOutMan", {
    params ["_unit", "_role", "_vehicle", "_turret", "_isEject"];
    ace_scopes_correctZeroing = true;
}];

player addEventHandler ["SeatSwitchedMan", {
    params ["_unit1", "_unit2", "_vehicle"];
    private _role = assignedVehicleRole player;
    if (_role # 0 == "cargo" && {count _role > 1}) then {
        ace_scopes_correctZeroing = false;
    } else {
        ace_scopes_correctZeroing = true;
    };
}];