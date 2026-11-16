/**
	Adds a curated personal arsenal that can be accessed via ACE Self Interact by the players.
	
	Parameters:
	0: unit <OBJECT>
	
	UNIT MUST BE LOCAL
	
	Example:
	[player] call pca_fnc_curatedArsenal;
	
	Returns: 
	NONE
*/

params ["_unit"];

if !(hasInterface) exitWith {};

private _unitRole = _unit getVariable ["tmf_assignGear_role", nil];

arsenal = "building" createVehicleLocal [0,0,0];
_unit setVariable ["startPos", getPosASL _unit];

//********************************************************************************//
// Unit Equipment
//********************************************************************************//
//Common
private _itemGear = [];

//Uniform
private _itemUniform = 
[
	"CUP_U_CRYE_G3C_M81_US",
	"CUP_U_CRYE_G3C_M81_US_V2",
	"CUP_U_CRYE_G3C_M81_US_V3",
	"CUP_U_CRYE_G3C_M81",
	"CUP_U_CRYE_G3C_M81_RGR_US",
	"CUP_U_CRYE_G3C_M81_RGR",
	"CUP_U_CRYE_G3C_M81_Tan_US",
	"CUP_U_CRYE_G3C_M81_Tan"
];

private _itemUniformCrew = 
[
	"CUP_U_CRYE_G3C_M81_US",
	"CUP_U_CRYE_G3C_M81_US_V2",
	"CUP_U_CRYE_G3C_M81_US_V3",
	"CUP_U_CRYE_G3C_M81",
	"CUP_U_CRYE_G3C_M81_RGR_US",
	"CUP_U_CRYE_G3C_M81_RGR",
	"CUP_U_CRYE_G3C_M81_Tan_US",
	"CUP_U_CRYE_G3C_M81_Tan"
];

private _itemUniformPilot = 
[
	"CUP_U_CRYE_G3C_M81_US",
	"CUP_U_CRYE_G3C_M81_US_V2",
	"CUP_U_CRYE_G3C_M81_US_V3",
	"CUP_U_CRYE_G3C_M81",
	"CUP_U_CRYE_G3C_M81_RGR_US",
	"CUP_U_CRYE_G3C_M81_RGR",
	"CUP_U_CRYE_G3C_M81_Tan_US",
	"CUP_U_CRYE_G3C_M81_Tan"
];

//Vest
private _itemVest = 
[
	"rhsusf_plateframe_rifleman",
	"rhsusf_plateframe_grenadier",
	"rhsusf_plateframe_medic",
	"rhsusf_plateframe_machinegunner",
	"rhsusf_plateframe_teamleader"
];

private _itemVestCrew = 
[
	"rhsusf_spcs_ocp_crewman"
];

private _itemVestPilot = 
[
	"rhsusf_spcs_ocp_crewman"
];

//Headgear 
private _itemHeadgear = 
[
	"rhsusf_mich_bare",
	"rhsusf_mich_bare_alt",
	"rhsusf_mich_bare_headset",
	"rhsusf_mich_bare_norotos",
	"rhsusf_mich_bare_norotos_alt",
	"rhsusf_mich_bare_norotos_alt_headset",
	"rhsusf_mich_bare_norotos_arc",
	"rhsusf_mich_bare_norotos_arc_alt",
	"rhsusf_mich_bare_norotos_arc_headset",
	
	"rhsusf_mich_bare_semi",
	"rhsusf_mich_bare_alt_semi",
	"rhsusf_mich_bare_semi_headset",
	"rhsusf_mich_bare_norotos_semi",
	"rhsusf_mich_bare_norotos_alt_semi",
	"rhsusf_mich_bare_norotos_alt_semi_headset",
	"rhsusf_mich_bare_norotos_arc_semi",
	"rhsusf_mich_bare_norotos_arc_alt_semi",
	"rhsusf_mich_bare_norotos_arc_semi_headset",
	
	"rhsusf_mich_bare_tan",
	"rhsusf_mich_bare_alt_tan",
	"rhsusf_mich_bare_tan_headset",
	"rhsusf_mich_bare_norotos_tan",
	"rhsusf_mich_bare_norotos_alt_tan",
	"rhsusf_mich_bare_norotos_alt_tan_headset",
	"rhsusf_mich_bare_norotos_arc_tan",
	"rhsusf_mich_bare_norotos_arc_alt_tan",
	"rhsusf_mich_bare_norotos_arc_tan_headset",
	//Hats
	"rhs_Booniehat_m81",
	"bear_bdu_booniehat_m81",
	"CUP_H_USA_Boonie_wdl",
	"bear_bdu_8point_m81",
	"H_milcap_m81_F"
];

