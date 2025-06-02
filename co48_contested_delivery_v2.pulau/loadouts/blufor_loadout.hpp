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
		"$REMOVE_usm_bdum65_erdl$",
		"CUP_U_B_BDUv2_ERDL_highland",
		"CUP_U_B_BDUv2_roll_ERDL_highland",
		"CUP_U_B_BDUv2_roll2_ERDL_highland",
		"$NONE_usm_bdu_bti_erdl$",
		"$NONE_usm_bdu_btisrl_erdl$",
		"CUP_U_B_BDUv2_ERDL_highland",
		"U_B_T_Soldier_AR_F",
		"U_C_WorkerCoveralls",
		"U_I_G_Story_Protagonist_F",
		"U_B_ION_Uniform_01_poloshirt_wdl_F",
		"U_I_C_Soldier_Para_2_F",
		"U_I_C_Soldier_Para_4_F",
		"U_I_C_Soldier_Para_1_F",
		"bear_uniform_m93_duck_hunter",
		"CUP_U_B_BDUv2_roll2_dirty_CEU"

	};
	vest[] = 
	{
		"rhs_6b3_od_ak_1",
		"rhs_6b3_od_ak_2",
		"rhs_6b3_od_ak_3",
		LIST_8("pca_vest_invisible_plate")
	};
	headgear[] = 
	{
		"$NONE_usm_helmet_m1v2_erdl$",
		"$NONE_usm_helmet_m1v2_mit$",
		"$NONE_usm_helmet_m1v2_wdl$",
		"H_Simc_M1_erdl_ns",
		"H_Simc_M1_bitch_op",
		"H_Simc_M1_erdl_ns",

		
	"simc_m53_burlap_od_net_scrim",


	"H_Booniehat_wdl_hs",
	"H_Booniehat_wdl_hs",

	"Aegis_H_Milcap_nohs_wdl_F",
	"rhs_beanie_green",

	"H_Shemag_olive",
	"H_ShemagOpen_tan",
	"H_ShemagOpen_khk",

	
	//"H_HeadBandage_clean_F",
	//"H_HeadBandage_stained_F",
	//"H_HeadBandage_bloody_F",

	"H_Bandanna_camo",
	"H_Bandanna_surfer",
	"H_Bandanna_surfer_blk",

	"pca_headband_blk",
	"pca_headband",
	"pca_headband_red",
	"pca_headband_tan",


	"CUP_H_SLA_BeretRed",
	"pca_patrolcap_greek_lizard",
	"CUP_H_PMC_PRR_Headset",
	"CUP_H_TKI_Pakol_1_02"

	};
	backpack[] = 
	{
		"pca_rd54_od"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_akm",
		"rhs_weap_akms",
		"rhs_weap_pm63",
		"rhs_weap_m70ab2",
		"rhs_weap_m70b1",
		
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
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_13("rhssaf_30Rnd_762x39mm_M67")
	};
	backpackItems[] = 
	{
		LIST_4("rhssaf_30Rnd_762x39mm_M67")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_6b3_od_rpk"
	};
	primaryWeapon[] = 
	{
		"$NONE_fwa_weap_rpd$"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_3("fwa_100rnd_762x39mm_rpd_mixed")
	};
	backpackItems[] = 
	{
		LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = 
	{
		"rhs_weap_m92"
	};
	backpack[] = 
	{
		"rhs_rpg_6b3"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_rpg7_PG7V_mag"),
		LIST_2("rhs_rpg7_OG7V_mag")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"rhs_6b3_od_vog_1",
		"rhs_6b3_od_vog_2"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m70b3n_pbg40",
		"rhs_weap_akm_gp25",
		"rhs_weap_akms_gp25"
	};
	backpackItems[] = 
	{
		LIST_13("rhs_VOG25"),
		LIST_6("rhs_GRD40_White")
	};
};

class tl : rm
{
	displayName = "Team Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] += 
	{
		LIST_2("rhssaf_30Rnd_762x39mm_M67"),
		LIST_2("rhssaf_30Rnd_762x39mm_M78_tracer"),
		LIST_2("rhs_mag_rdg2_white")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";

	
};

class co : sl 
{
	displayName = "Platoon Commander";
	
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"rhs_assault_umbts"
	};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		//LIST_4("ACE_personalAidKit"),
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
		//LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	vest[] = 
	{
		"rhs_6b3_od_rpk"
	};
	backpack[] = 
	{
		"rhs_assault_umbts"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_mg3"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_3("CUP_8Rnd_9x18_Makarov_M"),
		LIST_3("rhsusf_100Rnd_762x51")
	};
	backpackItems[] = 
	{
		LIST_6("rhsusf_100Rnd_762x51")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"rhs_assault_umbts"
	};
	backpackItems[] = 
	{
		LIST_8("rhsusf_100Rnd_762x51")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"rhs_assault_umbts"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m67"
	};
	backpackItems[] = 
	{
		LIST_2("fwa_1rnd_m67_HEAT")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"rhs_assault_umbts"
	};
	backpackItems[] = 
	{
		LIST_2("fwa_1rnd_m67_HEAT"),
		"fwa_1rnd_m67_HE"
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"CUP_B_AlicePack_Khaki"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] += 
	{
		LIST_3("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] += 
	{
		"ToolKit"
		
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"pca_weap_svd_wood"
	};
	scope[] = 
	{
		"rhs_acc_pso1m2"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_SA61"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_3("CUP_20Rnd_B_765x17_Ball_M"),
		LIST_9("rhs_10Rnd_762x54mmR_7N14")
	};
	backpackItems[] = 
	{
		LIST_12("rhs_10Rnd_762x54mmR_7N14")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	primaryWeapon[] = 
	{
		"CUP_smg_M3A1_blk"
	};
	vest[] = 
	{
		"rhsusf_spcs_ucp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_cvc_helmet",
		"rhsusf_cvc_alt_helmet",
		"rhsusf_cvc_ess"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_9("CUP_30Rnd_45ACP_M3A1_BLK_M")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};


class hmg : rm 
{
	displayName = "Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_9("rhssaf_30Rnd_762x39mm_M67"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_csw_m3CarryTripodLow"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_rgd5"),
		LIST_9("rhssaf_30Rnd_762x39mm_M67"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};