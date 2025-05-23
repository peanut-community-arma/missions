/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

distant_battle_active = false;
publicVariable "distant_battle_active";

ambient_active = false;
publicVariable "ambient_active";

explosion_targets = ["artytarget_1","artytarget_2","artytarget_3","artytarget_4","artytarget_5","artytarget_6","artytarget_7"];
publicVariable "explosion_targets";

[
    {ambient_active == true},
    {
        salvoes = 100;
        rounds = 4;
        salvoes2 = 50;
        rounds2 = 2;
        debug = false;
        {
            [
                {
                    {[_x,salvoes,rounds,debug] spawn GOM_fnc_ambientArtilleryFire;} forEach _this
                },
                _x,
                3 + random 15
            ] call CBA_fnc_waitAndExecute
        } forEach [
            ['Battery01','Battery02','Battery03']
        ];
        {
            [
                {
                    {[_x,salvoes2,rounds2,debug] spawn GOM_fnc_ambientArtilleryFire;} forEach _this
                },
                _x,
                3 + random 15
            ] call CBA_fnc_waitAndExecute
        } forEach [
            ["Tank01","Tank02","Tank03"]
        ];
        distant_battle_active = true;
    }
] call CBA_fnc_waitUntilAndExecute;