private _itemHeadgearCrew = 
[
	"rhsusf_cvc_helmet"
];

private _itemHeadgearPilot = 
[
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_mask",
	"rhsusf_hgu56p_mask_mo",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_visor_mask",
	"rhsusf_hgu56p_visor_mask_mo",
	"rhsusf_hgu56p_mask_smiley",
	"rhsusf_hgu56p_visor_mask_smiley",
	"ACE_NVG_Wide_Black"
];

//Backpack 
private _itemBackpack = 
[
	"rhsusf_assault_eagleaiii_coy",
	"rhsusf_falconii_coy"
];

private _itemBackpackCrew = 
[
	"pca_backpack_invisible",
	"rhsusf_falconii_coy"
];

private _itemBackpackPilot = 
[
	"pca_backpack_invisible",
	"rhsusf_falconii_coy"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Shades_Yellowred",
	"CUP_FR_NeckScarf2",
	"$NONE_aegis_shemag_shades_khk$",
	"$NONE_aegis_shemag_tactical_khk$",
	"CUP_FR_NeckScarf",
	"$NONE_aegis_shemag_shades_oli$",
	"G_Shemag_tactical",
	"CUP_FR_NeckScarf5",
	"$NONE_aegis_shemag_shades_red$",
	"G_Shemag_red",
	"G_Shemag_tan",
	"$NONE_aegis_shemag_shades_tan$",
	"G_Shemag_tan",
	"G_Shemag_white",
	"$NONE_aegis_shemag_shades_white$",
	"G_Shemag_white",
	"bear_balaclava1_black",
	"bear_bandana_m81",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_RUS_Balaclava_Ratnik_winter",
	"CUP_G_RUS_Balaclava_Ratnik_winter_v2",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_BLK_Scarf_White",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_TK_NeckScarf",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_White",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Grn_Scarf_Shades_Beard",
	"CUP_G_Grn_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"$NONE_usm_kneepads_blk$",
	"$REMOVE_usm_swdgoggles$",
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"sfp_peltor_comtac3",
	"pca_balaclava_blk_1",
	"pca_balaclava_blk_2",
	"pca_balaclava_oli_1",
	"pca_balaclava_oli_2",
	"rhs_scarf",
	"rhs_ess_black",
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
	"rhssaf_veil_Green",
	
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
	
	//HMD
	"CUP_NVG_GPNVG_black"
];

//********************************************************************************//
// Miscellaneous Items
//********************************************************************************//

private _itemMisc = 
[
	"ACRE_PRC343",
	"ACE_MapTools",
	"ACE_RangeCard",
	"ItemCompass",
	"ItemMap",
	"ItemWatch",
	"ToolKit"
];

