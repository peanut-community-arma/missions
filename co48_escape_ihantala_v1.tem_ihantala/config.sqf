// This file can be used to change any configuration for FPZ
// The below settings are the default ones
// Do note that changing spawn distance might require changes to zombie zones, with a custom activation distance

fpz_maxAliveZombies = 600; // the maximum allowed amount of alive zombies
fpz_spawnDistanceMin = 100; // Zombies can not spawn closer than this
fpz_spawnDistanceMax = 300; // Zombies can not spawn further away than this
fpz_despawnDistance = fpz_spawnDistanceMax + 150; // Range when zombies are deleted
fpz_defaultDensity = 50; // the default amount of zombies for any registered zone

fpz_maxChaseDistance = 250; // chase distance before giving up. horde ignores this. never lower than max aggro range
fpz_aggroRangeInterval = [30, 80]; // min, max. stance will further affect this aggro range (lower = less)
fpz_vehicleAggroMultiplier = 2; // Vehicles with their engine on will multiply above random aggro
fpz_zombieDamageMultiplier = 1; // zombie damage multiplier. 0 = cannot be killed. 0.5 makes them almost impossible to kill with bodyshots from a pistol
fpz_showLootSparkle = true; // show sparkle on zombie corpses that have weapons, magazines, items
fpz_rvgSounds = true; // use ravage sounds. set to false to use celery's

// Ambient zombie types to spawn for registrered zones. [type, percentage]
fpz_zombieTypes = [
	"zombie_walker", 0.5,
	"zombie_bolter", 0.25,
	"zombie_runner", 0.25
];

// This can be used to give zombies random items, uniforms etc
fpz_onZombieInit = {
	params ["_zombie", "_pos"];

	_zombie forceAddUniform "TC_U_Mirror_1";
};
