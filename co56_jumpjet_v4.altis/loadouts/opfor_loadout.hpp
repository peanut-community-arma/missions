class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	// Leave empty to not change faces and Insignias
	faces[] = {};
	insignias[] = {};
	// All Randomized. Add Primary Weapon and attachments
	// Leave Empty to remove all. {"Default"} for using original items the character start with
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	// SecondaryAttachments[] arrays are NOT randomized
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there's any
	magazines[] = {};
	items[] = 
	{
		LIST_2("ACE_fieldDressing"),
		"ACE_packingBandage",
		"ACE_quikclot",
		"ACE_tourniquet",
		"ACE_morphine",
		"ACE_splint"
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"U_Simc_regenkot_og107"
	};
	vest[] = 
	{
		LIST_5("V_Simc_Barbelt"),
		LIST_5("V_Simc_Barbelt_M56")
	};
	headgear[] = 
	{
		LIST_3("JAM_H_HelmetM1_high_oli"),
		LIST_2("JAM_H_HelmetM1_high_open_oli"),
		LIST_2("JAM_H_HelmetM1_high_rear_oli"),
		"H_Simc_Hat_Patrol_od7",
		"H_Simc_Hat_Patrol_od7_swdg"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL5061"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_20Rnd_762x51_FNFAL_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_FNMAG"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_2("CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"V_Simc_Barbelt"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_m1919a4_browning"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_2("sp_fwa_100Rnd_3006_mag_ball")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M72A6"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_simc_packboard_roket_2"
	};
	vest[] = 
	{
		"JAM_V_Lifchik_V1_khk"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m67"
	};
	backpackItems[] = 
	{
		LIST_3("sp_fwa_m67_1rnd_heat")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL5061"
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_simc_pack_med_m3"
	};
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_bloodIV")
		//LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"B_simc_US_ALICE_asspack"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("CUP_MineE_M")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"H_HelmetCrew_I"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_M3A1"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_45ACP_M3A1_M")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_SPH4_green",
		"CUP_H_SPH4_green_visor"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_M3A1"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_45ACP_M3A1_M")
	};
};