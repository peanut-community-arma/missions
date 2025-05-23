//this call peanut_fnc_objectMapMarker;

if (hasInterface) exitWith {};

params ["_object"];

_pos = getPosATL _object;
_boundary = boundingBoxReal _object;
_rotation = getDir _object;
_boundaryMin = _boundary select 0;
_markerName = format ["m_bnd%1", netId _object];

_marker = createMarker [_markerName, _pos];
_marker setMarkerShape "RECTANGLE";
_marker setMarkerSize [_boundaryMin select 0, _boundaryMin select 1];
_marker setMarkerDir _rotation;