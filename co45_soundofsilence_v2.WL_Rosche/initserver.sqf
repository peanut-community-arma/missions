/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

ambient_active = false;
publicVariable "ambient_active";

// call pca_fnc_ambientAA;

[
    {ambient_active == true},
    {
        {
            [
                {
                    {[_x,90] spawn GOM_fnc_ambientAA;} forEach _this
                },
                _x,
                3 + random 15
            ] call CBA_fnc_waitAndExecute
        } forEach [
            ['ZSU01','ZSU02','ZSU03','ZSU04','ZSU05','ZSU06']
        ];
    }
] call CBA_fnc_waitUntilAndExecute;

// missionNamespace setVariable ["lambs_main_radioEast", 200];
