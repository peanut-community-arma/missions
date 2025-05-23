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
	faces[] = {"miller"};
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
	displayName = "Replica";
	uniform[] = 
	{
		"U_C_CBRN_Suit_01_Blue_F",
	};
	vest[] = 
	{
		"aegis_elbv_harness_blk"
	};
	headgear[] = 
	{
		"CUP_H_SPH4_grey_visor"
	};
	goggles[] = 
	{
		"G_RegulatorMask_F",
		"G_Balaclava_TI_G_blk_F"
	};
	backpack[] = 
	{
		"",
		"B_ViperLightHarness_blk_F",
		"B_ViperHarness_blk_F"
	};
	primaryWeapon[] = 
	{
		"arifle_TRG21_F"
	};
	scope[] = 
	{
		"rhsusf_acc_mrds"
	};
	attachment[] = 
	{
		"cup_acc_flashlight"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Green")
	};
};

class ar : rm 
{
	displayName = "Replica AR";
	uniform[] = 
	{
		"aegis_cbrn_suit_oli",
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_MG36"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_100Rnd_556x45_BetaCMag")
	};
};

class rm_lat : rm 
{
	displayName = "Replica (LAT)";
	uniform[] = 
	{
		"U_I_E_CBRN_Suit_01_EAF_F"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_heavy_EAF_F"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_m72e10"
	};
		primaryWeapon[] = 
	{
		"CUP_sgun_SPAS12"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("CUP_8Rnd_12Gauge_Slug")
	};
};

class elite : rm 
{
	displayName = "Replica Elites";
	uniform[] = 
	{
		"CUP_U_B_BDUv2_gloves_dirty_Tigerstripe"
	};
	vest[] = 
	{
		"aegis_modular_carrier_heavy_blk"
	};
	headgear[] = 
	{
		LIST_3("rhsusf_hgu56p_visor_black"),
	};
	goggles[] = 
	{
		"pca_balaclava_blk_2",
	};
	hmd[] = 
	{
		"CUP_NVG_PVS7"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A3"
	};
	attachment[] = 
	{
		"cup_acc_anpeq_15_black"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("hlc_30Rnd_556x45_B_G36")
	};
};

class elite_at : elite 
{
	displayName = "Replica Elites (LAT)";
	uniform[] = 
	{
		"aegis_cws_latpat"
	};
	vest[] = 
	{
		"aegis_modular_carrier_heavy_latpat"
	};
	headgear[] = 
	{
		"aegis_amh_chops_latpat_wdl"
	};
	goggles[] = 
	{
		"G_Balaclava_TI_G_blk_F"
	};
	hmd[] = 
	{
		"NVGogglesB_blk_F"
	};
	primaryWeapon[] = 
	{
		"CUP_sgun_AA12"
	};
	secondaryWeapon[] = {
		"launch_NLAW_F"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("CUP_20Rnd_B_AA12_Slug")
	};
};

class mill_g : rm 
{
displayName = "Miller Guards";
	uniform[] = 
	{
		"aegis_ccu_cu_ctrg_arid",
	};
	vest[] = 
	{
		"aegis_modular_carrier_heavy_ctrg"
	};
	headgear[] = 
	{
		"rhs_altyn_bala",
		"rhs_altyn_novisor_ess_bala",
		"rhs_altyn_novisor_bala"
	};
	goggles[] = {
		"m40_gas_mask_01_nbc_hood"
	};
	primaryWeapon[] = 
	{
		"CUP_smg_BallisticShield_MP7"
	};
	scope[] = 
	{
		"ptv_acc_shortdot"
	};
	silencer[] = 
	{
		"muzzle_snds_m"
	};
	sidearmWeapon[] = 
	{
		"ptv_weap_usp45t"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_40Rnd_46x30_MP7_Green_Tracer"),
		LIST_2("ptv_12Rnd_45ACP_USP")
	};
};

class miller : mill_g 
{
	displayName = "Miller";
	vest[] = 
	{
		"aegis_platecarrier_spec_rgr"
	};
	headgear[] = 
	{};
	goggles[] = {"G_Aviator"};
	backpack[] = 
	{
		LIST_7("")
	};
	primaryWeapon[] = 
	{
		"CUP_sgun_AA12"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_20Rnd_B_AA12_HE")
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
	primaryWeapon[] = 
	{
		"CUP_smg_MP5A5"
	};
	attachment[] = {"cup_acc_flashlight_mp5"};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("CUP_30Rnd_Green_Tracer_9x19_MP5")
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