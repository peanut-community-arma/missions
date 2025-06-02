// This file can be used to change any configuration for FPZ
// The below settings are the default ones
// Do note that changing spawn distance might require changes to zombie zones, with a custom activation distance

fpz_maxAliveZombies = 120; // the maximum allowed amount of alive zombies
fpz_spawnDistanceMin = 100; // Zombies can not spawn closer than this
fpz_spawnDistanceMax = 300; // Zombies can not spawn further away than this
fpz_despawnDistance = fpz_spawnDistanceMax + 200; // Range when zombies are deleted
fpz_defaultDensity = 40; // the default amount of zombies for any registered zone

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

    private _uniforms = selectRandom 
    [
        "U_C_Poloshirt_blue",
        "U_C_Poloshirt_burgundy",
        "U_C_Poloshirt_redwhite",
        "U_C_Poloshirt_salmon",
		"U_C_Poloshirt_stripped",
		"U_C_Poloshirt_tricolour",
		"U_C_Journalist",
		"U_OrestesBody",
		"U_C_Man_casual_2_F",
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"U_C_man_sport_1_F",
		"U_C_man_sport_3_F",
		"U_C_man_sport_2_F",
		"U_C_Man_casual_6_F",
		"U_C_Man_casual_4_F",
		"U_C_Man_casual_5_F",
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_C_Man_casual_9_F"
    ];
     
    _zombie forceAddUniform _uniforms;
};
