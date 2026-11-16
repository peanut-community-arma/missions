/**
Adds a curated personal arsenal that can be accessed via ACE Self interact by the players.

parameters:
0: unit <OBJECT>

UNIT MUST BE local

Example:
[player] call pca_fnc_curatedArsenal;

Returns:
NONE
*/

params ["_unit"];

if !(hasInterface) exitwith {};

private _unitRole = _unit getVariable ["tmf_assignGear_role", nil];

arsenal = "building" createVehicleLocal [0, 0, 0];
_unit setVariable ["startPos", getPosASL _unit];

// ********************************************************************************//
// Unit Equipment
// ********************************************************************************//
// Common
private _itemGear = [];

// uniform
private _itemuniform =
[
	"pca_acu_oefcp",
	"pca_acu_ocp"
];

private _itemuniformcrew =
[
	"pca_acu_oefcp",
	"pca_acu_ocp"
];

private _itemuniformpilot =
[
	"pca_acu_oefcp",
	"pca_acu_ocp"
];

private _itemuniformSF =
[
    "usp_g3c_kp_mc",
    "usp_g3c_kp_mx_mc",
    "usp_g3c_kp_or_mc",
    "usp_g3c_rs_kp_mc",
    "usp_g3c_rs_kp_mx_mc",
    "usp_g3c_rs_kp_or_mc",
    "usp_g3c_rs2_kp_mc",
    "usp_g3c_rs2_kp_mx_mc",
    "usp_g3c_rs2_kp_or_mc",
    "usp_pcu_g3c_kp_mc",
    "usp_pcu_g3c_kp_mx_mc",
    "usp_pcu_g3c_kp_or_mc",
    "usp_softshell_g3c_kp_mc",
    "usp_softshell_g3c_kp_mx_mc",
    "usp_softshell_g3c_kp_or_mc"
];

// vest
private _itemvest =
[
	"pca_spcs_oefcp",
	"pca_spcs_grenadier_oefcp",
	"pca_spcs_medic_oefcp",
	"pca_spcs_squadleader_oefcp",
	"pca_spcs_teamleader_oefcp",
	"pca_spcs_teamleader_alt_oefcp",
	"pca_spcs_rifleman_oefcp",
	"pca_spcs_rifleman_alt_oefcp",
	"pca_spcs_saw_oefcp"
];

private _itemvestcrew =
[
    "rhsusf_spcs_ocp_crewman"
];

private _itemvestpilot =
[
    "rhsusf_spcs_ocp_crewman"
];

private _itemvestSF =
[
    "s4_lbt_operator_mc",
    "s4_lbt_light_mc",
    "s4_lbt_medical_mc",
    "s4_lbt_teamleader_mc",
    "s4_lbt_weapons_mc",
    "s4_lbt_comms_mc"
];

// headgear
private _itemheadgear =
[
	"pca_ach_oefcp",
	"pca_ach_camo_oefcp",
	"pca_ach_ess_oefcp",
	"pca_ach_headset_oefcp",
	"pca_ach_headset_ess_oefcp"
];

private _itemheadgearcrew =
[
    "rhsusf_cvc_helmet"
];

private _itemheadgearpilot =
[
    "rhsusf_ihadss"
];

private _itemheadgearSF =
[
    "pca_opscore_cover_ocp",
    "pca_opscore_cover_ct_ocp",
    "pca_opscore_cover_ct_cb_ocp",
    "pca_opscore_cover_ct_cm_ocp",
    "pca_opscore_cover_ct_cw_ocp",
    "pca_opscore_mc",
    "pca_opscore_ct_mc",
    "pca_opscore_ct_cb_mc",
    "pca_opscore_ct_cm_mc",
    "pca_opscore_ct_cw_mc",
    "pca_opscore_mc2",
    "pca_opscore_ct_mc2",
    "pca_opscore_ct_cb_mc2",
    "pca_opscore_ct_cm_mc2",
    "pca_opscore_ct_cw_mc2",
	"pca_booniehat_mc",
	"pca_booniehat_oefcp",
	"milgp_h_cap_01_mc",
	"milgp_h_cap_02_mc",
	"milgp_h_cap_03_mc",
	"milgp_h_cap_backwards_01_mc",
	"milgp_h_cap_backwards_02_mc"
];

