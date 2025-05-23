
if (!hasInterface) exitWith {};
_obj_emp	= _this;
_TP_A	= [tp1,tp2,tp3,tp4];
enableCamShake true;
addCamShake [1,50,27];
playSound "earthquake_02";
 

	_ripple = "#particlesource" createVehicleLocal getposatl _obj_emp;
	_ripple setParticleCircle [0,[0,0,0]];
	_ripple setParticleRandom [0,[0.25,0.25,0],[0.175,0.175,0],0,0.25,[0,0,0,0.1],0,0];
	_ripple setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract.p3d",1,0,1], "", "Billboard", 1, 0.5, [0, 0, 0], [0, 0, 0],0,10,7.9,0, [30,1000], [[1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _obj_emp];
	_ripple setDropInterval 0.1;
	[_ripple] spawn {_de_sters = _this select 0;sleep 1;deleteVehicle _de_sters};

	_blast = "#particlesource" createVehicleLocal getposatl _obj_emp;
	_blast setParticleCircle [0, [0, 0, 0]];
	_blast setParticleRandom [0, [0, 0, 0], [0, 0, 0], 0, 0, [0, 0, 0, 0], 0, 0];
	_blast setParticleParams [["\A3\data_f\koule", 1, 0, 1], "", "SpaceObject", 1,1,[0,0,0],[0,0,1],3,10,7.9,0,[50,1000],[[1, 1, 1, 0.1], [1, 1, 1, 0]], [1], 1, 0, "", "", _obj_emp];
	_blast setDropInterval 50;
	[_blast] spawn {_de_sters = _this select 0;sleep 1;deleteVehicle _de_sters};

	_light_emp = "#lightpoint" createVehiclelocal getposatl _obj_emp; 
	_light_emp lightAttachObject [_obj_emp, [0,0,3]];
	_light_emp setLightAmbient [1,1,1];  
	_light_emp setLightColor [1,1,1];
	_light_emp setLightBrightness 0;
	_light_emp setLightDayLight true;
	_light_emp setLightAttenuation [10,10,50,0,50,2000];
	_range_lit=0;
	_brit =0;
	while {_brit < 50} do 
	{
		_light_emp setLightBrightness _brit;
		_brit = _brit+2;
		sleep 0.01;
	};

 _obj_emp spawn{
_source = _this;
_dist = (viewDistance) - 400;
_pos = [0,0,0];
_h = 100;
_bri = 1000;
_flare = 1000;
	if ((player distance _source) > _dist) then{
	_pos =player getPos[ _dist, (player getDir _source)];
	} else {
	_pos = getPosWorld _source;
	};
_pos set [2, _h];
private _lightpoint = "#lightpoint" createVehicleLocal (_pos);
_lightpoint setLightColor [1, 1, 1];
_lightpoint setLightAmbient [1, 1, 1];
_lightpoint setLightUseFlare true;
_lightpoint setLightDayLight true;
_lightpoint setLightFlareSize _flare;
_lightpoint setLightFlareMaxDistance 50000;
_lightpoint setLightIntensity _bri;
_lightpoint setLightAttenuation [0, 0, 4.31918e-005, 4.31918e-005];
while {_bri>0} do {
	uiSleep .1;
	if (player distance (_source) > _dist) then{
	_pos =player getPos[ _dist, (player getDir _source)];
	} else {
	_pos = getPosWorld _source;
	};
	 
	 _pos set [2, _h];
	_lightpoint setPos _pos;
	_bri = _bri - 5;
	_flare = _flare - 5;
	_h = _h + 1;
	_lightpoint setLightIntensity _bri;
	_lightpoint setLightFlareSize _flare;
};
deleteVehicle _lightpoint;
};
deleteVehicle _light_emp;
sleep 0.5;
[1, "WHITE", 1,1] spawn BIS_fnc_fadeEffect;
player setPos(selectRandom _TP_A getPos [random 100,random 360]);
["geiger"] remoteExec ["playsound"];
"dynamicBlur" ppEffectEnable true;   
"dynamicBlur" ppEffectAdjust [5];   
"dynamicBlur" ppEffectCommit 0;     
sleep 1;
"dynamicBlur" ppEffectAdjust [1];
"dynamicBlur" ppEffectCommit 1;  
sleep 5;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 10;
sleep 10;
"dynamicBlur" ppEffectEnable false;
