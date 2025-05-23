/*
	Enemy Spawning System (ESS) - by Enigx
	
	ESS_Enemy_patrol_V2.sqf
		
*/

_vehicle= _this select 0;
_carpres= _this select 1;
_unitArray = _this select 2;
_MarkerMoveArray = _this select 3;
_sideFactionUn = _this select 4;

private ["_grpAI","_EnGrp"];

_grpAI = createGroup [_sideFactionUn, true];
_unitlArrayCount = (count _unitArray) - 1;
_markerArrayCount = (count _MarkerMoveArray) - 1;

if (_carpres == 1) then
{
	_carE = createVehicle [_vehicle, _MarkerMoveArray select 0];	
	
	if (_markerArrayCount > 0) then
	{
	_objPos = createVehicle ["Land_PenBlack_F", _MarkerMoveArray select 0];
	_objDir = createVehicle ["Land_PenBlack_F", _MarkerMoveArray select 1];
	_gradiDir = _objPos getDir _objDir;
	_carE setDir _gradiDir;
	deleteVehicle _objPos;
	deleteVehicle _objDir;
	};
		
	_dvr = _grpAI createUnit [_unitArray select 0, _MarkerMoveArray select 0, [], 0, "FORM"];
	[_dvr] join _grpAI;
	_dvr moveincargo _carE;
	_dvr assignAsDriver _carE;
	
	if (_unitlArrayCount > 0) then
	{
		if ((!isNull gunner _carE) || (_carE emptyPositions "gunner">0)) then {
			_gnr = _grpAI createUnit [_unitArray select 1, _MarkerMoveArray select 0, [], 0, "FORM"];
			[_gnr] join _grpAI;			
			_gnr moveInGunner _carE;
			} else {
			_ce = _grpAI createUnit [_unitArray select 1, _MarkerMoveArray select 0, [], 0, "FORM"];
			[_ce] join _grpAI;
			_ce moveincargo _carE;
			};
	};
	for "_i" from 2 to _unitlArrayCount do
	{
		_ce = _grpAI createUnit [_unitArray select _i, _MarkerMoveArray select 0, [], 0, "FORM"];
		[_ce] join _grpAI;
		_ce moveincargo _carE;
	};
	_EnGrp = group _carE;
	_carE limitSpeed 30;	
}
else
{
	for "_i" from 0 to _unitlArrayCount do
	{
		_ce = _grpAI createUnit [_unitArray select _i, _MarkerMoveArray select 0, [], 0, "FORM"];
		[_ce] join _grpAI;
	};
	_EnGrp = _grpAI;	
};	

for "_k" from 1 to _markerArrayCount do
{
	_wp = _EnGrp addWaypoint [_MarkerMoveArray select _k, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointCombatMode "YELLOW";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointFormation "FILE";
};

// Move to spawn point
_wp = _EnGrp addWaypoint [_MarkerMoveArray select 0, 0];
_wp setWaypointType "MOVE";

// add final waypoint for cycle movement
_wp = _EnGrp addWaypoint [[((_MarkerMoveArray # 0) # 0)+2,((_MarkerMoveArray # 0) # 1)+2,0], 0];
_wp setWaypointType "CYCLE";
