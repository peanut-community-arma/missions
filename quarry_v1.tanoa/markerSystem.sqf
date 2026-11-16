// Based on the F3 - Unit Markers (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// Prevents the script executing until the player has synchronised correctly:

if (!isDedicated && (player != player)) then
{
    waitUntil {player == player};
    waitUntil {time > 1};
};

params["_untName"];


private _mkrName = format ["mkr_%1",_untName];
/*private _unt = missionNamespace getVariable [_untName, objNull];

// ====================================================================================

// WAIT FOR UNIT TO EXIST IN-MISSION
// We wait for the unit to exist before creating the marker.

if (isNull _unt) then
{
	waitUntil { sleep 3; _unt = missionNamespace getVariable [_untName, objNull]; !(isNull _unt) };
};*/


// ====================================================================================

// EXIT FOR DEAD UNITS (PART I)
// If the unit does not exist, this script exits.

if (!alive _untName ) exitWith {};


// ====================================================================================
// CREATE MARKER

private _mkr = createMarkerLocal [_mkrName,[(getPos _untName select 0),(getPos _untName select 1)]];
_mkr setMarkerShapeLocal "ICON";
_mkrName setMarkerTypeLocal "mil_dot";
_mkrName setMarkerColorLocal "ColorBlue";
_mkrName setMarkerSizeLocal [0.5, 0.5];
_mkrName setMarkerTextLocal name _untName;

// ====================================================================================

// UPDATE MARKER POSITION
// As long as certain conditions are met (the unit is alive) the marker 
// position is updated periodically. This only happens locally - so as not to burden 
// the server.
private _canSeeAll = false;

if ((faction player) == "BLU_F") then {
	_canSeeAll = true;
};



if (_untName == player) then {
	_mkrName setMarkerColorLocal "ColorGreen";
	_mkrName setMarkerTextLocal "Me";
} else {
	if (side _untName == west) then {
		_mkrName setMarkerColorLocal "ColorBlue";
	} else {
		_mkrName setMarkerColorLocal "ColorRed";
	};
};

while {true} do
{
	if (!alive _untName) exitWith 
	{
		if (side player == west) then {
			_mkrName setMarkerColorLocal "ColorBlack"; // He dead.
			_mkrName setMarkerAlphaLocal 0.5;
		} else {
			deleteMarker _mkrName;
		};
	};
	// Check if dead.
	if (!_canSeeAll) then {
		// isSpectator check.
		if (!isNil "f_cam_VirtualCreated") then {
			_canSeeAll = true;
		};
	};
	if (!isNil "Target") then {
		if (_untName == Target) then { // Quary
			_mkrName setMarkerTextLocal format["%1 (Your Quarry)", name _untName];
			_mkrName setMarkerAlphaLocal 1;
		} else {
			if (_untName == player) then { // Me
				//_mkrName setMarkerColorLocal "ColorGreen";
				//_mkrName setMarkerTextLocal name _untName;
				//_mkrName setMarkerTextLocal "You";
			} else { // Player
				if (_canSeeAll) then { // If I am a cop
					_mkrName setMarkerTextLocal name _untName;
					private _theirTarget = (_untName getVariable["qry_target",objNull]);
					if (isNull _theirTarget) then {
						_mkrName setMarkerTextLocal format ["%1", name _untName];
					} else {
						_mkrName setMarkerTextLocal format ["%1 (their quarrel is %2)", name _untName, name _theirTarget];
					};
					
					//_mkrName setMarkerColorLocal "ColorRed";
					_mkrName setMarkerAlphaLocal 1;
				} else { 
					_mkrName setMarkerAlphaLocal 0;
				};
			};
		};
	};
	(getPos _untName) params ["_x", "_y"];
	_mkrName setMarkerPosLocal [_x, _y];
	
	if (time == 0) then {
		uiSleep 1;
	} else {
		sleep 6;
	};
};


