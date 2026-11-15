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
		"CUP_I_B_PMC_Unit_1",
		"CUP_I_B_PMC_Unit_2",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_4",
		"CUP_I_B_PMC_Unit_5",
		"CUP_I_B_PMC_Unit_6",
		"CUP_I_B_PMC_Unit_7",
		"CUP_I_B_PMC_Unit_8",
		"CUP_I_B_PMC_Unit_9",
		"CUP_I_B_PMC_Unit_10",
		"CUP_I_B_PMC_Unit_11",
		"CUP_I_B_PMC_Unit_12",
		"CUP_I_B_PMC_Unit_14",
		"CUP_I_B_PMC_Unit_19",
		"CUP_I_B_PMC_Unit_21",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_37",
		"CUP_I_B_PMC_Unit_38",
		"CUP_I_B_PMC_Unit_39",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_41",
		"CUP_I_B_PMC_Unit_42"
	};
	vest[] =
	{
		LIST_4("CUP_V_B_Armatus_MCam"),
		"CUP_V_B_Armatus_BB_MCam"
	};
	headgear[] =
	{
		LIST_2("milgp_h_cap_backwards_02_goggles_gry"),
		LIST_2("milgp_h_cap_backwards_03_khk"),
		LIST_2("milgp_h_cap_02_tan"),
		LIST_1("milgp_h_airframe_01_rgr"),
		LIST_1("milgp_h_airframe_06_rgr")
	};
	backpack[] =
	{
		LIST_7(""),
		LIST_2("pca_eagle_a3_od")
	};
	primaryWeapon[] =
	{
		LIST_3("rhs_weap_m4a1"),
		"$NONE_sma_weap_masada$",
		"$NONE_sma_weap_tavor_od$",
		"rhs_weap_hk416d145",
		"$NONE_hlc_rifle_scarl_std_camo$"
	};
	scope[] =
	{
		"rhsusf_acc_compm4",
		"ptv_acc_eot552",
		"ptv_acc_t1",
		"$NONE_sma_acc_micro_t2$",
		"cup_optic_vortexrazor_uh1_black"
	};
	magazines[] =
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_8("rhs_mag_30Rnd_556x45_M855_PMAG")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	backpack[] =
	{
		"pca_eagle_a3_od"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_MG36"
	};
	magazines[] =
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag")
	};
};

class hr : rm
{
	displayName = "Heavy Rifleman";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_g3ka4$",
		"CUP_arifle_G3A3_modern_ris"
	};
	magazines[] =
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_3("hlc_20Rnd_762x51_T_G3")
	};
};

class mm : rm
{
	displayName = "Marksman";
	headgear[] =
	{
		"milgp_h_cap_backwards_02_rgr"
	};
	vest[] =
	{
		"CUP_V_B_Eagle_SPC_DMR"
	};
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_samr$"
	};
	scope[] = {
		"cup_optic_sb_11_4x20_pm"
	};
	bipod[] =
	{
		"HLC_bipod_UTGShooters"
	};
	magazines[] =
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_3("rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red")
	};
};

class sniper : mm
{
	displayName = "Sniper";
	primaryWeapon[] =
	{
		"rhs_weap_M107"
	};
	scope[] = {
		"$NONE_hlc_optic_zf95$"
	};
	bipod[] = {};
	magazines[] =
	{
		LIST_6("ACE_10Rnd_127x99_API_Mag")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	primaryWeapon[] =
	{
		"rhs_weap_pkp"
	};
	magazines[] =
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] =
	{
		"rhs_weap_rpg26"
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
	backpack[] =
	{
		"pca_eagle_a3_od"
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
		"rhs_mag_m67",
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
		"rhs_mag_m67",
		"SmokeShell",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};
