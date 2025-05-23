// by ALIAS
// Monsoon SCRIPT
// Tutorial: https://www.youtube.com/user/aliascartoons

if (!isServer) exitWith {};
params ["_direction_monsoon","_duration_monsoon","_gusts","_debris_branches","_rain_fog","_rain_drop","_thunder_steroids"];

delay_thunder = _this select 7; publicVariable "delay_thunder";
al_monsoon_active = true; publicVariable "al_monsoon_active";
thunder_sound_list = ["01_far","02_far","03_far","04_far","05_far","06_far","07_far","08_far","09_far","10_far","11_far","12_far","13_far","14_far","16_far","17_far","18_far","19_far","20_far","21_far","22_far","23_far","24_far","25_far","26_far","27_far"];
publicVariable "thunder_sound_list";

[] spawn {
    while {al_monsoon_active} do {
        ["bcg_wind"] remoteExec ["playSound"];
        sleep 60;
    };
};

// Set weather conditions
0 setLightnings 1;
0 setRain 1.0;
0 setFog 0.7;
0 setOvercast 1.0;
setHumidity 0.9;        // don't want to see dust clouds
enableEnvironment [false, true]; // don't want to see snakes and butterflies either
// setWind [0,0,true];   // Higher value than slider will go
setWind [30,30,true];   // Higher value than slider will go
0 setGusts 1;
forceWeatherChange;

[
    "a3\data_f\rain_ca.paa",   // rainDropTexture
    4,         // texDropCount
    0.1,       // minRainDensity
    10,        // effectRadius
    0.015,      // windCoef
    25,        // dropSpeed
    0.5,       // rndSpeed
    0.1,       // rndDir
    0.04,      // dropWidth
    0.8,       // dropHeight
    [0.1, 0.1, 0.1, 0.5],  // dropColor - adjust 4th number to increase or decrease visibility
    0.6,       // lumSunFront - These four parameters ...
    0.4,       // lumSunBack  - make the rain inherit brightness and color of scene
    0.8,       // refractCoef
    0.5,       // refractSaturation
    false,     // snow
    false      // dropColorStrong
]
call BIS_fnc_setRain;

// Local particle effects executed on each machine
// "Message 1" remoteExec ["systemChat"];
// ["AL_monsoon\rain_drop.sqf"] remoteExec ["execVM",0,true];
["AL_monsoon\alias_monsoon_effect.sqf"] remoteExec ["execVM",0,true];

if(_thunder_steroids) then
{
    [] spawn
    {
        while {al_monsoon_active} do
        {
            _delay_thunder_actual = delay_thunder + random 10;
            poz_f_1 = (selectRandom allPlayers) getRelPos [700+random 1300, random 360]; publicVariable "poz_f_1";
            _thunder_type = selectRandom ["light","sound","light","sound_light"];
            _num_flashes = floor (1+random 3);
            _thunder_sound = selectRandom thunder_sound_list;
            [[poz_f_1,_thunder_type,_num_flashes,_thunder_sound],"AL_monsoon\thunder_storm.sqf"] remoteExec ["execVM"];
            sleep _delay_thunder_actual;
        };
    };
};

if (_gusts) then
{
    while {al_monsoon_active} do
    {
        sleep 60+random 120;
        [] spawn {
            _wind = selectRandom ["wind_1","wind_2","wind_4_dr","wind_5_st","wind_6","wind_7","wind_8","wind_9"];
            [_wind] remoteExec ["playSound"];
            ["AL_monsoon\camera_shake.sqf"] remoteExec ["execVM"];
        };
    };
};
