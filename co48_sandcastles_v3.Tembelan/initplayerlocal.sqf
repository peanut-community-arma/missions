/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

//Modified from https://github.com/acemod/ACE3/issues/3918#issuecomment-225654375
_fnc_makeDraggable = { 
    params ["_object"]; 
    diag_log text format ["Making %1 [%2] Draggable", _object, typeOf _object]; 
    [_object, true, [0,2,0], 0] call ace_dragging_fnc_setDraggable; 
};
["CargoNet_01_box_F", "init", _fnc_makeDraggable, true, [], true] call CBA_fnc_addClassEventHandler; 