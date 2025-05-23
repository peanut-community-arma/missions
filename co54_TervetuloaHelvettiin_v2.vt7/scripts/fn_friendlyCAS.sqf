if !(missionNamespace getVariable ['DNV_CAScooldown', false]) then {

    missionNamespace setVariable ['DNV_CAScooldown', true, true];
    missionNamespace setVariable ['DNV_CAS_time', CBA_missionTime + 600, true];
    [russia_hq, 'SU-25 inbound for attack run.'] remoteExec ['sidechat'];
    
    [
        {
            private _grp = createGroup sideLogic; 
                "ModuleCAS_F" createUnit [ 
                 _this vectorAdd ([random 50, random 360, 0] call CBA_fnc_polar2vect),
                 _grp, 
                 "this setVariable ['vehicle','rhsgref_cdf_b_su25',true];this setDir 330;this setVariable ['type', 2, true];this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];" 
                ];
            _grp deleteGroupWhenEmpty true;
            
        },
        _this,
        10 + random 10
    ] call CBA_fnc_waitAndExecute;
    
    [
        {
            missionNamespace setVariable ['DNV_CAScooldown', false, true];
            [russia_hq, 'SU-25 is available for tasking.'] remoteExec ['sidechat'];
        },
        [],
        600
    ] call CBA_fnc_waitAndExecute;
} else {
    hint format ["SU-25 is rearming.\n%1s", ((missionNamespace getVariable 'DNV_CAS_time') - cba_missionTime)];
};