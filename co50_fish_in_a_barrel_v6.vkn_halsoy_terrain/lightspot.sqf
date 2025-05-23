if (!hasInterface) exitWith {};

_objectSource = _this select 0;
_color = _this select 1;
_attenuation = _this select 2;

_lightpoint = "#lightpoint" createVehicle getPosATL _objectSource;
_lightpoint setLightDayLight true;
_lightpoint setLightBrightness 1.5;
_lightpoint setLightColor _color;
_lightpoint setLightAmbient _color;
_lightpoint setLightAttenuation _attenuation;