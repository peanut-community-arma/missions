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
	"U_NikosAgedBody",
	"U_BG_Guerrilla_6_1",
	"U_BG_Guerilla2_1",
	"U_BG_Guerilla2_3",
	"U_BG_Guerilla3_1",
	"U_BG_Guerilla3_2",
	"U_C_HunterBody_grn",
	"U_Marshal",
	"U_NikosBody",
	"U_C_Commoner1_1",
	"U_C_Commoner1_3",
	"U_C_Poor_1",
	"U_C_Poor_2",
	"U_C_Man_casual_8_F",
	"U_C_Man_casual_7_F",
	"U_C_Man_casual_9_F",
	"Aegis_U_lxWS_ION_Casual_Hawaiian_F",
	"Aegis_U_lxWS_ION_Casual_Hawaiian_2_F",
	"U_C_Uniform_Formal_01_blue_F",
	"U_C_Uniform_Formal_01_striped_F",
	"U_C_Uniform_Formal_01_white_F",
	"U_B_ION_Uniform_01_poloshirt_blue_F",
	"U_B_ION_Uniform_01_tshirt_black_F",
	"U_I_C_Soldier_Bandit_2_F",
	"U_I_C_Soldier_Bandit_3_F",
	"U_C_Man_casual_2_F",
	"U_C_Man_casual_3_F",
	"U_C_Man_casual_1_F",
	"Atlas_U_C_CommonerJacket_01_blue_F",
	"Atlas_U_C_CommonerJacket_01_grey_F",
	"Atlas_U_C_CommonerJacket_01_marroon_F",
	"Atlas_U_C_Uniform_01_shirt_pattern_F",
	"Atlas_U_C_Uniform_01_shirt_striped_F",
	"Atlas_U_C_Uniform_01_shirt_white_F",
	"Atlas_U_C_Uniform_01_tshirt_white_F",
	"U_C_E_LooterJacket_01_F",
	"U_I_L_Uniform_01_tshirt_black_F",
	"U_I_L_Uniform_01_tshirt_olive_F",
	"U_I_L_Uniform_01_tshirt_skull_F",
	"U_I_L_Uniform_01_tshirt_sport_F",
	"U_lxWS_ION_Casual3",
	"U_lxWS_ION_Casual5",
	"Opf_U_I_I_Uniform_01_tshirt_black_F",
	"U_C_Mechanic_01_F",
	"CUP_U_I_GUE_Anorak_01",
	"CUP_U_I_GUE_Anorak_03",
	"CUP_U_I_GUE_Anorak_02",
	"CUP_U_C_racketeer_01",
	"CUP_U_C_racketeer_04",
	"CUP_U_C_racketeer_02",
	"CUP_U_C_racketeer_03",
	"CUP_U_C_Rocker_01",
	"CUP_U_C_Rocker_03",
	"CUP_U_C_Rocker_02",
	"CUP_U_C_Rocker_04",
	"CUP_U_C_Tracksuit_02",
	"CUP_U_C_Tracksuit_01",
	"CUP_U_C_Tracksuit_04",
	"CUP_U_C_Tracksuit_03",
	"CUP_U_C_Woodlander_01",
	"CUP_U_C_Woodlander_02",
	"U_simc_surf",
	"U_simc_civ_jean_VTN_sub_trop",
	"U_simc_civ_jean_khk_trop",
	"U_simc_civ_jean_weiss_trop",
	"U_simc_civ_jean_weiss_dunkel_trop",
	"U_simc_civ_jean_rot_ligt_trop",
	"U_simc_civ_jean_blau_trop",
	"U_simc_civ_jean_blau_dunkel_trop"
];

private _itemUniformCrew = 
[
	"CUP_U_B_USArmy_ACU_OCP",
	"CUP_U_B_USArmy_ACU_Rolled_OCP"
];

private _itemUniformPilot = 
[
	"CUP_U_B_USArmy_ACU_OCP",
	"CUP_U_B_USArmy_ACU_Rolled_OCP"
];

//Vest
private _itemVest = 
[
	"pca_vest_invisible"
];

private _itemVestCrew = 
[
	"pca_vest_invisible"
];

private _itemVestPilot = 
[
	"pca_vest_invisible"
];

