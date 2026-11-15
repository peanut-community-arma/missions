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
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla3_1",
		"U_C_Poor_2",
		"U_C_Poor_1",
		"U_I_C_Soldier_Bandit_4_F",
		"U_I_C_Soldier_Bandit_1_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_5_F",
		"U_I_C_Soldier_Bandit_3_F",
		"U_C_Man_casual_4_F",
		"U_I_L_Uniform_01_tshirt_olive_F",
		"U_lxWS_Djella_02_Grey",
		"Opf_U_Uniform_03_PLR_F",
		"Opf_U_B_P_FieldJacket_03_F",
		"Opf_U_I_I_Uniform_01_tshirt_black_F",
		"Rev_U_B_FRR_Uniform_01_F",
		"Rev_U_B_FRR_Uniform_06_F",
		"CUP_U_I_GUE_Anorak_03",
		"CUP_U_I_GUE_Woodland1"
	};
	vest[] = 
	{
		"V_BandollierB_rgr",
		"V_TacVest_camo",
		"V_ChestrigF_blk",
		"V_ChestrigF_oli",
		"V_TacChestrig_grn_F",
		"CUP_V_I_Guerilla_Jacket"
	};
	headgear[] = 
	{
		"H_Shemag_khk",
		"H_Shemag_olive",
		"H_Shemag_blk",
		"lxWS_H_turban_03_black",
		"lxWS_H_turban_03_green",
		"H_Bandanna_gry",
		"H_Bandanna_khk",
		"H_Booniehat_khk",
		"H_Booniehat_oli",
		"H_Cap_blk",
		"H_Cap_blu",
		"H_Cap_grn",
		"H_PASGT_basic_olive_F"
	};
	goggles[] = 
	{
		LIST_5(""),
		"G_Balaclava_blk",
		"G_Bandanna_blk",
		"G_Bandanna_khk",
		"G_Cigarette",
		"G_Balaclava_blk_lxWS",
		"CUP_RUS_Balaclava_blk",
		"CUP_Beard_Black",
		"CUP_G_Scarf_Face_Blk",
		"G_Bandanna_Syndikat1",
		"G_Bandanna_Syndikat2"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2",
		"CUP_arifle_Colt727"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_8("CUP_30Rnd_556x45_Stanag")
	};
};

class rm2 : rm 
{
	displayName = "Rifleman (M14)";
	primaryWeapon[] = 
	{
		"srifle_DMR_06_hunter_F"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_20Rnd_762x51_DMR")
	};
};

class rm3 : rm 
{
	displayName = "Rifleman (AK)";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKMS_Early"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_762x39_AK47_bakelite_M")
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
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_4("CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner (PKM)";
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
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class mg2 : rm 
{
	displayName = "Machine Gunner (M60)";
	vest[] =
	{
		"V_Simc_56_60_doppel_ligt"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M60E4_norail"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
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
		"CUP_arifle_M16A1E1GL"
	};
	magazines[] += 
	{
		LIST_3("CUP_1Rnd_HE_M203"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
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
		"CUP_HandGrenade_M67",
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
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK_M")
	};
};