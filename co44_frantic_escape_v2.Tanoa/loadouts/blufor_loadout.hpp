class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"aegis_ccu_tropic",
		"aegis_ccu_cu_tropic",
		"aegis_ccu_rs_tropic"
	};
	vest[] = 
	{
		"aegis_platecarrier_rig_tropic"
	};
	backpack[] = 
	{
		"aegis_assaultpack_tropic"
	};
	headgear[] = 
	{
		"aegis_ech_enh_tropic"
	};
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
	magazines[] = 
	{
		LIST_2("HandGrenade"),
		LIST_2("SmokeShell")
	};
	items[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		"ACRE_PRC343"
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"ItemGPS"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_ak103_zenitco01_b33",
		"rhs_weap_ak104_zenitco01_b33",
		"rhs_weap_ak105_zenitco01_b33",
		"aegis_weap_ak12",
		"aegis_weap_ak12u",
		"arifle_AK12_F",
		"arifle_AK12U_F",
		"sfp_weap_ak5c_blk",
		"CUP_arifle_AKS_Gold",
		"fwa_weap_ar10",
		"rhs_weap_asval_grip_npz",
		"aegis_weap_aur90",
		"aegis_weap_aur90_carbine",
		"fwa_weap_bm59",
		"fwa_weap_m1918_bar",
		"hlc_rifle_m16a1",
		"hlc_rifle_m16a2",
		"hlc_rifle_m16a3",
		"hlc_rifle_m4a1_hk",
		"hlc_rifle_m4a1_cqbr_hk",
		"hlc_rifle_mk18mod0_hk",
		"fwa_weap_colt_715_canada_c7",
		"hgun_PDW2000_F",
		"CUP_arifle_CZ805_A1",
		"CUP_arifle_CZ805_A2",
		"CUP_CZ_BREN2_762_14",
		"CUP_CZ_BREN2_762_8",
		"CUP_CZ_BREN2_556_11",
		"CUP_CZ_BREN2_556_14",
		"CUP_CZ_BREN2_556_8",
		"bear_diemaco_c8",
		"fwa_weap_em2",
		"hlc_rifle_l1a1_auto",
		"aegis_weap_f2000_blk",
		"aegis_weap_f2000c_blk",
		"amf_weap_famas_g2",
		"fwa_weap_fn49",
		"hlc_rifle_scarh_cqc",
		"hlc_rifle_scarh_std",
		"hlc_rifle_scarl300_cqc",
		"hlc_rifle_scarl300_std",
		"hlc_rifle_scarl_cqc",
		"hlc_rifle_scarl_sc",
		"hlc_rifle_scarl_std",
		"hlc_rifle_scar_mk47",
		"CUP_arifle_Fort221",
		"CUP_arifle_Fort222",
		"aegis_weap_fort651_blk",
		"aegis_weap_fort652_blk",
		"aegis_weap_g36c_65_blk",
		"aegis_weap_g36k_65_blk",
		"CUP_arifle_Galil_556_black",
		"CUP_arifle_Galil_black",
		"hlc_rifle_hk33a2_ris",
		"hlc_rifle_hk416d10rahg_mstock",
		"hlc_rifle_hk416d145smr",
		"hlc_rifle_hk416d165",
		"hlc_rifle_hk416n",
		"hlc_rifle_hk53_ris",
		"hlc_rifle_g36a1_romi",
		"hlc_rifle_g36a3_romi",
		"hlc_rifle_g36a4_kac",
		"hlc_rifle_g36c_romi",
		"hlc_rifle_g36ca4_kac",
		"hlc_rifle_g36ka3_romi",
		"hlc_rifle_g36ka4_kac",
		"hlc_rifle_g3ka4",
		"hlc_rifle_g3a3_modern_ris_blk",
		"hlc_smg_mp5a2_tac",
		"hlc_smg_mp5a3_tac",
		"hlc_smg_mp5a4_tac",
		"hlc_smg_mp5a4_10_tac",
		"hlc_smg_mp5k",
		"hlc_smg_mp5n_tac",
		"hlc_smg_mp5sd5",
		"arifle_SPAR_01_blk_F",
		"hlc_rifle_ak12",
		"hlc_rifle_aku12",
		"camel_weap_k1a_blk",
		"rhs_weap_kar98k",
		"arifle_Katiba_F",
		"arifle_Katiba_C_F",
		"CUP_arifle_L85A2",
		"aegis_weap_sa80_blk",
		"aegis_weap_sa80c_blk",
		"fwa_weap_m1_carbine",
		"rhs_weap_m1garand_sa43",
		"rhs_weap_m14_ris",
		"rhs_weap_m16a4_carryhandle",
		"fwa_weap_m1a1_thompson",
		"fwa_weap_m2_carbine",
		"rhs_weap_m21a_pr",
		"rhs_weap_m21s_pr",
		"rhs_weap_m27iar",
		"rhs_weap_m3a1",
		"rhs_weap_m3a1_specops",
		"rhs_weap_m4_carryhandle",
		"CUP_arifle_M4_MOE_BW",
		"rhs_weap_m70ab2",
		"rhs_weap_m92",
		"CUP_smg_Mac10_rail",
		"fwa_weap_mas49",
		"fwa_weap_mat49",
		"bnae_weap_mk1",
		"rhs_weap_m38",
		"fwa_weap_mp40",
		"rhs_weap_MP44",
		"rhsusf_weap_MP7A2",
		"arifle_MSBS65_black_F",
		"arifle_MSBS65_UBS_black_F",
		"arifle_MX_Black_F",
		"arifle_MXC_Black_F",
		"aegis_weap_ncar15_blk",
		"aegis_weap_ncar15_carbine_blk",
		"rhs_weap_m305a_ris",
		"CUP_arifle_OTS14_GROZA_762",
		"CUP_arifle_OTS14_GROZA",
		"SMG_03C_black",
		"CUP_smg_vityaz_top_rail",
		"CUP_smg_bizon",
		"rhs_weap_pp2000",
		"fwa_weap_pps43",
		"fwa_weap_ppsh41",
		"ptv_weap_cbj_ms_65_blk",
		"ptv_weap_cbj_ms_blk",
		"ptv_weap_m90_rail_blk",
		"ptv_weap_m90c_rail_blk",
		"ptv_weap_m90k_rail_blk",
		"arifle_CTAR_blk_F",
		"pca_weap_qbz95",
		"hlc_rifle_acr68_sbr_blk",
		"hlc_rifle_acr68_car_blk",
		"hlc_rifle_acr68_iar_blk",
		"hlc_rifle_acr_sbr_pink",
		"hlc_rifle_acr_car_pink",
		"hlc_rifle_acr_iar_pink",
		"arifle_SDAR_F",
		"bnae_weap_rk95r",
		"fwa_weap_ruger_mini14",
		"rhs_weap_savz58v_ris",
		"CUP_arifle_Sa58RIS2",
		"rhs_weap_savz61",
		"CUP_arifle_DSA_SA58_OSW",
		"CUP_smg_saiga9",
		"CUP_arifle_SAIGA_MK03_top_rail",
		"SMG_02_F",
		"hlc_rifle_stgw57_ris",
		"hlc_rifle_sg550_ris",
		"hlc_rifle_sg551lb_ris",
		"hlc_rifle_sg551sb_ris",
		"hlc_rifle_sg553lb_ris",
		"hlc_rifle_sg553sb_ris",
		"hlc_rifle_sg553rlb",
		"hlc_rifle_sg553rsb",
		"fwa_weap_sks",
		"hlc_rifle_m1903a1",
		"CUP_arifle_SR3M_Vikhr_VFG_top_rail",
		"fwa_weap_sterling_mk4",
		"fwa_weap_sterling_mk5",
		"hlc_rifle_auga2_blk",
		"hlc_rifle_auga2_car_blk",
		"hlc_rifle_auga2_hbar_blk",
		"hlc_rifle_auga2_para_blk",
		"hlc_rifle_auga3_blk",
		"aegis_weap_tar21_cqc_blk",
		"aegis_weap_tar21_blk",
		"arifle_ARX_blk_F",
		"CUP_smg_UZI",
		"aegis_weap_vector_blk",
		"rhs_weap_vhsd2",
		"rhs_weap_vhsk2",
		"fwa_weap_vz52",
		"hlc_rifle_xm8_mwsf_carbine",
		"hlc_rifle_xm8_mwsf_compact"
	};
	scope[] =
	{
		"rhs_acc_rakurspm",
		"rhs_acc_1p87",
		"cup_optic_1p87_ris",
		"cup_optic_aimpoint_5000",
		"cup_optic_compm4",
		"cup_optic_microt1",
		"cup_optic_microt1_low",
		"cup_optic_ac11704_black",
		"sma_acc_barska_rds",
		"optic_yorris",
		"optic_aco_grn",
		"optic_aco",
		"optic_aco_grn_smg",
		"optic_aco_smg",
		"sma_acc_cmore_blk",
		"hlc_optic_docterr",
		"rhs_acc_ekp8_18",
		"cup_optic_holoblack",
		"sma_acc_eotech_552_blk",
		"sma_acc_eotech_552_kf_blk",
		"rksl_optic_eot552",
		"rksl_optic_eot552x",
		"cup_optic_eotech553_black",
		"sma_acc_eotech_xps3_blk",
		"optic_holosight_blk_f",
		"optic_holosight_smg_blk_f",
		"rhsusf_acc_eotech",
		"hlc_optic_ism1400a7",
		"rhsusf_acc_m2a1",
		"rhsusf_acc_eotech_552",
		"rhsusf_acc_compm4",
		"cup_optic_compm2_low",
		"cup_optic_compm2_black",
		"cup_optic_mars",
		"cup_optic_mrad",
		"cup_optic_zddot",
		"cup_optic_mepro",
		"cup_optic_mepro_moa_clear",
		"cup_optic_mepro_openx_orange",
		"cup_optic_mepro_tri_clear",
		"sma_acc_micro_t2",
		"sma_acc_micro_t2_low",
		"sma_acc_micro_t2_g33",
		"rhsusf_acc_mrds",
		"cup_optic_okp_7_rail",
		"rhs_acc_okp7_picatinny",
		"ptv_acc_compm4s",
		"ptv_acc_aimcs",
		"ptv_acc_t1",
		"ptv_acc_t1_low",
		"ptv_acc_eot552",
		"rhsusf_acc_rm05",
		"rhsusf_acc_rx01_nofilter",
		"rhsusf_acc_rx01",
		"hlc_optic_romeov",
		"rhsusf_acc_t1_high",
		"rhsusf_acc_t1_low",
		"sma_acc_tasco_propoint",
		"sma_acc_tasco_propoint_glare",
		"cup_optic_trijiconrx01_black",
		"cup_optic_trijiconrx01_kf_black",
		"cup_optic_vortexrazor_uh1_black",
		"sma_acc_vortex_blk",
		"sma_acc_vortex_lc_blk",
		"rhsusf_acc_eotech_xps3",
		"cup_optic_zeisszpoint"	
	};
	bipod[] =
	{
		"ptv_acc_grip4",
		"ptv_acc_grip3",
		"ptv_acc_hbrs",
		"ptv_acc_grip1",
		"ptv_acc_grip2",
		"rhs_acc_grip_ffg2",
		"rhs_acc_grip_rk2",
		"rhs_acc_grip_rk6",
		"rhsusf_acc_grip2",
		"rhsusf_acc_grip1",
		"rhsusf_acc_kac_grip",
		"rhsusf_acc_rvg_blk",
		"rhsusf_acc_tdstubby_blk",
		"rhsusf_acc_grip3"
	};
	attachment[] =
	{
		"pca_flashlight_led",
		"pca_flashlight_m952v",
		"pca_flashlight_sf",
		"pca_flashlight_wmx",
		"acc_pointer_ir",
		"acc_flashlight",
		"ace_acc_pointer_green",
		"cup_acc_anpeq_15_flashlight_black_l",
		"cup_acc_anpeq_15_top_flashlight_black_l",
		"cup_acc_anpeq_2_grey",
		"cup_acc_anpeq_2_flashlight_black_l",
		"cup_acc_flashlight",
		"cup_acc_llm01_l",
		"cup_acc_llm_black",
		"cup_acc_zenit_2ds",
		"hlc_acc_dbalpl_side",
		"hlc_acc_dbalpl_side_fl",
		"hlc_acc_tlr1_side",
		"rhs_acc_2dpzenit_ris",
		"rhs_acc_perst1ik_ris",
		"rhs_acc_perst3",
		"rhsusf_acc_anpeq15side_bk",
		"rhsusf_acc_anpeq15_bk_top",
		"rhsusf_acc_anpeq15_bk",
		"rhsusf_acc_anpeq15_bk_light",
		"rhsusf_acc_anpeq15a",
		"rhsusf_acc_m952v",
		"rhsusf_acc_wmx_bk"
	};
	secondaryWeapon[] =
	{
		"launch_NLAW_F",
		"CUP_launch_APILAS",
		"CUP_launch_BF3",
		"CUP_launch_HCPF3",
		"CUP_launch_PzF3",
		"rhs_weap_rpg18",
		"rhs_weap_rpg26",
		"rhs_weap_rshg2",
		"rhs_weap_panzerfaust60",
		"rhs_weap_rpg75",
		"rhs_weap_m80",
		"rhs_weap_M136",
		"rhs_weap_m72a7"
	};
	sidearmWeapon[] =
	{
		"rhs_weap_6p53",
		"rhs_weap_pb_6p9",
		"hlc_pistol_dl44",
		"CUP_hgun_Browning_HP",
		"hgun_Pistol_heavy_02_F",
		"aegis_weap_cc2_blk",
		"CUP_hgun_Duty",
		"rhs_weap_cz99_etched",
		"CUP_hgun_Deagle",
		"aegis_weap_fnx45_blk",
		"rhsusf_weap_glock17g4",
		"CUP_hgun_M17_Black",
		"rhsusf_weap_m1911a1",
		"rhsusf_weap_m9",
		"CUP_hgun_Mac10",
		"hlc_pistol_c96",
		"hlc_pistol_c96_prussian",
		"hlc_pistol_c96_m712",
		"CUP_hgun_MicroUzi",
		"CUP_hgun_Mk23",
		"rhs_weap_pya",
		"hgun_Rook40_F",
		"rhsusf_weap_MP7A2_folded",
		"hgun_P07_blk_F",
		"rhs_weap_makarov_pm",
		"rhs_weap_pp2000_folded",
		"ptv_weap_usp45t",
		"rhs_weap_savz61_folded",
		"bnae_weap_colt357",
		"hlc_pistol_mk25_pink",
		"hlc_pistol_mk25tr_pink",
		"hlc_pistol_p226r_combat",
		"hlc_pistol_p229r_combat",
		"CUP_hgun_TaurusTracker455_gold",
		"CUP_hgun_TEC9_FA",
		"rhs_weap_tt33",
		"rhs_weap_type94_new",
		"CUP_hgun_UZI"
	};
};
	
