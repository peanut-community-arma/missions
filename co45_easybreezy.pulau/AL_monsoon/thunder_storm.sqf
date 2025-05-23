// by ALIAS

if (!hasInterface) exitWith {};
if (!al_monsoon_active) exitwith {};
params ["_bolt_position","_thunder_type","_num_flashes","_thunder_sound"];

_poz_obj_fulger_s_l = "Land_HelipadEmpty_F" createVehicleLocal [_bolt_position select 0,_bolt_position select 1,(getPosATL player select 2)+800];

if ((_thunder_type=="sound_light") or (_thunder_type=="light")) then
{
    if (sunOrMoon<1.1) then
    {
        _lum_fulg_s_l = "#lightpoint" createvehiclelocal getPosATL _poz_obj_fulger_s_l;
        _lum_fulg_s_l attachto [_poz_obj_fulger_s_l,[0,0,200]];
        _lum_fulg_s_l setLightDayLight true;
        _lum_fulg_s_l setLightUseFlare false;
        _lum_fulg_s_l setLightFlareSize 0;
        _lum_fulg_s_l setLightFlareMaxDistance 2000;
        _lum_fulg_s_l setLightAmbient[0.35,0.3,0.6];
        _lum_fulg_s_l setLightColor[0.2,0.2,0.2];

        _lum_fulg_s_l setLightAttenuation [0,0,0,0,0,900];
        _lum_fulg_s_l setLightIntensity 200;
        _lum_fulg_s_l setLightBrightness 100+random 50;

        while {_num_flashes>0} do
        {
            sleep 0.05+random 0.05;
            _lum_fulg_s_l setLightBrightness 30+ random 30;
            sleep 0.1;
            _lum_fulg_s_l setLightBrightness 100+random 100;
            _num_flashes=_num_flashes-1;
        };
        sleep 0.1;
        _lum_fulg_s_l setLightBrightness 30;
        sleep 0.08;
        _intens_vf = 150+random 50;
        _lum_fulg_s_l setLightBrightness _intens_vf;
        sleep 0.1;

        while {_intens_vf>0} do {
            _intens_vf = _intens_vf-50;
            _lum_fulg_s_l setLightIntensity 0;
            _lum_fulg_s_l setLightBrightness _intens_vf;
            sleep 0.05;
        };
        _lum_fulg_s_l setLightBrightness 0;
        _lum_fulg_s_l setLightIntensity  0;
        deleteVehicle _lum_fulg_s_l;
    }
};

_sound_delay = (player distance _poz_obj_fulger_s_l)/350;
sleep _sound_delay;

if ((_thunder_type=="sound") or (_thunder_type=="sound_light"))then {playsound _thunder_sound};
sleep 31;
deleteVehicle _poz_obj_fulger_s_l;
