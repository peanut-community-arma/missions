/*
	INIT SERVER
	- Executed only on the server upon mission start.
*/

{
    _x switchLight "OFF";
} forEach (1 allObjects 0);

[100,3600,true,true,true,true,true,10] execVM "AL_monsoon\al_monsoon.sqf";

// direction_monsoon - integer, from 0 to 360, direction towards the wind blows expressed in compass degrees
// duration_monsoon  - integer, life time of the monsoon expressed in seconds

// gusts             - boolean, occasionally play extra sound and camera shake
// debris            - boolean, branches and stuff flying around
// fog_rain          - boolean, fog around players will be generated out of particles
// rain_drops        - boolean, rain drop impact particles
// thunder           - boolean, thunders and lights otherwise only vanilla thunder will be present... if ever
// delay_thunder     - number, minimum delay between thunder/lightning
