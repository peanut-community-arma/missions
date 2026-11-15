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
	items[] = {};
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
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"U_BG_Guerilla2_2",
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla2_3",
		"U_Marshal",
		"U_Rangemaster",
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_C_Man_casual_9_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_F",
		"Aegis_U_lxWS_ION_Casual_Hawaiian_2_F",
		"Aegis_U_lxWS_ION_Flanneltna_F",
		"U_C_Uniform_Formal_01_blue_F",
		"U_C_Uniform_Formal_01_striped_F",
		"U_C_Uniform_Formal_01_white_F",
		"U_B_ION_Uniform_01_poloshirt_blue_F",
		"U_B_ION_Uniform_01_tshirt_black_F",
		"U_C_Man_casual_2_F",
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"U_lxWS_ION_Casual3",
		"U_lxWS_ION_Casual5",
		"U_lxWS_ION_Casual2",
		"U_lxWS_ION_Casual4",
		"CUP_I_B_PMC_Unit_13",
		"CUP_I_B_PMC_Unit_15",
		"CUP_I_B_PMC_Unit_12",
		"CUP_I_B_PMC_Unit_3",
		"CUP_I_B_PMC_Unit_2",
		"CUP_I_B_PMC_Unit_1",
		"CUP_I_B_PMC_Unit_4",
		"CUP_I_B_PMC_Unit_7",
		"CUP_I_B_PMC_Unit_6",
		"CUP_I_B_PMC_Unit_5",
		"CUP_I_B_PMC_Unit_8",
		"CUP_I_B_PMC_Unit_11",
		"CUP_I_B_PMC_Unit_10",
		"CUP_I_B_PMC_Unit_9",
		"CUP_I_B_PMC_Unit_42",
		"CUP_I_B_PMC_Unit_41",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_39",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_38",
		"CUP_I_B_PMC_Unit_37",
		"U_Simc_bdu_civ",
		"U_simc_bdu_civ_trop",
		"U_Simc_DCU_civ",
		"U_Simc_DCU_civ_trop",
		"U_simc_bdu_civ_surf",
		"U_simc_civ_jean_blau_dunkel_trop",
		"U_simc_civ_jean_blau_trop",
		"U_simc_civ_jean_grun_trop",
		"U_simc_civ_jean_rot_ligt_trop",
		"U_simc_civ_jean_rot_trop",
		"U_simc_civ_jean_weiss_dunkel_trop",
		"U_simc_civ_jean_weiss_trop",
		"U_simc_civ_jean_khk_trop",
		"U_simc_surf"
	};
	vest[] = 
	{
		"CUP_V_CPC_communications_coy",
		"CUP_V_CPC_Fast_coy",
		"CUP_V_CPC_light_coy",
		"CUP_V_CPC_medical_coy",
		"CUP_V_CPC_tl_coy",
		"CUP_V_CPC_weapons_coy",
		"CUP_V_CPC_communicationsbelt_coy",
		"CUP_V_CPC_Fastbelt_coy",
		"CUP_V_CPC_lightbelt_coy",
		"CUP_V_CPC_medicalbelt_coy",
		"CUP_V_CPC_tlbelt_coy",
		"CUP_V_CPC_weaponsbelt_coy"
	};
	headgear[] = 
	{
		"H_Bandanna_gry",
		"H_Bandanna_cbr",
		"H_Bandanna_khk",
		"H_Bandanna_khk_hs",
		"H_Watchcap_blk",
		"H_Watchcap_cbr",
		"H_Booniehat_khk",
		"H_Booniehat_khk_hs",
		"H_Booniehat_oli",
		"H_Booniehat_tan",
		"H_Cap_blk",
		"H_Cap_blu",
		"H_Cap_grn",
		"H_Cap_blk_ION",
		"H_Cap_oli",
		"H_Cap_oli_hs",
		"H_Cap_red",
		"H_Cap_surfer",
		"H_Cap_tan",
		"H_Cap_khaki_specops_UK",
		"H_Cap_usblack",
		"H_Cap_tan_specops_US",
		"H_HelmetB_light_black",
		"H_Cap_headphones",
		"H_Shemag_khk",
		"H_Shemag_olive",
		"H_Shemag_olive_hs",
		"H_ShemagOpen_tan",
		"H_ShemagOpen_khk",
		"Aegis_lxWS_H_bmask_UwU",
		"H_Watchcap_cbr_hs",
		"H_Watchcap_camo_hs",
		"H_Watchcap_blk_hs",
		"H_Watchcap_khk_hs",
		"H_Watchcap_red",
		"H_Booniehat_blk",
		"H_Booniehat_mgrn_hs",
		"H_Booniehat_oli_hs",
		"H_Cap_blk_ION_hs",
		"H_Cap_usblack_hs",
		"H_Cap_khaki_specops_UK_hs",
		"H_Cap_UK_mtp",
		"H_HeadSet_olive_F",
		"H_HeadSet_sand_F",
		"H_Headset_light",
		"Aegis_H_Helmet_FASTMT_blk_F",
		"Aegis_H_Helmet_FASTMT_Cover_blk_F",
		"Aegis_H_Helmet_FASTMT_Cover_rgr_F",
		"Aegis_H_Helmet_FASTMT_Cover_tan_F",
		"Aegis_H_Helmet_FASTMT_cbr_F",
		"Aegis_H_Helmet_FASTMT_rgr_F",
		"Aegis_H_Helmet_FASTMT_Headset_blk_F",
		"Aegis_H_Helmet_FASTMT_Headset_cbr_F",
		"Aegis_H_Helmet_FASTMT_Headset_rgr_F",
		"Aegis_H_Helmet_FASTMT_Headset_tan_F",
		"Aegis_H_Helmet_FASTMT_tan_F",
		"H_Cap_headphones_blk",
		"H_Cap_headphones_gry",
		"H_Cap_headphones_blk_ION",
		"H_Cap_headphones_tan",
		"H_Hat_Pakol_brn_F",
		"H_Hat_Pakol_gry_F",
		"H_Hat_Pakol_tan_F",
		"lxWS_H_bmask_base",
		"H_Cap_headphones_ion_lxws",
		"lxWS_H_CapB_rvs_blk_ION",
		"lxWS_H_Headset",
		"H_Hat_Safari_sand_F",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Green_1",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Green_2",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Green_3",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Green_4",
		"CUP_H_RUS_Ratnik_Balaclava_6M21_Green_1",
		"CUP_H_RUS_Ratnik_Balaclava_6M21_Green_2",
		"CUP_H_RUS_Ratnik_Balaclava_6M21_Green_3",
		"CUP_H_RUS_Ratnik_Balaclava_6M21_Green_4",
		"CUP_H_RUS_Bandana_GSSh_Headphones",
		"CUP_H_PMC_Beanie_Headphones_Black",
		"CUP_H_PMC_Cap_Burberry",
		"CUP_H_PMC_Cap_Back_Burberry",
		"CUP_H_PMC_Cap_Back_PRR_Burberry",
		"CUP_H_PMC_Cap_PRR_Burberry",
		"CUP_H_PMC_Cap_Grey",
		"CUP_H_PMC_Cap_Back_Grey",
		"CUP_H_PMC_Cap_Back_EP_Grey",
		"CUP_H_PMC_Cap_Back_PRR_Grey",
		"CUP_H_PMC_Cap_EP_Grey",
		"CUP_H_PMC_Cap_PRR_Grey",
		"CUP_H_PMC_Cap_Back_Tan",
		"CUP_H_PMC_Cap_Back_EP_Tan",
		"CUP_H_PMC_Cap_Back_PRR_Tan",
		"CUP_H_PMC_Cap_EP_Tan",
		"CUP_H_PMC_Cap_PRR_Tan",
		"CUP_H_USArmy_Helmet_ECH2_Black",
		"CUP_H_USArmy_Helmet_ECH1_Black",
		"CUP_H_FR_ECH",
		"CUP_H_USArmy_Helmet_ECH1_Sand",
		"CUP_H_RUS_Ratnik_6M2_Desert",
		"CUP_H_RUS_Ratnik_6M2_Summer",
		"CUP_H_RUS_Ratnik_6M21_Desert",
		"CUP_H_RUS_Ratnik_6M21_Summer",
		"CUP_H_Ger_M92_Black",
		"CUP_H_Ger_M92_Black_GG",
		"CUP_H_Ger_M92_Black_GG_CB",
		"CUP_H_Ger_M92_Black_GG_CF",
		"CUP_H_CZ_Helmet07",
		"CUP_H_CZ_Helmet08",
		"CUP_H_CZ_Helmet10",
		"CUP_H_CZ_Helmet09",
		"CUP_H_OpsCore_Black",
		"CUP_H_OpsCore_Black_NoHS",
		"CUP_H_OpsCore_Green",
		"CUP_H_OpsCore_Green_NoHS",
		"CUP_H_OpsCore_Covered_MTP",
		"CUP_H_OpsCore_Covered_MTP_NoHS",
		"CUP_H_OpsCore_Covered_MCAM",
		"CUP_H_OpsCore_Covered_MCAM_NoHS",
		"CUP_H_OpsCore_Black_SF",
		"CUP_H_OpsCore_Green_SF",
		"CUP_H_OpsCore_Covered_MTP_SF",
		"CUP_H_OpsCore_Covered_MCAM_US_SF",
		"CUP_H_OpsCore_Covered_MCAM_SF",
		"CUP_H_CZ_Pakol_headset_f_brown",
		"CUP_H_CZ_Pakol_headset_b_grey",
		"CUP_H_PMC_PRR_Headset",
		"JCA_H_HelmetHBK_black_F",
		"JCA_H_HelmetHBK_chops_black_F",
		"JCA_H_HelmetHBK_ear_black_F",
		"JCA_H_HelmetHBK_headset_black_F",
		"JCA_H_HelmetHBK_olive_F",
		"JCA_H_HelmetHBK_chops_olive_F",
		"JCA_H_HelmetHBK_ear_olive_F",
		"JCA_H_HelmetHBK_headset_olive_F",
		"JCA_H_HelmetHBK_sand_F",
		"JCA_H_HelmetHBK_chops_sand_F",
		"JCA_H_HelmetHBK_ear_sand_F",
		"JCA_H_HelmetHBK_headset_sand_F",
		"TC_Helmet_CowboyHat1",
		"TC_Helmet_Invisible_Medium"
	};
	hmd[] = 
	{
		"ACE_NVG_Gen4_Black",
		"ACE_NVG_Gen4_Black_WP"
	};
	backpack[] = 
	{
		"B_Carryall_blk",
		"B_Carryall_cbr",
		"B_Carryall_mcamo",
		"B_Carryall_oli",
		"B_Kitbag_cbr",
		"B_Kitbag_rgr",
		"B_Kitbag_mcamo",
		"B_Kitbag_sgg",
		"B_Kitbag_tan",
		"B_Kitbag_blk",
		"B_TacticalPack_khk",
		"B_TacticalPack_sgg",
		"B_CivilianBackpack_01_Everyday_Black_F",
		"pca_backpack_invisible_large"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_XM8_Carbine",
		"CUP_arifle_XM8_Carbine_FG",
		"CUP_arifle_XM8_Compact",
		"CUP_arifle_XM8_Compact_FG"
	};
	scope[] = 
	{
		"CUP_optic_ISM_PCAP"
	};
	attachment[] = 
	{
		"ACE_DBAL_A3_Red"
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
		LIST_2("ACE_splint"),
		LIST_2("ACE_CableTie"),
		"ACE_IR_Strobe_Item"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("CUP_30Rnd_556x45_XM8")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_556x45_XM8")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"CUP_V_CPC_weaponsbelt_coy"
	};
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_XM8_SAW",
		"CUP_arifle_XM8_SAW_FG"
	};
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("JCA_15Rnd_9x19_P226_FMJ_Mag"),
		LIST_3("CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = 
	{
		"CUP_sgun_AA12"
	};
	secondaryWeapon[] = 
	{
		"ptv_m72a7"
	};
	backpackItems[] = 
	{
		LIST_4("CUP_20Rnd_B_AA12_Slug")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"CUP_V_CPC_tlbelt_coy",
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_XM8_Carbine_GL"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_21("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_XM8_Carbine_GL"
	};
	backpackItems[] = 
	{
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_TE1_Red_Tracer_556x45_XM8"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	vest[] =
	{
		"CUP_V_CPC_tlbelt_coy"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_XM8_Carbine_GL"
	};
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	magazines[] += 
	{
		LIST_2("JCA_15Rnd_9x19_P226_FMJ_Mag")
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_TE1_Red_Tracer_556x45_XM8"),
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_8("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpack[] =
	{
		"B_Carryall_cbr"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_1("SmokeShellRed")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	vest[] =
	{
		"CUP_V_CPC_medicalbelt_coy"
	};
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_quikclot"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit"),
		LIST_30("ACE_suture")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_30Rnd_556x45_XM8"),
		LIST_2("JCA_15Rnd_9x19_P226_FMJ_Mag")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_10("ACE_quikclot"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	vest[] = 
	{
		"CUP_V_CPC_weaponsbelt_coy"
	};
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M240_B"
	};
	scope[] = 
	{
		"CUP_optic_ElcanM145"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("JCA_15Rnd_9x19_P226_FMJ_Mag"),
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_5("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_30Rnd_556x45_XM8"),
		LIST_2("JCA_15Rnd_9x19_P226_FMJ_Mag")
	};
	backpackItems[] = 
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_MAAWS"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_MAAWS_Scope"
	};
	magazines[] += 
	{
		LIST_2("JCA_15Rnd_9x19_P226_FMJ_Mag")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	magazines[] += 
	{
		LIST_2("JCA_15Rnd_9x19_P226_FMJ_Mag")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"CUP_H_CVC"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_XM8")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("JCA_15Rnd_9x19_P226_FMJ_Mag"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	headgear[] = 
	{
		"H_PilotHelmetHeli_B",
		"H_PilotHelmetHeli_O",
		"H_PilotHelmetHeli_B_visor_up",
		"H_PilotHelmetHeli_I_E_visor_up",
		"CUP_H_SPH4_green",
		"CUP_H_SPH4_green_visor",
		"CUP_H_SPH4_grey",
		"CUP_H_SPH4_grey_visor",
		"CUP_H_SPH4_khaki",
		"CUP_H_SPH4_khaki_visor",
		"CUP_H_SPH4",
		"CUP_H_SPH4_visor",
		"H_CrewHelmetHeli_B",
		"H_CrewHelmetHeli_O",
		"H_CrewHelmetHeli_I_E"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("CUP_30Rnd_556x45_XM8"),
		LIST_3("JCA_15Rnd_9x19_P226_FMJ_Mag"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"B_Carryall_cbr"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag")
	};
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//
class jp : rm 
{
	displayName = "Jet Pilot";
	uniform[] = 
	{
		"CUP_U_B_USArmy_PilotOverall"
	};
	vest[] = 
	{
		"CUP_V_B_PilotVest"
	};
	headgear[] = 
	{
		"H_PilotHelmetFighter_B"
	};
	backpack[] = 
	{
		"B_Parachute"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = {};
	sidearmWeapon[] = 
	{
		"JCA_hgun_P226_black_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("JCA_15Rnd_9x19_P226_FMJ_Mag"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"CUP_srifle_M14_DMR"
	};
	scope[] = 
	{
		"CUP_optic_ACOG_TA01B_Black"
	};
	attachment[] = {};
	bipod[] = 
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_20Rnd_762x51_DMR")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_20Rnd_762x51_DMR")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	scope[] = 
	{
		"CUP_optic_ACOG_TA01B_Black"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		"ACE_SpottingScope",
		"ACE_Tripod"
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class hmg : rm 
{
	displayName = "Heavy Machine Gunner";
	backpack[] = 
	{
		"CUP_B_M2_Gun_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_XM8"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"CUP_B_M2_Tripod_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_XM8"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};