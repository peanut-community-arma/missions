/*
nul = [this, "message"] execVM "scripts\this.sqf"
*/

_object = _this select 0;
_in_message = _this select 1;

_object setVariable ["message", _in_message];

// Define an array of explosive types that can trigger the explosion
_allowedExplosives = ["rhsusf_m112_mag", "DemoCharge_Remote_Ammo"]; // Add more class names as needed

_object addEventHandler ["Explosion", {
    params ["_self", "_damage", "_source"];
    
    _sourceType = typeOf _source;

    // Check if the source of the explosion is in the allowed explosives list
    if (!(_sourceType in _allowedExplosives)) exitWith {};

    _message = _self getVariable ["message", ""];
    ["TaskSucceeded", ["", _message, 2]] call BIS_fnc_showNotification;

    // Get the object's position to spawn the explosion
    _position = getPos _self;
    
    // Spawn the smaller explosion
    _explosion = "Bo_Mk82" createVehicle _position;

    // Delete the original object
    deleteVehicle _self;
}];
