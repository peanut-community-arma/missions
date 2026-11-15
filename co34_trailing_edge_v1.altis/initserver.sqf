/*
    INIT SERVER
    - Executed only on the server upon mission start.
*/

// Unused in this mission
private _saveEndState = {
    // Save vehicles
    private _nearVehicles = nearestObjects [scan_area, ["Car", "Tank", "Ship_F"], 1300];
    private _nearVehicleClasses = _nearVehicles apply {typeOf _x};
    private _nearVehiclePositions = _nearVehicles apply {position _x};
    private _nearVehicleDirections = _nearVehicles apply {getDir _x};
    private _nearVehicleDamages = _nearVehicles apply {damage _x};

    missionProfileNamespace setVariable ["nearVehicleClasses", _nearVehicleClasses];
    missionProfileNamespace setVariable ["nearVehiclePositions", _nearVehiclePositions];
    missionProfileNamespace setVariable ["nearVehicleDirections", _nearVehicleDirections];
    missionProfileNamespace setVariable ["nearVehicleDamages", _nearVehicleDamages];

    // Save players
    // private _players = (allPlayers select {!(_x isKindOf "VirtualMan_F")}) select {alive _x};
    private _players = playableUnits;
    private _playerClasses = _players apply {typeOf _x};
    private _playerLoadouts = _players apply {getUnitLoadout _x};
    private _playerPositions = _players apply {position _x};
    private _playerDirections = _players apply {getDir _x};

    missionProfileNamespace setVariable ["_playerClasses", _playerClasses];
    missionProfileNamespace setVariable ["_playerLoadouts", _playerLoadouts];
    missionProfileNamespace setVariable ["_playerPositions", _playerPositions];
    missionProfileNamespace setVariable ["_playerDirections", _playerDirections];

    saveMissionProfileNamespace;
    // systemChat "Saved";
};

missionNamespace setVariable ["saveEndState", _saveEndState, true];

private _applyPersistent = {
    // systemChat "Loading...";
    // Spawn vehicles
    private _nearVehicleClasses = missionProfileNamespace getVariable ["nearVehicleClasses", []];
    private _nearVehiclePositions = missionProfileNamespace getVariable ["nearVehiclePositions", []];
    private _nearVehicleDirections = missionProfileNamespace getVariable ["nearVehicleDirections", []];
    private _nearVehicleDamages = missionProfileNamespace getVariable ["nearVehicleDamages", []];

    private _spawnedVehicles = [];
    if (count _nearVehicleClasses > 0) then {
        {
            _veh = createVehicle [_x, _nearVehiclePositions # _forEachIndex, [], 0, "CAN_COLLIDE"];
            _veh setDir (_nearVehicleDirections # _forEachIndex);
            _veh setPos getPos _veh;
            _veh setVariable ["ace_cookoff_enable", false, true];
            _veh setVariable ["ace_cookoff_enableAmmoCookoff", false, true];
            _veh setDamage [_nearVehicleDamages # _forEachIndex, true]; // Explode and burn, but no cookoff
            _spawnedVehicles pushBack _veh;
        } forEach _nearVehicleClasses;
    };

    // Spawn "players"
    private _playerClasses = missionProfileNamespace getVariable ["_playerClasses", []];
    private _playerLoadouts = missionProfileNamespace getVariable ["_playerLoadouts", []];
    private _playerPositions = missionProfileNamespace getVariable ["_playerPositions", []];
    private _playerDirections = missionProfileNamespace getVariable ["_playerDirections", []];

    private _spawnedPlayers = [];
    private _spawnedGroups = [];
    if (count _playerClasses > 0) then {
        {
            _group = createGroup west;
            _player = _group createUnit [_x, _playerPositions # _forEachIndex, [], 0, "NONE"];
            _player setDir (_playerDirections # _forEachIndex);
            _player setUnitLoadout (_playerLoadouts # _forEachIndex);
            // Make all the players move to the northeast
            _waypoint = _group addWaypoint [(getPosASL _player) vectorAdd [1000,1000,0], 50, 0];
            _waypoint setWaypointType "MOVE";
            _group setCurrentWaypoint _waypoint;

            _spawnedPlayers pushBack _player;
            _spawnedGroups pushBack _group;
        } forEach _playerClasses;
    };
    // systemChat "Done";

    // Delete everything after a little while
    [{
        params ["_vehicles", "_players", "_groups"];
        {
            deleteVehicle _x;
        } forEach _vehicles + _players;
        {
            deleteGroup _x;
        } forEach _groups;
    }, [_spawnedVehicles, _spawnedPlayers, _spawnedGroups], 60] call CBA_fnc_waitAndExecute;
};

missionNamespace setVariable ["applyPersistent", _applyPersistent, true];
