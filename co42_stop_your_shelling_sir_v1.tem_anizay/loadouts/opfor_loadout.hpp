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
		"U_lxWS_SFIA_soldier_2_O",
		"U_lxWS_SFIA_soldier_1_O",
		"U_SFIA_deserter_lxWS",
		"U_lxWS_SFIA_deserter",
		"U_lxWS_SFIA_pilot_O",
		"U_lxWS_SFIA_Tanker_O"
	};
	vest[] = 
	{
		LIST_2("V_ChestrigF_blk"),
		LIST_2("V_ChestrigF_oli"),
		"V_TacChestrig_grn_F",
		"JAM_V_Lifchik_V1_khk"
	};
	headgear[] = 
	{
		LIST_10("CUP_H_RUS_SSH68_olive"),
		LIST_3(""),
		"H_Bandanna_gry",
		"H_Bandanna_khk",
		"H_Bandanna_camo",
		"H_Booniehat_khk",
		"H_Booniehat_oli",
		"H_Cap_blk",
		"H_Cap_blu",
		"H_Cap_red",
		"H_Shemag_olive",
		"lxWS_H_turban_03_black",
		"lxWS_H_turban_02_black",
		"CUP_H_TKI_Lungee_03"
	};
	goggles[] = 
	{
		LIST_10(""),
		"G_Bandanna_blk",
		"G_Shades_Blue",
		"G_Spectacles_Tinted",
		"G_Cigarette",
		"G_Shemag_red",
		"G_Shemag_oli",
		"CUP_Beard_Black"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL5060"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_20Rnd_762x51_FNFAL_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_minimipara"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_200Rnd_TE4_Green_Tracer_556x45_M249")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"V_Simc_56_60_doppel_ligt"
	};
	primaryWeapon[] = 
	{
		"LMG_S77_lxWS"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("100Rnd_762x51_S77_Green_Tracer_lxWS")
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
		"hendrix_rpg_2"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
		""
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
	primaryWeapon[] = 
	{
		"arifle_VelkoR5_GL_lxWS"
	};
	magazines[] += 
	{
		LIST_1("CUP_1Rnd_HE_M203"),
		LIST_2("CUP_1Rnd_Smoke_M203"),
		LIST_5("35Rnd_556x45_Velko_reload_tracer_green_lxWS")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"CUP_B_CivPack_WDL"
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
		"CUP_B_CivPack_WDL"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter"
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"CUP_H_SLA_TankerHelmet"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_30Rnd_545x39_AK_M")
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
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_30Rnd_545x39_AK_M")
	};
};