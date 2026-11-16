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
		"JAM_U_Obr88_cdf",
		"JAM_U_Obr88_rolled_cdf"
	};
	vest[] = 
	{
		LIST_2("hendrix_razgruzka_a_4"),
		LIST_2("hendrix_razgruzka_a_5"),
		"hendrix_6b5_v2_6_olive",
		"hendrix_6b5_v2_7_olive"
	};
	headgear[] = 
	{
		LIST_12("JAM_H_HelmetPASGT_Cover_cdf"),
		LIST_3("JAM_H_Obr88_Cap_cdf"),
		LIST_2("JAM_H_HelmetSSh68_Cover_cdf"),
		"H_Watchcap_camo",
		"H_Bandanna_khk",
		"H_Booniehat_oli",
		"H_Cap_oli"
	};
	backpack[] = 
	{
		LIST_15(""),
		"B_TacticalPack_rgr",
		"CUP_B_CivPack_WDL"
	};
	goggles[] = 
	{
		LIST_15(""),
		"G_Aviator",
		"G_Balaclava_blk",
		"G_Bandanna_blk",
		"G_Shades_Blue",
		"G_Cigarette",
		"CUP_G_RUS_Ratnik_6M2_Summer",
		"CUP_G_RUS_Ratnik_6M21_Summer",
		"CUP_G_TK_RoundGlasses_blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74",
		"CUP_arifle_AKS74"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_30Rnd_545x39_AK_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		LIST_3("hendrix_razgruzka_a_7"),
		"hendrix_6b5_v2_9_olive"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_9("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		LIST_2("V_Simc_56_60_doppel_ligt"),
		"hendrix_6b5_v2_8_olive"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
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
	vest[] =
	{
		LIST_2("hendrix_razgruzka_a_3"),
		"hendrix_6b5_v2_3_olive"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_GL"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
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
	vest[] =
	{
		"JAM_V_Sov_Beltgear_crew"
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
		LIST_5("CUP_30Rnd_545x39_AK_M")
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
	vest[] =
	{
		"V_Pocketed_coyote_F"
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
		LIST_5("CUP_30Rnd_545x39_AK_M")
	};
};