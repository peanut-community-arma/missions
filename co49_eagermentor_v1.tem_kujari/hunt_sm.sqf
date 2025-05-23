DNV_lastSpawned = 0;
DNV_lastKilled = 0;
DNV_lowEnemyCoeff = 5;
DNV_highEnemyCoeff = 10;
DNV_maxEnemies = 200;

DNV_pressure_spawner = [
	[DNV_CREEPER],
	true
] call CBA_statemachine_fnc_create;

DNV_spawnPatrols = {
	for "_i" from 0 to 4 do {
		private _thisLocation = [
			Creeper_1,
			Creeper_2,
			Creeper_3,
			Creeper_4,
			Creeper_5
		] select _i;

		if (!([_thisLocation, 300] call CBA_fnc_nearPlayer) && !(triggerActivated (DNV_CreeperTriggers select _i))) then {
			private _nuGroup = [
				getPosATL _thisLocation,
				east,
				[
					"rhsgref_tla_squadleader",
					4 + floor (random 5),
					randoGroup
				] call DNV_fnc_randomizedGroup
			] call BIS_fnc_spawnGroup;
			_nuGroup deleteGroupWhenEmpty true;
			[
				_nuGroup,
				1000,
				15 + random 15
			] spawn lambs_wp_fnc_taskCreep;
			break;
		};
	}
};

[
	DNV_pressure_spawner,
	{},
	{},
	{},
	"STANDARD"
] call CBA_statemachine_fnc_addState;

[
	DNV_pressure_spawner,
	{
		if ((CBA_missionTime - DNV_lastSpawned) > 60) then {
			call DNV_spawnPatrols;
			DNV_lastSpawned = CBA_missionTime;
		}
	},
	{},
	{},
	"LOW"
] call CBA_statemachine_fnc_addState;

[
	DNV_pressure_spawner,
	{
		if ((CBA_missionTime - DNV_lastKilled
	) > 15) then {(selectRandom ((units east) select {vehicle _x != _x})) setDamage 1;};
		DNV_lastKilled
	 = CBA_missionTime;
	},
	{},
	{},
	"HIGH"
] call CBA_statemachine_fnc_addState;

[
	DNV_pressure_spawner,
	"STANDARD",
	"LOW",
	{
		({alive _x} count (units east)) < ((count (call CBA_fnc_players)) * DNV_lowEnemyCoeff);
	},
	{},
	"TOO_FEW"
] call CBA_statemachine_fnc_addTransition;

[
	DNV_pressure_spawner,
	"LOW",
	"STANDARD",
	{
		({alive _x} count (units east)) > ((count (call CBA_fnc_players)) * DNV_lowEnemyCoeff);
	},
	{},
	"SPAWNED_ENOUGH"
] call CBA_statemachine_fnc_addTransition;

[
	DNV_pressure_spawner,
	"STANDARD",
	"HIGH",
	{
		({alive _x} count (units east)) > ((count (call CBA_fnc_players)) * DNV_highEnemyCoeff);
	},
	{},
	"TOO_MANY"
] call CBA_statemachine_fnc_addTransition;

[
	DNV_pressure_spawner,
	"HIGH",
	"STANDARD",
	{
		({alive _x} count (units east)) < ((count (call CBA_fnc_players)) * DNV_highEnemyCoeff);
	},
	{},
	"KILLED_ENOUGH"
] call CBA_statemachine_fnc_addTransition;