//Headgear 
private _itemHeadgear = 
[
	"H_RacingHelmet_1_black_F",
	"H_RacingHelmet_1_blue_F",
	"H_RacingHelmet_2_F",
	"H_RacingHelmet_1_F",
	"H_RacingHelmet_1_green_F",
	"H_RacingHelmet_1_orange_F",
	"H_RacingHelmet_1_red_F",
	"H_RacingHelmet_3_F",
	"H_RacingHelmet_4_F",
	"H_RacingHelmet_1_white_F",
	"H_RacingHelmet_1_yellow_F",
	"H_Shemag_khk",
	"H_Shemag_olive",
	"H_ShemagOpen_tan",
	"H_ShemagOpen_khk",
	"Aegis_lxWS_H_bmask_UwU",
	"Aegis_lxWS_H_bmask_AAF",
	"lxWS_H_bmask_base",
	"lxWS_H_bmask_ghex",
	"lxWS_H_bmask_hex",
	"lxWS_H_bmask_camo01",
	"H_bmask_snake_lxws",
	"lxWS_H_bmask_white",
	"lxWS_H_bmask_camo02",
	"lxWS_H_bmask_yellow",
	"H_Shemag_blk",
	"H_Shemag_red"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC"
];

private _itemHeadgearPilot = 
[
	"H_PilotHelmetHeli_B"
];

//Backpack 
private _itemBackpack = 
[
	"B_CivilianBackpack_01_Everyday_Astra_F",
	"B_CivilianBackpack_01_Everyday_Black_F",
	"B_CivilianBackpack_01_Everyday_Vrana_F",
	"B_CivilianBackpack_01_Sport_Blue_F",
	"B_CivilianBackpack_01_Sport_Green_F",
	"B_CivilianBackpack_01_Sport_Red_F",
	"B_LegStrapBag_black_F",
	"B_Messenger_Black_F",
	"B_Messenger_Coyote_F",
	"B_Messenger_Gray_F",
	"B_Messenger_Olive_F",
	"pca_backpack_taki_jacket1_04",
	"pca_backpack_taki_jacket1_06",
	"pca_backpack_taki_jacket1_05",
	"pca_backpack_taki_jacket1_03",
	"B_simc_US_Bandoleer_556_1",
	"B_simc_US_Bandoleer_556_3",
	"B_simc_US_Bandoleer_556_fore",
	"B_simc_US_Bandoleer_556_doppel_2",
	"pca_backpack_invisible"
];

private _itemBackpackCrew = 
[
	"pca_backpack_invisible"
];