// backpack
private _itembackpack =
[
	"pca_assaultpack_ocp",
	"pca_eagle_a3_oefcp",
	"B_AssaultPack_cbr",
	"pca_eagle_a3_rgr",
	"pca_backpack_invisible",
	"pca_backpack_invisible_large"
];

private _itembackpackcrew =
[
    "pca_backpack_invisible"
];

private _itembackpackpilot =
[
    "pca_backpack_invisible"
];

private _itembackpackSF =
[
    "pca_backpack_invisible"
];

// cosmetic
private _itemCosmetic =
[
	// face
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"m40_gas_mask_02",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Combat",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Green",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
	"G_Headset_light",
	"G_Shemag_tan",
	"CUP_FR_NeckScarf3",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_oli",
	"G_Shemag_khk",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shemag_tan",
	"CUP_FR_NeckScarf3",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_oli",
	"G_Shemag_khk",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shades_Yellowred",
	"CUP_FR_NeckScarf2",
	"$NONE_aegis_shemag_tactical_khk$",
	"CUP_FR_NeckScarf",
	"G_Shemag_tactical",
	"CUP_FR_NeckScarf5",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shemag_white",
	"G_Tactical_Yellow",
	"G_Tactical_Camo",
	"CUP_FR_NeckScarf5",
	"G_Shemag_red",
	"CUP_RUS_Balaclava_blk",
	"bear_balaclava1_black",
	"CUP_RUS_Balaclava_grn",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_White",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"$REMOVE_usm_swdgoggles$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"sfp_peltor_comtac3",
	"rhs_scarf",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhssaf_veil_Green",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh2_gogg_white",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",

	// hmd
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",
	"$NONE_pca_nvg_shemagh_lowered_cbr$",
	"pca_nvg_shemagh_lowered_khk",
	"$NONE_pca_nvg_shemagh_loop_bge$",
	"$NONE_pca_nvg_shemagh_loop_blk$",
	"$NONE_pca_nvg_shemagh_loop_coy$",
	"$NONE_pca_nvg_shemagh_loop_gold$",
	"$NONE_pca_nvg_shemagh_loop_grn$",
	"$NONE_pca_nvg_shemagh_loop_khk$",
	"$NONE_pca_nvg_shemagh_loop_tan$",
	"$NONE_pca_nvg_shemagh_loop_white$",
	"$NONE_pca_nvg_shemagh_mesh_bge$",
	"$NONE_pca_nvg_shemagh_mesh_blk$",
	"$NONE_pca_nvg_shemagh_mesh_coy$",
	"$NONE_pca_nvg_shemagh_mesh_gold$",
	"$NONE_pca_nvg_shemagh_mesh_grn$",
	"$NONE_pca_nvg_shemagh_mesh_khk$",
	"$NONE_pca_nvg_shemagh_mesh_tan$",
	"$NONE_pca_nvg_shemagh_mesh_white$",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_shemagh_lowered_tan",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"m40_gas_mask_02_nvg",
	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_1$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"$NONE_nvg_scrim_wdl_leaves_3$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"sfp_nvg_peltor_comtac3"
];

// ********************************************************************************//
// Miscellaneous items
// ********************************************************************************//

private _itemMisc =
[
    "ACRE_PRC343",
    "ACE_Maptools",
    "ACE_RangeCard",
    "ItemCompass",
    "ItemMap",
    "ItemWatch",
    "toolKit"
];

private _itemBino =
[
    "Binocular"
];

private _itemradio =
[
    "ACRE_PRC148",
    "ACRE_PRC152",
    "ACRE_PRC117F"
];

private _itemMedBasic =
[
    // Bandages
    "ACE_fieldDressing",
    "ACE_elasticBandage",
    "ACE_packingBandage",
    "ACE_quikclot",
    // Specialized Equipments
    "ACE_splint",
    "ACE_tourniquet"
];

