/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/

/*/ Rayle's sight lighting idea for night missions
mission_fnc_nightLite = compileFinal { params ['_player'];
	private _light = '#lightpoint' createVehicleLocal [0,0,0];
	_light setLightBrightness 0.1; 
	_light setLightAmbient [0.8, 0.8, 1.0]; 
	_light setLightColor [0.8, 0.8, 1.0]; 
	_light attachTo [player, [0,0.5,0.2], 'righthand', true];
	while {sleep 5; true} do {
		if (!alive _player && {!isNil 'tmf_localrespawnedunit' && {player isEqualTo tmf_localrespawnedunit}}) exitWith {deleteVehicle _light; player spawn mission_fnc_nightLite;};
	};
};
0 spawn { waitUntil {sleep 1; !(isNull player)}; player spawn mission_fnc_nightLite; };//*/

diwako_dui_custom_code = { params ["","_compassCtrl","_dirCtrl"];
private _player = player;
private _nearest = objNull;
private _dist = 10;
private _targets = ["Land_Matches_F"];
if ((_targets select 0) isKindOf "MineBase") then {
      _nearest = (nearestMines [_player, _targets, _dist] select 0);
    } else { _nearest = (nearestObjects [_player, _targets, _dist] select 0) };
    if (isNil "_nearest") exitWith {setCompassDeclination rad 0; };
private _targetDir = (_player getDirVisual _nearest);
    setCompassDeclination rad (360 - _targetDir);
};

scaryplace = [{
    _this # 0 params ["_maxDist","_center"];
	private _handle = (_this # 1);
	if (!alive _center) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
	private _lastPos = (missionNamespace getVariable [("lastPos_" + (str _handle)), nil]);
	if (!isNil "_lastPos" && {(player distance2D _center) < _maxDist}) exitWith { 
	    (vehicle player) setPosATL _lastPos; 
	};
	private _dist = (player distance2D _center);
	if ( _dist < (_maxDist + 2) && {_dist > (_maxDist + 0.5)}) then { 
	    private _pos = getPosATL (vehicle player); 
	    missionNamespace setVariable [("lastPos_" + (str _handle)), _pos]; 
	};
},0,[3,scarecrow]] call CBA_fnc_addPerFrameHandler;

coverTrig setVariable ["objectArea",triggerArea coverTrig];
coverTrig_1 setVariable ["objectArea",triggerArea coverTrig_1];

[coverTrig,[],true] call pca_fnc_coverMapLocal;