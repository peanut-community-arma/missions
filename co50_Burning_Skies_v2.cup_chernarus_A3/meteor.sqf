sleep 2;
OBSNSSatPause = false;

_azimut = _this select 0;
_elevace = _this select 1;
_sklon = _this select 2;
_Xreverse = _this select 3;
_baseMax = _this select 4;

_bolid = "#lightpoint" createVehicleLocal [0,0,0];
_bolid setLightIntensity 1;
_bolid setLightBrightness 0;
_bolid setLightAmbient [0, 0, 0];
_bolid setLightColor [0.5, 0.5, 0.5];

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

_source = "#particlesource" createVehicleLocal [0,0,0];
_source attachTo [player, [0,0,0]];
_source setDropInterval 0.005;

_baseMag = 2;
_baseEnd = 0;
_od = _baseMax;
_jas = 0;
_grav = 1;
_rychlost = 15;
_magAdd = 0.3;
_std = _baseMax - 500;
_magRemove = 0.3;

if (_sklon <= 30) then {
	_grav = 1;
	_baseEnd = _baseMax - 1000;
};
if (_sklon > 30 and _sklon <= 50) then {
	_grav = 4;
	_baseEnd = _baseMax - 800;
};
if (_sklon > 50 and _sklon <= 70) then {
	_grav = 7;
	_baseEnd = _baseMax - 600;
};
if (_sklon > 70) then {
	_grav = 10;
	_baseEnd = _baseMax - 500;
};

_odklon = cos _elevace * 1000;
_vyska = sin _elevace * 1000;

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
	
	if (_od < (_baseEnd + 200) and _jas > 0) then {
		_jas = _jas - _magRemove;
	};
	_bolid setLightBrightness _jas * 2;
	_bolid setLightFlareSize _jas * 10;
	
	_source setParticleParams [_particleModel, "", "Billboard", 1, 4, [0,0,0], [0,0,0], 1, 0.0052, 0.0040, 0.1, [5, 2, 2, 1], [_color1,_color2,_color3,_color4,_color5,_color6,_color7],[1,0],1,0.3, "", "", _bolid];
	
	if (_Xreverse == 1) then {
		_bolid setPosASL [_posx - _x - _ox, _posy + _y - _oy, _posz + _vyska];
	} else {
		_bolid setPosASL [_posx + _x + _ox, _posy + _y - _oy, _posz + _vyska];
	};
	
	sleep 0.01;
};
OBSNSSatPause = true;
deleteVehicle _bolid;
deleteVehicle _source;