/*
	Author: veerserif

	Description:
		Drops virtual artillery fire on a set of specified player units.

	Parameter(s):
		0: OBJECT - target object
		//1: OBJECT - name of artillery piece that is to fire
		1: (Optional, default 3) NUMBER - number of rounds for mortar to fire

	Returns:
		BOOLEAN

	Example:
		["marker_1", 3] call VRS_fnc_fireMortar
*/


params [["_pos",[]], ["_rounds", 3]];

_targetloc = getPosATL _pos;

// Virtual fallback
[_pos, "Sh_155mm_AMOS", 40, _rounds, [1, 3]] spawn BIS_fnc_fireSupportVirtual;
["Arty incoming",true,"Activations"] call TMF_adminmenu_fnc_log;