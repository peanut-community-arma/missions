/**
	INIT
	- Executed on everyone including the server when the mission is started (before briefing screen).
*/

// Config should be set first
[] call compile preprocessFileLineNumbers "config.sqf";
// Start FPZ
[] call fpz_api_fnc_init;
removeFromRemainsCollector [guy_001, guy_002, guy_003, guy_004, guy_005, guy_006, guy_007, guy_008, guy_009, guy_010, guy_011, guy_012, guy_013, guy_014];