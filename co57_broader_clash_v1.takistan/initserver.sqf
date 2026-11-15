/*
	INIT SERVER
	- Executed only on the server upon mission start.
	
	0 setOvercast 1;
0 setRain 1;
0 setFog 0.1; // snow affects visibility at distance
setHumidity 0.9; // don't want to see dust clouds
enableEnvironment [false, true]; // don't want to see snakes and butterflies either

forceWeatherChange;
[
	"a3\data_f\rainnormal_ca.paa",	// rainDropTexture
	1,	// texDropCount
	0.01,	// minRainDensity
	15,	// effectRadius
	0.3,	// windCoef
	0.5,	// dropSpeed
	0.7,	// rndSpeed
	0.5,	// rndDir
	0.01,	// dropWidth
	0.01,	// dropHeight
	[0.2, 0.1, 0.1, 1],	// dropColor
	0.1,	// lumSunFront
	0.1,	// lumSunBack
	5.5,	// refractCoef
	0.3,	// refractSaturation
	true,	// snow
	false	// dropColorStrong
]
call BIS_fnc_setRain;
*/

