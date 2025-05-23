// by ALIAS

if (!hasInterface) exitWith {};
if (!al_monsoon_active) exitwith {};

// Emitter is attached to invisible object that is attached to camera

emitter_attach_dummy = "Sign_Sphere200cm_F" createVehiclelocal [0,0,0];
emitter_attach_dummy setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,1,ca)"];
onEachFrame {emitter_attach_dummy setposATL positionCameraToWorld [0,2,20]};
systemChat format ["1: %1", emitter_attach_dummy];

_rain_drops_eff = "#particlesource" createVehicleLocal position player;
_rain_drops_eff setParticleCircle [10, [0, 0, 0]];
_rain_drops_eff setParticleRandom [0.2,[20,20,0],[0,0,0.5],13,0.5,[0,0,0,0.5],1,0];
_rain_drops_eff setParticleParams [["\A3\Data_F_Mark\ParticleEffects\Universal\waterBallonExplode_01",4,0,16,0],"","Billboard",1,0.4,[0,0,30],[0,0,1],0,18,7,0.01,[0.05,0.6],[[0.5,0.5,0.5,1],[0.5,0.5,0.5,1]],[1.5],1,0,"","",emitter_attach_dummy,0,true];
_rain_drops_eff setDropInterval 0.0002;

waitUntil {!al_monsoon_active};
deleteVehicle _rain_drops_eff;
deleteVehicle emitter_attach_dummy;
