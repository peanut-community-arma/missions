DNV_lastSpawned = 0;
DNV_lastKilled = 0;
DNV_lowEnemyCoeff = 5;
DNV_highEnemyCoeff = 10;
DNV_spawnReinforcements = {
	private _spawnPoint = call DNV_fnc_findAvgPos;
	private _direction = (getPos DNV_objective) vectorDiff _spawnPoint;
	_direction = vectorNormalized _direction;
	_spawnPoint = _spawnPoint vectorAdd (_direction vectorMultiply 700);

	private _spawnedGroup = [
		_spawnPoint,
		east,
		[
			"CUP_O_INS_Officer",
			8,
			(missionNamespace getVariable 'randoGroup')
		] call DNV_fnc_randomizedGroup,
		[]
	] call BIS_fnc_spawnGroup;
	_spawnedGroup deleteGroupWhenEmpty true;
	[
		_spawnedGroup,
		((leader _spawnedGroup) distance DNV_objective) + 10,
		24 + random 5,
		[],
		[],
		true,
		true,
		true
	] spawn lambs_wp_fnc_taskHunt;
	_spawnedGroup;
};

DNV_pressure_spawner = [
	[DNV_objective],
	true
] call CBA_statemachine_fnc_create;

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
			DNV_lastSpawned = CBA_missionTime;
			call DNV_spawnReinforcements;
		}
	},
	{},
	{},
	"LOW"
] call CBA_statemachine_fnc_addState;

[
	DNV_pressure_spawner,
	{
		if ((CBA_missionTime - DNV_lastKilled) > 15) then {(selectRandom ((units east) select {vehicle _x != _x})) setDamage 1;};
		DNV_lastKilled = CBA_missionTime;
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
