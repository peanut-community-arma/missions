/**
	INIT
	- Executed on everyone including the server when the mission is started (before briefing screen).
*/

gravity_ray = false; publicVariable "gravity_ray";

waitUntil {gravity_ray};

null = [ray] execVM "AL_gravity\gravity_ray.sqf";