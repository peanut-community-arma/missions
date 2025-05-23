/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

[
	DNV_windsock,
	"Paradrop (Max Gear - 35kg)",
	"a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa",
    "a3\ui_f_oldman\data\IGUI\Cfg\holdactions\attack_ca.paa",
	"true",
    "load _caller < 0.77",
	{},
	{},
	{
        params ["_target","_caller","_id","_args"];

        hint "Careful!\nYou will paradrop on your next map click.";

        localNamespace setVariable [
            'DNV_mapTeleport', 
            addMissionEventHandler [
                "MapSingleClick",
                {
                    params ["_units", "_pos", "_alt", "_shift"];
					if (load player < 0.77) then {
						private _teleportPos = _pos vectorAdd [0, 0, 300];
						_teleportPos = _teleportPos vectorAdd ([random 100, random 360, random [-15, 0, 15]] call CBA_fnc_polar2vect);
						[player, _teleportPos] call tmf_teleport_fnc_paraDrop;
						removeMissionEventHandler [
							"MapSingleClick",
							localNamespace getVariable 'DNV_mapTeleport'
						];
						openMap false;
					} else {
						playSound "watchBeep_single";
						systemChat "Your gear weighs over 35kg -- reduce weight.";
					};
                }
            ]
        ];

        openMap true;
    },
	{},
	[], 5, nil, false, false
] call BIS_fnc_holdActionAdd;