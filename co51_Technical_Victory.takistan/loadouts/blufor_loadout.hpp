class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	faces[] = {};
	insignias[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	magazines[] = {};
	items[] = {};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	backpackItems[] = {};
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		LIST_1("U_BG_Guerrilla_6_1"),
		LIST_1("U_BG_Guerilla1_1"),
		LIST_1("U_BG_Guerilla2_2"),
		LIST_1("U_BG_Guerilla2_1"),
		LIST_1("U_BG_Guerilla2_3"),
		LIST_1("U_BG_leader"),
		LIST_1("rhsgref_uniform_TLA_1"),
		LIST_1("rhsgref_uniform_TLA_2"),
		LIST_1("Rev_U_B_FRR_Uniform_03_F"),
		LIST_1("Atlas_U_UniformBDU_02_m81_F"),
		LIST_1("Opf_U_O_S_Uniform_01_sweater_F"),
		LIST_1("Rev_U_B_FRR_Uniform_02_F"),
		LIST_1("Rev_U_B_FRR_Uniform_01_F"),
		LIST_1("U_B_ION_Uniform_01_poloshirt_blue_F"),
		LIST_1("U_B_ION_Uniform_01_poloshirt_wdl_F"),
		LIST_1("U_B_ION_Uniform_01_poloshirt_wdl_F"),
		LIST_1("U_B_ION_Uniform_01_tshirt_black_F")
	};
	vest[] = 
	{
		LIST_1("pca_md99_3cd_rifleman"),
		LIST_1("pca_md99_blk_rifleman"),
		LIST_1("pca_md99_od_rifleman"),
		LIST_1("pca_md99_wdl_rifleman")
	};
	headgear[] = 
	{
		LIST_1("pca_headband_blk"),
		LIST_1("pca_headband"),
		LIST_1("pca_headband_red"),
		LIST_1("pca_headband_tan")
	};
	backpack[] = 
	{
		LIST_1("B_TacticalPack_oli"),
		LIST_1("B_TacticalPack_khk"),
		LIST_1("rhs_rk_sht_30_olive"),
		LIST_1("rhssaf_kitbag_md2camo")
	};
	goggles[] = 
	{
		LIST_1("G_Bandanna_blk"),
		LIST_1("G_Bandanna_khk"),
		LIST_1("G_Bandanna_oli"),
		LIST_1("bear_bandana_m81")
	};
	primaryWeapon[] = 
	{
		LIST_5("CUP_arifle_AKMN_railed"),
		LIST_1("CUP_arifle_AKMN_railed_desert")
	};
	scope[] = 
	{
		"optic_mrco"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_13("rhssaf_30Rnd_762x39_M82_api")
	};
	backpackItems[] = 
	{
		LIST_4("rhssaf_30Rnd_762x39_M82_api")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM_top_rail_B50_vfg"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_2("rhs_18rnd_9x21mm_7N29"),
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_6p53"
	};
	backpackItems[] = 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] = 
	{
		LIST_4("CUP_PG7VL_M")
	};
};

class sh : rm 
{
	displayName = "Sharpshooter";
	primaryWeapon[] = 
	{
		"pca_weap_svd_wood_npz"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_6p53"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_2("rhs_18rnd_9x21mm_7N29"),
		LIST_20("rhs_10Rnd_762x54mmR_7N14")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_10Rnd_762x54mmR_7N14")
	};
	scope[] = 
	{
		"cup_optic_sb_3_12x50_pmii_pip"
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL_top_rail"
	};
	backpackItems[] = 
	{
		LIST_2("rhssaf_30Rnd_762x39_M82_api"),
		LIST_2("rhssaf_30Rnd_762x39mm_M78_tracer"),
		LIST_2("rhs_18rnd_9x21mm_7N29"),
		LIST_2("SmokeShell"),
		LIST_2("rhssaf_30Rnd_762x39mm_M78_tracer"),
		LIST_10("rhs_VOG25"),
		LIST_4("rhs_GRD40_White"),
		LIST_1("rhs_GRD40_Green"),
		LIST_1("rhs_GRD40_Red")
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_6p53"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL_top_rail"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpack[] = 
	{
		"B_Carryall_oli"
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_20("ACE_elasticBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	backpack[] = 
	{
		"pca_carryall_m81"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_mg42"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_6p53"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_3("rhs_18rnd_9x21mm_7N29"),
		LIST_3("rhsgref_296Rnd_792x57_SmK_alltracers_belt")
	};
	backpackItems[] = 
	{
		LIST_6("rhsgref_296Rnd_792x57_SmK_alltracers_belt")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"pca_carryall_m81"
	};
	backpackItems[] = 
	{
		LIST_8("rhsgref_296Rnd_792x57_SmK_alltracers_belt")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class tlmmg : rm 
{
	displayName = "Medium Machine Gun TL";
	backpack[] = 
	{
		"pca_carryall_m81"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] = 
	{
		LIST_4("rhsgref_296Rnd_792x57_SmK_alltracers_belt")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};