private _itemMedAdv =
[
    // Fluids
    "ACE_bloodIV",
    "ACE_bloodIV_250",
    "ACE_bloodIV_500",
    "ACE_plasmaIV",
    "ACE_plasmaIV_250",
    "ACE_plasmaIV_500",
    "ACE_salineIV",
    "ACE_salineIV_250",
    "ACE_salineIV_500",
    // Medications
    "ACE_adenosine",
    "ACE_epinephrine",
    "ACE_morphine",
    // Specialized Equipments
    "ACE_surgicalKit"
];

// ********************************************************************************//
// weapons
// ********************************************************************************//

private _itemAcc =
[
	// Sights
	"$NONE_sma_acc_vortex_blk$",
	"$NONE_sma_acc_vortex_lc_blk$",
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_eotech_xps3_od$",
	"$NONE_sma_acc_eotech_xps3_blk$",
	"$NONE_sma_acc_cmore_grn$",
	"$NONE_sma_acc_cmore_blk$",
	"$NONE_sma_acc_barska_rds$",

	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_rx01",
	"rhsusf_acc_rx01_nofilter",
	"CUP_optic_CompM4",
	"rhsusf_acc_eotech_552_wd",
	"RKSL_optic_EOT552",
	"rhsusf_acc_eotech",

	"RKSL_optic_EOT552X",
	"RKSL_optic_EOT552",

	"ptv_acc_eot552",
	"ptv_acc_t1",
	"ptv_acc_compm4s",

	"cup_optic_vortexrazor_uh1_od",
	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_trijiconrx01_od",
	"cup_optic_trijiconrx01_black",
	"cup_optic_mepro_tri_clear",
	"cup_optic_mepro_moa_clear",
	"cup_optic_mepro",
	"cup_optic_mars",
	"cup_optic_mars_od",
	"cup_optic_compm2_low_od",
	"cup_optic_compm2_low",
	"cup_optic_eotech553_od",
	"cup_optic_ac11704_od",
	"cup_optic_ac11704_black",
	"cup_optic_microt1_od",
	"cup_optic_microt1",
	"cup_optic_compm4",

	"optic_holosight",
	"optic_aco",
	"optic_yorris",

	// Grip
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip4",
	"rhsusf_acc_grip4_bipod",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_kac_grip_saw_bipod",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_rvg_de",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_saw_lw_bipod",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_tdstubby_tan",

	// Tactical Device
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top"
];

private _itemAccSF =
[
	"rhsusf_acc_acog",
	"rhsusf_acc_acog_rmr",
	"cup_optic_sb_11_4x20_pm",
	"cup_optic_sb_11_4x20_pm_od",
	"cup_optic_elcan_specterdr_rmr_black",
	"cup_optic_elcan_specterdr_rmr_coyote",
	"cup_optic_elcan_specterdr_rmr_od",

	"sps_acc_oss_hxqd556_blk",
	"sps_acc_oss_hxqd556_fde",
	"sps_acc_oss_hxqd556_od",
	"sps_acc_oss_hxqd556k_blk",
	"sps_acc_oss_hxqd556k_fde",
	"sps_acc_oss_hxqd556k_od",
	"rhsusf_acc_nt4_black",
	"rhsusf_acc_nt4_tan",

	"$NONE_hlc_muzzle_fn_oem556$"

];

private _itemAccMMSF =
[
	"rhsusf_acc_acog",
	"rhsusf_acc_acog_rmr",
	"rhsusf_acc_acog_mdo",
	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_c",
	"rhsusf_acc_su230a_mrds",
	"rhsusf_acc_su230a_mrds_c",
	"cup_optic_sb_11_4x20_pm",
	"cup_optic_sb_11_4x20_pm_od",
	"hlc_optic_ATACR",
	"hlc_optic_ATACR_Offset",

	"HLC_bipod_UTGShooters",

	"sps_acc_oss_hx762_blk",
	"sps_acc_oss_hx762_fde",
	"sps_acc_oss_hx762_od",
	"sps_acc_oss_hx762_sand",
	"hlc_muzzle_AAC_SCARH",
	"$NONE_hlc_muzzle_fn_oem17s$"

];

private _itemWeapRifle =
[
    "rhs_weap_m4a1",
    "rhs_weap_m4a1_mstock",
    "rhs_weap_m4a1_wd",
    "rhs_weap_m4a1_wd_mstock",
    "rhs_weap_m4a1_carryhandle",
    "rhs_weap_m4a1_carryhandle_mstock"
];

