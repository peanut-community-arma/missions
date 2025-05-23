/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

missionNamespace setVariable ['DNV_spawnSpots', []];
missionNamespace setVariable ['DNV_helicopters', []];

missionNamespace setVariable [
    'DNV_randoGroup', 
    [
        "O_G_Soldier_A_F", 3.2,
        "O_G_Soldier_AR_F", 6.4,
        "O_G_medic_F", 2,
        "O_G_engineer_F", 1.6,
        "O_G_Soldier_exp_F", 1.6,
        "O_G_Soldier_GL_F", 1.6,
        "O_G_Soldier_M_F", 0.8,
        "O_G_officer_F", 0.4,
        "O_G_Soldier_F", 3.8,
        "O_G_Soldier_LAT2_F", 3,
        "O_G_Soldier_LAT_F", 1,
        "O_G_Soldier_lite_F", 3.8,
        "O_G_Sharpshooter_F", 0.8,
        "O_G_Soldier_SL_F", 1.6,
        "O_G_Soldier_TL_F", 1.6
  ]
];

{
  if (triggerText _x == "DNV_spawnShack") then {
    DNV_spawnSpots pushBack _x;
  };
  if (triggerText _x == "DNV_Garrison") then {
    private _building_list = [
      getPos _x,
      (triggerArea _x) # 0,
      false
    ] call lambs_main_fnc_findBuildings;

    {
      [
        {[_this, 600] call CBA_fnc_nearPlayer},
        {
          // spawn group
          private _group = createGroup east;
		  _group setGroupId [
			"Garrison %GroupNames",
			selectRandom [
				"Alpha",
				"Bravo",
				"Charlie",
				"Delta",
				"Echo",
				"Foxtrot",
				"Golf",
				"Hotel",
				"November",
				"Kilo",
				"Yankee",
				"Zulu",
				"Convoy",
				"Buffalo",
				"Guardian",
				"Two",
				"Three",
				"Fox"
			]
		  ];
          {
            private _unit = _group createUnit [
              selectRandomWeighted DNV_randoGroup,
              _x,
              [],
              0,
              "CAN_COLLIDE"
            ];
            private _handle = _unit addEventHandler ["Suppressed", {
                params ["_unit"];
                [_unit, "PATH"] remoteExec ["enableAI", _unit];
                _unit setCombatMode "RED";
                _unit removeEventHandler ["Suppressed", _unit getVariable "break_garrison_eh"];
                _unit setVariable ["break_garrison_eh", nil];
            }];
            _unit setVariable ["break_garrison_eh", _handle];
            _unit disableAI "PATH";
          } forEach ([(_this buildingPos -1)] call CBA_fnc_shuffle);
          
          _group deleteGroupWhenEmpty true;
          _group setBehaviour "SAFE";
          _group enableAttack false;
          _group setVariable ["lambs_main_currentTactic", "taskGarrison"];
          private _wp = _group addWaypoint [getPos _this, -1];
          _wp setWaypointType "HOLD";
          _wp setWaypointCompletionRadius 30;
        },
        _x
      ] call CBA_fnc_waitUntilAndExecute
    } forEach _building_list;
  };
} forEach (allMissionObjects "EmptyDetector");