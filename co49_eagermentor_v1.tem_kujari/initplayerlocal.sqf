/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

missionNamespace setVariable ['diwako_dui_special_track', [B_PLT_CO, B_PLT_CLS, B_ASL_CLS, B_BSL_CLS, B_CSL_CLS]];

localNamespace setVariable ['DNV_MortarmenuID', [player, 'friendlyMortar'] call BIS_fnc_addCommMenuItem];

COMMAND_NET_SM = [[player], true] call CBA_statemachine_fnc_create;

[
    COMMAND_NET_SM, 
    {},
    {},
    {},
    'HAS COMMAND RADIO'
] call CBA_statemachine_fnc_addState;

[
    COMMAND_NET_SM, 
    {},
    {},
    {},
    'NO COMMAND RADIO'
] call CBA_statemachine_fnc_addState;

[
    COMMAND_NET_SM,
    'HAS COMMAND RADIO',
    'NO COMMAND RADIO',
    {
        !([player, "ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio);
    },
    {
        [player, localNamespace getVariable 'DNV_MortarmenuID'] call BIS_fnc_removeCommMenuItem;
    }, 
    "RADIO REMOVED"
] call CBA_statemachine_fnc_addTransition;

[
    COMMAND_NET_SM,
    'NO COMMAND RADIO',
    'HAS COMMAND RADIO',
    {
        [player, "ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio;
    },
    {  
        localNamespace setVariable ['DNV_MortarmenuID', [player, 'friendlyMortar'] call BIS_fnc_addCommMenuItem];
    }, 
    "RADIO GAINED"
] call CBA_statemachine_fnc_addTransition;