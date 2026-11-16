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
		"U_C_Poloshirt_blue",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_3",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla3_1",
		"U_C_Poor_2",
		"U_B_ION_Uniform_01_poloshirt_blue_F",
		"U_B_ION_Uniform_01_tshirt_black_F",
		"U_I_C_Soldier_Bandit_4_F",
		"U_I_C_Soldier_Bandit_1_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_5_F",
		"U_I_C_Soldier_Bandit_3_F",
		"U_I_C_Soldier_Para_2_F",
		"U_I_C_Soldier_Para_3_F",
		"U_I_C_Soldier_Para_5_F",
		"U_I_C_Soldier_Para_4_F",
		"U_I_C_Soldier_Para_1_F",
		"U_C_Man_casual_6_F",
		"U_C_Man_casual_4_F",
		"U_C_Man_casual_5_F",
		"Atlas_U_C_CommonerJacket_01_marroon_F",
		"U_C_Uniform_Farmer_01_F",
		"U_C_E_LooterJacket_01_F",
		"U_I_L_Uniform_01_tshirt_black_F",
		"U_I_L_Uniform_01_tshirt_skull_F",
		"U_I_L_Uniform_01_tshirt_sport_F",
		"Opf_U_Uniform_03_PLR_F",
		"U_C_Mechanic_01_F",
		"Rev_U_B_FRR_Uniform_04_F",
		"Rev_U_B_FRR_Uniform_06_F"
	};
	vest[] = 
	{
		LIST_5("V_ChestrigF_oli"),
		LIST_5("V_TacChestrig_grn_F"),
		LIST_5("pca_vest_invisible"),
		"CUP_V_I_Guerilla_Jacket"
	};
	headgear[] = 
	{
		LIST_20(""),
		"H_Bandanna_gry",
		"H_Bandanna_blu",
		"H_Bandanna_cbr",
		"H_Bandanna_khk",
		"H_Bandanna_sgg",
		"H_Bandanna_sand",
		"H_Bandanna_camo",
		"H_Beret_blk",
		"H_Booniehat_khk",
		"H_Booniehat_oli",
		"H_Booniehat_tan",
		"H_Cap_blk",
		"H_Cap_blu",
		"H_Cap_grn",
		"H_Cap_oli",
		"H_Cap_red",
		"H_Cap_tan",
		"H_Shemag_khk",
		"H_Shemag_olive",
		"H_ShemagOpen_tan",
		"lxWS_H_ssh40_green"
	};
	goggles[] = 
	{
		LIST_20(""),
		"G_Aviator",
		"G_Balaclava_blk",
		"G_Bandanna_aviator",
		"G_Bandanna_beast",
		"G_Bandanna_blk",
		"G_Bandanna_oli",
		"G_Bandanna_shades",
		"G_Shades_Black",
		"G_Spectacles",
		"G_Bandanna_Syndikat1",
		"G_Bandanna_Skull2",
		"G_Bandanna_Syndikat2",
		"G_Cigarette",
		"G_Shemag_khk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_Early",
		"CUP_arifle_AKS74U",
		"CUP_arifle_AKS74_Early"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("CUP_30Rnd_545x39_AK_M")
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
		LIST_5("CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	backpack[] = 
	{
		"B_CivilianBackpack_01_Everyday_Black_F"
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
		"CUP_B_RPGPack_Khaki"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] = 
	{
		"CUP_PG7VL_M",
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_smg_Mac10"
	};
	magazines[] += 
	{
		LIST_5("CUP_30Rnd_45ACP_MAC10_M")
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
		"ACE_wirecutter",
		LIST_2("IEDUrbanSmall_Remote_Mag")
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
		"CUP_smg_Mac10"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_45ACP_MAC10_M")
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
		"CUP_smg_Mac10"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_45ACP_MAC10_M")
	};
};