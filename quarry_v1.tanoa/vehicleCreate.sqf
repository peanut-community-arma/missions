// Translate position, position given an angle and distance.

// [] execVM "vehicleCreate.sqf";

// Vanilla Vehs
vehicle_classes = [
    ["C_Hatchback_01_sport_F",1], // Civilian sports car
    ["C_Hatchback_01_F",1], // Civilian car 
    ["C_SUV_01_F",1], // SUV
    ["C_Van_01_box_F",1], // Truck
    ["C_Quadbike_01_F",0.2], // QuadBike
    ["C_Offroad_01_F",1], // Offroad truck
    ["C_Offroad_02_unarmed_F",1], // APEX Jeep
    ["C_Van_01_fuel_F",0.2], // Fuel truck
    ["C_Truck_02_covered_F",0.2], // Kamaz truck (coverd back)
    ["C_Offroad_01_repair_F",0.2], // Offroad truck repair (Island Port authority)
    ["C_Van_02_transport_F",0.2], // APEX truck
    ["C_Van_02_vehicle_F",0.1] // Cargo variant of APEX truck.
];
// CUP Vehicles
vehicle_classes append [
    ["CUP_B_M1030",1], // US Motorbike,
    ["CUP_C_TT650_TK_CIV",1], // TT650 civilan bike
    ["CUP_C_LR_Transport_CTK",2], // LandRover
    ["CUP_C_Skoda_White_CIV",1],["CUP_C_Skoda_Blue_CIV",1],["CUP_C_Skoda_Green_CIV",1],["CUP_C_Skoda_Red_CIV",1], // Skoda
    ["CUP_C_Datsun",1], ["CUP_C_Datsun_4seat",1], ["CUP_C_Datsun_Covered",0.3], //Datsun
    ["CUP_C_Golf4_random_Civ",1],  // Random golf colour
    ["CUP_C_Octavia_CIV",1], // Octavia
    ["CUP_C_SUV_TK",0.5],["CUP_C_SUV_CIV",0.5], // Black SUV.
    ["CUP_C_Ural_Civ_01",1], // Blue civilan URAL
    ["CUP_C_UAZ_Unarmed_TK_CIV",0.5], // UAZ
    ["CUP_C_Lada_GreenTK_CIV",0.5],["CUP_C_Lada_TK2_CIV",0.5],["CUP_C_Lada_White_CIV",0.5],["CUP_C_Lada_Red_CIV",0.5], // LADA
    ["CUP_C_S1203_CIV",0.2], // Skoda 1203 Minivan
    ["CUP_C_Volha_Limo_TKCIV",0.33],["CUP_C_Volha_Gray_TKCIV",0.33],["CUP_C_Volha_Blue_TKCIV",0.33] // Volha
]; // mods

private _vehicleClasses = vehicle_classes apply {_x select 0};
private _vehicleWeights = vehicle_classes apply {_x select 1};
//CUP_C_Ural_Civ_01
//C_Van_02_service_F
// CUP_C_SUV_TK
num_of_vehicles_toSpawn = 40; // 36
vehicle_spawner_debug = false;
vehicle_min_roadSegement_spacing = 3; //8

fn_trans_pos = {
	params["_pos","_length","_angle"];
    
    _pos2 = +_pos;
	_pos2 set [1,(_pos select 1) + (cos(_angle)*_length)];
	_pos2 set [0,(_pos select 0) + (sin(_angle)*_length)];
	_pos2;
};

fn_findRoadConnections = {
    params ["_road","_depth"];

    private _return = [_road];
    if (_depth > 0) then {
        {
            _return = _return + ([_x,_depth-1] call fn_findRoadConnections);  
        } forEach (roadsConnectedTo _road);
    };
    _return;
};

_mkrCount = 0;

