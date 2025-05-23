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
		"usp_g3c_mc",
		"usp_g3c_kp_mc",
		"usp_g3c_kp_mx_mc",
		"usp_g3c_kp_or_mc",
		"usp_g3c_mx_mc",
		"usp_g3c_or_mc",
		"usp_g3c_rs_mc",
		"usp_g3c_rs_kp_mc",
		"usp_g3c_rs_kp_mx_mc",
		"usp_g3c_rs_kp_or_mc",
		"usp_g3c_rs_mx_mc",
		"usp_g3c_rs_or_mc",
		"usp_g3c_rs2_mc",
		"usp_g3c_rs2_kp_mc",
		"usp_g3c_rs2_kp_mx_mc",
		"usp_g3c_rs2_kp_or_mc",
		"usp_g3c_rs2_mx_mc",
		"usp_g3c_rs2_or_mc"
	};
	vest[] = 
	{
		"milgp_v_mmac_assaulter_mc",
		"milgp_v_mmac_marksman_mc"
	};
	headgear[] = 
	{
		"usp_opscore_mt_cover_mc",
		"usp_opscore_mt_cover_ct_mc",
		"usp_opscore_mt_cover_ct_cb1_mc",
		"usp_opscore_mt_cover_ct_cb2_mc",
		"usp_opscore_mt_cover_ct_cb3_mc",
		"usp_opscore_mt_cover_ct_cb4_mc",
		"usp_opscore_mt_cover_ct_cm_mc",
		"usp_opscore_mt_cover_ct_cw_mc",
		"usp_opscore_mt_cover_ctg_mc",
		"usp_opscore_mt_cover_ctg_cb1_mc",
		"usp_opscore_mt_cover_ctg_cb2_mc",
		"usp_opscore_mt_cover_ctg_cb3_mc",
		"usp_opscore_mt_cover_ctg_cb4_mc",
		"usp_opscore_mt_cover_ctg_cm_mc",
		"usp_opscore_mt_cover_ctg_cw_mc",
		"usp_opscore_mt_cover_ctg_sf_mc",
		"usp_opscore_mt_cover_ctg_tl_mc",
		"usp_opscore_mt_cover_ct_sf_mc",
		"usp_opscore_mt_cover_ct_tl_mc"
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("pca_assaultpack_mc"),
		"pca_eagle_a3_mc"
	};
	primaryWeapon[] = 
	{
		"CUP_CZ_BREN2_556_14"
	};
	scope[] = 
	{
		"",
		"cup_optic_compm4",
		"cup_optic_microt1",
		"cup_optic_mrad",
		"cup_optic_zddot"
	};
	magazines[] = 
	{
		"SmokeShell",
		"rhs_mag_m67",
		LIST_8("CUP_30Rnd_556x45_Stanag_L85")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_mmac_hgunner_mc"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_minimi_railed"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] = {
		"milgp_v_mmac_hgunner_mc"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_pkp"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR")
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
	vest[] = 
	{
		"milgp_v_mmac_grenadier_mc",
		"milgp_v_mmac_teamleader_mc"
	};
	primaryWeapon[] = 
	{
		"CUP_CZ_BREN2_556_14_GL"
	};
	magazines[] += 
	{
		LIST_3("CUP_1Rnd_HE_M203")
	};
	items[] +=
	{
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"milgp_v_mmac_medic_mc"
	};
	primaryWeapon[] = 
	{
		"CUP_CZ_BREN2_556_11"
	};
	backpack[] = 
	{
		LIST_2("pca_assaultpack_mc"),
		"pca_eagle_a3_mc"
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
	headgear[] = 
	{
		"rhs_6b48"
	};
	primaryWeapon[] = 
	{
		"CUP_CZ_BREN2_556_8"
	};
	scope[] = {};
};

class pilot : crewman
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
};