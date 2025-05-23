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
		"U_I_C_Soldier_Bandit_1_F",
		"U_I_C_Soldier_Bandit_2_F",
		"U_I_C_Soldier_Bandit_3_F",
		"U_I_C_Soldier_Bandit_4_F",
		"U_I_C_Soldier_Bandit_5_F",
		"U_BG_Guerilla1_1",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_2",
		"U_BG_Guerilla2_3",
		"U_BG_Guerilla3_1",
		"U_C_Poor_1",
		"U_C_Uniform_Farmer_01_F",
		"U_C_E_LooterJacket_01_F",
		"U_I_L_Uniform_01_tshirt_black_F",
		"U_I_L_Uniform_01_tshirt_olive_F",
		"U_I_L_Uniform_01_tshirt_skull_F",
		"U_I_L_Uniform_01_tshirt_sport_F"
	};
	vest[] =
	{
		LIST_4("pca_vest_invisible"),
		"V_Pocketed_black_F",
		"V_Pocketed_olive_F",
		"CUP_V_OI_TKI_Jacket1_03",
		"CUP_V_OI_TKI_Jacket1_04",
		"CUP_V_OI_TKI_Jacket1_05",
		"CUP_V_OI_TKI_Jacket1_06"
	};
	headgear[] =
	{
		LIST_3(""),
		LIST_3("H_Bandanna_blu"),
		LIST_3("H_Cap_blu"),
		"H_Bandanna_surfer",
		"H_Hat_blue",
		"H_Bandanna_gry",
		"H_Bandanna_khk",
		"H_Bandanna_sgg",
		"H_Bandanna_camo",
		"H_Construction_basic_black_F",
		"H_Construction_basic_white_F"
	};
	backpack[] =
	{
		LIST_7(""),
		LIST_2("pca_backpack_invisible")
	};
	goggles[] = {
		LIST_10(""),
		"aegis_bandanna_kawaii",
		"G_Bandanna_aviator",
		"G_Bandanna_beast",
		"G_Bandanna_blk",
		"G_Bandanna_BlueFlame1",
		"G_Bandanna_BlueFlame2",
		"G_Bandanna_CandySkull",
		"G_Bandanna_khk",
		"G_Bandanna_oli",
		"G_Bandanna_OrangeFlame1",
		"G_Bandanna_RedFlame1",
		"G_Bandanna_shades",
		"G_Bandanna_Skull1",
		"G_Bandanna_Skull2",
		"G_Bandanna_Syndikat1",
		"G_Bandanna_sport",
		"G_Bandanna_tan",
		"G_Bandanna_Vampire_01",
		"G_Bandanna_Syndikat2",
		"G_Lowprofile",
		"aegis_cigarette",
		"murshun_cigs_cig0",
		"aegis_shemag_shades_oli",
		"aegis_shemag_shades_cbr",
		"aegis_shemag_shades_khk",
		"aegis_shemag_shades_red",
		"aegis_shemag_shades_tan"

	};
	primaryWeapon[] =
	{
		"rhs_weap_akm",
		"CUP_arifle_TYPE_56_2_Early"
	};
	scope[] = {};
	magazines[] =
	{
		"rhs_mag_rgd5",
		// "rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_762x39mm")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] =
	{
		"CUP_smg_UZI"
	};
	magazines[] =
	{
		"rhs_mag_rgd5",
		// "rhs_mag_rdg2_white",
		LIST_7("CUP_32Rnd_9x19_UZI_M")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	primaryWeapon[] =
	{
		"sgun_HunterShotgun_01_F",
		"sgun_HunterShotgun_01_sawedoff_F"
	};
	magazines[] =
	{
		"rhs_mag_rgd5",
		// "rhs_mag_rdg2_white",
		LIST_12("2Rnd_12Gauge_Pellets")
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = {};
	sidearmWeapon[] =
	{
		"CUP_hgun_Mac10"
	};
	magazines[] =
	{
		"rhs_mag_rgd5",
		// "rhs_mag_rdg2_white",
		LIST_7("CUP_30Rnd_45ACP_MAC10_M")
	};
};

class rm_mat : rm
{
	displayName = "Rifleman (MAT)";
	backpack[] =
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
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

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"rhs_weap_ak74m_gp25"
	};
	magazines[] +=
	{
		LIST_9("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm
{
	displayName = "Medic";
	vest[] =
	{
		"rhs_6b23_digi_medic"
	};
	backpack[] =
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
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

class engineer : rm
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

class crewman : rm
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
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_762x39mm")
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
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_762x39mm")
	};
};
