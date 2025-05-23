//Original Author: Diwako

[
    "nvgcolors_setting",
    "LIST",
    ["Phosphor Tubes","Phosphor Colors"],
    "Mission",
    [[0,1,2,3],["Green Phosphor","Hybrid","Modern Warfare","White Phosphor"]],
    false,
    {
        private _player = [] call CBA_fnc_currentUnit;
        ["cba_events_visionModeEvent", [_player, currentVisionMode _player, currentVisionMode _player]] call CBA_fnc_localEvent;
    }
] call CBA_Settings_fnc_init;
