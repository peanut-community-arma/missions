if (!isServer) exitWith {};

params [
	["_patrolSize", 3]
];

private _trigger = selectRandom (missionNamespace getVariable "RATSNAKE_InfantryPatrolSpawns");
private _thisPatrol = createGroup independent;
for "_i" from 1 to _patrolSize do {
	_thisPatrol createUnit [
		selectRandomWeighted [
			"I_G_Soldier_A_F", 1,
			"I_G_Soldier_AR_F", 2,
			"I_G_medic_F", 1,
			"I_G_engineer_F", 0.25,
			"I_G_Soldier_exp_F", 0.25,
			"I_G_Soldier_GL_F", 0.5,
			"I_G_Soldier_M_F", 0.5,
			"I_G_officer_F", 0.0625,
			"I_G_Soldier_F", 4,
			"I_G_Soldier_LAT_F", 1,
			"I_G_Soldier_LAT2_F", 2,
			"I_G_Sharpshooter_F", .0625,
			"I_G_Soldier_TL_F", .125
		],
		getPos _trigger,
		[],
		6,
		"NONE"
	]
};
private _moveWP = _thisPatrol addWaypoint [(_trigger getVariable "RATSNAKE_moveto"), 0];
_moveWP setWaypointStatements [
	"true",
	"[this] spawn lambs_wp_fnc_taskReset; [this, 500] spawn lambs_wp_fnc_taskHunt;"
];
_thisPatrol deleteGroupWhenEmpty true;