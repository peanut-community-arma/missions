class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"rhs_uniform_emr_patchless"
	};
	vest[] = 
	{
		"CUP_V_RUS_6B45_1",
		"CUP_V_RUS_6B45_2",
		"CUP_V_RUS_6B45_3",
		"CUP_V_RUS_6B45_4"
	};
	backpack[] = 
	{
		"pca_rd54_oli"
	};
	headgear[] = 
	{
		"rhs_6b47_emr",
		"rhs_6b47_emr_1",
		"rhs_6b47_emr_2",
		"rhs_6b47_6B50",
		"rhs_Booniehat_digi",
		"pca_6b47_emr_1",
		"pca_6b47_emr_2",
		"pca_6b47_emr_3",
		"pca_6b47_emr_ess"
	};
	goggles[] = {
		LIST_5(""),
		"rhs_balaclava",
		"rhs_balaclava1_olive",
		"rhs_scarf"
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
		"arifle_AK12_F",
		"rhs_weap_ak103_zenitco01_b33"
	};
	scope[] =
	{
		"",
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
		"rhs_weap_pya"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_9x19_17"),
		LIST_11("rhs_30Rnd_762x39mm_polymer"),
		"HandGrenade",
		"SmokeShell"
	};
};
class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"arifle_RPK12_F"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_9x19_17"),
		LIST_8("rhs_75Rnd_762x39mm_tracer"),
		"HandGrenade",
		"SmokeShell"
	};
};
class dm : rm
{
	displayName = "Marksman";
	scope[] =
	{
		"optic_Arco_AK_blk_F"
	};
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	primaryWeapon[] =
	{
		"arifle_AK12U_F",
		"rhs_weap_ak104_zenitco01_b33"
	};	
	secondaryWeapon[] = 
	{
		"aegis_weap_rpg32_camo"
	};
	backpackItems[] =
	{
		LIST_2("RPG32_F"),
		"RPG32_HE_F"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"arifle_AK12_GL_F"
	};
	bipod[] = {""};
	magazines[] =
	{
		LIST_2("rhs_mag_9x19_17"),
		LIST_11("rhs_30Rnd_762x39mm_polymer_tracer"),
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
	primaryWeapon[] =
	{
		"arifle_AK12U_F",
		"rhs_weap_ak104_zenitco01_b33"
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

class mg : ar
{
	displayName = "Machinegunner"
	primaryWeapon[] =
	{
		"rhs_weap_pkp"
	};
	scope[] =
	{
		"",
		"rhs_acc_1p63",
		"rhs_acc_ekp1",
		"rhs_acc_ekp8_02",
		"rhs_acc_nita",
		"rhs_acc_okp7_dovetail",
		"rhs_acc_pkas"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_9x19_17"),
		LIST_6("rhs_100Rnd_762x54mmR_green"),
		"HandGrenade",
		"SmokeShell"
	};	
};

class sn : dm
{
	displayName = "Sniper"
	primaryWeapon[] = 
	{
		"rhs_weap_t5000"
	};
	scope[] =
	{
		"rhs_acc_dh520x56"
	};
	magazines[] =
	{
		LIST_2("rhs_mag_9x19_17"),
		LIST_20("rhs_5Rnd_338lapua_t5000"),
		"HandGrenade",
		"SmokeShell"
	};	
};
class crew : rm
{
	displayName = "Crew";
	traits[] = {"engineer"};
	headgear[] =
	{
		"rhs_tsh4",
		"rhs_tsh4_bala",
		"rhs_tsh4_ess",
		"rhs_tsh4_ess_bala"
	};
	primaryWeapon[] =
	{
		"arifle_AK12U_F",
		"rhs_weap_ak104_zenitco01_b33"
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
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	primaryWeapon[] =
	{
		"arifle_AK12U_F",
		"rhs_weap_ak104_zenitco01_b33"
	};	
};