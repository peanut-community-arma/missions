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

class hvt : baseMan 
{
	displayName = "HVT";
	uniform[] = 
	{
		"Atlas_U_UniformBDU_02_m81_F"
	};
	headgear[] = 
	{
		"CUP_H_SLA_BeretRed"
	};
	goggles[] = 
	{
		"G_Aviator"
	};
	hmd[] = 
	{
		"immersion_cigs_cigar0_nv"
	};
};

class pm1 : baseMan 
{
	displayName = "Pistolman1";
	uniform[] = 
	{
		"U_I_C_Soldier_Bandit_1_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_3_F",
		"U_I_L_Uniform_01_tshirt_black_F",
		"U_I_L_Uniform_01_tshirt_olive_F",
		"U_I_L_Uniform_01_tshirt_skull_F",
		"U_I_L_Uniform_01_tshirt_sport_F",
		"U_C_IDAP_Man_Tee_F",
		"U_I_C_Soldier_Bandit_4_F",
		"U_C_Man_casual_3_F",
		"U_C_Poloshirt_salmon",
		"U_I_L_Uniform_01_deserter_F",
		"U_C_Mechanic_01_F"
	};
	vest[] = 
	{
		LIST_2("V_BandollierB_cbr"),
		LIST_2("V_BandollierB_ghex_F"),
		"V_CarrierRigKBT_01_light_Black_F",
		"V_CarrierRigKBT_01_light_Coyote_F",
		"V_CarrierRigKBT_01_light_Olive_F"
	};
	headgear[] = 
	{
		LIST_15(""),
		"H_Bandanna_khk",
		"H_Bandanna_cbr",
		"CUP_H_PMC_Cap_Back_Grey",
		"CUP_H_PMC_Cap_Back_Tan",
		"pca_baseball_cap_wdl",
		"H_Cap_blk",
		"H_Cap_oicamo",
		"H_Cap_eaf_arid_F",
		"pca_headband_red",
		"pca_headband_tan",
		"pca_headband"
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("B_AssaultPack_cbr"),
		"B_CivilianBackpack_01_Everyday_Black_F"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] = 
	{
		LIST_5("rhsusf_mag_17Rnd_9x19_JHP")
	};
};

class pm2 : pm1 
{
	displayName = "Pistolman2";
	sidearmWeapon[] = 
	{
		"hgun_Pistol_heavy_01_black_F"
	};
	magazines[] = 
	{
		LIST_5("11Rnd_45ACP_Mag")
	};
};

class rm : baseMan 
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"U_I_C_Soldier_Bandit_1_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_3_F",
		"U_I_L_Uniform_01_tshirt_black_F",
		"U_I_L_Uniform_01_tshirt_olive_F",
		"U_I_L_Uniform_01_tshirt_skull_F",
		"U_I_L_Uniform_01_tshirt_sport_F",
		"U_C_IDAP_Man_Tee_F",
		"U_I_C_Soldier_Bandit_4_F",
		"U_C_Man_casual_3_F",
		"U_C_Poloshirt_salmon",
		"U_I_L_Uniform_01_deserter_F",
		"U_C_Mechanic_01_F"
	};
	vest[] = 
	{
		LIST_2("V_BandollierB_cbr"),
		LIST_2("V_BandollierB_ghex_F"),
		"V_CarrierRigKBT_01_light_Black_F",
		"V_CarrierRigKBT_01_light_Coyote_F",
		"V_CarrierRigKBT_01_light_Olive_F"
	};
	headgear[] = 
	{
		LIST_15(""),
		"H_Bandanna_khk",
		"H_Bandanna_cbr",
		"CUP_H_PMC_Cap_Back_Grey",
		"CUP_H_PMC_Cap_Back_Tan",
		"pca_baseball_cap_wdl",
		"H_Cap_blk",
		"H_Cap_oicamo",
		"H_Cap_eaf_arid_F",
		"pca_headband_red",
		"pca_headband_tan",
		"pca_headband"
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("B_AssaultPack_cbr"),
		"B_CivilianBackpack_01_Everyday_Black_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_TYPE_56_2_Early",
		"CUP_arifle_AKM_Early",
		"CUP_arifle_AK47_Early"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_7("rhs_30Rnd_762x39mm")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		LIST_3("CUP_arifle_M16A2"),
		"CUP_arifle_M4A1_black"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	backpack[] = 
	{
		LIST_2("B_AssaultPack_cbr"),
		"B_CivilianBackpack_01_Everyday_Black_F",
		"pca_eagle_a3_cbr"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_pkp"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

class smg : rm 
{
	displayName = "Submachine Gunner";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_M67",
		"SmokeShell",
		LIST_7("rhs_30Rnd_545x39_7N6M_AK")
	};
};

class rm_lat : smg 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
};

class rm_mat : rm_lat 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"pca_eagle_a3_cbr"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v3"
	};
	backpackItems[] = 
	{
		LIST_4("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_PG7VR_mag",
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : ar 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_BUIS_GL"
	};
	magazines[] += 
	{
		LIST_3("CUP_1Rnd_HEDP_M203"),
		LIST_2("rhs_mag_m714_White")
	};
};

class medic : pm2 
{
	displayName = "Medic";
	vest[] = 
	{
		"rhs_6b23_digi_medic"
	};
	backpack[] = 
	{
		LIST_2("B_AssaultPack_cbr"),
		"B_CivilianBackpack_01_Everyday_Black_F",
		"pca_eagle_a3_cbr"
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
		LIST_2("ACE_bloodIV"),
		LIST_2("ACE_adenosine")
	};
};

class engineer : smg 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr_engineer_empty"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("rhs_ec400_sand_mag")
	};
};

class crewman : smg 
{
	displayName = "Crewman";
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_headset_spetsnaz"
	};
	headgear[] = 
	{
		"rhs_6b48"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_spetsnaz2"
	};
	headgear[] = 
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};