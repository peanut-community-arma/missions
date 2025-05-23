//Original Author: Diwako

params ["_unit"];

private _state = !isNull (_unit getVariable ["nvglamp_reflector", objNull]);

if (_state) then 
{
    deleteVehicle (_unit getVariable ["nvglamp_reflector", objNull]);
} 
else  
{
	private _light = "#lightreflector" createVehicle (getPos _unit);
	
    _unit setVariable ["nvglamp_reflector", _light, true];
	
    _light attachTo [_unit, [0, 0.05, 0.14], "head", true];
    _light setVectorDirAndUp [[-0.25, 1, 0.1], [0.1, 1, -0.1]];
	
    ["nvglamp_setLight", [_light]] call CBA_fnc_globalEvent;
};
