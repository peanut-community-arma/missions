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
		"U_BG_Guerrilla_6_1",
		"U_I_G_resistanceLeader_F",
		"U_BG_Guerilla2_2",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_3",
		"U_BG_Guerilla3_1",
		"U_C_HunterBody_grn",
		"U_Marshal",
		"U_C_Poor_1",
		"U_C_Poor_2",
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_B_ION_Uniform_01_poloshirt_blue_F",
		"U_I_C_Soldier_Bandit_4_F",
		"U_I_C_Soldier_Bandit_1_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_5_F",
		"U_I_C_Soldier_Bandit_3_F",
		"U_C_Man_casual_3_F",
		"U_I_C_Soldier_Para_2_F",
		"U_I_C_Soldier_Para_3_F",
		"U_I_C_Soldier_Para_5_F",
		"U_I_C_Soldier_Para_4_F",
		"U_I_C_Soldier_Para_1_F",
		"U_C_Man_casual_6_F",
		"U_C_Man_casual_4_F",
		"U_C_Man_casual_5_F",
		"Atlas_U_C_Uniform_01_tshirt_white_F",
		"U_C_Uniform_Farmer_01_F",
		"U_I_L_Uniform_01_tshirt_olive_F",
		"U_I_L_Uniform_01_tshirt_sport_F",
		"Rev_U_B_FRR_Uniform_02_F",
		"Rev_U_B_FRR_Uniform_04_F"
	};
	vest[] = 
	{
		"V_ChestrigF_rgr",
		"V_TacChestrig_grn_F",
		"CUP_V_B_JPC_OD_Light",
		"CUP_V_CPC_light_rngr",
		"JAM_V_Chicom_Type56_grn",
		"V_TacVest_oli"
	};
	headgear[] = 
	{
		LIST_4(""),
		LIST_4("H_PASGT_basic_olive_F"),
		"H_Bandanna_gry",
		"H_Bandanna_khk",
		"H_Bandanna_camo",
		"H_Booniehat_khk",
		"H_Booniehat_oli",
		"H_Cap_blu",
		"H_Cap_grn",
		"H_Cap_red",
		"H_Shemag_olive",
		"Aegis_H_Milcap_nohs_grn_F",
		"lxWS_H_bmask_base",
		"CUP_H_RUS_SSH68_olive"
	};
	goggles[] = 
	{
		LIST_5(""),
		"G_Balaclava_blk",
		"G_Bandanna_blk",
		"G_Bandanna_Syndikat1",
		"G_Bandanna_Skull2",
		"G_Bandanna_Syndikat2",
		"G_Cigarette"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM"
	};
	attachment[] = 
	{
		LIST_3(""),
		"pca_flashlight_led"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("CUP_30Rnd_762x39_AK47_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
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
		"CUP_lmg_PKMN"
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
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_IlumFlareRed_GP25_M")
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