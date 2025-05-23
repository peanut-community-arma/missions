if !(missionNamespace getVariable ['DNV_Barragecooldown', false]) then {
    private _centerPos = _this;
    private _offset = random (2 * pi);

    _centerPos = _centerPos vectorAdd ([random 20, random 360, 0] call CBA_fnc_polar2vect);

    for "_i" from 0 to 9 do {
        private _polarCoords = [
            _i,
            10,
            _offset
        ] call DNV_fnc_poisson;
        private _vectorLoc = [80 * (_polarCoords # 0), (_polarCoords # 1) * 57.2957795, 0] call CBA_fnc_polar2vect;
        _vectorLoc = _vectorLoc vectorAdd ([random 1, random 360, 0] call CBA_fnc_polar2vect);
        
        private _delay = 21 + random 60;

        [
            {
                "DistantMortar" remoteExec ["playSound"];
            },
            nil,
            _delay - 20
        ] call CBA_fnc_waitAndExecute;

        [
            {
                private _shell = "Sh_82mm_AMOS" createVehicle _this; 
                _shell setVelocity [0, 0, -150];
            },
            (_centerPos vectorAdd _vectorLoc vectorAdd [0, 0, 150]),
            _delay
        ] call CBA_fnc_waitAndExecute;
    };

    missionNamespace setVariable ['DNV_Barragecooldown', true, true];
    missionNamespace setVariable ['DNV_MortarsAvailable', cba_missionTime + ("DNV_MortarCooldown" call BIS_fnc_getParamValue), true];

    [
        {
            missionNamespace setVariable ['DNV_Barragecooldown', false, true];
            [rathq, 'Mortars available.'] remoteExec ['sidechat'];
        },
        [],
        "DNV_MortarCooldown" call BIS_fnc_getParamValue
    ] call CBA_fnc_waitAndExecute;
} else {
    hint format ["Mortars on cooldown.\n%1s", (missionNamespace getVariable 'DNV_MortarsAvailable') - cba_missionTime];
};