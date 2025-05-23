/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/
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