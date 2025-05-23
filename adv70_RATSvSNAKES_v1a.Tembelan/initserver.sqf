/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/
missionNamespace setVariable ["RATSNAKE_CansFueled", 0, true];
missionNamespace setVariable ["RATSNAKE_MotorPatrolSpawns", []];
missionNamespace setVariable ["RATSNAKE_InfantryPatrolSpawns", []];
{
	switch (triggerText _x) do {
		case "MOTOR_PATROL":
		{
			_x setVariable ["RATSNAKE_waypoints", group ((synchronizedObjects _x) select 0)];
			deleteVehicle ((synchronizedObjects _x) select 0);
			(missionNamespace getVariable "RATSNAKE_MotorPatrolSpawns") pushBack _x;
		};
		case "INFANTRY_PATROL":
		{
			_x setVariable ["RATSNAKE_moveto", getPos ((synchronizedObjects _x) select 0)];
			deleteVehicle ((synchronizedObjects _x) select 0);
			(missionNamespace getVariable "RATSNAKE_InfantryPatrolSpawns") pushBack _x;
		};
	};
} forEach (allMissionObjects "EmptyDetector");

RATSNAKE_unjam_radio = {
	deleteVehicle (_this getVariable ["jammer_zone", objNull]);
};

RATSNAKE_objGroup = createGroup sideLogic;

RATS_fnc_specIconCreate = {
	params [
		"_ratObj",
		"_ratType"
	];
	private _tmfObjRef = missionNamespace getVariable "tmf_spectator_objectives";
	private _thisObjective = RATSNAKE_objGroup createUnit ["Logic", (getPosASL _ratObj) vectorAdd [0, 0, 2], [], 0, "NONE"];
	_thisObjective attachTo [_ratObj, [0,0,5]];
	private _color = [0.118,0.282,0.561,0.75];
	private _text = (name _ratObj);
	private _icon = "\A3\ui_f\data\map\markers\nato\b_unknown.paa";
	if (_ratType == "SNAKE") then {
		_color = [0.549, 0, 0.059, 0.75];
		_icon = "\A3\ui_f\data\map\markers\nato\o_unknown.paa";
	};
	_thisObjective setVariable ["tmf_spectator_objectivedata", [_icon, _text, _color], true];
	_tmfObjRef pushBack _thisObjective;
};

[
	{!([] call TMF_safestart_fnc_isActive)},
	{execVM 'game.sqf'}
] call CBA_fnc_waitUntilAndExecute;