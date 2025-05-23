/* Function that adds a "Reboot Laptop" action to a given item
** This function should play shutdown.ogg when triggered, switch texture to all-black, then initiate a cooldown of 7-15 seconds
** After this cooldown, it should play startup.ogg and display bliss.jpg as a texture

Call using: 

[this] call pca_fnc_rebootLaptop

in laptop init field

*/
params [
	["_laptop", nil], 
	["_durationMin", 5], 
	["_durationMax", 12]
];

if (hasInterface) exitWith {}; //exit if is player

if (isNil "_laptop") exitWith {};// exit if _laptop is not defined

private _duration = [_durationMin, _durationMax] call BIS_fnc_randomInt; // set duration of the hold action
//private _validUnits = [B_PLT_CO, B_A1_R1, B_A2_R1, B_B1_R1, B_B2_R1, B_C1_R1, B_C2_R2];	//backup

// Set starting texture
_laptop setObjectTexture [0, "hacked.jpg"];

// Add the hold action.
[
	_laptop,														// Object the action is attached to
	format ["Reboot Laptop (%1s)", _duration],						// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",	// Progress icon shown on screen
	"[_this] call ace_common_fnc_isEngineer || _this == B_PLT_CO",  // Condition for the action to be shown
	"_caller distance _target < 4",									// Condition for the action to progress
	{
		[_target, ["shutdown"]] remoteExec ["say3d"];
	},																// Code executed when action starts
	{},																// Code executed on every progress tick
	{ 
		[_target, ["startup"]] remoteExec ["say3d"];
		[_target, [0, "bliss.jpg"]] remoteExec ["setObjectTexture"];
		total_fixed = total_fixed + 1;
		publicVariable "total_fixed";
		[format["Laptop fixed, %1 total", missionNamespace getVariable "total_fixed"], false, "Mission note"] call TMF_adminmenu_fnc_log;
	},																// Code executed on completion
	{},																// Code executed on interrupted
	[],																// Arguments passed to the scripts as _this select 3
	_duration,														// Action duration in seconds
	1000,															// Priority
	true,															// Remove on completion
	false,															// Show in unconscious state
	false															// Show window
] remoteExec ["BIS_fnc_holdActionAdd", [0, -2] select isDedicated, true];