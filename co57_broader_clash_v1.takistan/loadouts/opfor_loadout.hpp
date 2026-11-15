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
		"PLA_Combat_Uniform_Arid",
		"PLA_Combat_Uniform_Rolled_Arid"
	};
	vest[] = 
	{
		LIST_2("PLA_Arid_V_CPC_light"),
		LIST_2("PLA_Arid_V_CPC_communications"),
		"PLA_Arid_V_CPC_medical"
	};
	headgear[] = 
	{
		LIST_5("PLA_H_Arid_Helmet01"),
		LIST_5("PLA_H_Arid_Helmet02"),
		LIST_2("PLA_HelmetCCH_cover_Arid_NoHS_F"),
		LIST_2("PLA_HelmetCCH_cover_Arid_F"),
		"PLA_Arid_Patrol_cap",
		"PLA_Boonie_Arid",
		"PLA_Boonie_Arid_hs"
	};
	primaryWeapon[] = 
	{
		"Flex_CUP_PLA_ARifle_QBZ95_RIS_blk"
	};
	scope[] = 
	{
		"CUP_optic_MicroT1_low"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("30Rnd_580x42_Mag_F")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"Flex_CUP_PLA_ARifle_QJB95_RIS_blk"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_6("100Rnd_580x42_Mag_F")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"PLA_Vest_Machinegunner_Arid"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
	};
};

class rm_aa : rm 
{
	displayName = "Rifleman (AA)";
	secondaryWeapon[] = 
	{
		"CUP_launch_9K32Strela"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"PLA_Arid_Backpack"
	};
	secondaryWeapon[] = 
	{
		"Flex_CUP_PLA_Launch_PF98_oli"
	};
	backpackItems[] = 
	{
		LIST_3("Flex_CUP_PLA_Rocket_PF98")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"Flex_CUP_PLA_ARifle_QBZ95_RIS_GL_blk"
	};
	magazines[] += 
	{
		"CUP_1Rnd_HE_GP25_M",
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"PLA_Arid_Backpack"
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
		"PLA_Arid_Backpack"
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
		"H_Tank_black_F"
	};
	primaryWeapon[] = 
	{
		"Flex_CUP_PLA_ARifle_QBZ95_blk"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("30Rnd_580x42_Mag_F")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"H_PilotHelmetHeli_I_E",
		"H_PilotHelmetHeli_I_E_visor_up"
	};
	primaryWeapon[] = 
	{
		"Flex_CUP_PLA_ARifle_QBZ95_blk"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("30Rnd_580x42_Mag_F")
	};
};