private _itemBino = 
[
	"Rangefinder"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemMedBasic = 
[
	//Bandages
	"ACE_fieldDressing",
	"ACE_elasticBandage",
	"ACE_packingBandage",
	"ACE_quikclot",
	//Specialized Equipments
	"ACE_splint",
	"ACE_tourniquet"
];

private _itemMedAdv = 
[
	//Fluids
	"ACE_bloodIV",
	"ACE_bloodIV_250",
	"ACE_bloodIV_500",
	"ACE_plasmaIV",
	"ACE_plasmaIV_250",
	"ACE_plasmaIV_500",
	"ACE_salineIV",
	"ACE_salineIV_250",
	"ACE_salineIV_500",
	//Medications
	"ACE_adenosine",
	"ACE_epinephrine",
	"ACE_morphine",
	//Specialized Equipments
	"ACE_surgicalKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	"CUP_optic_CompM4",
	"RKSL_optic_EOT552",
	"rhsusf_acc_eotech_552_d",
	"rhsusf_acc_rx01_nofilter",
	"rhsusf_acc_rx01_nofilter_tan",
	"rhsusf_acc_eotech_552_wd",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_eotech_xps3",
	
	"ptv_acc_compm4s",
	"ptv_acc_aimcs",
	"ptv_acc_t1",
	"ptv_acc_eot552",
	
	"$NONE_sma_acc_cmore_blk$",
	"$NONE_sma_acc_cmore_grn$",
	"$NONE_sma_acc_micro_t2$",
	"RKSL_optic_EOT552",
	"$NONE_sma_acc_eotech_552_kf_blk$",
	"$NONE_sma_acc_eotech_552_kf_od$",
	"$NONE_sma_acc_eotech_552_kf_tan$",
	"$NONE_sma_acc_eotech_xps3_blk$",
	"$NONE_sma_acc_eotech_xps3_od$",
	"$NONE_sma_acc_eotech_xps3_tan$",
	
	
	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_vortexrazor_uh1_coyote",
	"cup_optic_vortexrazor_uh1_od",
	"cup_optic_mars",
	"cup_optic_compm2_low",
	"cup_optic_compm2_low_coyote",
	"cup_optic_compm2_low_od",
	"cup_optic_eotech553_black",
	"cup_optic_eotech553_coyote",
	"cup_optic_eotech553_od",

	"cup_optic_microt1",
	"cup_optic_microt1_coyote",
	"cup_optic_microt1_od",
	"cup_optic_compm4",
	
	"cup_optic_trijiconrx01_black",
	"cup_optic_trijiconrx01_desert",
	"cup_optic_trijiconrx01_od",
	
	"optic_holosight_blk_f",
	"optic_holosight",
	
	"rhsusf_acc_acog_rmr",
	"rhsusf_acc_su230",
	"rhsusf_acc_su230_c",
	"rhsusf_acc_su230_mrds",
	"rhsusf_acc_su230_mrds_c",
	
	"ptv_acc_compm4s_3x",
	"ptv_acc_aimcs_3x",
	"ptv_acc_t1_3x",
	
	"cup_optic_aimm_m68_blk",
	"cup_optic_aimm_m68_tan",
	"cup_optic_aimm_m68_od",
	"cup_optic_g33_hws_blk",
	"cup_optic_g33_hws_coyote",
	"cup_optic_g33_hws_tan",
	"cup_optic_g33_hws_od",
	"cup_optic_aimm_microt1_blk",
	"cup_optic_aimm_microt1_tan",
	"cup_optic_aimm_microt1_od",
	"cup_optic_aimm_compm4_blk",
	
	"$NONE_sma_acc_eotech_xps3_g33_blk$",
	"$NONE_sma_acc_eotech_xps3_g33_od$",
	"$NONE_sma_acc_eotech_xps3_g33_tan$",
	"$NONE_sma_acc_eotech_552_g33_blk$",
	"$NONE_sma_acc_eotech_552_g33_od$",
	"$NONE_sma_acc_eotech_552_g33_tan$",
	"$NONE_sma_acc_micro_t2_g33$",
	
	
	
	//Grip
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip2_tan",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip3_tan",
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
	
	"rhsusf_acc_grip_m203_blk",
	"rhsusf_acc_grip_m203_d",
	"rhsusf_acc_grip_m203_wd",
	
	"HLC_bipod_UTGShooters",
	"cup_bipod_harris_1a2_l_blk",
	
	//Tactical Device
	"cup_acc_anpeq_15_black",
	"cup_acc_anpeq_15_black_top",
	"cup_acc_anpeq_15",
	"cup_acc_anpeq_15_tan_top",
	"cup_acc_anpeq_15_flashlight_black_l",
	"cup_acc_anpeq_15_flashlight_tan_l",
	"cup_acc_anpeq_15_top_flashlight_black_l",
	"cup_acc_anpeq_15_top_flashlight_tan_l",
	"cup_acc_llm_black_flashlight",
	"hlc_acc_DBALPL",
	
	//muzzle
	"ptv_acc_rotexv",
	"rhsusf_acc_rotex5_grey",
	"rhsusf_acc_nt4_black",
	"rhsusf_acc_nt4_tan",
	
	"$NONE_sma_silencer_gemtech_halo_556_blk$",
	"$NONE_sma_silencer_gemtech_halo_556_blk_hwg$",
	"$NONE_sma_silencer_gemtech_halo_556_tan$",
	"$NONE_sma_silencer_gemtech_halo_556_tan_hwt$",
	
	"$NONE_sma_silencer_kac_nt4_blk$",
	"$NONE_sma_silencer_kac_nt4_blk_hwb$",
	"$NONE_sma_silencer_kac_nt4_blk_hwg$",
	"$NONE_sma_silencer_kac_nt4_tan$",
	"$NONE_sma_silencer_kac_nt4_tan_hwt$",
	
	"hlc_muzzle_Octane45"
	
];

private _itemWeapRifle = 
[
	"CUP_arifle_M4A1_black",
	"CUP_arifle_M4A1",
	"$NONE_hlc_rifle_m4a1_cqbr$",
	"CUP_arifle_mk18_black",
	"$NONE_hlc_rifle_samr$",

	"$NONE_hlc_rifle_magpul556_blk$",
	"$NONE_hlc_rifle_magpul556_grn$",
	"$NONE_hlc_rifle_magpul556$",
	"$NONE_hlc_rifle_bcm_jack$",
	"$NONE_hlc_rifle_bcm_jack_blk$",
	
	
	"rhs_weap_hk416d10",
	"rhs_weap_hk416d10_LMT_wd",
	"rhs_weap_hk416d10_LMT_d",
	"$NONE_hlc_rifle_hk416d10rahg$",
	"$NONE_hlc_rifle_hk416d10rahg_mstock$",
	"$NONE_hlc_rifle_hk416d10smr$",
	"rhs_weap_hk416d145",
	"rhs_weap_hk416d145_wd",
	"rhs_weap_hk416d145_d",
	"$NONE_hlc_rifle_hk416d145smr$",
	"$NONE_hlc_rifle_hk416d165$",
	"$NONE_hlc_rifle_hk416d165_camo_grn$",
	"$NONE_hlc_rifle_hk416d165_camo_tan$",
	"$NONE_hlc_rifle_hk416n$",
	
	"$NONE_hlc_rifle_acr_sbr_blk$",
	"$NONE_hlc_rifle_acr_sbr_grn$",
	"$NONE_hlc_rifle_acr_sbr_tan$",
	"CUP_arifle_ACRC_blk_68",
	"CUP_arifle_ACRC_wdl_68",
	"CUP_arifle_ACRC_tan_68"
	
	
	
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_M4A1_BUIS_GL",
	
	"rhs_weap_hk416d10_m320",
	"rhs_weap_hk416d10_m320",
	"rhs_weap_hk416d145_m320",
	"$NONE_hlc_rifle_hk416d145_agc_camo_grn$",
	"$NONE_hlc_rifle_hk416d145_agc_camo_tan$",
	"$NONE_hlc_rifle_hk416d165_agc$",
	"$NONE_hlc_rifle_hk416d165_agc_camo_grn$",
	"$NONE_hlc_rifle_hk416d165_agc_camo_tan$",
	"$NONE_hlc_rifle_hk416n_agc$",
	
	"$NONE_hlc_rifle_acr_sbr_m203_blk$",
	"$NONE_hlc_rifle_acr_sbr_m203_grn$",
	"$NONE_hlc_rifle_acr_sbr_m203_tan$",
	"CUP_arifle_ACRC_EGLM_blk_68",
	"CUP_arifle_ACRC_EGLM_wdl_68",
	"CUP_arifle_ACRC_EGLM_tan_68"
	
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m249_pip_S_para",
	"bear_weap_m249_pip_S_para_fde"
];

private _itemWeapLAT = 
[
	"CUP_launch_M136"
];

private _itemWeapPistol = 
[
	"hgun_ACPC2_F",
	"CUP_hgun_Colt1911"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger",
	
	//Pistol Ammo
	"CUP_7Rnd_45ACP_1911",
	
	//IR things 
	"ACE_IR_Strobe_Item",
	"B_IR_Grenade",
	"ACE_40mm_Flare_ir",
	
	//Memes
    "murshun_cigs_matches",
    "murshun_cigs_lighter",
    "murshun_cigs_cigpack"
];

private _itemAmmoTracer = 
[
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red"
];

private _itemAmmoAR = 
[
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67"
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M",
	"MRAWS_HE_F"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"SatchelCharge_Remote_Mag",
	"ToolKit"
];

//********************************************************************************//
// Add Current Gear
//********************************************************************************//

{
	_itemGear pushBackUnique _x;
} forEach (primaryWeaponItems _unit);

{
	_itemGear pushBackUnique _x;
} forEach (handgunItems _unit);

{
	_itemGear pushBackUnique _x;
} forEach (assignedItems _unit);

_itemGear pushBack uniform _unit;
_itemGear pushBack vest _unit;
_itemGear pushBack headgear _unit;
_itemGear pushBack backpack _unit;

//********************************************************************************//
// Add Items
//********************************************************************************//

switch (true) do 
{
	//Rifleman
	case (_unitRole == "rm") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc +_itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
};

//********************************************************************************//
// Add Actions
//********************************************************************************//

_action = 
[
	"personal_arsenal", "Personal Arsenal", "\a3\ui_f\data\igui\cfg\weaponicons\mg_ca.paa",
	{
		[arsenal, _player] call ace_arsenal_fnc_openBox
	},
	{
		(player distance2D (player getVariable ["startPos", [0,0,0]])) < 100
	},
	{},
	[],
	[0,0,0],
	3
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;