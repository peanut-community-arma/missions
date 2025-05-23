/**
	INIT
	- Executed on everyone including the server when the mission is started (before briefing screen).
*/

// Config should be set first
[] call compile preprocessFileLineNumbers "config.sqf";
// Start FPZ
[] call fpz_api_fnc_init;