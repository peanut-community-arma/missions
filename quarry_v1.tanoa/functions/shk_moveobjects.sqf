/*
  SHK_moveObjects
  Author: Shuko (miika.jarvinen@pp3.inet.fi, shuko@quakenet)
  Version 0.31
  
  Moves set of objects from A to B, retaining the direction and distance from
  a point of reference.

  Parameters:
    0: Object or Position   Anchor, point of origin.
    1: Object or Position   Center position to which objects are moved around.
    2: Number               Range in meters to search for objects.
    3: Array or String      Optional. Type of objects to search for.
    4: Number or Object     Optional. Direction adjustment. Affects position of objects, not the dir they will be facing.
    5: Number or Object     Optional. Direction the objects will be facing after they are moved.
    
  Examples:
    nul = [gl1,gl2,50] execvm "shk_moveobjects.sqf"
    nul = [start,destination,100,"Man"] execvm "shk_moveobjects.sqf"
    nul = [[3243,5234,0],gl2,50,["Man","Car"]] execvm "shk_moveobjects.sqf"
    nul = [gl1,gl2,50,[],gl2] execvm "shk_moveobjects.sqf"
    nul = [gl1,gl2,50,[],45] execvm "shk_moveobjects.sqf"
    nul = [gl1,gl2,50,[],45,270] execvm "shk_moveobjects.sqf"

*/
params ["_aPos","_dPos","_range",["_types",[]],["_dAdj",0]];
private ["_fDir"];

if (count _this > 5) then {
    _fDir = _this select 5;
    if (_fDir isEqualType objNull) then {_fDir = getDir _fDir};
};

if (_aPos isEqualType objNull) then {_aPos = getPos _aPos};
if (_dPos isEqualType objNull) then {_dPos = getPos _dPos};
if (_types isEqualType "") then {_types = [_types]};
if (_dAdj isEqualType objNull) then {_dAdj = getDir _dAdj};

{
    private _xPos = getPosATL _x;
    private _dir = _xPos getDir _aPos; 
    _dir = _dir + _dAdj;
    private _dst = _aPos distance _xPos;

    if (!isnil "_fDir") then {_x setDir _fDir};
    _x setPosATL [((_dPos select 0) + (_dst * sin _dir)),
            ((_dPos select 1) + (_dst * cos _dir)),
            _xPos select 2];
} forEach (nearestObjects [_aPos,_types,_range]);