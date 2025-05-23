/**
	INIT PLAYER LOCAL
	- Executed locally when player joins a mission (include mission start).
*/
// Tiny light to illuminate player's sights
_light = "#lightpoint" createVehicleLocal [0,0,0];
_light setLightBrightness 0.1;
_light setLightAmbient [0.8, 0.8, 1.0];
_light setLightColor [0.8, 0.8, 1.0];
_light attachTo [player, [0,0.5,0.2], "righthand", true];