markerCount = 0;
fn_findRoadConnectionsMark = {
    params ["_road","_depth", ["_parent",objNull]];

    //_return = [_road];
    private _childSegments = (roadsConnectedTo _road);
    
    private _txt = format["roadM_Mkr%1",markerCount];
    private _debugMkr = createMarker [_txt,getPos _road];
    _debugMkr setMarkerShape "ICON";
    _debugMkr setMarkerType "hd_dot";
    _debugMkr setMarkerText format ["%1",count _childSegments];
    switch (count _childSegments) do {
        case 0: { _debugMkr setMarkerColor "ColorBlue";};
        case 1: {_debugMkr setMarkerColor "ColorRed";};
        case 2: {_debugMkr setMarkerColor "ColorGreen";};
        case 3: {_debugMkr setMarkerColor "ColorYellow";};
        case 4: {_debugMkr setMarkerColor "ColorOrange";};
        case 5: {_debugMkr setMarkerColor "ColorPink";};
        case 6: {_debugMkr setMarkerColor "ColorWhite";};
        case 7: {_debugMkr setMarkerColor "ColorBrown";};
        default {};
    };
    markerCount = markerCount + 1;  
	if (_depth > 0) then {
		_childSegments = _childSegments - [_parent]; 
		{
			[_x,_depth-1,_road] call fn_findRoadConnectionsMark;
		} forEach (_childSegments);
	};

    
 // _return
};


fn_isNearInterection = {
    //Primary logic intersection either has 1 or 2+ connections.
	params ["_road"];
    private _roadConnectedTo = roadsConnectedTo _road;
    private _return = false;
    if ((count _roadConnectedTo != 2)) then { 
        _return = true;
    } else {
        {
            if (count (roadsConnectedTo _x) != 2) exitWith { _return = true};
        } forEach (_roadConnectedTo);
    };
    _return
};


//sort the array of positions still to use by some distance sort? then use (random 1)^2 ? to lower probability of the higher distanced ones?
private _area = "quarry_play_area" call BIS_fnc_getArea;
_area params ["_center", "_sizeX", "_sizeY", "_dir", "_isRect", "_height"];
private _size = _sizeX max _sizeY;
private _roadPosArray = _center nearRoads _size;
_roadPosArray = _roadPosArray select {count (roadsConnectedTo _x) == 2}; // remove non-intersections.

//Six shuffles
_roadPosArray= _roadPosArray call BIS_fnc_arrayShuffle;
_roadPosArray= _roadPosArray call BIS_fnc_arrayShuffle;
_roadPosArray= _roadPosArray call BIS_fnc_arrayShuffle;
_roadPosArray= _roadPosArray call BIS_fnc_arrayShuffle;
_roadPosArray= _roadPosArray call BIS_fnc_arrayShuffle;
_roadPosArray= _roadPosArray call BIS_fnc_arrayShuffle;


if (vehicle_spawner_debug) then {
	{
		_debugMkr=createMarker [format["roadMkr%1",_mkrCount],getPos _x];
		_debugMkr setMarkerShape "ICON";
		_debugMkr setMarkerType "hd_dot";
		_debugMkr setMarkerColor "ColorKhaki";
		_debugMkr setMarkerSize [0.5,0.5];
		_debugMkr setMarkerText format ["%1",count (roadsConnectedTo _x)];
		_mkrCount = _mkrCount + 1;
	} forEach (_roadPosArray);
};


