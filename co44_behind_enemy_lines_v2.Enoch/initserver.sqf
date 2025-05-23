/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

addMissionEventHandler ["MarkerCreated", {
    params ["_marker", "", "_owner", "_local"];
    if (_owner isEqualTo B_PLT_CO) exitWith {};
    if (isServer) then {deleteMarker _marker;};
}];