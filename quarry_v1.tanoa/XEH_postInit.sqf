pre = "123";

if (hasInterface && didJip) then {
	// Kill JIP players.
	[{!isNull player}, {
		player setDamage 1;
	}] call CBA_fnc_waitUntilAndExecute;
};

private _posCandidates = allMapmarkers select {_x find "marker_" != -1};
{
	_x setMarkerAlphaLocal 0;
} forEach _posCandidates;

private _policeCandidates = allMapMarkers select {_x find "police_spawn" != -1};
{
	_x setMarkerAlphaLocal 0;
} forEach _policeCandidates;

if (isServer) then {
	private _targetMarker = selectRandom _posCandidates;
	"quarry_play_area" setMarkerPos (getMarkerPos _targetMarker);
	"quarry_play_area" setMarkerDir (markerDir _targetMarker);
	"quarry_play_area" setMarkerShape (markerShape _targetMarker);
	"quarry_play_area" setMarkerSize (markerSize _targetMarker);

	private _possiblePoliceSpawn = _policeCandidates select {getMarkerPos _x inArea _targetMarker;};
	private _policeSpawnPos = getMarkerPos "police_marker";
	
	private _policeCenter = getMarkerPos (_possiblePoliceSpawn select 0);

	//[_policeSpawnPos,_policeCenter,100,["Man","Car"]] call fn_moveobj;
	
	"police_marker" setMarkerPos _policeCenter;
	// Messages are sent sequentially
	[{
		params ["_policeSpawnPos","_policeCenter"];
		locationChoosen = true;
		publicVariable "locationChoosen";

		[{time > 0}, {
			params ["_policeSpawnPos","_policeCenter"];
			[_policeSpawnPos,_policeCenter,100,["Man","Car"]] call fn_moveobj;
		}, [_policeSpawnPos,_policeCenter]] call CBA_fnc_waitUntilAndExecute;
	}, [_policeSpawnPos,_policeCenter]] call CBA_fnc_execNextFrame;
};
//diag_log str ["quarry markers",allMapMarkers,allMapMarkers apply {getMarkerPos _x}];
