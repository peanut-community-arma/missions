
uisleep 2;
OBSNSSatPause = false;

_bolidType = _this select 0;
_azimut = _this select 1;
_elevace = _this select 2;
_Xreverse = _this select 3;

_bolid = "#lightpoint" createVehicleLocal [0,0,0];
_bolid setLightIntensity 1;
_bolid setLightBrightness 0;
_bolid setLightAmbient [0, 0.5, 0.5];
_bolid setLightColor [0.5, 0.5, 0.5];
if (_bolidType == 2) then {
	_bolid setLightAmbient [1, 0.9, 0.8];
	_bolid setLightColor [1, 0.9, 0.8];
};

_bolid setLightUseFlare true;
_bolid setLightDayLight true;
_bolid setLightFlareSize 0;
_bolid setLightFlareMaxDistance 10000;

_particleModel = "\A3\data_f\cl_basic";

_isA3 = isClass(configFile >> "CfgMods" >> "A3");
if (!_isA3) then {
	_particleModel = "\Ca\data\cl_basic";
};

_color1 = [0, 0.5, 0.5, 0.1];
_color2 = [0, 0.5, 0.5, 1];
_color3 = [0, 0.5, 0.5, 1];
_color4 = [0, 0.5, 0.5, 1];
_color5 = [0, 0.5, 0.5, 1];
_color6 = [0, 0.5, 0.5, 0.2];
_color7 = [0, 0.5, 0.5, 0];
_length = 4;

if (_bolidType == 2) then {
	_length = 50;
	_color1 = [1, 0.9, 0.8, 0.1];
	_color2 = [1, 0.9, 0.8, 1];
	_color3 = [1, 0.9, 0.8, 1];
	_color4 = [1, 0.9, 0.8, 1];
	_color5 = [1, 0.9, 0.8, 1];
	_color6 = [1, 0.9, 0.8, 0.2];
	_color7 = [1, 0.9, 0.8, 0];
};

_source = "#particlesource" createVehicleLocal [0,0,0];
_source attachTo [player, [0,0,0]];
_source setDropInterval 0.005;

_bolid00 = {
	[_this, -10, 1] call _bolidIntensity;
	[_this - 10, -10, -1] call _bolidIntensity;
	
	[_this - 20, -30, 0.6] call _bolidIntensity;
	[_this - 50, -30, -0.2] call _bolidIntensity;
	[_this - 80, -30, 0.4] call _bolidIntensity;
	[_this - 110, -30, -0.8] call _bolidIntensity;
	
	[_this - 140, -30, 0.6] call _bolidIntensity;
	[_this - 170, -50, -0.6] call _bolidIntensity;
	
	[_this - 220, -30, 0.6] call _bolidIntensity;
	[_this - 250, -20, 0.6] call _bolidIntensity;
	[_this - 270, -30, -0.6] call _bolidIntensity;
	[_this - 330, -30, -0.2] call _bolidIntensity;
	[_this - 360, -30, 0.4] call _bolidIntensity;
	[_this - 390, -30, -0.8] call _bolidIntensity;
	
	[_this - 420, -30, 4] call _bolidIntensity;
	[_this - 450, -50, -2] call _bolidIntensity;
};
_bolid01 = {
	[_this, -10, 0.5] call _bolidIntensity;
	[_this - 10, -10, -0.5] call _bolidIntensity;
	
	[_this - 20, -30, 0.6] call _bolidIntensity;
	[_this - 50, -30, -0.2] call _bolidIntensity;
	[_this - 80, -30, 0.4] call _bolidIntensity;
	[_this - 110, -30, -0.8] call _bolidIntensity;
	
	[_this - 140, -30, 3] call _bolidIntensity;
	[_this - 170, -30, -3] call _bolidIntensity;
};
_bolid02 = {
	[_this, -20, 2] call _bolidIntensity;
	[_this - 20, -20, -2] call _bolidIntensity;
	
	[_this - 40, -20, -1] call _bolidIntensity;
	[_this - 60, -20, 1] call _bolidIntensity;
	
	[_this - 80, -20, 1] call _bolidIntensity;
	[_this - 100, -20, -1] call _bolidIntensity;
	
	[_this - 120, -20, -2] call _bolidIntensity;
	[_this - 140, -20, 2] call _bolidIntensity;
	
	[_this - 160, -20, 1] call _bolidIntensity;
	[_this - 180, -20, -1] call _bolidIntensity;
	
	[_this - 200, -20, -1] call _bolidIntensity;
	[_this - 220, -20, 1] call _bolidIntensity;
	
	[_this - 240, -50, 10] call _bolidIntensity;
	[_this - 270, -30, -4] call _bolidIntensity;
	[_this - 300, -30, 2] call _bolidIntensity;
	[_this - 330, -30, -2] call _bolidIntensity;
	[_this - 360, -30, 4] call _bolidIntensity;
	[_this - 390, -50, -10] call _bolidIntensity;
};

