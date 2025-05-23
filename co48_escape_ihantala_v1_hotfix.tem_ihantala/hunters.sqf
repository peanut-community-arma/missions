//switchableUnits for 3den playableUnits for MP (Remember to change this to playableUnits before you export!!!)
_Players = ([switchableUnits, playableUnits] select isMultiplayer);
//Target for who to be hunted.
_Spawntarget = selectRandom _Players;
// Minimum range, in meters, for how far away hunters should spawn away from the target
_MinDistance = 100;
//Range in meters for how far away, on average, the hunters should spawn
_Spawndistance = 150;
//Distance from target for the hunters to be deleted
_Deletedistance = 385;

//Class name in an array of the hunters you wish to spawn. (Can be an array to have a full squad and/or fireteam)
_Spawngroups = [
  ["I_soldier_F","I_Soldier_SL_F"],
  ["I_Soldier_M_F"],
  ["I_soldier_F","I_Soldier_SL_F","I_Soldier_GL_F"],
  ["I_Soldier_LAT_F","I_Soldier_AR_F","I_Soldier_TL_F","I_Soldier_GL_F"],
  ["I_medic_F","I_soldier_F"],
  ["I_Soldier_A_F"]
];
//Items added to hunters uniforms if needed (beyond TMF gear assign). Can be an array of items.
_Lootgoodies = [
  "ACE_suture"
];
_SelectedLootgoodies = selectRandom _Lootgoodies;

//Maximum delay, in seconds, between spawning additional hunters
_Spawnmaxdelay =160;
//Average delay, in seconds, between spawning additional hunters
_Spawnavgdelay =90;
//Minimum amount of time, in seconds, needed to spawn additional hunters
_Spawnmindelay =40;
//Side for the created group of hunters to be assigned
_Spawnside = OPFOR;

//Skill variables to assign to hunters if you wish for them to have an elevated level of lethality compared to eden placed AI.
_AISkills = [
 ["aimingShake", 0.2],
 ["aimingSpeed", 0.2],
 ["endurance", 0.5],
 ["spotDistance", 0.5],
 ["spotTime", 0.5],
 ["courage", 1],
 ["reloadSpeed", 0.5],
 ["commanding", 1],
 ["general", 0.5]
];

//Code Execution
while {true} do {
	//Check to see if target it alive and valid or if target needs to be re-rolled
	if (alive _SpawnTarget) then
		{
			_SpawnPosistion = _Spawntarget getRelPos [_Spawndistance, floor random 360];
            while {((_SpawnPosistion nearEntities ['Man',_MinDistance]) select {isPlayer _x}) isNotEqualTo []} do {
                _SpawnPosistion = _Spawntarget getRelPos [_Spawndistance, floor random 360]; 
                sleep 0.1;
            };
			_NewGroup = [_SpawnPosistion, _Spawnside, (selectRandom _Spawngroups)] call BIS_fnc_spawnGroup;

			_NewGroup setVariable ["spawned",true];
  
			{
				_EditUnit = _x;
				{_EditUnit setSkill _x;} forEach _AISkills;
				_EditUnit addItemToUniform _SelectedLootgoodies;
			} forEach units _NewGroup;
			//Behaviour to assign to the spwaned hunters
			_NewGroup setBehaviour "COMBAT";
			_NewGroup setSpeedMode "FULL";
			_NewGroup setCombatMode "RED";
			//Waypoint type can be changed if needed.
			_GroupWayPoint = _NewGroup addWaypoint [position _Spawntarget, 0];
			_GroupWayPoint setWaypointType "MOVE";
  
			{
				_EditGroup = _x;
				for "_i" from count waypoints _EditGroup - 1 to 0 step -1 do  { deleteWaypoint [_EditGroup, _i];};
				_NewGroupWayPoint = _EditGroup addWaypoint [position _Spawntarget, 0];
				_NewGroupWayPoint setWaypointType "MOVE";
			{
				if (_Spawntarget distance _x>_Deletedistance) then {deleteVehicle _x;};
			} forEach units _EditGroup;
			} foreach (allGroups select {side _x == _Spawnside && (_x getVariable ["spawned",true])});

			sleep (random [_Spawnmindelay,_Spawnavgdelay,_Spawnmaxdelay]);
		}
	else 
	{
		_Spawntarget = selectRandom _Players
	};
	sleep 5;
};