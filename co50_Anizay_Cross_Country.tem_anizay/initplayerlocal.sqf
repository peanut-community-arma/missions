/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/



bear_mapTeleport_eh_map = addMissionEventHandler ["Map", {_this call bear_mapTeleport_fnc_handler;}];
[
	{
		!isNull (findDisplay 12)
	},
	{
		call bear_mapTeleport_fnc_init;
	}
] call CBA_fnc_waitUntilAndExecute;

fn_action_instructor_teleport = { 
	titleText ["Click on the map to teleport", "PLAIN DOWN"]; titleFadeOut 7;
	plInsMapClickEvent = {
		player setPos [(_pos select 0), (_pos select 1), 0];
		onMapSingleClick "";
		openMap [false, false];
	};
	openMap [true, false];
	onMapSingleClick "[] call plInsMapClickEvent";
};