private _itemWeapRifleSF =
[
    "rhs_weap_mk18",
    "rhs_weap_mk18_KAC",
    "rhs_weap_mk18_bk",
    "rhs_weap_mk18_KAC_bk",
    "rhs_weap_mk18_wd",
    "rhs_weap_mk18_KAC_wd",
    "rhs_weap_m4a1_blockII",
    "rhs_weap_m4a1_blockII_KAC",
    "rhs_weap_m4a1_blockII_bk",
    "rhs_weap_m4a1_blockII_KAC_bk",
    "rhs_weap_m4a1_blockII_wd",
    "rhs_weap_m4a1_blockII_KAC_wd",
	"$NONE_hlc_rifle_scarl_cqc_tan$",
	"$NONE_hlc_rifle_scarl_cqc_camo$",
	"$NONE_hlc_rifle_scarl_std_tan$",
	"$NONE_hlc_rifle_scarl_std_camo$"
];

private _itemWeapRifleUGL =
[
    "rhs_weap_m4a1_m203",
    "rhs_weap_m4a1_m203s",
    "CUP_arifle_M4A1_GL_carryhandle",
    "rhs_weap_m4a1_carryhandle_m203s",
    "rhs_weap_m4a1_m320"
];

private _itemWeapRifleUGLSF =
[
    "rhs_weap_mk18_m320",
    "rhs_weap_m4a1_blockII_m203",
    "rhs_weap_m4a1_blockII_m203_bk",
    "rhs_weap_m4a1_blockII_m203_wd",
	"$NONE_hlc_rifle_scarl_cqc_eglm_tan$",
	"$NONE_hlc_rifle_scarl_cqc_eglm_camo$",
	"$NONE_hlc_rifle_scarl_std_eglm_tan$",
	"$NONE_hlc_rifle_scarl_std_agc_tan$",
	"$NONE_hlc_rifle_scarl_std_eglm_camo$",
	"$NONE_hlc_rifle_scarl_std_agc_camo$"
];

private _itemWeapRifleMMSF =
[
    "$NONE_hlc_rifle_scarh_ssr_tan$",
    "$NONE_hlc_rifle_scarh_ssr_camo$",
    "$NONE_hlc_rifle_scarh_ssr$",
    "$NONE_hlc_rifle_scarh_dmr_tan$",
    "$NONE_hlc_rifle_scarh_dmr_camo$",
    "arifle_SCAR_F"
];

private _itemWeapAR =
[
    "rhs_weap_m249_light_S",
    "rhs_weap_m249_pip_S",
    "rhs_weap_m249_pip_S_para",
    "rhs_weap_m249_light_L",
    "rhs_weap_m249_pip_L",
    "rhs_weap_m249_pip_L_para",
    "rhs_weap_m249_pip_ris",

	"rhsusf_acc_elcan"
];

private _itemWeapARSF = [
	"CUP_lmg_Mk48",
	"CUP_lmg_Mk48_nohg",
	"CUP_lmg_Mk48_od",
	"CUP_lmg_Mk48_nohg_od",
	"CUP_lmg_Mk48_wdl",
	"CUP_lmg_Mk48_nohg_wdl",

	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_c",
	"rhsusf_acc_su230a_mrds",
	"rhsusf_acc_su230a_mrds_c"
];

private _itemWeapLAT =
[
    "CUP_launch_M136"
];

private _itemWeappistol =
[
    "rhsusf_weap_glock17g4"
];

// Special
private _itemWeapMG =
[
    "CUP_lmg_M240_B",

	"rhsusf_acc_acog_mdo"
];

private _itemWeapMAT =
[
    "CUP_launch_MAAWS"
];

private _itemWeapCrew =
[
	"$NONE_hlc_smg_mp5n_tac$"
];

// ********************************************************************************//
// Ammunitions
// ********************************************************************************//

private _itemammo =
[
    // Rifle ammo
    "rhs_mag_30Rnd_556x45_M855A1_PMAG",
    "rhs_mag_30Rnd_556x45_M855A1_Stanag",
    "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",
    "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger",
	"hlc_30Rnd_9x19_FMJ_MP5",

    // pistol ammo
	"rhsusf_mag_17Rnd_9x19_JHP"
];