private _itemBackpackPilot = 
[
	"pca_backpack_invisible"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_AirPurifyingRespirator_02_black_F",
"G_AirPurifyingRespirator_02_olive_F",
"G_AirPurifyingRespirator_02_sand_F",
"G_AirPurifyingRespirator_01_F",
"G_RegulatorMask_F",
"JCA_G_AirPurifyingRespirator_04_black_clear_F",
"JCA_G_AirPurifyingRespirator_04_black_tinted_F",
"JCA_G_AirPurifyingRespirator_04_olive_clear_F",
"JCA_G_AirPurifyingRespirator_04_olive_tinted_F",
"JCA_G_AirPurifyingRespirator_04_sand_clear_F",
"JCA_G_AirPurifyingRespirator_04_sand_tinted_F",
"M40_Gas_mask_nbc_hood_v6_s",
"M40_Gas_mask_nbc_hood_v9_s",
"M40_Gas_mask_nbc_hood_v5_s",
"M40_Gas_mask_nbc_hood_v8_s",
"M40_Gas_mask_nbc_hood_v4_s",
"M40_Gas_mask_nbc_hood_v7_s",
"M40_Gas_mask_nbc_v2_d",
"M40_Gas_mask_nbc_v4_d",
"M40_Gas_mask_nbc_f2_d",
"M40_Gas_mask_nbc_f4_d",
"M40_Gas_mask_nbc_c2_d",
"M40_Gas_mask_nbc_c4_d",
"PMK_1_Gas_mask_B1_F",
"M40_Gas_mask_nbc_v2_NVG_02",
"M40_Gas_mask_nbc_v4_NVG_04",
"M40_Gas_mask_nbc_f2_NVG_02",
"M40_Gas_mask_nbc_f4_NVG_04",
"M40_Gas_mask_nbc_c2_NVG_02",
"M40_Gas_mask_nbc_c4_NVG_04",
"G_Cigarette",
"immersion_cigs_cigar0",
"murshun_cigs_cig0",
"immersion_pops_pop0",
"immersion_cigs_cigar0_nv",
"murshun_cigs_cig0_nv",
"G_Balaclava_BlueStrips",
"G_Balaclava_Halloween_01",
"G_Balaclava_Flames1",
"G_Balaclava_Scarecrow_01",
"G_Bandanna_beast",
"G_Bandanna_OrangeFlame1",
"G_Bandanna_Vampire_01",
"G_Balaclava_Skull1",
"G_Bandanna_BlueFlame1",
"G_Bandanna_BlueFlame2",
"G_Bandanna_CandySkull",
"G_Bandanna_RedFlame2",
"G_Bandanna_RedFlame1",
"G_Bandanna_Skull1",
"G_Bandanna_Skull1",
"G_Bandanna_Skull2",
"G_Bandanna_kawaii",
"G_Bandanna_Syndikat1",
"G_Bandanna_Syndikat2",
"G_Bandanna_TransPride",
"CUP_G_ESS_RGR_Facewrap_Skull",
"CUP_PMC_Facewrap_Skull",
"CUP_PMC_Facewrap_Smilie",
"G_Shemag_khk",
"G_Shemag_oli",
"G_Shemag_red",
"G_Shemag_tan",
"G_Shemag_white",
"G_Bandanna_shemag",
"CUP_TK_NeckScarf",
"CUP_G_Scarf_Face_Blk",
"CUP_G_Scarf_Face_Grn",
"CUP_G_Scarf_Face_Red",
"CUP_G_Scarf_Face_Tan",
"CUP_G_Scarf_Face_White",
"CUP_FR_NeckScarf3",
"CUP_FR_NeckScarf",
"CUP_FR_NeckScarf2",
"CUP_FR_NeckScarf5",
"CUP_FR_NeckScarf4",
"G_Shemag_shades",
"G_Shemag_tactical",
"CUP_G_Grn_Scarf_Shades",
"CUP_G_Tan_Scarf_Shades",
"CUP_G_White_Scarf_Shades",
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
"pca_nvg_shemagh_lowered_khk",
"pca_nvg_shemagh_lowered_oli",
"pca_nvg_shemagh_lowered_red",
"pca_nvg_shemagh_lowered_tan",
"pca_nvg_shemagh_lowered_white",
"PLA_Balaclava_Alt_Olive",
"PLA_Balaclava_Alt_1_Olive",
"PLA_Balaclava_Alt_Tan",
"PLA_Balaclava_Alt_1_Tan",
"PLA_Balaclava_Alt_Black",
"PLA_Balaclava_Alt_1_Black",
"JAM_G_SovietBalaclava_brn",
"Aegis_G_scrimNet_black_F",
"Aegis_G_scrimNet_olive_F",
"Aegis_G_scrimNet_sand_F",
"Aegis_G_scrimNet_under_black_F",
"Aegis_G_scrimNet_under_olive_F",
"Aegis_G_scrimNet_under_sand_F",
"G_Balaclava_blk",
"G_Balaclava_oli",
"G_Balaclava_light_blk_F",
"G_Balaclava_light_eaf_F",
"G_Balaclava_light_mtp_F",
"G_Balaclava_light_tropic_F",
"G_Balaclava_light_wdl_F",
"G_Balaclava_TI_alt_F",
"G_Balaclava_TI_blk_F",
"G_Balaclava_TI_tna_F",
"G_Balaclava_blk_lxWS",
"G_Balaclava_oli_lxWS",
"G_Balaclava_snd_lxWS",
"CUP_RUS_Balaclava_blk",
"CUP_RUS_Balaclava_emr",
"CUP_RUS_Balaclava_grn",
"CUP_G_RUS_Balaclava_Ratnik",
"CUP_G_RUS_Balaclava_Ratnik_v2",
"CUP_RUS_Balaclava_rgr",
"CUP_RUS_Balaclava_tan",
"CUP_G_RUS_Ratnik_Balaclava_A_Tacs_1",
"CUP_G_RUS_Ratnik_Balaclava_A_Tacs_2",
"CUP_G_RUS_Ratnik_Balaclava_A_Tacs_3",
"CUP_G_RUS_Ratnik_Balaclava_A_Tacs_4",
"CUP_G_RUS_Ratnik_Balaclava_Desert_1",
"CUP_G_RUS_Ratnik_Balaclava_Desert_2",
"CUP_G_RUS_Ratnik_Balaclava_Desert_3",
"CUP_G_RUS_Ratnik_Balaclava_Desert_4",
"CUP_G_RUS_Ratnik_Balaclava_EMR_Autumn_1",
"CUP_G_RUS_Ratnik_Balaclava_EMR_Autumn_2",
"CUP_G_RUS_Ratnik_Balaclava_EMR_Summer_1",
"CUP_G_RUS_Ratnik_Balaclava_EMR_Summer_2",
"CUP_G_RUS_Ratnik_Balaclava_Green_1",
"CUP_G_RUS_Ratnik_Balaclava_Green_2",
"CUP_G_RUS_Ratnik_Balaclava_Green_3",
"CUP_G_RUS_Ratnik_Balaclava_Green_4",
"CUP_G_RUS_Ratnik_Balaclava_Olive_1",
"CUP_G_RUS_Ratnik_Balaclava_Olive_2",
"CUP_G_RUS_Ratnik_Balaclava_Sage_1",
"CUP_G_RUS_Ratnik_Balaclava_Sage_2",
"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_1",
"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_2",
"CUP_PMC_Facewrap_Black",
"CUP_PMC_Facewrap_Ranger",
"CUP_PMC_Facewrap_Red",
"CUP_PMC_Facewrap_Tan",
"CUP_PMC_Facewrap_Tropical",
"CUP_PMC_Facewrap_Winter",
"G_Bandanna_blk",
"G_Bandanna_khk",
"G_Bandanna_oli",
"G_Bandanna_tan",
"G_Balaclava_light_G_blk_F",
"G_Balaclava_lowprofile",
"G_Balaclava_combat",
"G_Balaclava_light_G_eaf_F",
"G_Balaclava_light_G_mtp_F",
"G_Balaclava_light_G_tropic_F",
"G_Balaclava_light_G_wdl_F",
"G_Balaclava_TI_G_alt_F",
"G_Balaclava_TI_G_blk_F",
"G_Balaclava_TI_G_tna_F",
"CUP_G_ESS_BLK_Facewrap_Black",
"CUP_G_ESS_RGR_Facewrap_Ranger",
"CUP_G_ESS_CBR_Facewrap_Red",
"CUP_G_ESS_KHK_Facewrap_Tan",
"CUP_G_ESS_RGR_Facewrap_Tropical",
"CUP_G_ESS_KHK_Facewrap_White",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tan_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tan_Glasses_Dark",
"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
"CUP_G_PMC_Facewrap_Winter_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Winter_Glasses_Dark",
"CUP_G_PMC_Facewrap_Winter_Glasses_Ember",
"G_Bandanna_aviator",
"G_Bandanna_shades",
"G_Aviator",
"G_Squares",
"G_Spectacles_Tinted",
"Aegis_G_Condor_EyePro_F",
"G_Combat_lxWS",
"CUP_G_Oakleys_Clr",
"CUP_G_Oakleys_Drk",
"CUP_G_Oakleys_Embr",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Squares_Tinted",
"G_Shades_Yellowred",
"CUP_G_TK_RoundGlasses",
"CUP_G_TK_RoundGlasses_blk",
"CUP_G_ESS_BLK_Dark",
"CUP_G_ESS_BLK_Ember",
"CUP_G_ESS_BLK",
"G_SWDG",
"G_SWDG_low",
"G_Simc_tacticool",
"G_Tactical_Black",
"G_Tactical_Camo",
"G_Combat",
"G_Lowprofile",
"G_Tactical_Clear",
"G_Goggles_VR",
"G_Combat_Goggles_blk_F",
"G_Tactical_Yellow",
"G_Combat_Goggles_tna_F",
"PLA_NV_Goggles_F",
"PLA_NV_Glasses_F",
"Goggles",
"Aegis_Goggles_Cover_grn_F",
"Aegis_Goggles_Cover_F",
"Goggles_grn_F",
"Goggles_tna_F",
"Aegis_G_Headset_black_F",
"Aegis_G_Headset_Olive_F",
"Aegis_G_Headset_orange_F",
"Aegis_G_Headset_red_F",
"Aegis_G_Headset_Sand_F",
"Aegis_G_Headset_white_F",
"Aegis_G_Headset_Yellow_F",
"G_Headset_light",
"G_Headset_Tactical",
"G_Headset_Tactical_grn",
"G_Headset_Tactical_khk",
"G_Headset_lxWS",
"G_WirelessEarpiece_F",
"CUP_G_RUS_Ratnik_6M2_Desert",
"CUP_G_RUS_Ratnik_6M2_Summer",
"CUP_G_RUS_Ratnik_6M21_Desert",
"CUP_G_RUS_Ratnik_6M21_Summer",
"CUP_G_PMC_RadioHeadset",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tan_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Winter_Glasses_Dark_Headset",
"CUP_G_PMC_RadioHeadset_Glasses_Dark",
"CUP_G_PMC_RadioHeadset_Glasses_Ember",
"CUP_G_PMC_RadioHeadset_Glasses",
"JAM_G_Gloves_Leather_blk",
"JAM_G_Gloves_wool_blk",
"JAM_G_Gloves_wool_brn",
"JAM_G_Gloves_wool_cut_blk",
"JAM_G_Gloves_wool_cut_brn",
"JAM_G_Gloves_wool_cut_oli",
"JAM_G_Gloves_wool_oli",
"G_Nomex_1",
"G_Nomex_1_fold",
"G_Nomex_1_lang",
"G_Nomex_2",
"G_Nomex_2_fold",
"G_Nomex_2_lang",
"G_Nomex_2_cut",
"G_Nomex_2_fold_cut",
"G_Nomex_2_lang_cut",
"G_Nomex_1_cut",
"G_Nomex_1_fold_cut",
"G_Nomex_1_lang_cut",
"G_Nomex_desu",
"G_Nomex_desu_fold",
"G_Nomex_desu_lang",
"G_Nomex_desu_2",
"G_Nomex_desu_2_fold",
"G_Nomex_desu_2_lang",
"G_Nomex_desu_2_cut",
"G_Nomex_desu_2_fold_cut",
"G_Nomex_desu_2_lang_cut",
"G_Nomex_desu_cut",
"G_Nomex_desu_fold_cut",
"G_Nomex_desu_lang_cut",
"TC_G_NitrileGloves_1",
"JAM_NV_Gloves_Leather_blk",
"JAM_NV_Gloves_Wool_blk",
"JAM_NV_Gloves_Wool_brn",
"JAM_NV_Gloves_Wool_cut_blk",
"JAM_NV_Gloves_Wool_cut_brn",
"JAM_NV_Gloves_Wool_cut_oli",
"JAM_NV_Gloves_Wool_oli",
"nomex_1_addon",
"nomex_1_fold_addon",
"nomex_1_lang_addon",
"nomex_2_addon",
"nomex_2_fold_addon",
"nomex_2_lang_addon",
"nomex_3_addon",
"nomex_3_fold_addon",
"nomex_3_lang_addon",
"nomex_4_addon",
"nomex_4_fold_addon",
"nomex_4_lang_addon",
"TC_NVG_NitrileGloves_1",
"G_simc_US_Bandoleer_flak_556_left",
"G_simc_US_Bandoleer_flak_556_right",
"G_simc_US_flak_Bandoleer_556",
"G_claysack_flak",
"G_illegal_canteen",
"G_M17_Gasbag",
"G_simc_US_Bandoleer_556_fore",
"G_simc_US_Bandoleer_556_left",
"G_simc_US_Bandoleer_556_right",
"G_simc_US_Bandoleer_60",
"G_simc_US_Bandoleer_60_L",
"G_simc_US_Bandoleer_60_R",
"G_simc_US_Bandoleer_4cm",
"G_simc_US_Bandoleer_556",
"G_simc_US_Bandoleer_556_low",
"G_botol_left",
"G_botol_regt",
"G_botol",
"G_claysack",
"G_Anduk_1",
"G_Anduk_2",
"G_simc_roll",
"bandolier_flak_556_addon",
"bandolier_flak_556_addon_left",
"bandolier_flak_556_addon_right",
"claysac_flak_addon",
"illegal_canteen_addon",
"M17_gasbag_addon",
"bandolier_556_addon",
"bandolier_556_addon_fore",
"bandolier_556_addon_left",
"bandolier_556_addon_low",
"bandolier_556_addon_right",
"m60_band_addon",
"m60_band_addon_L",
"m60_band_addon_R",
"m79_band_addon",
"botol_left_addon",
"botol_regt_addon",
"botol_addon",
"claysac_addon",
"anduk_1_addon",
"anduk_2_addon"
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
	"ToolKit",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
	
	//Removed AT4 open sight and Adapter for AKs (both from RHS)
];

