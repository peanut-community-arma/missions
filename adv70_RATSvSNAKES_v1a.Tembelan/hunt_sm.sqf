RATS_lastSpawned = 0;
RATS_lastKilled = 0;
RATSNAKE_lowEnemyCoeff = 3;
RATSNAKE_highEnemyCoeff = 9;

RATSNAKE_pressure_spawner = [
	[PATROL_SPAWNER],
	true
] call CBA_statemachine_fnc_create;

RATSNAKE_spawnPatrols = {
	private _path = selectRandom [
		"scripts\spawnFootPatrol.sqf",
		"scripts\spawnMotorPatrol.sqf",
		"scripts\spawnFootPatrol.sqf"
	];
	execVM _path;
};

[
	RATSNAKE_pressure_spawner,
	{},
	{},
	{},
	"STANDARD"
] call CBA_statemachine_fnc_addState;

[
	RATSNAKE_pressure_spawner,
	{
		if ((CBA_missionTime - RATS_lastSpawned) > 60) then {
			call RATSNAKE_spawnPatrols;
			RATS_lastSpawned = CBA_missionTime;
		}
	},
	{},
	{},
	"LOW"
] call CBA_statemachine_fnc_addState;

[
	RATSNAKE_pressure_spawner,
	{
		if ((CBA_missionTime - RATS_lastKilled) > 15) then {(selectRandom ((units independent) select {vehicle _x != _x})) setDamage 1;};
		RATS_lastKilled = CBA_missionTime;
	},
	{},
	{},
	"HIGH"
] call CBA_statemachine_fnc_addState;

[
	RATSNAKE_pressure_spawner,
	"STANDARD",
	"LOW",
	{
		({alive _x} count (units independent)) < ((count (call CBA_fnc_players)) * RATSNAKE_lowEnemyCoeff);
	},
	{},
	"TOO_FEW"
] call CBA_statemachine_fnc_addTransition;

[
	RATSNAKE_pressure_spawner,
	"LOW",
	"STANDARD",
	{
		({alive _x} count (units independent)) > ((count (call CBA_fnc_players)) * RATSNAKE_lowEnemyCoeff);
	},
	{},
	"SPAWNED_ENOUGH"
] call CBA_statemachine_fnc_addTransition;

[
	RATSNAKE_pressure_spawner,
	"STANDARD",
	"HIGH",
	{
		({alive _x} count (units independent)) > ((count (call CBA_fnc_players)) * RATSNAKE_highEnemyCoeff);
	},
	{},
	"TOO_MANY"
] call CBA_statemachine_fnc_addTransition;

[
	RATSNAKE_pressure_spawner,
	"HIGH",
	"STANDARD",
	{
		({alive _x} count (units independent)) < ((count (call CBA_fnc_players)) * RATSNAKE_highEnemyCoeff);
	},
	{},
	"KILLED_ENOUGH"
] call CBA_statemachine_fnc_addTransition;
