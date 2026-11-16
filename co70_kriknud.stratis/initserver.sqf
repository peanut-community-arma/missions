/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

ambient_active = false;
publicVariable "ambient_active";

[
    {ambient_active == true},
    {
        salvoes = 100; // big number so they never stop
        rounds = 4; // per gun per salvo
        debug = false; // debug messages in system chat
        {
            [
                {
                    {[_x,salvoes,rounds,debug] spawn GOM_fnc_ambientArtilleryFire;} forEach _this
                },
                _x,
                3 + random 15
            ] call CBA_fnc_waitAndExecute
        } forEach [
            ['Battery01','Battery02'] // etc
        ];
    }
] call CBA_fnc_waitUntilAndExecute;