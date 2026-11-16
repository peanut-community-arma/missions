/**
	INIT
	- Executed on everyone including the server when the mission is started (before briefing screen).
	*/
	0 spawn {
    private _trig = carrier;

    private _area = switch (_trig isEqualType "") do {case true: {markerSize _trig}; default {triggerArea _trig};};
    _area params ['_xSize','_ySize'];
    private _range = (2*(_xSize max _ySize));
    private _inv = [];
    while {true} do {
        private _entities = (_trig nearEntities [['AllVehicles'],false,true,true]);
        {    if (local _x) then { _x allowDamage false; _inv pushBackUnique _x; }; 
        } forEach (_entities - _inv);
        sleep 2;
        {   if !(local _x) then { _inv deleteAt _forEachIndex; continue};
            if !(_x in _entities) exitWith { _x allowDamage true; _inv deleteAt _forEachIndex; };
            if (isDamageAllowed _x) then { _x allowDamage false; }; 
        } forEach _inv;
        if (hasInterface) then {player setOxygenRemaining 80};
    };
};