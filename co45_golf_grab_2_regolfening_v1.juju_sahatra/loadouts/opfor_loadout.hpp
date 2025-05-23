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
	displayName = "Streamer";
	uniform[] = 
	{
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_36",
		"CUP_U_CRYE_V2_Full",
		"CUP_U_CRYE_MCAM_NP2_Roll"
	};
	vest[] = 
	{
		LIST_4("CUP_V_B_Ciras_Olive3"),
		"CUP_V_B_Ciras_Olive_USSF"
	};
	headgear[] = 
	{
		LIST_4("pca_opscore_cover_ct_cm_khk"),
		LIST_3("milgp_h_airframe_04_khk"),
		"CUP_H_USA_Cap_TREAD_DEF",
		"CUP_H_USA_Cap_PUNISHER_DEF",
		"milgp_h_cap_backwards_02_tan"
	};
	goggles[] =
	{
		LIST_4(""),
		"rhs_googles_clear",
		"rhs_googles_orange",
		"CUP_Beard_Brown",
		"CUP_Beard_Blonde",
		"CUP_G_ESS_RGR_Facewrap_Skull",
		"CUP_G_ESS_KHK_Facewrap_Tan",
		"milgp_f_face_shield_tactical_khk",
		"CUP_G_PMC_Facewrap_Black_Glasses_Dark"
	};
	hmd[] =
	{
		LIST_4(""),
		"pca_nvg_shemagh_mesh_white",
		"pca_nvg_shemagh_lowered_oli",
		"nvg_scrim_wdl",
		"CUP_NVG_PVS15_tan"
	};
	backpack[] = 
	{
		LIST_4(""),
		"pca_assaultpack_od"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_HK416_CQB_Black",
		"rhs_weap_m27iar",
		"sma_weap_masada_blk",
		"hlc_rifle_scarl_std",
		"rhs_weap_m4a1_blockII"
	};
	attachment[] =
	{
		"cup_acc_anpeq_15_black",
		"rhsusf_acc_grip2"
	};
	scope[] = 
	{
		"sma_acc_vortex_blk",
		"sma_acc_eotech_552_g33_blk",
		"cup_optic_holoblack",
		"cup_optic_compm4"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger")
	};
};

class ar : rm 
{
	displayName = "Heavy";
	vest[] =
	{
		"CUP_V_CPC_weaponsbelt_mc",
		"milgp_v_marciras_hgunner_belt_blk"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_ACR_blk_556",
		"CUP_arifle_HK416_Black",
		"hlc_rifle_scarl_std"
	};
	bipod[] =
	{
		"cup_bipod_harris_1a2_l_blk"
	};
	sidearmWeapon[] = 
	{
		"aegis_weap_fnx45_blk"
	};
	sidearmAttachments[] = 
	{
		"hlc_optic_romeov",
		"hlc_acc_dbalpl_fl",
		"hlc_muzzle_octane45"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("rhs_mag_100Rnd_556x45_M855A1_cmag_mixed"),
		LIST_3("11Rnd_45ACP_Mag")
	};
};

class rm_2 : rm 
{
	displayName = "Zenitco Fan";
	primaryWeapon[] = 
	{
		"rhs_weap_ak105_zenitco01_b33",
		"bear_weap_ak105_zenitco01_b33_camo"
	};
	attachment[] =
	{
		"cup_acc_anpeq_15_black",
		"cup_acc_anpeq_15_top_flashlight_black_l"
	};
	bipod[] =
	{
		"rhsusf_acc_grip2",
		"ptv_acc_grip4",
		"rhs_acc_grip_rk6"
	};
	scope[] = 
	{
		"cup_optic_vortexrazor_uh1_black",
		"cup_optic_1p87_ris",
		"cup_optic_holoblack",
		"cup_optic_trijiconrx01_black"
	};
	silencer[] =
	{
		"rhs_acc_uuk"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_7("rhs_30Rnd_545x39_7N10_2mag_AK")
	};
};

class dmr : rm 
{
	displayName = "aMeRiCaN sNiPeR";
	uniform[] =
	{
		"aegis_full_ghillie_wdl"
	};
	primaryWeapon[] = 
	{
		"srifle_LRR_camo_F"
	};
	scope[] =
	{
		"hlc_optic_leupoldm3a"
	};
	sidearmWeapon[] = 
	{
		"aegis_weap_fnx45_blk"
	};
	sidearmAttachments[] = 
	{
		"hlc_optic_romeov",
		"hlc_acc_dbalpl_fl",
		"hlc_muzzle_octane45"
	};
	magazines[] = 
	{
		"ACE_VectorDay",
		"ACE_RangeCard",
		"HandGrenade",
		"SmokeShell",
		LIST_5("7Rnd_408_Mag"),
		LIST_5("11Rnd_45ACP_Mag")
	};
};

class rm_lat : rm
{
	displayName = "Blackout LAT";
	uniform[] =
	{
		"usp_g3c_kp_or_mcb",
		"usp_g3c_mx_mcb",
		"usp_g3c_rs2_kp_or_mcb",
		"usp_g3c_rs2_mx_mcb"
	};
	vest[] =
	{
		"usp_eagle_mbav_mcb"
	};
	helmet[] =
	{
		LIST_4("pca_opscore_cover_ct_cm_mcb"),
		LIST_3("pca_opscore_cover_ct_cb_mcb"),
		"CUP_H_USA_Cap_TREAD_DEF",
		"CUP_H_USA_Cap_PUNISHER_DEF",
		"usp_cap_ct_mcb"
	};
	hmd[] =
	{
		"CUP_NVG_PVS15_black"
	};
	goggles[] +=
	{
		LIST_3("pca_balaclava_mcb"),
		LIST_3("pca_balaclava_gogg_mcb")
	};
	secondaryWeapon[] =
	{
		"aegis_weap_rpg32_blk"
	};
	backpack[] =
	{
		"pca_assaultpack_mcb"
	};
	backpackItems[] =
	{
		LIST_2("RPG32_F")
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
	displayName = "UAV guy";
	backpack[] = 
	{
		"B_UAV_01_backpack_F"
	};
	linkedItems[] +=
	{
		"B_UavTerminal"
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
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};

class vip : rm
{
	displayName = "VIP";
	uniform[] =
	{
		"usp_g3c_mcb"
	};
	vest[] =
	{
		"CUP_V_B_Ciras_Olive_USSF"
	};
	headgear[] =
	{
		"H_Beret_Colonel"
	};
	goggles[] =
	{
		"G_Aviator"
	};
	primaryWeapon[] =
	{
		"rhs_weap_hk416d145"
	};
	scope[] =
	{
		"sma_acc_eotech_552_g33_blk"
	};
	bipod[] =
	{
		"rhsusf_acc_tacsac_blue"
	};
	attachment[] =
	{
		"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L"
	};
	silencer[] =
	{
		"sma_silencer_kac_nt4_tan_hwt"
	};
	magazines[] =
	{
		"ACRE_BF888S",
		"ACE_MRE_BeefStew",
		"ACE_Cellphone",
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull")
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
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};