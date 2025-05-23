/*
	Enemy Spawning System (ESS) - by Enigx

	ESS_Launch.sqf

*/

params ["_fazioneESS","_sideInd","_ESSAreaMkr","_Unpatrol","_UNhouse","_sttc","_lghtarray","_hvyarray","_distance"];
_numFT = _UNpatrol select 0; _unitsXteamMax = _Unpatrol select 1;
_groupInBuild = _UNhouse select 0; _numUnitInBuild = _UNhouse select 1;
_NumStatic = _sttc select 0; _NumLghVeh = _lghtarray select 0;_patlght = _lghtarray select 1;_lghtProb = _lghtarray select 2; _NumHvyVeh = _hvyarray select 0;_pathvy = _hvyarray select 1;

private ["_temparrayUn","_temparrayStc","_temparrayLghVeh","_temparrayHvyVeh","_grpB","_grpC","_grpD","_grpE","_newpos","_UnInVeh"];

_mPos = getMarkerPos _ESSAreaMkr;
_mkrX = getMarkerSize _ESSAreaMkr select 0;
_mkrY = getMarkerSize _ESSAreaMkr select 1;
_mkrAgl = markerDir _ESSAreaMkr;

// Initiate the ESS zone and activation trigger
_ESSAreaMkr setMarkerAlpha 0;

_essActivated = createTrigger ["EmptyDetector",_mPos]; 
_essActivated setTriggerArea [(_distance+_mkrX),(_distance+_mkrY),_mkrAgl,FALSE , 100 ];
// 100 (meters) is the height of the trigger. Modify it with your minimum flight altitude
_essActivated setTriggerActivation ["ANYPLAYER","PRESENT",false];
_essActivated setTriggerTimeout [1, 1, 1, true];
_essActivated setTriggerStatements ["this","",""];

waituntil {triggeractivated _essActivated};	// wait until players in area

// Impose sleep time to avoid overlapping spawn calling 
_TempSpawn = 0.1;

// definition of the faction to be used
_temparrayUn = ([_fazioneESS] call ESS_fnc_getunit) select 0;
_temparrayStc = ([_fazioneESS] call ESS_fnc_getunit) select 1;
_temparrayLghVeh = ([_fazioneESS] call ESS_fnc_getunit) select 2;
_temparrayHvyVeh = ([_fazioneESS] call ESS_fnc_getunit) select 3;
	
// Spawn of patrolling units
for "_i" from 1 to _numFT do {
	sleep _TempSpawn;
	_p1 = [_ESSAreaMkr] call SHK_pos;
		
	sleep _TempSpawn;
	_p2 = [_ESSAreaMkr] call SHK_pos;
		
	sleep _TempSpawn;
	_p3 = [_ESSAreaMkr] call SHK_pos;
		
	sleep _TempSpawn;
	_p4 = [_ESSAreaMkr] call SHK_pos;
		
	sleep _TempSpawn;
	_p5 = [_ESSAreaMkr] call SHK_pos;
		
	sleep _TempSpawn;
	_nFT = floor(random _unitsXteamMax);
	private _EnemyFireTeam = [];
	for "_k" from 0 to _nFT do {
		_EnemyFireTeam pushBack (selectRandom _temparrayUn);
	};
	null = ["O_G_Offroad_01_F",0, _EnemyFireTeam, [_p1,_p2,_p3,_p4,_p5],_sideInd] execVM "ESS_system\functions\ESS_Enemy_patrol_V2.sqf";
		
	sleep _TempSpawn;
};

// Spawn of units in buildings
for "_i" from 1 to  _groupInBuild do {
	sleep _TempSpawn;
	_pB = [_ESSAreaMkr] call SHK_pos;
	_grpB = createGroup [_sideInd, true];
	for "_j" from 0 to floor(random(_numUnitInBuild)) do {
		_UnB = _grpB createUnit [selectRandom _temparrayUn, _pB, [], 0, "FORM"];
		[_UnB] join _grpB;
	};
	0 = [_pB, units _grpB, 50,false,false,true,false] execVM "ESS_system\functions\Zen_OccupyHouse.sqf";
};


// Spawn of static turrets
for "_i" from 1 to  _NumStatic do {
	sleep _TempSpawn;
	_pC=[_ESSAreaMkr,50] call ESS_fnc_findSafePos;
	_staticOBJ = createVehicle [selectRandom _temparrayStc, _pC,[], 0,"FORM"]; 
	_grpC = createGroup [_sideInd, true];
	_UnC = _grpC createUnit [selectRandom _temparrayUn, _pC, [], 0, "FORM"];
	[_UnC] join _grpC;
	_UnC moveingunner _staticOBJ;
};


