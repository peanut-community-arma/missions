/**
	INIT
	- Executed on everyone including the server when the mission is started (before briefing screen).
*/

[radio1, 100, [[0,9000],9002], 130, 100] call diw_acre_fnc_createRadioJammer;

[radio2, 100, [[0,9000],9002], 120, 100] call diw_acre_fnc_createRadioJammer;

[radio3, 100, [[0,9000],9002], 110, 100] call diw_acre_fnc_createRadioJammer;

[radio4, 100, [[0,9000],9002], 120, 100] call diw_acre_fnc_createRadioJammer;

/*
// Radio Jammers
// Params:
// 1: object which is jamming
// 2: Jamming strength in mW
// 3: Array of frequencies jammed, Array in array possible, notation is [start frequency, end frequency]
// 4: Effective zone, distance to jammer which fully applies the full jamming strength
// 5: Falloff zone, zone in which units are still affected, but the strengths gets linear worse of the jammer
*/