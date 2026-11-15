class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"CUP_I_B_PMC_Unit_20",
		"CUP_I_B_PMC_Unit_22",
		"CUP_I_B_PMC_Unit_21",
		"CUP_I_B_PMC_Unit_19",
		"CUP_I_B_PMC_Unit_17",
		"CUP_I_B_PMC_Unit_13",
		"CUP_I_B_PMC_Unit_14",
		"CUP_I_B_PMC_Unit_16",
		"CUP_I_B_PMC_Unit_15",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_2",
		"CUP_I_B_PMC_Unit_1",
		"CUP_I_B_PMC_Unit_4",
		"CUP_I_B_PMC_Unit_7",
		"CUP_I_B_PMC_Unit_6",
		"CUP_I_B_PMC_Unit_5",
		"CUP_I_B_PMC_Unit_8",
		"CUP_I_B_PMC_Unit_11",
		"CUP_I_B_PMC_Unit_10",
		"CUP_I_B_PMC_Unit_9",
		"CUP_I_B_PMC_Unit_12",
		"CUP_I_B_PMC_Unit_42",
		"CUP_I_B_PMC_Unit_41",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_39",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_38",
		"CUP_I_B_PMC_Unit_37",
		"CUP_I_B_PMC_Unit_28",
		"CUP_I_B_PMC_Unit_24",
		"CUP_I_B_PMC_Unit_23",
		"CUP_I_B_PMC_Unit_35",
		"CUP_I_B_PMC_Unit_31",
		"CUP_I_B_PMC_Unit_32",
		"U_BG_Guerrilla_6_1",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_2",
		"U_BG_Guerilla2_3",
		"U_C_HunterBody_grn",
		"U_I_G_Story_Protagonist_F",
		"U_I_L_Uniform_01_tshirt_black_F",
		"U_I_L_Uniform_01_tshirt_olive_F",
		"U_I_L_Uniform_01_tshirt_skull_F",
		"U_I_L_Uniform_01_tshirt_sport_F"		
	};
	vest[] = 
	{
		"V_TacVest_blk",
		"V_TacVest_brn",
		"V_TacVest_camo",
		"V_TacVest_khk",
		"V_TacVest_oli",
		"V_I_G_resistanceLeader_F",
		"V_Chestrig_blk",
		"V_Chestrig_rgr",
		"V_Chestrig_khk",
		"V_Chestrig_oli",
		"V_TacChestrig_cbr_F",
		"V_TacChestrig_grn_F",
		"V_TacChestrig_oli_F",
		"V_SmershVest_01_F",
		"V_PlateCarrier1_blk",
		"V_PlateCarrier2_blk"
	};
	backpack[] = 
	{
		"B_TacticalPack_blk",
		"B_TacticalPack_rgr",
		"B_TacticalPack_mcamo",
		"B_TacticalPack_oli"	
	};
	headgear[] = 
	{
		"H_Bandanna_khk_hs",
		"H_Watchcap_blk",
		"H_Watchcap_cbr",
		"H_Watchcap_camo",
		"H_Watchcap_khk",
		"H_Booniehat_khk_hs",
		"H_Cap_oli_hs",
		"H_HelmetB_light",
		"H_HelmetB_light_black",
		"H_HelmetB_light_desert",
		"H_HelmetB_light_grass",
		"H_HelmetB_light_sand",
		"H_HelmetB_light_snakeskin",
		"H_Cap_marshal",
		"H_MilCap_blue",
		"H_MilCap_gry",
		"H_MilCap_mcamo",
		"H_Cap_headphones",
		"H_Shemag_olive_hs",
		"H_HelmetB_Light_tna_F",
		"H_MilCap_tna_F",
		"H_HelmetB_light_wdl",
		"H_MilCap_grn",
		"H_MilCap_taiga",
		"H_MilCap_wdl"
	};
	goggles[] = {};
	hmd[] = {};
	// Leave empty to not change faces and Insignias
	faces[] = {"faceset:persian", "faceset:african", "faceset:caucasian", "faceset:asian"};
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
		"ACRE_BF888S",
		LIST_2("ACE_fieldDressing"),
		LIST_2("ACE_packingBandage"),
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
	code =  "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] =
	{
		"ptv_rs556s_b"
	};
	scope[] =
	{
		LIST_4(""),
		"ptv_compm5",
		"ptv_t1",
		"ptv_eot552",
		"ptv_xps3"
	};
	bipod[] =
	{
		LIST_6(""),
		"ptv_acc_grip1",
		"ptv_acc_grip2",
		"ptv_acc_grip3",
		"ptv_acc_grip4"
	};
	sidearmWeapon[] =
	{
		"ptv_p320t_b"
	};
	magazines[] =
	{
		LIST_2("ptv_15Rnd_9mm_P320"),
		LIST_12("ptv_30Rnd_556x45_Pmagw"),
		"HandGrenade",
		"SmokeShell"
	};
};
class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"ptv_m249p_b"
	};
	bipod[] =
	{
		""
	};
	magazines[] = 
	{
		LIST_2("ptv_15Rnd_9mm_P320"),
		LIST_5("ptv_200Rnd_556x45_M249_b"),
		"HandGrenade",
		"SmokeShell"
	};
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = 
	{
		"ptv_m72a7"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"ptv_rs556_gl_b"
	};
	bipod[] =
	{
		""
	};
	magazines[] =
	{
		LIST_2("ptv_15Rnd_9mm_P320"),
		LIST_10("ptv_30Rnd_556x45_Pmagw_Red"),
		LIST_2("1Rnd_HE_Grenade_shell"),
		"HandGrenade",
		"SmokeShell"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
	
};

class medic : rm 
{
	displayName = "Medic";
	traits[] = {"medic"};	
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_salineIV"),
		LIST_2("ACE_adenosine"),
		LIST_5("ACE_suture")		
	};
};