class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"aegis_carryall_tropic"
	};
	primaryWeapon[] = 
	{
		"fwa_weap_bren_l4",
		"fwa_weap_bren_mk2",
		"fwa_weap_m1919a6",
		"rhs_weap_fnmag",
		"LMG_03_F",
		"aegis_weap_hk121_blk",
		"hlc_rifle_m1941",
		"hlc_rifle_m1941_308",
		"sps_weap_kac_amg_blk",
		"sps_weap_kac_lamg_hg_blk",
		"CUP_arifle_Sa58_Klec_ris",
		"CUP_arifle_L86A2",
		"MMG_02_black_F",
		"rhs_weap_m249_pip",
		"rhs_weap_m249_light_S",
		"CUP_lmg_M60E4",
		"rhs_weap_m84",
		"fwa_weap_aa52_nf1",
		"CUP_arifle_MG36",
		"rhs_weap_mg42",
		"CUP_lmg_Mk48",
		"arifle_MX_SW_Black_F",
		"aegis_weap_ncar15_lsw_blk",
		"pca_weap_negev_ng5",
		"aegis_weap_zafir_blk",
		"rhs_weap_pkm",
		"rhs_weap_pkp",
		"ptv_weap_m62mr_blk",
		"arifle_CTARS_blk_F",
		"pca_weap_qjb95",
		"hlc_lmg_mg3kws_blk",
		"fwa_weap_rpd",
		"arifle_RPK12_F",
		"aegis_weap_rpk16",
		"LMG_Mk200_black_F",
		"CUP_lmg_UK59",
		"hlc_rifle_xm8_mwsf_dmar"
	};
	bipod[] =
	{
		"bipod_03_f_blk",
		"bipod_02_f_blk",
		"bipod_01_f_blk",
		"hlc_bipod_utgshooters",
		"ptv_acc_grip3",
		"ptv_acc_hbrs",
		"rhsusf_acc_grip1",
		"rhsusf_acc_harris_bipod"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_glaunch_6G30",
		"rhs_weap_ak103_gp25_npz",
		"aegis_weap_ak12_gp34",
		"arifle_AK12_GL_F",
		"sfp_weap_ak5c_m203_blk",
		"aegis_weap_aur90_eglm",
		"hlc_rifle_m16a1_m203",
		"hlc_rifle_m16a2_m203",
		"hlc_rifle_m16a3_m203",
		"hlc_rifle_m4a1_m203_hk",
		"CUP_arifle_CZ805_GL",
		"CUP_CZ_BREN2_762_14_GL",
		"CUP_CZ_BREN2_556_11_GL",
		"CUP_CZ_BREN2_556_14_GL",
		"bear_diemaco_c8_m203",
		"aegis_weap_f2000_gl_blk",
		"hlc_rifle_scarh_cqc_agc",
		"hlc_rifle_scarh_cqc_eglm",
		"hlc_rifle_scarh_std_agc",
		"hlc_rifle_scarh_std_eglm",
		"hlc_rifle_scarl300_cqc_eglm",
		"hlc_rifle_scarl300_std_agc",
		"hlc_rifle_scarl300_std_eglm",
		"hlc_rifle_scarl_cqc_eglm",
		"hlc_rifle_scarl_std_agc",
		"hlc_rifle_scarl_std_eglm",
		"aegis_weap_fort652_gl_blk",
		"aegis_weap_g36k_gl_65_blk",
		"hlc_rifle_hk416d10_agc_camo_grn",
		"hlc_rifle_hk416d145_agc",
		"hlc_rifle_hk416d165_agc",
		"hlc_rifle_hk416n_agc",
		"hlc_rifle_g36a1_romi_ag36",
		"hlc_rifle_g36a3_romi_ag36",
		"hlc_rifle_g36a4_kac_ag36",
		"hlc_rifle_g3ka4_m203",
		"hlc_smg_mp5n_9mmar",
		"arifle_SPAR_01_GL_blk_F",
		"hlc_rifle_ak12_gp25",
		"arifle_Katiba_GL_F",
		"aegis_weap_sa80_eglm_blk",
		"rhs_weap_m16a4_carryhandle_M203",
		"CUP_lmg_m249_para_gl",
		"rhs_weap_m32",
		"rhs_weap_m4_carryhandle_m203",
		"rhs_weap_m4_carryhandle_m203S",
		"rhs_weap_m79",
		"arifle_MSBS65_GL_black_F",
		"arifle_MX_GL_Black_F",
		"aegis_weap_ncar15_gl_blk",
		"CUP_arifle_OTS14_GROZA_762_GL",
		"CUP_arifle_OTS14_GROZA_GL",
		"ptv_weap_m90k_rail_m203_blk",
		"arifle_CTAR_GL_blk_F",
		"pca_weap_qbz95_qlg91b",
		"hlc_rifle_acr68_sbr_m203_blk",
		"hlc_rifle_acr68_car_m203_blk",
		"hlc_rifle_acr68_iar_m203_blk",
		"hlc_rifle_acr_sbr_m203_pink",
		"hlc_rifle_acr_car_m203_pink",
		"hlc_rifle_acr_iar_m203_pink",
		"CUP_arifle_Sa58RIS2_gl",
		"CUP_arifle_DSA_SA58_OSW_M203",
		"hlc_rifle_sg550_tac_m203",
		"hlc_rifle_sg551lb_tac_m203",
		"hlc_rifle_sg551sb_tac_m203",
		"hlc_rifle_auga3_m203_blk",
		"aegis_weap_tar21_gl_blk",
		"rhs_weap_vhsd2_bg",
		"hlc_rifle_xm8_mwsf_carbine_xm320"
	};
	sidearmWeapon[] +=
	{
		"rhs_weap_M320"
	};
};

