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
		"usp_g3c_kp_mx_mcb",
		"usp_g3c_rs2_kp_mx_mcb"
	};
	vest[] = 
	{
		LIST_4("V_CarrierRigKBT_01_light_Black_F"),
		"V_PlateCarrier1_blk"
	};
	headgear[] = 
	{
		LIST_3("pca_opscore_cover_ct_cb_mcb"),
		LIST_2("pca_opscore_cover_ct_mcb"),
		"usp_cap_ct_mcb"
	};
	goggles[] =
	{
		"pca_balaclava_blk_2",
		"bear_balaclava1_black",
		"pca_balaclava_gogg_mcb",
		"G_Bandanna_aviator"
	};
	backpack[] = 
	{
		LIST_7(""),
		"pca_assaultpack_mcb"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_HK416_Black"
	};
	scope[] = 
	{
		"CUP_optic_CompM4"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_13("CUP_30Rnd_556x45_Emag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_hk416d145"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_Colt1911"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_2("CUP_7Rnd_45ACP_1911"),
		LIST_6("rhs_mag_100Rnd_556x45_M855A1_cmag_mixed")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (also nades)";
	primaryWeapon[] = 
	{
		"CUP_arifle_HK416_M203_Black"
	};
	magazines[] += 
	{
		LIST_4("CUP_1Rnd_HE_M203"),
		LIST_2("CUP_1Rnd_Smoke_M203")
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
		"CUP_arifle_HK416_M203_Black"
	};
	magazines[] += 
	{
		LIST_4("CUP_1Rnd_HE_M203"),
		LIST_2("CUP_1Rnd_Smoke_M203")
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
		"HandGrenade",
		"SmokeShell",
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
		"HandGrenade",
		"SmokeShell",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};