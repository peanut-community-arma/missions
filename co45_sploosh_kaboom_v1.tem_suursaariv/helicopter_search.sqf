DNV_heli_search = [
	{(missionNamespace getVariable "DNV_helicopters") select {alive _x}},
	true
] call CBA_statemachine_fnc_create;

DNV_updateLoiter = {
    [(group _this), 1] setWaypointPosition [([] call CBA_fnc_players) select {alive _x} call DNV_fnc_findAvgPos, 2];
};

[
	DNV_heli_search,
	{
		if ((CBA_missionTime - (_this getVariable ["DNV_lastHeliUpdate", 0])) > 120) then {
			(driver _this) call DNV_updateLoiter;
			_this setVariable ["DNV_lastHeliUpdate", CBA_missionTime];
		}
	},
	{},
	{},
	"ALIVE"
] call CBA_statemachine_fnc_addState;

[
	DNV_heli_search,
	{},
	{},
	{},
	"DEAD"
] call CBA_statemachine_fnc_addState;

[
	DNV_heli_search,
	"ALIVE",
	"DEAD",
	{
		!(alive _this)
	},
	{},
	"TOO_FEW"
] call CBA_statemachine_fnc_addTransition;
