//How to add artillery gun to battery:
//init field of gun: this setVariable ["GOM_fnc_ambientArtyBatteryID","Battery01",true];
//this will add the gun to "Battery01"

GOM_fnc_abortAmbientArtilleryFire = {

	missionNamespace setVariable ["GOM_ambientArtilleryFiring",false,true];

};


GOM_fnc_ambientArtyFireGun = {

	params ["_gun","_dir","_alt","_rounds","_guns","_debug"];

	if !(GOM_ambientArtilleryFiring) exitWith {false};

	_position = _gun getRelPos [250, _dir];
	_position = ATLtoASL _position;
	_position = _position vectorAdd [random [1,3,5],random [1,3,5],_alt + random [1,3,5]];

	_gun setVariable ["GOM_fnc_ambientArtyReady",false];
	_weaponModeIndex = 5; // More hard-coding! RHS D-30 has six charge levels - take the max

	gunner _gun action ["SwitchWeapon",  _gun,  gunner _gun,_weaponModeIndex];

	sleep random [0,1,2];
	gunner _gun doWatch _position;
	sleep random [6,8,11];
	_gun setVariable ["GOM_fnc_ambientArtyTurretReady",true,true];

	waituntil {{_x getVariable ["GOM_fnc_ambientArtyTurretReady",false]} count _guns isEqualTo count _guns OR !GOM_ambientArtilleryFiring};
	if !(GOM_ambientArtilleryFiring) exitWith {false};

	_reloadtime = 6; // Just hard-code it to the D-30's reload time, whatever
	for "_i" from 1 to _rounds do {

		if !(GOM_ambientArtilleryFiring) exitWith {false};

		_gun setVehicleAmmoDef 1;
		_gun addEventHandler ["Fired",{

			params ["_gun","","","","","","_projectile"];
			_gun removeEventHandler ["Fired",_thiseventhandler];
			// _projectile setFeatureType 2;//makes it visible as far as terrainViewDistance goes

			_delete = _projectile spawn {
			//wait until projectile has negative Z velocity
			waitUntil {velocity _this # 2 <= 0 OR !alive _this};
			if (alive _this) then {deleteVehicle _this};
		};
		}];

		gunner _gun action ["SwitchWeapon",  _gun,  gunner _gun,_weaponModeIndex]; // Why do we switch fire mode again?
		_gun action ["useWeapon", _gun, gunner _gun,0];
		sleep (_reloadtime + random [0.1,0.3,0.7]);
	};

	_gun setVariable ["GOM_fnc_ambientArtyReady",true];
	if !(GOM_ambientArtilleryFiring) exitWith {false};

};

GOM_fnc_ambientArtilleryFire = {

	params [["_batteryID",""],["_salvoes",4],["_rounds",4],["_debug",false]];

	if (_batteryID isEqualTo "") exitWith {systemchat "Error GOM_fnc_ambientArtilleryFire - No battery ID given!"};

	_guns = vehicles select {_x getVariable ["GOM_fnc_ambientArtyBatteryID",""] isEqualTo _batteryID};

	if (_guns isEqualTo []) exitWith {systemchat "Error GOM_fnc_ambientArtilleryFire - No artillery guns found!"};

	{
		_x setVariable ["GOM_fnc_ambientArtyReady",false,true];
		_x setVariable ["GOM_fnc_ambientArtyTurretReady",false,true];
	} foreach _guns;

	_dir = -10 + random 20; // override to shoot in direction already facing
	_alt = random [200,300,400];

	for "_i" from 1 to _salvoes do {
		if !(GOM_ambientArtilleryFiring) exitWith {false};

		if (_debug) then {
			_guns select 0 globalchat format ["Salvo %1 of %2.",_i,_salvoes];
			_guns select 0 globalchat format ["%1 rounds.",_rounds]
		};

		{[_x,_dir,_alt,_rounds,_guns,_debug] spawn GOM_fnc_ambientArtyFireGun} forEach _guns;

		waitUntil {{_x getVariable ["GOM_fnc_ambientArtyReady",false]} count _guns isEqualTo count _guns OR !GOM_ambientArtilleryFiring};
		if !(GOM_ambientArtilleryFiring) exitWith {false};

		if (_debug) then {_guns select 0 globalchat format ["Salvo %1 of %2 finished.",_i,_salvoes,_rounds];};

		{_x spawn {_this setVehicleAmmoDef 0;}} forEach _guns; // Make sure there's no spare ammo to shoot at the players
		sleep random [1000,1600,1700]; // Wait for next salvo

	};

	if (_debug) then {_guns select 0 globalchat "Firemission complete."};

	{

		_x spawn {

			// sleep random [3,5,7];
			//gunner _this dowatch objnull;
			_this setVehicleAmmoDef 0;

		};

	} foreach _guns;

};

missionNamespace setVariable ["GOM_ambientArtilleryFiring",true,true];
