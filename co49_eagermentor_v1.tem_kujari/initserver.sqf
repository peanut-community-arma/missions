/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

missionNamespace setVariable [
    'randoGroup', 
    [
      "rhsgref_tla_specialist_at", 1,
		"rhsgref_tla_squadleader", 3.2,
		"rhsgref_tla_grenadier", .8, 
		"rhsgref_tla_grenadier_m79", .8,
		"rhsgref_tla_rifleman", 10.8,
		"rhsgref_tla_rifleman_rpg75", 3,
		"rhsgref_tla_machinegunner", 4.8,
		"rhsgref_tla_machinegunner_mg42", 1.6,
		"rhsgref_tla_marksman_m14", 1.6,
		"rhsgref_tla_medic", 2,
		"rhsgref_tla_mechanic", 1.6,
		"rhsgref_tla_saboteur", 1.6,
		"rhsgref_tla_warlord", .4
  ]
];

DNV_CreeperTriggers = [
	creepTrig1,
	creepTrig2,
	creepTrig3,
	creepTrig4,
	baseEntered
];

{
  if (triggerText _x == "DNV_Garrison") then {
    private _building_list = [
      getPos _x,
      (triggerArea _x) # 0,
      false
    ] call lambs_main_fnc_findBuildings;

    {
      [
        {[_this, 750] call CBA_fnc_nearPlayer},
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
              selectRandomWeighted randoGroup,
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

  if (triggerText _x == "CSAT_Garrison") then {
    private _building_list = [
      getPos _x,
      (triggerArea _x) # 0,
      false
    ] call lambs_main_fnc_findBuildings;

    {
      [
        {[_this, 750] call CBA_fnc_nearPlayer},
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
              selectRandomWeighted [
                "O_T_Soldier_HAT_F", 1,
                "O_T_Soldier_SL_F", 3.2,
                "O_T_Soldier_GL_F", 1.6,
                "O_T_Soldier_F", 10.8,
                "O_T_Soldier_LAT_F", 3,
                "O_T_Soldier_AR_F", 6.4,
                "O_T_Soldier_M_F", 1.6,
                "O_T_Medic_F", 2,
                "O_T_Soldier_Repair_F", 1.6,
                "O_T_soldier_mine_F", 1.6,
                "O_T_Officer_F", .4
              ],
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