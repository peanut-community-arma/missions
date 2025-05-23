DNV_lastSpawned = 0;
DNV_lastKilled = 0;
DNV_lowEnemyCoeff = 6;
DNV_highEnemyCoeff = 12;
DNV_maxEnemies = 300;

DNV_pressure_spawner = [
	[DNV_pressure_system],
	true
] call CBA_statemachine_fnc_create;

DNV_spawnPatrols = {
    private _thisLocation = selectRandom (missionNamespace getVariable "DNV_spawnSpots");

    if (!([_thisLocation, 150] call CBA_fnc_nearPlayer)) then {
        private _nuGroup = [
            getPosATL _thisLocation,
            east,
            [
                "O_G_Soldier_SL_F",
                4 + floor (random 5),
                DNV_randoGroup
            ] call DNV_fnc_randomizedGroup
        ] call BIS_fnc_spawnGroup;
        _nuGroup deleteGroupWhenEmpty true;
        
        if ([_thisLocation, 300] call CBA_fnc_nearPlayer) then {
             [
                _nuGroup,
                500,
                15 + random 15,
                [],
                [],
                true
            ] spawn lambs_wp_fnc_taskRush;
        } else {
            [
                _nuGroup,
                1000,
                15 + random 15,
                [],
                [],
                true,
                true
            ] spawn lambs_wp_fnc_taskHunt;
        };
    };
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
		if ((CBA_missionTime - DNV_lastSpawned) > 30) then {
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
	) > 30) then {(selectRandom ((units east) select {vehicle _x != _x})) setDamage 1;};
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