private _itemBino = 
[
	"Binocular"
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
	"ACE_surgicalKit",
	"ACE_suture",
	"ACE_personalAidKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	
	
	//Grip
	
	
	//Tactical Device
	
];

private _itemWeapRifle = 
[
	"CUP_arifle_Colt727",
	"CUP_arifle_AKM"
];

private _itemWeapRifleUGL = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67"
];

private _itemWeapAR = 
[
	"CUP_smg_UZI",
	"CUP_smg_MP5A5",
	"CUP_hgun_MicroUzi",
	"CUP_hgun_SA61",
	"CUP_hgun_Mac10",
	"CUP_hgun_TEC9_FA",
	"CUP_smg_SA61",
	"CUP_smg_Mac10",
	"CUP_smg_M3A1"
];

private _itemWeapLAT = 
[
	"CUP_sgun_M1014_Entry",
	"bnae_spr220_virtual",
	"bnae_spr220_so_virtual",
	"bnae_m97_virtual",
	"CUP_sgun_SPAS12",
	"CUP_sgun_slamfire"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Browning_HP",
	"CUP_hgun_Glock17_blk",
	"CUP_hgun_Colt1911",
	"CUP_hgun_M9",
	"CUP_hgun_Makarov",
	"CUP_hgun_TaurusTracker455",
	"CUP_hgun_TEC9",
	"bnae_saa_virtual",
	"CUP_hgun_Deagle",
	
	//Pistol Ammo
	"CUP_13Rnd_9x19_Browning_HP",
	"CUP_17Rnd_9x19_glock17",
	"CUP_7Rnd_45ACP_1911",
	"CUP_15Rnd_9x19_M9",
	"CUP_8Rnd_9x18_Makarov_M",
	"CUP_6Rnd_45ACP_M",
	"CUP_32Rnd_9x19_TEC9",
	"6Rnd_357M_Magazine",
	"CUP_7Rnd_50AE_Deagle"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS",
	"CUP_optic_MAAWS_Scope"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_556x45_Stanag",
	"CUP_30Rnd_762x39_AK47_bakelite_M",
	"CUP_6Rnd_12Gauge_Slug",
	"CUP_6Rnd_12Gauge_Pellets_No0_Buck",
	"2Rnd_Slug_Magazine",
	"2Rnd_00_Buckshot_Magazine",
	"6Rnd_00_Buckshot_Magazine",
	"6Rnd_Slug_Magazine",
	"CUP_8Rnd_12Gauge_Slug",
	"CUP_8Rnd_12Gauge_Pellets_No0_Buck",
	"CUP_1Rnd_12Gauge_Slug",
	"CUP_1Rnd_12Gauge_Pellets_No0_Buck"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_556x45_Stanag_Tracer_Red",
	"CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M"
];

private _itemAmmoAR = 
[
	"CUP_30Rnd_9x19_MP5",
	"CUP_32Rnd_9x19_UZI_M",
	"CUP_30Rnd_9x19_UZI",
	"CUP_20Rnd_B_765x17_Ball_M",
	"CUP_30Rnd_45ACP_MAC10_M",
	"CUP_32Rnd_9x19_TEC9",
	"CUP_20Rnd_B_765x17_Ball_M",
	"CUP_30Rnd_45ACP_M3A1_M"
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
	"1Rnd_SmokeYellow_Grenade_shell",
	"CUP_1Rnd_SmokeGreen_M203",
	"CUP_1Rnd_SmokeRed_M203",
	"CUP_1Rnd_SmokeYellow_M203",
	"ACE_40mm_Flare_red",
	"ACE_40mm_Flare_green",
	"ACE_40mm_Flare_white"
];

private _itemExplosive = 
[
	
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"MineDetector",
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearPilot + _itemBackpackPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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