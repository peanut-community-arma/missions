class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"TC_U_CRYE_M81_RED_FULL",
		"TC_U_CRYE_M81_RED_ROLL"
	};
	vest[] = 
	{
		"rhsusf_spc_patchless"
	};
	backpack[] = 
	{
		"aegis_assaultpack_khk"
	};
	headgear[] = 
	{
		"TC_H_CUP_USArmy_HelmetACH_UCP_M81_RED"
	};
	goggles[] = {
		LIST_5(""),
		"G_Aviator",
		"G_Combat",
		"G_Shades_Black",
		"G_Tactical_Black"
	};
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
		"ACRE_PRC343",
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
		"aegis_weap_f2000c_blk"
	};
	scope[] =
	{
		LIST_5(""),
		"optic_aco_grn",
		"optic_aco",
		"optic_holosight_blk_f",
		"cup_optic_1p87_ris",
		"cup_optic_aimpoint_5000",
		"cup_optic_compm4",
		"cup_optic_microt1",
		"cup_optic_microt1_low",
		"cup_optic_ac11704_black",
		"cup_optic_holoblack",
		"cup_optic_eotech553_black",
		"cup_optic_compm2_low",
		"cup_optic_compm2_black",
		"cup_optic_mars",
		"cup_optic_mrad",
		"cup_optic_zddot",
		"cup_optic_mepro",
		"cup_optic_mepro_moa_clear",
		"cup_optic_mepro_openx_orange",
		"cup_optic_mepro_tri_clear",
		"cup_optic_okp_7_rail",
		"cup_optic_trijiconrx01_black",
		"cup_optic_trijiconrx01_kf_black",
		"cup_optic_vortexrazor_uh1_black",
		"cup_optic_zeisszpoint",
		"hlc_optic_docterr",
		"hlc_optic_ism1400a7",
		"hlc_optic_romeov",
		"ptv_acc_compm4s",
		"ptv_acc_aimcs",
		"ptv_acc_t1",
		"ptv_acc_t1_low",
		"ptv_acc_eot552",
		"rksl_optic_eot552",
		"rksl_optic_eot552x",
		"rhs_acc_rakurspm",
		"rhs_acc_1p87",
		"rhs_acc_ekp8_18",
		"rhs_acc_okp7_picatinny",
		"rhsgref_acc_rx01_nofilter_camo",
		"rhsgref_acc_rx01_camo",
		"rhsusf_acc_eotech",
		"rhsusf_acc_eotech_552",
		"rhsusf_acc_compm4",
		"rhsusf_acc_mrds",
		"rhsusf_acc_rm05",
		"rhsusf_acc_rx01_nofilter",
		"rhsusf_acc_rx01",
		"rhsusf_acc_t1_high",
		"rhsusf_acc_t1_low",
		"rhsusf_acc_eotech_xps3",
		"sma_acc_barska_rds",
		"sma_acc_cmore_blk",
		"sma_acc_eotech_552_blk",
		"sma_acc_eotech_552_kf_blk",
		"sma_acc_eotech_xps3_blk",
		"sma_acc_micro_t2",
		"sma_acc_tasco_propoint",
		"sma_acc_tasco_propoint_glare",
		"sma_acc_vortex_blk",
		"sma_acc_vortex_lc_blk"
	};
	sidearmWeapon[] =
	{
		"hlc_pistol_p226"
	};
	magazines[] =
	{
		LIST_2("hlc_12Rnd_357SIG_FMJ_P226"),
		LIST_11("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		"HandGrenade",
		"SmokeShell"
	};
};
class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_m249_pip_S"
	};
	bipod[] =
	{
		"rhsusf_acc_grip4_bipod"
	};
	magazines[] = 
	{
		LIST_2("hlc_12Rnd_357SIG_FMJ_P226"),
		LIST_7("rhsusf_200rnd_556x45_M856A1_box"),
		"HandGrenade",
		"SmokeShell"
	};
};
class dm : rm
{
	displayName = "Marksman";
	primaryWeapon[]=
	{
		"aegis_weap_f2000_blk"
	};
	scope[] =
	{
		"rhsusf_acc_acog"
	};
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	headgear[] +=
	{
		"TC_Helmet_CowboyHat1",
		"TC_Helmet_CowboyHat2",
		"TC_Helmet_CowboyHat3"
	};
	primaryWeapon[] =
	{
		"aegis_weap_f2000_gl_blk"
	};
	bipod[] = {""};
	magazines[] =
	{
		LIST_2("hlc_12Rnd_357SIG_FMJ_P226"),
		LIST_11("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		"HandGrenade",
		"SmokeShell",		
		LIST_2("rhs_mag_M397_HET")
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
		LIST_2("ACE_bloodIV"),
		LIST_2("ACE_adenosine")
	};
};

class crew : rm
{
	displayName = "Crew";
	traits[] = {"engineer"};
	headgear[] =
	{
		"H_Tank_black_F"
	};
	backpackItems[] =
	{
		"Toolkit"
	};
};

class hp : crew
{
	displayName = "Pilot";
	headgear[] =
	{
		"rhsusf_hgu56p_visor_white"
	};
};