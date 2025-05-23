_onoff = [_this, 0, 0.95, [0]] call BIS_fnc_param;
_distance = [_this, 1, 1000, [0]] call BIS_fnc_param;
_marker = [_this, 2, getMarkerPos "lightsmarker", ["",[],objNull]] call BIS_fnc_param;

_types = ["Lamps_Base_F", "PowerLines_base_F","Land_LampDecor_F","Land_LampHalogen_F","Land_LampHarbour_F","Land_LampShabby_F","Land_NavigLight","Land_runway_edgelight","Land_PowerPoleWooden_L_F"];

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
   _lamps = _marker nearObjects [_types select _i, _distance];
   sleep 0.1;
   {_x setDamage _onoff} forEach _lamps;
};