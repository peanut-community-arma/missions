### FP Zombies Usage ###

Use the template provided. Edit config.sqf

### Zones
Put down a trigger and enter true as the condition, *SERVER ONLY* and put the following into activation field

[thisTrigger] call fpz_api_fnc_registerZone;

Zombies will spawn within the trigger area once players are near, max fpz_defaultDensity (config) Once a zombie is killed, the amount gets decremented and can not respawn (don't delete them with zeus)

There's more parameters, if needed

[thisTrigger, AMOUNT (0 = fpz_defaultDensity, -1 = infinite. can be higher), ACTIVATE DISTANCE, RADIUS, MAX ACTIVE IN ZONE] call fpz_api_fnc_registerZone;

ACTIVATE DISTANCE = when the object should activate and start trying to spawn

RADIUS = how large of an area. useful when using other objects than a trigger

Is default the max of X/Y size


### How to spawn hordes
Same thing, put down a trigger but this time you can choose the activation type, either when some variable is set or some more complex condition.

In the activation you enter

[thisTrigger, <AMOUNT>] call fpz_api_fnc_spawnHorde;

Horde will spawn randomly throughout the trigger. The first parameter is where to spawn, it can be another trigger or a position. E.g [someOtherTrigger, <AMOUNT>] call fpz_api_fnc_spawnHorde;

Additionally, there's two more parameters:

[thisTrigger, <AMOUNT>, <PLAY SOUND>, <IGNORE MAX ZOMBIES>] call fpz_api_fnc_spawnHorde;


### Transferring Files to New Mission
Copy the config.sqf and init.sqf into the new mission