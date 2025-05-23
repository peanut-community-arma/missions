/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

//NVG lamp button

[
	{
		private _entry = ["Mission", "nvglamp_lightButton"] call CBA_fnc_getKeybind;

		if !(isNil "_entry") then 
		{
			private _firstKeybind = _entry select 5;
			private _keybind = _firstKeybind call CBA_fnc_localizeKey;
			titleText [format ["<t size='2'>[%1] for NVG light</t>", _keybind], "PLAIN", -1, true, true];
		};
	}, 
	nil, 
	10
] call CBA_fnc_waitAndExecute;

//Enables support module for anyone with a 148. Thanks to majDanvers

DNV_COMMAND_NET_SM = [[player], true] call CBA_statemachine_fnc_create;

[
    DNV_COMMAND_NET_SM, 
    {},
    {[player, requester] call BIS_fnc_addSupportLink;},
    {},
    'HAS COMMAND RADIO'
] call CBA_statemachine_fnc_addState;

[
    DNV_COMMAND_NET_SM, 
    {},
    {[player, requester] call BIS_fnc_removeSupportLink;},
    {},
    'NO COMMAND RADIO'
] call CBA_statemachine_fnc_addState;

[
    DNV_COMMAND_NET_SM,
    'HAS COMMAND RADIO',
    'NO COMMAND RADIO',
    {
        !([player, "ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio);
    },
    {}, 
    "RADIO REMOVED"
] call CBA_statemachine_fnc_addTransition;

[
    DNV_COMMAND_NET_SM,
    'NO COMMAND RADIO',
    'HAS COMMAND RADIO',
    {
        [player, "ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio;
    },
    {}, 
    "RADIO GAINED"
] call CBA_statemachine_fnc_addTransition;