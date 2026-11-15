

params[["_winner",objNull],["_ending",2]];

//_pos set [1,(_pos select 1) + (cos(_angle)*_length)];
//_pos set [0,(_pos select 0) + (sin(_angle)*_length)];
//_pos set [2,(_pos select 2) + 2];

if (hasInterface) then {
    [true] call acre_api_fnc_setSpectator;
	private _unit = _winner;

	private _pos = getPos _unit;
	if (isNull _unit) then {
		_pos = getMarkerPos "quarry_play_area";
		_pos set [2,150];
	};

	while {dialog} do {closeDialog 0;};
    _cam = "camera" camCreate _pos;
	if (!isNull _unit) then {
		_cam camSetTarget _unit;
		_cam camSetRelPos [0, 4, 2.5];
		_cam cameraEffect ["internal", "front"];
	} else {
		_cam cameraEffect ["fixed", "top"];
	};
    _cam camCommit 0;
    cameraEffectEnableHUD true;
    showCinemaBorder false;

    switch _ending do {
        case 1: { // Vice City
            999 cutRsc ["MissionPassedPic", "PLAIN",5];
            1000 cutText [format ["Winner: %1",name _unit],"PLAIN DOWN"];
            playSound  "victoryEndSound";
            _winner switchMove "Acts_EpicSplit";
            sleep 10;


        };
        case 2;
        case 3: {

            if (_ending == 2) then {
                playSound "victoryEndSound2";
                _winner switchMove "Acts_JetsCrewaidF_idle2";
            } else {
                _winner switchMove "Acts_JetsMarshallingEnginesOff_In";
                playSound "victoryEndSound3";
            };
            
            uiSleep 3;
            999 cutRsc ["MissionPassedPic2", "PLAIN",5];
            1000 cutText [format ["Winner: %1",name _unit],"PLAIN DOWN"];

            "colorCorrections" ppEffectAdjust[0.9, 1.1, 0.004, [0,0,0,0.5] , [0,0,0,1],[0,0,0,0]];
            "colorCorrections" ppEffectCommit 0;
            "colorCorrections" ppEffectEnable true;
            _cam camCommitPrepared 2;
            /*if (local player && _ending == 3) then {
                player switchMove "Acts_JetsMarshallingEnginesOff_loop";
            };*/
            waitUntil {camCommitted _cam};
            _cam camSetFov (2); // 45 0.78539
            _cam camCommit 3;
            waitUntil {camCommitted _cam};
            _cam camSetFov (1); // 45 0.78539
            _cam camCommit 3;
            waitUntil {camCommitted _cam};
            _cam camSetFov (2); // 45 0.78539
            _cam camCommit 3;
            waitUntil {camCommitted _cam};
            _cam camSetFov (1); // 45 0.78539
            "colorCorrections" ppEffectAdjust[0.9, 1.1, 0.004, [0,0,0,1] , [0,0,0,1],[0,0,0,0]];
            "colorCorrections" ppEffectCommit 3;
            _cam camCommit 3;
            waitUntil {camCommitted _cam};
            sleep 5;
        };
        default {
            playSound "victoryEndSound4";
            _winner switchMove "Acts_JetsPilotWalking";
            uiSleep 1;
            999 cutRsc ["MissionPassedPic2", "PLAIN",5];
            1000 cutText [format ["Winner: %1",name _unit],"PLAIN DOWN"];

            "colorCorrections" ppEffectAdjust[0.9, 1.1, 0.004, [0,0,0,0.5] , [0,0,0,1],[0,0,0,0]];
            "colorCorrections" ppEffectCommit 0;
            "colorCorrections" ppEffectEnable true;
            _cam camCommitPrepared 1.5;
            waitUntil {camCommitted _cam};
            _cam camSetFov (2); // 45 0.78539
            _cam camCommit 1.5;
            waitUntil {camCommitted _cam};
            _cam camSetFov (1); // 45 0.78539
            "colorCorrections" ppEffectAdjust[0.9, 1.1, 0.004, [0,0,0,1] , [0,0,0,1],[0,0,0,0]];
            "colorCorrections" ppEffectCommit 1.9;
            _cam camCommit 2;
            waitUntil {camCommitted _cam};
            sleep 0.5;
        };
    };
    if (player == _unit) then {
        endMission "end1";
    } else {
        endMission "end2";
    };
    /*
    
    */

    
} else {
    sleep 20;
    endMission "end1";
};

