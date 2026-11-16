class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"U_B_T_Soldier_F",
		"Atlas_U_B_T_JSOC_StealthUniform_F",
		"U_B_T_Soldier_SL_F"
	};
	vest[] = 
	{
		"V_PlateCarrier2_tna_F"
	};
	backpack[] = 
	{
		"B_AssaultPack_tna_F"
	};
	headgear[] = 
	{
		"H_HelmetB_Enh_tna_F"
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
		"arifle_AK12_545_F",
		"arifle_AK12U_545_F",
		"arifle_AK12_F",
		"arifle_AK12U_F",
		"sfp_weap_ak5c_blk",
		"CUP_arifle_AKS_Gold",
		"sp_fwa_ar10",
		"rhs_weap_asval_grip_npz",
		"arifle_AUG_black_F",
		"arifle_AUG_C_black_F",
		"sp_fwa_bm59",
		"sp_fwa_m1918a2_bar",
		"CUP_arifle_M16A1",
		"CUP_arifle_M16A2",
		"sp_fwa_ar15_646_a3",
		"$NONE_hlc_rifle_m4a1_hk$",
		"$NONE_hlc_rifle_m4a1_cqbr_hk$",
		"$NONE_hlc_rifle_mk18mod0_hk$",
		"sp_fwa_7a5_c7",
		"hgun_PDW2000_F",
		"CUP_arifle_CZ805_A1",
		"CUP_arifle_CZ805_A2",
		"CUP_CZ_BREN2_762_14",
		"CUP_CZ_BREN2_762_8",
		"CUP_CZ_BREN2_556_11",
		"CUP_CZ_BREN2_556_14",
		"CUP_CZ_BREN2_556_8",
		"bear_diemaco_c8",
		"$NONE_fwa_weap_em2$",
		"$NONE_hlc_rifle_l1a1_auto$",
		"arifle_Mk20_black_F",
		"arifle_Mk20C_black_F",
		"amf_weap_famas_g2",
		"sp_fwa_fn49",
		"arifle_SCAR_F",
		"$NONE_hlc_rifle_scarh_std$",
		"$NONE_hlc_rifle_scarl300_cqc$",
		"$NONE_hlc_rifle_scarl300_std$",
		"$NONE_hlc_rifle_scarl_cqc$",
		"$NONE_hlc_rifle_scarl_sc$",
		"$NONE_hlc_rifle_scarl_std$",
		"arifle_SCAR_F",
		"CUP_arifle_Fort221",
		"CUP_arifle_Fort222",
		"arifle_TRG20_black_F",
		"arifle_TRG21_black_F",
		"arifle_G36C_F",
		"arifle_G36_F",
		"CUP_arifle_Galil_556_black",
		"CUP_arifle_Galil_black",
		"$NONE_hlc_rifle_hk33a2_ris$",
		"$NONE_hlc_rifle_hk416d10rahg_mstock$",
		"$NONE_hlc_rifle_hk416d145smr$",
		"$NONE_hlc_rifle_hk416d165$",
		"$NONE_hlc_rifle_hk416n$",
		"$NONE_hlc_rifle_hk53_ris$",
		"$NONE_hlc_rifle_g36a1_romi$",
		"$NONE_hlc_rifle_g36a3_romi$",
		"$NONE_hlc_rifle_g36a4_kac$",
		"$NONE_hlc_rifle_g36c_romi$",
		"$NONE_hlc_rifle_g36ca4_kac$",
		"$NONE_hlc_rifle_g36ka3_romi$",
		"CUP_arifle_G36KA3_grip",
		"$NONE_hlc_rifle_g3ka4$",
		"CUP_arifle_G3A3_modern_ris_black",
		"$NONE_hlc_smg_mp5a2_tac$",
		"$NONE_hlc_smg_mp5a3_tac$",
		"CUP_smg_MP5A5_Rail_AFG",
		"$NONE_hlc_smg_mp5a4_10_tac$",
		"SMG_05_F",
		"$NONE_hlc_smg_mp5n_tac$",
		"CUP_smg_MP5SD6",
		"arifle_SPAR_01_blk_F",
		"arifle_AK12_545_F",
		"arifle_AK12U_545_F",
		"camel_weap_k1a_blk",
		"rhs_weap_kar98k",
		"arifle_Katiba_F",
		"arifle_Katiba_C_F",
		"CUP_arifle_L85A2",
		"arifle_SA80_blk_F",
		"arifle_SA80_C_blk_F",
		"sp_fwa_m1carbine",
		"rhs_weap_m1garand_sa43",
		"rhs_weap_m14_ris",
		"CUP_arifle_M16A4_Base",
		"sp_fwa_smg_thompson_m1a1",
		"sp_fwa_m2carbine",
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
		"sp_fwa_mas_49",
		"sp_fwa_smg_mat49",
		"bnae_weap_mk1",
		"rhs_weap_m38",
		"sp_fwa_smg_mp40",
		"rhs_weap_MP44",
		"rhsusf_weap_MP7A2",
		"arifle_MSBS65_black_F",
		"arifle_MSBS65_UBS_black_F",
		"arifle_MX_Black_F",
		"arifle_MXC_Black_F",
		"arifle_NCAR15_F",
		"arifle_NCAR15B_F",
		"rhs_weap_m305a_ris",
		"CUP_arifle_OTS14_GROZA_762",
		"CUP_arifle_OTS14_GROZA",
		"SMG_03C_black",
		"CUP_smg_vityaz_top_rail",
		"CUP_smg_bizon",
		"rhs_weap_pp2000",
		"$NONE_fwa_weap_pps43$",
		"$NONE_fwa_weap_ppsh41$",
		"ptv_weap_cbj_ms_65_blk",
		"ptv_weap_cbj_ms_blk",
		"ptv_weap_m90_rail_blk",
		"ptv_weap_m90c_rail_blk",
		"ptv_weap_m90k_rail_blk",
		"arifle_CTAR_blk_F",
		"pca_weap_qbz95",
		"$NONE_hlc_rifle_acr68_sbr_blk$",
		"CUP_arifle_ACR_blk_68",
		"$NONE_hlc_rifle_acr68_iar_blk$",
		"$NONE_hlc_rifle_acr_sbr_pink$",
		"$NONE_hlc_rifle_acr_car_pink$",
		"$NONE_hlc_rifle_acr_iar_pink$",
		"arifle_SDAR_F",
		"bnae_weap_rk95r",
		"sp_fwa_ruger_mini14",
		"rhs_weap_savz58v_ris",
		"CUP_arifle_Sa58RIS2",
		"rhs_weap_savz61",
		"CUP_arifle_DSA_SA58_OSW",
		"CUP_smg_saiga9",
		"CUP_arifle_SAIGA_MK03_top_rail",
		"SMG_02_F",
		"sp_fwa_sig510",
		"$NONE_hlc_rifle_sg550_ris$",
		"$NONE_hlc_rifle_sg551lb_ris$",
		"$NONE_hlc_rifle_sg551sb_ris$",
		"$NONE_hlc_rifle_sg553lb_ris$",
		"$NONE_hlc_rifle_sg553sb_ris$",
		"$NONE_hlc_rifle_sg553rlb$",
		"$NONE_hlc_rifle_sg553rsb$",
		"Opf_arifle_SKS_F",
		"sp_fwa_m1903",
		"CUP_arifle_SR3M_Vikhr_VFG_top_rail",
		"sp_fwa_smg_sterling",
		"sp_fwa_smg_mk5sterling",
		"$NONE_hlc_rifle_auga2_blk$",
		"$NONE_hlc_rifle_auga2_car_blk$",
		"$NONE_hlc_rifle_auga2_hbar_blk$",
		"$NONE_hlc_rifle_auga2_para_blk$",
		"$NONE_hlc_rifle_auga3_blk$",
		"arifle_TRG20_black_F",
		"arifle_TRG21_black_F",
		"arifle_ARX_blk_F",
		"CUP_smg_UZI",
		"SMG_01_black_F",
		"rhs_weap_vhsd2",
		"rhs_weap_vhsk2",
		"$NONE_fwa_weap_vz52$",
		"$NONE_hlc_rifle_xm8_mwsf_carbine$",
		"$NONE_hlc_rifle_xm8_mwsf_compact$"
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
		"$NONE_sma_acc_barska_rds$",
		"optic_yorris",
		"optic_aco_grn",
		"optic_aco",
		"optic_aco_grn_smg",
		"optic_aco_smg",
		"$NONE_sma_acc_cmore_blk$",
		"HLC_optic_DocterR",
		"rhs_acc_ekp8_18",
		"cup_optic_holoblack",
		"RKSL_optic_EOT552",
		"$NONE_sma_acc_eotech_552_kf_blk$",
		"RKSL_optic_EOT552",
		"RKSL_optic_EOT552X",
		"cup_optic_eotech553_black",
		"$NONE_sma_acc_eotech_xps3_blk$",
		"optic_holosight_blk_f",
		"optic_holosight_smg_blk_f",
		"rhsusf_acc_eotech",
		"$NONE_hlc_optic_ism1400a7$",
		"rhsusf_acc_m2a1",
		"RKSL_optic_EOT552",
		"CUP_optic_CompM4",
		"cup_optic_compm2_low",
		"cup_optic_compm2_black",
		"cup_optic_mars",
		"cup_optic_mrad",
		"cup_optic_zddot",
		"cup_optic_mepro",
		"cup_optic_mepro_moa_clear",
		"cup_optic_mepro_openx_orange",
		"cup_optic_mepro_tri_clear",
		"$NONE_sma_acc_micro_t2$",
		"$NONE_sma_acc_micro_t2_low$",
		"$NONE_sma_acc_micro_t2_g33$",
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
		"HLC_optic_RomeoV",
		"rhsusf_acc_t1_high",
		"rhsusf_acc_t1_low",
		"$NONE_sma_acc_tasco_propoint$",
		"$NONE_sma_acc_tasco_propoint_glare$",
		"cup_optic_trijiconrx01_black",
		"cup_optic_trijiconrx01_kf_black",
		"cup_optic_vortexrazor_uh1_black",
		"$NONE_sma_acc_vortex_blk$",
		"$NONE_sma_acc_vortex_lc_blk$",
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
		"ACE_Flashlight_Maglite_ML300L",
		"pca_flashlight_sf",
		"ACE_Flashlight_Maglite_ML300L",
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
		"hlc_acc_DBALPL_Side",
		"hlc_acc_DBALPL_side_FL",
		"hlc_acc_TLR1_Side",
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
		"CUP_launch_RPG26",
		"rhs_weap_rshg2",
		"rhs_weap_panzerfaust60",
		"rhs_weap_rpg75",
		"rhs_weap_m80",
		"CUP_launch_M136",
		"rhs_weap_m72a7"
	};
	sidearmWeapon[] =
	{
		"rhs_weap_6p53",
		"rhs_weap_pb_6p9",
		"hlc_pistol_DL44",
		"CUP_hgun_Browning_HP",
		"hgun_Pistol_heavy_02_F",
		"hgun_ACPC2_black_F",
		"CUP_hgun_Duty",
		"rhs_weap_cz99_etched",
		"CUP_hgun_Deagle",
		"hgun_Pistol_heavy_01_black_F",
		"rhsusf_weap_glock17g4",
		"CUP_hgun_M17_Black",
		"CUP_hgun_Colt1911",
		"rhsusf_weap_m9",
		"CUP_hgun_Mac10",
		"$NONE_hlc_pistol_c96$",
		"hlc_pistol_C96_Prussian",
		"$NONE_hlc_pistol_c96_m712$",
		"CUP_hgun_MicroUzi",
		"CUP_hgun_Mk23",
		"rhs_weap_pya",
		"hgun_Rook40_F",
		"rhsusf_weap_MP7A2_folded",
		"hgun_P07_blk_F",
		"CUP_hgun_Makarov",
		"rhs_weap_pp2000_folded",
		"ptv_weap_usp45t",
		"rhs_weap_savz61_folded",
		"bnae_weap_colt357",
		"$NONE_hlc_pistol_mk25_pink$",
		"$NONE_hlc_pistol_mk25tr_pink$",
		"$NONE_hlc_pistol_p226r_combat$",
		"$NONE_hlc_pistol_p229r_combat$",
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
		"B_Carryall_tna_F"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_bren_l4_lmg",
		"sp_fwa_bren_mk2",
		"sp_fwa_m1919a6_browning",
		"CUP_lmg_FNMAG",
		"LMG_03_F",
		"MMG_01_black_F",
		"$NONE_hlc_rifle_m1941$",
		"$NONE_hlc_rifle_m1941_308$",
		"sps_weap_kac_amg_blk",
		"sps_weap_kac_lamg_hg_blk",
		"CUP_arifle_Sa58_Klec_ris",
		"CUP_arifle_L86A2",
		"MMG_02_black_F",
		"rhs_weap_m249_pip",
		"rhs_weap_m249_light_S",
		"CUP_lmg_M60E4",
		"rhs_weap_m84",
		"sp_fwa_aa52",
		"CUP_arifle_MG36",
		"rhs_weap_mg42",
		"CUP_lmg_Mk48",
		"arifle_MX_SW_Black_F",
		"arifle_NCAR15_MG_F",
		"pca_weap_negev_ng5",
		"LMG_Zafir_black_F",
		"CUP_lmg_PKM",
		"rhs_weap_pkp",
		"ptv_weap_m62mr_blk",
		"arifle_CTARS_blk_F",
		"pca_weap_qjb95",
		"CUP_lmg_MG3_rail",
		"$NONE_fwa_weap_rpd$",
		"arifle_RPK12_F",
		"Aegis_arifle_RPK12_545_F",
		"LMG_Mk200_black_F",
		"CUP_lmg_UK59",
		"$NONE_hlc_rifle_xm8_mwsf_dmar$"
	};
	bipod[] =
	{
		"bipod_03_f_blk",
		"bipod_02_f_blk",
		"bipod_01_f_blk",
		"HLC_bipod_UTGShooters",
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
		"arifle_AK12_GL_545_F",
		"arifle_AK12_GL_F",
		"sfp_weap_ak5c_m203_blk",
		"arifle_AUG_GL_black_F",
		"CUP_arifle_M16A1GL",
		"CUP_arifle_Colt727_M203",
		"CUP_arifle_M16A4_GL",
		"$NONE_hlc_rifle_m4a1_m203_hk$",
		"CUP_arifle_CZ805_GL",
		"CUP_CZ_BREN2_762_14_GL",
		"CUP_CZ_BREN2_556_11_GL",
		"CUP_CZ_BREN2_556_14_GL",
		"bear_diemaco_c8_m203",
		"arifle_Mk20_GL_black_F",
		"arifle_SCAR_GL_F",
		"$NONE_hlc_rifle_scarh_cqc_eglm$",
		"$NONE_hlc_rifle_scarh_std_agc$",
		"$NONE_hlc_rifle_scarh_std_eglm$",
		"$NONE_hlc_rifle_scarl300_cqc_eglm$",
		"$NONE_hlc_rifle_scarl300_std_agc$",
		"$NONE_hlc_rifle_scarl300_std_eglm$",
		"$NONE_hlc_rifle_scarl_cqc_eglm$",
		"$NONE_hlc_rifle_scarl_std_agc$",
		"$NONE_hlc_rifle_scarl_std_eglm$",
		"arifle_TRG21_GL_black_F",
		"arifle_G36_GL_F",
		"rhs_weap_hk416d10_m320",
		"rhs_weap_hk416d145_m320",
		"$NONE_hlc_rifle_hk416d165_agc$",
		"$NONE_hlc_rifle_hk416n_agc$",
		"$NONE_hlc_rifle_g36a1_romi_ag36$",
		"$NONE_hlc_rifle_g36a3_romi_ag36$",
		"$NONE_hlc_rifle_g36a4_kac_ag36$",
		"$NONE_hlc_rifle_g3ka4_m203$",
		"$NONE_hlc_smg_mp5n_9mmar$",
		"arifle_SPAR_01_GL_blk_F",
		"arifle_AK12_GL_545_F",
		"arifle_Katiba_GL_F",
		"arifle_SA80_GL_blk_F",
		"CUP_arifle_M16A4_GL",
		"CUP_lmg_m249_para_gl",
		"rhs_weap_m32",
		"rhs_weap_m4_carryhandle_m203",
		"rhs_weap_m4_carryhandle_m203S",
		"CUP_glaunch_M79",
		"arifle_MSBS65_GL_black_F",
		"arifle_MX_GL_Black_F",
		"arifle_NCAR15_GL_F",
		"CUP_arifle_OTS14_GROZA_762_GL",
		"CUP_arifle_OTS14_GROZA_GL",
		"ptv_weap_m90k_rail_m203_blk",
		"arifle_CTAR_GL_blk_F",
		"pca_weap_qbz95_qlg91b",
		"$NONE_hlc_rifle_acr68_sbr_m203_blk$",
		"CUP_arifle_ACR_EGLM_blk_68",
		"$NONE_hlc_rifle_acr68_iar_m203_blk$",
		"$NONE_hlc_rifle_acr_sbr_m203_pink$",
		"$NONE_hlc_rifle_acr_car_m203_pink$",
		"$NONE_hlc_rifle_acr_iar_m203_pink$",
		"CUP_arifle_Sa58RIS2_gl",
		"CUP_arifle_DSA_SA58_OSW_M203",
		"$NONE_hlc_rifle_sg550_tac_m203$",
		"$NONE_hlc_rifle_sg551lb_tac_m203$",
		"$NONE_hlc_rifle_sg551sb_tac_m203$",
		"$NONE_hlc_rifle_auga3_m203_blk$",
		"arifle_TRG21_GL_black_F",
		"rhs_weap_vhsd2_bg",
		"$NONE_hlc_rifle_xm8_mwsf_carbine_xm320$"
	};
	sidearmWeapon[] +=
	{
		"ptv_L2BPG"
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
		"B_Kitbag_tna_F"
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
		"sp_fwa_ar10_porto_marksman_od",
		"CUP_srifle_AS50",
		"srifle_DMR_04_F",
		"srifle_DMR_05_hex_F",
		"CUP_srifle_CZ550_rail",
		"CUP_srifle_CZ750",
		"arifle_SCAR_F",
		"$NONE_hlc_rifle_scarh_ssr$",		
		"$NONE_hlc_rifle_scarl300_dmr$",
		"$NONE_hlc_rifle_scarl_dmr$",
		"CUP_srifle_G22_blk",
		"srifle_GM6_F",
		"$NONE_hlc_rifle_hk416d20$",
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
		"CUP_arifle_ACR_DMR_blk_68",
		"$NONE_hlc_rifle_acr_dmr_pink$",
		"srifle_DMR_03_F",
		"sp_fwa_m1903a1_unertl",
		"rhs_weap_svdp_npz",
		"rhs_weap_t5000",
		"srifle_DMR_01_black_F",
		"$NONE_hlc_rifle_xm8_mwsf_dmar$"
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
		"HLC_bipod_UTGShooters",
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