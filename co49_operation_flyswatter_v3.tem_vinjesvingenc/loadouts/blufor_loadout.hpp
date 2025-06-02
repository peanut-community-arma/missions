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
		LIST_3("CUP_I_B_PARA_Unit_4"),
		LIST_3("CUP_I_B_PARA_Unit_9"),
		LIST_2("CUP_I_B_PARA_Unit_1"),
		LIST_3("CUP_I_B_PMC_Unit_14"),
		LIST_3("CUP_I_B_PMC_Unit_21"),
		LIST_3("CUP_I_B_PMC_Unit_3"),
		LIST_2("CUP_I_B_PMC_Unit_2"),
		LIST_2("CUP_I_B_PMC_Unit_5"),
		LIST_1("CUP_I_B_PMC_Unit_12"),
		LIST_2("CUP_I_B_PMC_Unit_42"),
		LIST_2("CUP_I_B_PMC_Unit_39"),
		LIST_1("CUP_I_B_PMC_Unit_37")
	};
	vest[] = 
	{
		LIST_2("milgp_v_jpc_assaulter_belt_blk"),
		LIST_3("milgp_v_jpc_assaulter_belt_gry"),
		LIST_2("milgp_v_jpc_assaulter_belt_cb")
	};
	headgear[] = 
	{
		LIST_3("rhsusf_ach_bare"),
		LIST_3("rhsusf_ach_bare_semi"),
		LIST_2("rhsusf_ach_bare_tan"),
		LIST_3("rhsusf_ach_bare_wood"),
		LIST_3("rhsusf_ach_bare_headset"),
		LIST_3("rhsusf_ach_bare_tan_headset"),
		LIST_2("rhsusf_ach_bare_tan_headset_ess"),
		LIST_2("rhsusf_ach_bare_semi_headset_ess"),
		LIST_1("rhsusf_ach_bare_wood_headset_ess")
	};
	backpack[] = 
	{
		"B_Kitbag_cbr"
	};
	primaryWeapon[] = 
	{
		LIST_4("$NONE_hlc_rifle_acr_iar_blk$"),
		"CUP_arifle_ACRC_blk_68"
	};
	scope[] = 
	{
		LIST_3("rhsusf_acc_compm4"),
		LIST_2("$NONE_sma_acc_eotech_552_blk$")
	};
	bipod[] = 
	{
		LIST_3("rhsusf_acc_grip2"),
		LIST_2("rhsusf_acc_rvg_blk")
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
		LIST_2("rhs_mag_m67"),
		LIST_13("pca_mag_30Rnd_556x45_M995_PMAG_Blk")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_30Rnd_556x45_M995_PMAG_Blk")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		LIST_2("milgp_v_jpc_hgunner_belt_blk"),
		LIST_3("milgp_v_jpc_hgunner_belt_cb"),
		LIST_2("milgp_v_jpc_hgunner_belt_gry")
	};
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m249_light_S"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip4_bipod"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("pca_mag_200Rnd_556x45_M995_mixed_soft_pouch_od")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_200Rnd_556x45_M995_mixed_soft_pouch_od")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_eagle_a3_rgr"
	};
	backpackItems[] += 
	{
		LIST_4("pca_mag_200Rnd_556x45_M995_mixed_soft_pouch_od")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136"
	};
	backpackItems[] = 
	{
		"rhs_weap_M136"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		LIST_2("milgp_v_jpc_grenadier_belt_blk"),
		LIST_3("milgp_v_jpc_grenadier_belt_gry"),
		LIST_2("milgp_v_jpc_grenadier_belt_cb")
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr_iar_m203_blk$"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] = 
	{
		LIST_2("milgp_v_jpc_teamleader_belt_cb"),
		LIST_3("milgp_v_jpc_teamleader_belt_gry")
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr_iar_m203_blk$"
	};
	backpackItems[] =
	{
		LIST_2("pca_mag_30Rnd_556x45_M856A1_PMAG_Blk"),
		LIST_13("rhs_mag_M441_HE"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr_iar_blk$"
	};
	vest[] = 
	{
		LIST_2("milgp_v_jpc_assaulter_belt_blk"),
		LIST_3("milgp_v_jpc_assaulter_belt_gry"),
		LIST_2("milgp_v_jpc_assaulter_belt_cb")
	};
	backpackItems[] =
	{
		LIST_2("pca_mag_30Rnd_556x45_M856A1_PMAG_Blk"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	vest[] = 
	{
		LIST_2("milgp_v_jpc_medic_belt_blk"),
		LIST_3("milgp_v_jpc_medic_belt_gry"),
		LIST_2("milgp_v_jpc_medic_belt_cb")
	};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
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
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	vest[] = 
	{
		"milgp_v_jpc_hgunner_belt_cb"
	};
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_amg_blk"
	};
	scope[] = 
	{
		"$NONE_rksl_optic_eot552x$"
	};
	bipod[] = 
	{
		"bipod_01_f_blk"
	};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25$"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("hlc_15Rnd_9x19_FMJ_P226"),
		LIST_3("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
	};
	backpackItems[] = 
	{
		LIST_6("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	backpackItems[] = 
	{
		LIST_8("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class vp : baseMan
{
	displayName = "VIP";
	uniform[] =
	{
		"CUP_U_C_Labcoat_03"
	};
	headgear[] =
	{
		"H_Cap_surfer"
	};
	backpack[] =
	{
		"pca_backpack_invisible"
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
	linkedItems[] +=
	{
		"rhssaf_zrak_rd7j"
	};
};