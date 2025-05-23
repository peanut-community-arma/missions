/**
	INIT
	- Executed on everyone including the server when the mission is started (before briefing screen).
*/

// Snow Storm
//"_snowfall","_duration_storm","_ambient_sounds_al","_breath_vapors","_snow_burst","_effect_on_objects","_vanilla_fog","_local_fog","_intensifywind","_unitsneeze"
[true,12000,30,true,30,false,false,true,false,false] execvm "AL_snowstorm\al_snow.sqf";