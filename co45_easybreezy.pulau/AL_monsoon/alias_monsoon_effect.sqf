// by ALIAS
// Tutorial: https://www.youtube.com/user/aliascartoons

private ["_sticks_emitter","_leaves_emitter","_paper_emitter","_fog_emitter"];

if (!hasInterface) exitWith {};
if (!al_monsoon_active) exitwith {};

// Emitters are attached to invisible objects that are attached to player

emitter_attach_dummy_1 = "Sign_Sphere200cm_F" createVehiclelocal [0,0,0];
emitter_attach_dummy_1 setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0,ca)"];

emitter_attach_dummy_2 = "Sign_Sphere200cm_F" createVehiclelocal [0,0,0];
emitter_attach_dummy_2 setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,1,0,0,ca)"];
onEachFrame {
    // Attached and in front of camera
    emitter_attach_dummy_1 setposATL positionCameraToWorld [0,2,20];
    // Upwind (southwest) of player
    emitter_attach_dummy_2 setPosATL (player getPos [20, 225]);
};

// Raindrop impacts
_rain_drops_eff = "#particlesource" createVehicleLocal position player;
_rain_drops_eff setParticleCircle [10, [0, 0, 0]];
_rain_drops_eff setParticleRandom [0.2,[20,20,0],[0,0,0.5],13,0.5,[0,0,0,0.5],1,0];
_rain_drops_eff setParticleParams [["\A3\Data_F_Mark\ParticleEffects\Universal\waterBallonExplode_01",4,0,16,0],"","Billboard",1,0.4,[0,0,30],[0,0,1],0,18,7,0.01,[0.05,0.6],[[0.5,0.5,0.5,1],[0.5,0.5,0.5,1]],[1.5],1,0,"","",emitter_attach_dummy_1,0,true];
_rain_drops_eff setDropInterval 0.0002;

_refract_emitter = "#particlesource" createVehicleLocal position player;
_refract_emitter setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1,0],"","Billboard",1,10,[0,0,0],[0,0,0],1,1.24,1,0.0,[5],[[0.3,0.3,0.3,0],[0.3,0.3,0.3,0.26],[0.3,0.3,0.3,0.24],[0.3,0.3,0.3,0.22],[0.3,0.3,0.3,0.16],[0.3,0.3,0.3,0.08],[0.3,0.3,0.3,0]],[1],0.1,0.05,"","",vehicle player,0,false,0,[[0,0,0,0]],[0,1,0]];
_refract_emitter setParticleRandom [0.5,[3.5,3.5,0],[0.1,0.1,0.1],0,0.03,[0,0,0,0],0,0,1,0];
_refract_emitter setParticleCircle [20,[0,0,0]];
_refract_emitter setDropInterval 0.025;

while {al_monsoon_active} do {
    _sticks_emitter = "#particlesource" createVehicleLocal position player;
    _sticks_emitter setParticleCircle [15,[0,0,0]];
    _sticks_emitter setParticleRandom [15,[10,10,3],[4,4,0],2,0.5,[0,0,0,0.5],1,0];
    _sticks_emitter setParticleParams [["\A3\data_f\ParticleEffects\Hit_Leaves\Sticks_Green", 1, 1, 1], "", "SpaceObject", 1,30,[0,0,4],[10,10,0],2,10,1,0.02,[0.5+random 0.6,1],[[0.68,0.68,0.68,1],[0.68,0.68,0.68,1]],[1.5,1],1,0,"","",emitter_attach_dummy_2,0,false,1,[[0,0,0,0]]];
    _sticks_emitter setDropInterval 0.6+random 1;

    _leaves_emitter = "#particlesource" createVehicleLocal position player;
    _leaves_emitter setParticleCircle [15,[0,0,0]];
    _leaves_emitter setParticleRandom [5,[10,10,3],[4,4,0],2,0.15,[0,0,0,0.5],1,0];
    _leaves_emitter setParticleParams [["\A3\Plants_F\_Leafs\leaf_damage_small_green", 1, 1, 1], "", "SpaceObject", 1,15,[0,0,4],[10,10,0],1,1.5,1,0.2,[0.4+random 0.5,0.8],[[1,1,1,1],[1,1,1,1]],[1],1,0,"","",emitter_attach_dummy_2,0,false,1,[[0,0,0,0]]];
    _leaves_emitter setDropInterval 0.1+random 0.2;

    _paper_emitter = "#particlesource" createVehicleLocal position player;
    _paper_emitter setParticleCircle [15,[0,0,0]];
    _paper_emitter setParticleRandom [10,[10,10,3],[4,4,0],0,0,[0,0,0,0],1,0];
    _paper_emitter setParticleParams [["\A3\Weapons_F_Orange\Ammo\leaflet_05_f", 1, 1, 1], "", "SpaceObject", 1,25,[0,0,4],[10,10,0],1,0.005,0.0038,0.1,[0.5+random 0.6,1],[[1,1,1,1],[1,1,1,1]],[0.8,0.3,0.25],1,0,"","",emitter_attach_dummy_2,0,false,1,[[0,0,0,0]]];
    _paper_emitter setDropInterval 0.3+random 0.7;

    _fog_emitter = "#particlesource" createVehicleLocal (getposasl vehicle player);
    if (vehicle player != player) then {_fog_emitter attachto [vehicle player];} else {_fog_emitter attachto [player];};
    _fog_emitter setParticleCircle [20, [3, 3, 0]];
    _fog_emitter setParticleRandom [5,[20,20,0],[1,1,0],1,1,[0,0,0,0.1],1,0];
    _fog_emitter setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1,10,[0,0,0],[-1,-1,0],3,10,7.9,0.1,[10,20,50],[[1,1,1,0],[1,1,1,0.03],[1,1,1,0]],[0.08],1, 0, "", "", vehicle player];
    _fog_emitter setDropInterval 0.01+random 0.05;

    sleep 5 + random 10;
    deleteVehicle _sticks_emitter;
    deleteVehicle _leaves_emitter;
    deleteVehicle _paper_emitter;
    deleteVehicle _fog_emitter;
};

effect_screen = ppEffectCreate ["FilmGrain", 2000];
effect_screen ppEffectEnable true;
effect_screen ppEffectAdjust [0.1,0.1,0.5,0.1,0.1,true];
effect_screen ppEffectCommit 0;

waitUntil {!al_monsoon_active};
effect_screen ppEffectEnable false;
ppEffectDestroy effect_screen;
enableCamShake false;

deleteVehicle _rain_drops_eff;
deleteVehicle emitter_attach_dummy;
deleteVehicle emitter_attach_dummy_2;
