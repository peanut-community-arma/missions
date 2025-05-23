class Radios_Active {
    // Class properties have the same name as the corresponding function parameters
    // and code goes into strings.
    list = "[radio1, radio2, radio3, radio4]";
    skipNull = 1;

    // States are just subclasses of the state machine
    class Waiting {
        onState = "";
        onStateEntered = "";
        onStateLeaving = "";

        // Transitions are also just subclasses of states
        class PlayerNear {
            targetState = "Playing";
            condition = "{_x distance _this < 300} count (call BIS_fnc_listPlayers) > 0";
            onTransition = "hint 'nearby radio trigger debug'";
        };

        // Event transitions get triggered by CBA events
        class Alarm: InCombat {
            events[] = {"MyAddon_AlarmRaised"};
            condition = "true";
        };
    };

    // Empty classes will also work if the state contains no transitions or onState code.
    class Playing {
        onState = "";
        onStateEntered = "playSound3D [(selectRandom [   \
                'a3\dubbing_radio_f\sfx\radionoise1.ogg',\
                'a3\dubbing_radio_f\sfx\radionoise2.ogg',\
                'a3\dubbing_radio_f\sfx\radionoise3.ogg' \
            ]),    \
            _this, \
            false  \
        ] \
    ";
        onStateLeaving = "";
    };
    
    class IntelFound {};
    
    class Paused {};
};