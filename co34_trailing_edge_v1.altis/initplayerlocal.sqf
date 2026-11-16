/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

["ace_dragging_cloneCreated", {
	params ["_clone", "_original"];
	hostage_refs set [hostages find _original, _clone];
	publicVariable "hostage_refs";
}] call CBA_fnc_addEventHandler;


["ace_dragging_cloneDeleted", {
	params ["_clone", "_original"];
	hostage_refs set [hostages find _original, _original];
	publicVariable "hostage_refs";
}] call CBA_fnc_addEventHandler;

player setVariable ["ace_advanced_fatigue_performanceFactor", 1.5, true];