class tl : gren 
{
	displayName = "Team Leader";
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
		"aegis_kitbag_tropic"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
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
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"fwa_weap_ar10_prt_marksman",
		"CUP_srifle_AS50",
		"srifle_DMR_04_F",
		"srifle_DMR_05_hex_F",
		"CUP_srifle_CZ550_rail",
		"CUP_srifle_CZ750",
		"hlc_rifle_scarh_dmr",
		"hlc_rifle_scarh_ssr",		
		"hlc_rifle_scarl300_dmr",
		"hlc_rifle_scarl_dmr",
		"CUP_srifle_G22_blk",
		"srifle_GM6_F",
		"hlc_rifle_hk416d20",
		"arifle_SPAR_03_blk_F",
		"CUP_srifle_AWM_blk",
		"CUP_srifle_L129A1",
		"rhs_weap_M107",
		"rhs_weap_m14ebrri",
		"srifle_LRR_F",
		"rhs_weap_XM2010",
		"rhs_weap_m24sws",
		"rhs_weap_m40a5",
		"rhs_weap_m82a1",
		"rhs_weap_sr25",
		"CUP_srifle_Mk12SPR",
		"bnae_weap_mk1_t",
		"srifle_EBR_F",
		"rhs_weap_m38_rail",
		"arifle_MSBS65_Mark_black_F",
		"arifle_MXM_Black_F",
		"srifle_DMR_02_F",
		"srifle_DMR_07_blk_F",
		"hlc_rifle_acr68_dmr_blk",
		"hlc_rifle_acr_dmr_pink",
		"srifle_DMR_03_F",
		"hlc_rifle_m1903a1_sniper",
		"rhs_weap_svdp_npz",
		"rhs_weap_t5000",
		"aegis_weap_vs121_blk",
		"hlc_rifle_xm8_mwsf_dmar"
	};
	scope[] = 
	{
		"optic_sos"
	};
	bipod[] =
	{
		"bipod_03_f_blk",
		"bipod_02_f_blk",
		"bipod_01_f_blk",
		"hlc_bipod_utgshooters",
		"ptv_acc_grip3",
		"ptv_acc_hbrs",
		"rhsusf_acc_grip1",
		"rhsusf_acc_harris_bipod"
	};	
	linkedItems[] += 
	{
		"Binocular"
	};
};