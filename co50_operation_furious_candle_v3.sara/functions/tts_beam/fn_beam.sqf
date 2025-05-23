/*
    Author: TheTimidShade

    Description:
        Creates laser beam on the given position. Should be executed on all connected clients and server using remoteExec.

    Parameters:
        0: OBJECT - The object the beam is created above.
        1: ARRAY (OPTIONAL) - Colour of the beam in format [r, g, b]. Default value is [1, 0.6, 0.2]
        2: ARRAY (OPTIONAL) - Colour of dust created on impact in format [r,g,b]. Default value is [0.3, 0.27, 0.15]
        3: BOOL (OPTIONAL) - False to disable damage and destruction of beam. Default value is true
        4: NUMBER (OPTIONAL) - Distance in metres from beam laser impact point to deal lethal damage. Default value is 200
        5: NUMBER (OPTIONAL) - Maximum distance from the beam laser impact point that units will take damage. Default value is 400
        
    Returns:
        NONE
*/

params [
    ["_target", objNull, [objNull]],
	["_start", objNull, [objNull]],
    ["_beamColour", [1,0.6,0.2], [[]]],
    ["_debrisColour", [0.3,0.27,0.15], [[]]]
];

// input validation
if (isNull _target) exitWith {systemChat "Invalid position given for beam target! Exited";};
if (isNull _start) exitWith {systemChat "Invalid position given for beam start! Exited";};
if (count _beamColour < 3) then {_beamColour = [1,0.6,0.2]; systemChat "Invalid colour given for beam, default used instead";};
if (count _debrisColour < 3) then {_debrisColour = [0.3,0.27,0.15]; systemChat "Invalid colour given for beam debris, default used instead";};

private _targetPos = getPosATL _target;
private _startPos = getPosATL _start;

// create emitters
private _impactEmitter = "Land_HelipadEmpty_F" createVehicleLocal _startPos;
private _beamEmitter = "Land_Battery_F" createVehicleLocal _targetPos;
_beamEmitter setPosATL _startPos;
_impactEmitter setPosATL _startPos ;

// accelerate beam emitter towards target
_vel =(_beamEmitter worldToModel _targetPos);
_vel set [2,200];
_vel = vectorNormalized _vel;
_vel = _vel vectorMultiply 600;
_beamEmitter setVelocity _vel;

// create bright flash when beam is initially fired
_flash = "#lightpoint" createVehicleLocal (getpos _beamEmitter);
_flash setLightBrightness 300;
_flash setLightAmbient _beamColour;
_flash setLightColor _beamColour;
_flash lightAttachObject [_beamEmitter, [0,0,200]];
_flash spawn {sleep 0.1; deleteVehicle _this;};

// create beam particles
[_beamEmitter, _beamColour, _targetPos] spawn tts_beam_fnc_rayParticles;

// wait until the beam is almost halfway and play laser sound
sleep 0.1;
_beamEmitter say3D ["tts_laser", 20000, 1, false];

// angle between vector [0,0,-1] and velocity [x,y,z] == acos(-z)

// wait until touching ground/near target
waitUntil {sleep 0.01; _beamEmitter distance _targetPos < 5 || (getPosATL _beamEmitter)#2 < 5};
//_impactEmitter say3D ["tts_laser_impact", 20000, 1, false];
//_impactEmitter setPosATL (getPosATL _beamEmitter);
deleteVehicle _beamEmitter;

// explosion particles
//[_impactEmitter, _debrisColour] spawn tts_beam_fnc_explosionParticles;

// impact post processing effects
//[_start] spawn tts_beam_fnc_postProcessEffects;

sleep 30;

deleteVehicle _impactEmitter;