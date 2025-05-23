/**
	Adds a map marker for an object scaled to its size.
	
	Arguments:
	0: the object to have the map marker <OBJECT>
	
	Example:
	[bob] call pca_fnc_drawObjectMapMarker;
	
	Returns: 
	NONE
*/

//Comment out the line below when testing in SP/self-hosted MP server
//if (hasInterface) exitWith {};

params ["_object"];

private _thisMarker = _object call BIS_fnc_boundingBoxMarker;
_thisMarker setMarkerColorLocal "ColorGrey";
_thisMarker setMarkerBrush "SolidFull";