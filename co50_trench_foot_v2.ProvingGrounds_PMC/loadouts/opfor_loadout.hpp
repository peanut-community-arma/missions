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
		"CUP_U_O_RUS_M88_MSV",
		"CUP_U_O_RUS_M88_MSV_rolled_up"
	};
	vest[] = 
	{
		"V_Simc_garlan"
	};
	headgear[] = 
	{
		LIST_3("JAM_H_HelmetSSh40_grn"),
		LIST_2("JAM_H_Pilotka_v1_khk"),
		"JAM_H_Ushanka_sov"
	};
	primaryWeapon[] = 
	{
		"CUP_srifle_Mosin_Nagant"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_5Rnd_762x54_Mosin_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"sp_fwa_smg_mat49"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_9("sp_fwa_32Rnd_9x19_MAT49_Ball")
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
		"CUP_lmg_UK59"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_50Rnd_UK59_762x54R_Tracer")
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

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"hendrix_rpg_1"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] = 
	{
		LIST_3("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	headgear[] = 
	{
		"CUP_H_SLA_OfficerCap"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_FlareGun"
	};
	magazines[] += 
	{
		LIST_5("CUP_IllumFlareRed_265_M"),
		LIST_2("CUP_IllumFlareWhite_265_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"JAM_B_Sidor_khk"
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
		"JAM_B_Sidor_khk"
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
		"CUP_H_SLA_TankerHelmet"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_8Rnd_9x18_Makarov_M")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_8Rnd_9x18_Makarov_M")
	};
};