_baseMag = 5;
_baseMax = 1000;
_baseEnd = 0;
_od = _baseMax;
_jas = 0;
_grav = 0;
_rychlost = 0;
_magAdd = 0;
_std = 0;
_magRemove = 0.1;

if (_bolidType == 0) then {
	_grav = _this select 4;
	_rychlost = 4;
	_baseEnd = -200;
	_magAdd = 0.05;
	_std = _baseMax - 500;
};
if (_bolidType == 1) then {
	_grav = 4;
	_rychlost = 4;
	_baseEnd = 400;
	_magAdd = 0.1;
	_std = _baseMax - 200;
};
if (_bolidType == 2) then {
	_grav = _this select 4;
	_rychlost = 4;
	_baseEnd = -600;
	_baseMag = 40;
	_magAdd = 0.1;
	_magRemove = 0.5;
	_std = _baseMax - 1000;
};

_odklon = cos _elevace * 1000;
_vyska = sin _elevace * 1000;

_bolidIntensity = {
	_p1 = _this select 0;
	_p2 = _this select 1;
	_p3 = _this select 2;
	if (_od < _p1 and _od > _p1 + _p2) then {
		_jas = _jas + _p3;
	};
};

while {_od > _baseEnd} do {
	_posx = getPosASL player select 0;
	_posy = getPosASL player select 1;
	_posz = getPosASL player select 2;
	
	_x = sin _azimut * _od;
	_y = cos _azimut * _od;

	_ox = cos _azimut * _odklon;
	_oy = sin _azimut * _odklon;
	
	_vyska = _vyska - _grav;
	_od = _od - _rychlost;
	
	if (_od > _std and _jas < _baseMag) then {
		_jas = _jas + _magAdd;
	};
	
	if (_bolidType == 0) then {_std call _bolid00;};
	if (_bolidType == 1) then {_std call _bolid01;};
	if (_bolidType == 2) then {_std call _bolid02;};
	
	if (_od < (_baseEnd + 200) and _jas > 0) then {
		_jas = _jas - _magRemove;
	};
	_bolid setLightBrightness _jas * 2;
	_bolid setLightFlareSize _jas * 10;
	
	_source setParticleParams [_particleModel, "", "Billboard", 1, _length, [0,0,0], [0,0,0], 1, 0.0052, 0.0040, 0.1, [5, 2, 2, 1], [_color1,_color2,_color3,_color4,_color5,_color6,_color7],[1,0],1,0.1, "", "", _bolid];
	if (_bolidType == 2) then {
		if (_od < 200 and _od > (_baseEnd + 200)) then {
			_source setParticleParams [_particleModel, "", "Billboard", 1, 50, [0,0,0], [0,0,0], 1, 0.0052, 0.0040, 0.1, [20, 15, 12, 7, 1], [_color1,_color2,_color3,_color4,_color5,_color6,_color7],[1,0],1,0.1, "", "", _bolid];
		};
	};
	
	if (_Xreverse == 1) then {
		_bolid setPosASL [_posx - _x - _ox, _posy + _y - _oy, _posz + _vyska];
	} else {
		_bolid setPosASL [_posx + _x + _ox, _posy + _y - _oy, _posz + _vyska];
	};
	
	uisleep 0.01;
};
OBSNSSatPause = true;
deleteVehicle _bolid;
deleteVehicle _source;