private _itemammoTracer =
[
    "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
    "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
    "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",
    "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red"
];

private _itemammoMMSF =
[
	"rhs_mag_20Rnd_SCAR_762x51_m80_ball",
	"rhs_mag_20Rnd_SCAR_762x51_m62_tracer",
    "rhsusf_mag_17Rnd_9x19_JHP"
];

private _itemammoAR =
[
    "rhsusf_200Rnd_556x45_soft_pouch",
    "rhsusf_200Rnd_556x45_mixed_soft_pouch",
    "rhsusf_200Rnd_556x45_soft_pouch_coyote",
    "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",
    // pistol ammo
	"rhsusf_mag_17Rnd_9x19_JHP"
];

private _itemammoSignal =
[
    "SmokeShellBlue",
    "SmokeShellGreen",
    "SmokeShellorange",
    "SmokeShellPurple",
    "SmokeShellRed",
    "SmokeShellYellow",
    "1Rnd_SmokeBlue_Grenade_shell",
    "1Rnd_SmokeGreen_Grenade_shell",
    "1Rnd_Smokeorange_Grenade_shell",
    "1Rnd_SmokePurple_Grenade_shell",
    "1Rnd_SmokeRed_Grenade_shell",
    "1Rnd_SmokeYellow_Grenade_shell"
];

private _itemexplosive =
[
    "1Rnd_Smoke_Grenade_shell",
    "SmokeShell",
    "CUP_1Rnd_HE_M203",
    "CUP_1Rnd_HEDP_M203",
    "CUP_1Rnd_HE_M203",
    "CUP_HandGrenade_M67"
];

// Special
private _itemammoMG =
[
    "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
];

private _itemammoMAT =
[
    "CUP_MAAWS_HEAT_M",
    "CUP_MAAWS_HEDP_M",
    "MRAWS_HE_F"
];

private _itemEngineer =
[
    "ACE_Clacker",
    "ACE_DefusalKit",
    "ACE_Entrenchingtool",
    "ACE_M26_Clacker",
    "ACE_wirecutter",
    "DemoCharge_Remote_Mag",
    "SatchelCharge_Remote_Mag",
    "mineDetector",
    "toolKit"
];

// ********************************************************************************//
// Add Current Gear
// ********************************************************************************//

{
    _itemGear pushBackUnique _x;
} forEach (primaryWeaponItems _unit);

{
    _itemGear pushBackUnique _x;
} forEach (handgunitems _unit);

{
    _itemGear pushBackUnique _x;
} forEach (assigneditems _unit);

_itemGear pushBack uniform _unit;
_itemGear pushBack vest _unit;
_itemGear pushBack headgear _unit;
_itemGear pushBack backpack _unit;

// ********************************************************************************//
// Add items
// ********************************************************************************//

