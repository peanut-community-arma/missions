/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

// SUV fill
{
  private _car = _x;
  {_car addItemCargoGlobal [_x, 10];} forEach ["ACE_fieldDressing","ACE_packingBandage"];
  {_car addItemCargoGlobal [_x, 2];} forEach ["ACE_bloodIV","ACE_bodyBag","ACE_splint","ACE_epinephrine","ACE_morphine","ACRE_BF888S"];
  {_car addMagazineCargoGlobal [_x, 6];} forEach ["rhsgref_5Rnd_762x54_m38","rhsusf_5Rnd_Slug","rhsusf_8Rnd_Slug","CUP_8Rnd_9x18_Makarov_M","rhsgref_30rnd_1143x23_M1911B_2mag_SMG"];
} forEach [car_1,car_2,car_3,car_4,car_5,car_6,car_7];

// Random tripflare noise effect
["ace_tripflareTriggered", { params ['_flare', '_pos'];
  private _random = floor (random 3);
    private _sounds = [
      [("A3\Sounds_F\arsenal\explosives\mines\AT_landmine_explosion_0" + (selectRandom ["1.wss","2.wss"])),objNull,false,_pos,3.16228,1,2000],
      [("\A3\Sounds_F\ambient\thunder\thunder_0" + (selectRandom ["3","2","6"])),objNull,false,_pos,10,1,3000],
      [("\z\ace\addons\medical_feedback\sounds\fracture_" + (selectRandom ["1.wav","2.wav","3.wav","4.wav"])),objNull,false,_pos,10,1,3]
    ];
  playSound3d (_sounds select _random);
  deleteVehicle _flare;
}] call CBA_fnc_addEventHandler;

{_x disableAI "ALL"} forEach (units (group spt1));

{
_x setVariable ["ace_medical_damageThreshold",200,true]; // prevents uncon from damage for a while
[_x, "nopain", 1, 999999, 0, 1.0, 0] call ace_medical_status_fnc_addMedicationAdjustment; // prevent pain uncon, wears off gradually over 999999 seconds, (1.0) is max pain resistance, morphine gives 0.8.
_x setVariable ["ace_medical_tourniquets",[1,1,1,1,1,1],true]; // no bleeding, for ["head", "body", "leftarm", "rightarm", "leftleg", "rightleg"]
} forEach [bossgamer, boss_2];
bossgamer setVariable ["ace_medical_statemachine_AIUnconsciousness",true,true];

private _skl = 'Land_File_F' createVehicle [0,0,0]; _skl attachTo [bossgamer,[-0.06,-0.14,-0.05],'LeftForeArmRoll',true]; _yaw = 170; _pitch = 180; _roll = 0; _skl setVectorDirAndUp [[sin _yaw * cos _pitch, cos _yaw * cos _pitch, sin _pitch], [[sin _roll, -sin _pitch, cos _roll * cos _pitch], -_yaw] call BIS_fnc_rotateVector2D];

hostage_1 setVariable ["ace_medical_statemachine_AIUnconsciousness",true,true];
doc_1 setVariable ["ace_medical_statemachine_AIUnconsciousness",true,true];
doc_1 setVariable ["ace_medical_tourniquets",[0,0,0,1,0,0],true];
[doc_1, [[0.5, "RightArm", 1]], doc_1, "B_65x39_Caseless"] call ace_medical_damage_fnc_woundReceived;