// Spawn of light vehicles
if (_patlght == 0) then {
	for "_i" from 1 to _NumLghVeh do {
		sleep _TempSpawn;	
		_pD = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;
		sleep _TempSpawn;
		_VehLghClass = selectRandom _temparrayLghVeh;		
		_VehLgh = createVehicle [_VehLghClass, _pD, [], 0, "NONE"];
		_grpD = createGroup [_sideInd, true];	
		_dvrD = _grpD createUnit [selectRandom _temparrayUn, _pD, [], 0, "FORM"];
		_gnrD = _grpD createUnit [selectRandom _temparrayUn, _pD, [], 0, "FORM"];
		[_dvrD,_gnrD] join _grpD;
		_dvrD moveInDriver _VehLgh;	
		if ((!isNull gunner _VehLgh) || (_VehLgh emptyPositions "gunner">0)) then {_gnrD moveInGunner _VehLgh;} else {_gnrD moveincargo _VehLgh;};
		_chance = random 100;		
		if (_chance < _lghtProb) then {		
			_numCrewTot = ([_VehLghClass, true] call BIS_fnc_crewCount);
			_numCrew = ([_VehLghClass, false] call BIS_fnc_crewCount);
			_numCargo = _numCrewTot - _numCrew -1;
			for "_k" from 1 to _numCargo do {
			_crewD = _grpD createUnit [selectRandom _temparrayUn, _pD, [], 0, "FORM"];
			[_crewD] join _grpD;
			_crewD moveInAny _VehLgh;
			};
		};		
	};
} else {	
	for "_i" from 1 to _NumLghVeh do {
		sleep _TempSpawn;
		_pp1 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;		
		sleep _TempSpawn;
		_pp2 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;	
		sleep _TempSpawn;
		_pp3 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;		
		sleep _TempSpawn;
		_pp4 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;		
		sleep _TempSpawn;
		_pp5 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;
		_VehLghClass = selectRandom _temparrayLghVeh;			
		_chance = random 100;		
		if (_chance < _lghtProb) then {
			_numCrewTot = ([_VehLghClass, true] call BIS_fnc_crewCount);
			_numCrew = ([_VehLghClass, false] call BIS_fnc_crewCount);
			_numCargo = _numCrewTot - _numCrew -1;
			_VehLgh = createVehicle [_VehLghClass, _pp1, [], 0, "NONE"];
			_grpF = createGroup [_sideInd, true];	
			_dvrF = _grpF createUnit [selectRandom _temparrayUn, _pp1, [], 0, "FORM"];
			_gnrF = _grpF createUnit [selectRandom _temparrayUn, _pp1, [], 0, "FORM"];
			[_dvrF,_gnrf] join _grpF;
			_dvrF moveInDriver _VehLgh;	
			if ((!isNull gunner _VehLgh) || (_VehLgh emptyPositions "gunner">0)) then {_gnrF moveInGunner _VehLgh;} else {_gnrF moveincargo _VehLgh;};
			for "_k" from 1 to _numCargo do {
				_crewF = _grpF createUnit [selectRandom _temparrayUn, _pp1, [], 0, "FORM"];
				[_crewF] join _grpF;
				_crewF moveInAny _VehLgh;
			};
			_VehLgh limitSpeed 30;
			_EnGrp = group _VehLgh;
			_wpts = [_pp1,_pp2,_pp3,_pp4,_pp5];
			for "_k" from 0 to 4 do
			{
			_wp = _EnGrp addWaypoint [_wpts select _k, 0];
			_wp setWaypointType "MOVE";
			_wp setWaypointBehaviour "SAFE";
			_wp setWaypointCombatMode "YELLOW";
			_wp setWaypointSpeed "LIMITED";			
			};
			_wp = _EnGrp addWaypoint [[(_pp5 # 0)+2,(_pp5 # 1)+2,0], 0];
			_wp setWaypointType "CYCLE";			
		} else {
			null = [_VehLghClass,1, [selectRandom _temparrayUn,selectRandom _temparrayUn], [_pp1,_pp2,_pp3,_pp4,_pp5],_sideInd] execVM "ESS_system\functions\ESS_Enemy_patrol_V2.sqf";
		};		
		sleep _TempSpawn;
	};
};

// Spawn of heavy vehicles
if (_pathvy == 0) then {
	for "_i" from 1 to _NumHvyVeh do {
		sleep _TempSpawn;	
		_pE = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;
		sleep _TempSpawn;	
		_VehHvy = createVehicle [selectRandom _temparrayHvyVeh, _pE, [], 0, "NONE"];
		_grpE = createGroup [_sideInd, true];	
		_dvrE = _grpE createUnit [selectRandom _temparrayUn, _pE, [], 0, "FORM"];
		_gnrE = _grpE createUnit [selectRandom _temparrayUn, _pE, [], 0, "FORM"];
		[_dvrE,_gnrE] join _grpE;
		_gnrE moveInDriver _VehHvy;	
		if ((!isNull gunner _VehHvy) || (_VehHvy emptyPositions "gunner">0)) then {_gnrE moveInGunner _VehHvy;} else {_gnrE moveincargo _VehHvy;};
	};
} else {	
	for "_i" from 1 to _NumHvyVeh do {
		sleep _TempSpawn;
		_ppv1 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;		
		sleep _TempSpawn;
		_ppv2 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;	
		sleep _TempSpawn;
		_ppv3 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;		
		sleep _TempSpawn;
		_ppv4 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;		
		sleep _TempSpawn;
		_ppv5 = [_ESSAreaMkr,50] call ESS_fnc_findSafePos;
		null = [selectRandom _temparrayHvyVeh,1, [selectRandom _temparrayUn,selectRandom _temparrayUn], [_ppv1,_ppv2,_ppv3,_ppv4,_ppv5],_sideInd] execVM "ESS_system\functions\ESS_Enemy_patrol_V2.sqf";
		sleep _TempSpawn;
	};	
};