private _direction2 = 0;
for "_i" from 0 to num_of_vehicles_toSpawn-1 do {
    if (_i > count (_roadPosArray)-2) exitWith {hint "Not enough positions to spawn desired number of vehicles";};
    private _road = (_roadPosArray select 0);
	private _roadConnectedTo = roadsConnectedTo _road;
    //[_roadPosArray select 0,3] call fn_findRoadConnectionsMark;
    if ([_road] call fn_isNearInterection) then {
		if (vehicle_spawner_debug) then {
			_debugMkr = createMarker [format["roadMkr%1",_mkrCount],getPos _road];
			_debugMkr setMarkerShape "ICON";
			_debugMkr setMarkerType "hd_dot";
			_debugMkr setMarkerColor "ColorRed";
			_debugMkr setMarkerSize [0.5,0.5];
			_debugMkr setMarkerText "NI";
			_mkrCount = _mkrCount + 1;
		};
        _roadPosArray deleteAt 0;
        _i = _i - 1;  
    } else {
        _connectedRoad = _roadConnectedTo select 0;
        _roadPos = getPos _road;
        _direction = [_roadPos, _connectedRoad] call BIS_fnc_DirTo;
        _vehicle = _vehicleClasses selectRandomWeighted _vehicleWeights;
        _newPos = _roadPos;
        _continue = true;

        //test either side of the road for more space.
        _direction2 = _direction + 90;
        _tempPos = [_newPos,0.5,_direction2] call fn_trans_pos;
        _kCount = 1;
        for "_k" from 1 to 15 do {
            _tempPos = [_newPos,0.5,_direction2] call fn_trans_pos;
            if (count (_tempPos findEmptyPosition [0, 0]) == 0) exitWith {}; // ,_vehicle 
            if (vehicle_spawner_debug) then {
                _txt=format["roadMkr%1",_mkrCount];
                _debugMkr=createMarker [_txt,_tempPos];
                _debugMkr setMarkerShape "ICON";
                _debugMkr setMarkerType "hd_dot";
                _debugMkr setMarkerColor "ColorBlue";
                _mkrCount = _mkrCount + 1;
            };
            //if (count ((_tempPos) isFlatEmpty [ (sizeOf _vehicle) /2 , 0, 1000, (sizeOf _vehicle),  0, false, _x ]) == 0) exitWith {};    
            _newPos = _tempPos;
            _kCount = _kCount + 1;
        };
        _jPos = _newPos;
        _newPos = _roadPos;
        _direction2 = _direction - 90;
        _j = 1;
        _jCount = 1;
        for "_j" from 1 to 15 do {
            _tempPos = [_newPos,0.5,_direction2] call fn_trans_pos;
            if (count (_tempPos findEmptyPosition [0, 0]) == 0) exitWith {}; // ,_vehicle
            if (vehicle_spawner_debug) then {
                _txt=format["roadMkr%1",_mkrCount];
                _debugMkr=createMarker [_txt,_tempPos];
                _debugMkr setMarkerShape "ICON";
                _debugMkr setMarkerType "hd_dot";
                _debugMkr setMarkerColor "ColorGreen";
                _mkrCount = _mkrCount + 1;
            };
            //if (count ((_tempPos) isFlatEmpty [ (sizeOf _vehicle) /2 , 0, 1000, (sizeOf _vehicle),  0, false, _x ]) == 0) exitWith {};
            _newPos = _tempPos;
            _jCount = _jCount + 1;
        };

        if (_jCount==1 and _kCount == 1) then {
            _direction2 = _direction + 90;
            _newPos = [_newPos,2,_direction2] call fn_trans_pos;  
        } else {
            if (_kCount > _jCount) then {
              //_newPos = _jPos;  
                _direction2 = _direction + 90;
                _newPos = [_roadPos,(_kCount-4)*0.5,_direction2] call fn_trans_pos; 
            } else {
                _newPos = [_roadPos,(_jCount-4)*0.5,_direction2] call fn_trans_pos; 
            };
        };


       // if (random 10 > 9) then {
        _veh = _vehicle createVehicle _newPos;
        _veh setDir _direction;
        [_veh] spawn qry_fnc_civCar;

        if (vehicle_spawner_debug) then {
            _txt=format["roadMkr%1",_mkrCount];
            _debugMkr=createMarker [_txt,_newPos];
            _debugMkr setMarkerShape "ICON";
            _debugMkr setMarkerType "hd_dot";
             _debugMkr setMarkerText format ["%1",count _roadConnectedTo];
            _mkrCount = _mkrCount + 1;
            (findDisplay 12 displayCtrl 51) ctrlAddEventHandler ["Draw",format["(_this select 0) drawLine [[%1,%2,%3], [%4,%5,%6],[0,0,1,1]];",_roadPos select 0,_roadPos select 1,_roadPos select 2,_newPos select 0, _newPos select 1, _newPos select 2]];
        };

        _closeROADS = ([_road,vehicle_min_roadSegement_spacing] call fn_findRoadConnections);
        _roadPosArray = _roadPosArray - _closeROADS;
    };

};