switch (true) do
{
    // Rifleman
    case (_unitRole == "rm") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Rifleman (LAT)
    case (_unitRole == "rm_lat") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Automatic Rifle
    case (_unitRole == "ar") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeappistol + _itemammoAR + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Assistant Automatic Rifle
    case (_unitRole == "aar") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemammo + _itemammoAR + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Grenadier
    case (_unitRole == "gren") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Team leader
    case (_unitRole == "tl") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeappistol + _itemammo + _itemammoTracer + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Squad leader
    case (_unitRole == "sl") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemradio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeappistol + _itemammo + _itemammoTracer + _itemammoSignal + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Platoon Sergeant
    case (_unitRole == "sgt") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemradio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeappistol + _itemammo + _itemammoTracer + _itemammoSignal + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Platoon commander
    case (_unitRole == "co") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemradio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeappistol + _itemammo + _itemammoTracer + _itemammoSignal + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // forward Air Controller
    case (_unitRole == "fac") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemradio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeappistol + _itemammo + _itemammoTracer + _itemammoSignal + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Rifle First-Aid
    case (_unitRole == "rm_fa") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Combat Life Saver
    case (_unitRole == "cls") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeappistol + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Medium Machine gunner
    case (_unitRole == "mmg") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeappistol + _itemammoMG + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Assistant Medium Machine gunner
    case (_unitRole == "mmg") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeappistol + _itemammo + _itemammoMG + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Medium Anti-tank gunner
    case (_unitRole == "mat") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeappistol + _itemWeapMAT + _itemammo + _itemammoMAT + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Assistant Medium Anti-tank gunner
    case (_unitRole == "amat") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeappistol + _itemammo + _itemammoMAT + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // crewman
    case (_unitRole == "crew") :
    {
        [arsenal, (_itemGear + _itemuniformcrew + _itemvestcrew + _itemheadgearcrew + _itembackpackcrew + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapCrew + _itemWeappistol + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // crewman commander
    case (_unitRole == "crew_co") :
    {
        [arsenal, (_itemGear + _itemuniformcrew + _itemvestcrew + _itemheadgearcrew + _itembackpackcrew + _itemcosmetic + _itemMisc + _itemBino + _itemradio + _itemAcc + _itemWeapCrew + _itemWeappistol + _itemammo + _itemammoSignal + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Helicopter pilot
    case (_unitRole == "hp") :
    {
        [arsenal, (_itemGear + _itemuniformpilot + _itemvestpilot + _itemheadgearpilot + _itembackpackpilot + _itemcosmetic + _itemMisc + _itemradio + _itemAcc + _itemWeapCrew + _itemWeappistol + _itemammo + _itemammoSignal + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    // Engineer
    case (_unitRole == "eng") :
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeappistol + _itemammo + _itemexplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
    };

	// Special forces
    case (_unitRole == "sf_rm") :
    {
        [arsenal, (_itemGear + _itemuniformSF + _itemvestSF + _itemheadgearSF + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemAccSF + _itemWeapRifleSF + _itemWeapLAT + _itemWeappistol + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    case (_unitRole == "sf_tl") :
    {
        [arsenal, (_itemGear + _itemuniformSF + _itemvestSF + _itemheadgearSF + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSF + _itemWeapRifleUGLSF + _itemWeapLAT + _itemWeappistol + _itemammo + _itemammoTracer + _itemammoSignal + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
	case (_unitRole == "sf_ar") :
    {
        [arsenal, (_itemGear + _itemuniformSF + _itemvestSF + _itemheadgearSF + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemAccSF + _itemWeapARSF + _itemWeapLAT + _itemWeappistol + _itemammoMG + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    case (_unitRole == "sf_aar") :
    {
        [arsenal, (_itemGear + _itemuniformSF + _itemvestSF + _itemheadgearSF + _itembackpack + _itemcosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSF + _itemWeapRifleSF + _itemWeapLAT + _itemammo + _itemammoMG + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    case (_unitRole == "sf_gren") :
    {
        [arsenal, (_itemGear + _itemuniformSF + _itemvestSF + _itemheadgearSF + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemAccSF + _itemWeapRifleUGLSF + _itemWeapLAT + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    case (_unitRole == "sf_mm") :
    {
        [arsenal, (_itemGear + _itemuniformSF + _itemvestSF + _itemheadgearSF + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemAccMMSF + _itemWeapRifleMMSF + _itemWeapLAT + _itemWeappistol + _itemammoMMSF + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
    case (_unitRole == "sf_cls") :
    {
        [arsenal, (_itemGear + _itemuniformSF + _itemvestSF + _itemheadgearSF + _itembackpack + _itemcosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemAccSF + _itemWeapRifleSF + _itemWeapLAT + _itemWeappistol + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };

    default
    {
        [arsenal, (_itemGear + _itemuniform + _itemvest + _itemheadgear + _itembackpack + _itemcosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemammo + _itemexplosive)] call ace_arsenal_fnc_initBox;
    };
};

// ********************************************************************************//
// Add actions
// ********************************************************************************//

_action =
[
    "personal_arsenal", "Personal Arsenal", "\a3\ui_f\data\igui\cfg\weaponicons\mg_ca.paa",
    {
        [arsenal, _player] call ace_arsenal_fnc_openBox
    },
    {
        (player distance2D (player getVariable ["startPos", [0, 0, 0]])) < 100
    },
    {},
    [],
    [0, 0, 0],
    3
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
