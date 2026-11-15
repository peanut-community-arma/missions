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
	displayName = "Rifleman (AKM)";
	uniform[] = 
	{
		"U_C_Poloshirt_blue",
		"U_C_Poloshirt_salmon",
		"U_C_Poloshirt_stripped",
		"U_C_Poor_1",
		"U_C_Poor_2",
		"U_I_C_Soldier_Bandit_4_F",
		"U_I_C_Soldier_Bandit_1_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_5_F",
		"U_I_C_Soldier_Bandit_3_F",
		"U_I_C_Soldier_Para_5_F",
		"U_C_Man_casual_6_F",
		"U_C_Man_casual_4_F",
		"U_C_Man_casual_5_F",
		"U_I_L_Uniform_01_tshirt_sport_F",
		"U_lxWS_Djella_02_Brown",
		"U_lxWS_Djella_02_Grey",
		"U_lxWS_Djella_03_Green",
		"U_lxWS_Djella_02_Sand",
		"U_C_Mechanic_01_F"
	};
	vest[] = 
	{
		LIST_2("V_ChestrigF_blk"),
		LIST_2("V_ChestrigF_oli"),
		"V_TacChestrig_grn_F",
		"CUP_V_OI_TKI_Jacket2_04",
		"JAM_V_Lifchik_V1_khk"
	};
	headgear[] = 
	{
		LIST_10(""),
		"H_Bandanna_gry",
		"H_Bandanna_khk",
		"H_Bandanna_camo",
		"H_Booniehat_khk",
		"H_Booniehat_oli",
		"H_Cap_blk",
		"H_Cap_blu",
		"H_Cap_red",
		"H_Shemag_olive",
		"lxWS_H_cloth_5_A",
		"lxWS_H_turban_03_black",
		"lxWS_H_turban_02_black",
		"lxWS_H_turban_01_black",
		"CUP_H_RUS_SSH68_olive",
		"CUP_H_TKI_Lungee_03",
		"CUP_H_TKI_Pakol_2_06",
		"CUP_H_TKI_SkullCap_02"
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
		"CUP_arifle_AKM_Early",
		"CUP_arifle_AKMS_Early"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_762x39_AK47_M")
	};
};

class rm2 : rm 
{
	displayName = "Rifleman (FAL)";
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL5060"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_20Rnd_762x51_FNFAL_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
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
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
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
		"CUP_arifle_AKM_GL_Early",
		"CUP_arifle_AKMS_GL_Early"
	};
	magazines[] += 
	{
		LIST_1("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_CivilianBackpack_01_Everyday_Black_F"
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
		"B_CivilianBackpack_01_Everyday_Black_F"
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