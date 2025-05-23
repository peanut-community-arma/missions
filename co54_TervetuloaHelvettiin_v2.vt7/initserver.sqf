/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/
missionNamespace setVariable [
    'randoGroup', 
    [
        "CUP_O_INS_Soldier_AA", .5,
        "CUP_O_INS_Soldier_Ammo", 2.5,
        "CUP_O_INS_Soldier_AT", 1,
        "CUP_O_INS_Soldier_MG", 5,
        "CUP_O_INS_Medic", 2.5,
        "CUP_O_INS_Soldier", 4.5,
        "CUP_O_INS_Soldier_LAT", 3.5,
        "CUP_O_INS_Sniper", 2.5,
        "CUP_O_INS_Soldier_GL", 1
    ]
];

{
	if (triggerText _x == "Barrage_2S1") then {
        _x spawn {
            private _basePos = position _this;
			private _rad = (triggerArea _this) select 0;
            private _spawnPos = getPos ((synchronizedObjects _this) # 0);
            deleteVehicle ((synchronizedObjects _this) # 0);
            deleteVehicle _this;
            
            waitUntil {sleep 5; ({(_x distance2d _basePos) < _rad} count allPlayers > 0)};
            
            private _warning = { 
                ["ArtyWarning", []] remoteExec ["BIS_fnc_showNotification", 0]; 
            }; 
             
            [ 
                _warning, 
                nil, 
                5 
            ] call CBA_fnc_waitAndExecute;
            [ 
                _basePos, 
                "rhs_2s1_tv",
                east,
                _spawnPos, 
                _rad / 50, 
                1,
                6 
            ] call DNV_fnc_barrage;
        };
    };
    
    if (triggerText _x == "Finnish_Rally_Grp") then {
        _x spawn {
            private _basePos = getPos _this;
            waitUntil {sleep 5; ({(_x distance2d _basePos) < (800)} count ([] call CBA_fnc_players) > 0)};
            
            private _positions = [
                getPos _this,
                (triggerArea _this) # 0,
                true,
                true
            ] call lambs_main_fnc_findBuildings;
            private _grp = createGroup east;
            for "_i" from 1 to 10 do {
                if ((count _positions) > 0) then {
                    (selectRandomWeighted (missionNamespace getVariable 'randoGroup')) createUnit [
                        _positions deleteAt 0,
                        _grp
                    ];
                };
            };

            // Set group ID to Klamila - X where X is groups spawned
            private _noGroup = (missionNamespace getVariable ["DNV_klamGroups", 0]) + 1;
            _grp setGroupIDGlobal [
                format ["Klamila - %1", _noGroup]
            ];
            missionNamespace setVariable [
                "DNV_klamGroups",
                _noGroup
            ];
            
            // move _grp to synced object
            [
                _grp,
                (synchronizedObjects _this) # 0,
                50,
                [],
                false,
                false,
                4,
                false
            ] call lambs_wp_fnc_taskGarrison;
            _grp deleteGroupWhenEmpty true;
            deleteVehicle _this;
        };
    };
} forEach (allMissionObjects "EmptyDetector");

missionNamespace setVariable ['DNV_CAScooldown', false, true];