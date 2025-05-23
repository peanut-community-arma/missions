private _gameBuildings = (nearestObjects [[5424,6200,0], ["House", "Strategic", "Ruins"], 1025, true]) select {((_x buildingPos -1) isNotEqualTo []) && {(alive _x) && !(isObjectHidden _x)} && {!(_x inArea EXCLUDE_AREA)} && (_x inArea GAME_AREA_1 || _x inArea GAME_AREA_2)};

private _randomGas = [];
{
    private _xPositions = _x buildingPos -1;
    {
        _randomGas append [_x, 1];
    } forEach _xPositions;
} forEach _gameBuildings;

for "_i" from 1 to ("canisterTotal" call BIS_fnc_getParamValue) do {
    if (count _randomGas < 1) then {break};
    private _gasCanToSpawn = selectRandomWeighted _randomGas;
    {
        if (_forEachIndex % 2 == 0 && {_x distance _gasCanToSpawn == 0}) then {
            _randomGas deleteRange [_forEachIndex, 2];
            break;
        };
    } forEach _randomGas;
    // decrease weight of cans nearby
    {
        if (_forEachIndex % 2 == 0 && {_x distance _gasCanToSpawn < 100}) then {
            _randomGas set [_forEachIndex + 1, (_randomGas # (_forEachIndex + 1)) * ((_x distance _gasCanToSpawn) / 100) ^ 2]
        };
    } forEach _randomGas;
    createVehicle [(selectRandom ["Land_CanisterFuel_F" , "Land_CanisterFuel_Blue_F", "Land_CanisterFuel_Red_F", "Land_CanisterFuel_White_F"]), _gasCanToSpawn];
};