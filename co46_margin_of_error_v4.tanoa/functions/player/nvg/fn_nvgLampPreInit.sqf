//Original Author: Diwako

[
	["Mission", "NVG Head Lamp"], 
	"nvglamp_lightButton", 
	"Toggle Goggles Illuminator", 
	{
		[call CBA_fnc_currentUnit] call pca_fnc_nvgLamp;
		true;
	}, 
	{false}, 
	[0x31, [true, false, true]], 
	false
] call CBA_fnc_addKeybind;

["nvglamp_setLight", 
	{
		params [["_light", objNull]];
		if (isNull _light) exitWith {};
		_light setLightColor [70, 40, 60];
		_light setLightAmbient [70, 40, 60];
		_light setLightIntensity 0.8;
		_light setLightConePars [85, 25, 4];
		_light setLightUseFlare true;
		_light setLightDayLight false;
		_light setLightFlareSize 0.1;
		_light setLightFlareMaxDistance 10;
		_light setLightAttenuation [0, 0, 0, 1, 8, 22];
		_light setLightIR true;
	}
] call CBA_fnc_addEventHandler;
