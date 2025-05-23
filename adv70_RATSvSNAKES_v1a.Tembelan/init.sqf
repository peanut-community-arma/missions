/**
	INIT
	- Executed on everyone including the server when the mission is started (before briefing screen).
*/
timeSettings = "time" call BIS_fnc_getParamValue;
if(timeSettings == 0) then {
  timeSettings = selectRandom [-7.5,-3,0,3,7.5];
} else {
  timeSettings = timeSettings - 1;
  timeSettings = ([-7.5,-3,0,3,7.5,12] select timeSettings);
};
skipTime timeSettings;

cloudSettings = "clouds" call BIS_fnc_getParamValue;
if(cloudSettings == 0) then {
  cloudSettings = selectRandom [0, 0.33, 0.5, 0.75, 1];
} else {
  cloudSettings = cloudSettings - 1;
  cloudSettings = [0, 0.33, 0.5, 0.75, 1] select cloudSettings;
};
0 setOvercast cloudSettings;

fogSettings = "fog" call BIS_fnc_getParamValue;
if(fogSettings == 0) then {
  fogSettings = selectRandom [[0,0,1], [0.33,0,1]];
} else {
  fogSettings = fogSettings - 1;
  fogSettings = ([[0,0,1], [0.33,0,1], [0.66,0,1], [1,0,1]] select fogSettings);
};
0 setFog fogSettings;
forceWeatherChange;

[("bftDelay" call BIS_fnc_getParamValue), true] call tmf_orbat_fnc_setMarkerUpdateInterval;

[
	{!([] call TMF_safestart_fnc_isActive)},
	{deleteVehicle CONTAINMENT_FIELD}
] call CBA_fnc_waitUntilAndExecute;