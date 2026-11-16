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
	"CUP_U_B_AFU_ACU_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Rolled_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Rolled_M14",
		"CUP_U_B_AFU_ACU_M14",
		"CUP_U_B_AFU_ACU_Rolled_Gloves_M14",
		"CUP_U_B_AFU_ACU_Rolled_M14",
		"CUP_U_CRYE_G3C_MC_V3"
];

private _itemUniformCrew = 
[
	"CUP_U_B_AFU_ACU_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Rolled_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Rolled_M14",
		"CUP_U_B_AFU_ACU_M14",
		"CUP_U_B_AFU_ACU_Rolled_Gloves_M14",
		"CUP_U_B_AFU_ACU_Rolled_M14",
		"CUP_U_CRYE_G3C_MC_V3"
];

private _itemUniformPilot = 
[
	"CUP_U_B_AFU_ACU_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Rolled_Gloves_M14",
		"CUP_U_B_AFU_ACU_Kneepad_Rolled_M14",
		"CUP_U_B_AFU_ACU_M14",
		"CUP_U_B_AFU_ACU_Rolled_Gloves_M14",
		"CUP_U_B_AFU_ACU_Rolled_M14",
		"CUP_U_CRYE_G3C_MC_V3"
];

//Vest
private _itemVest = 
[
	"CUP_V_B_IOTV_MM14_Empty_USArmy",
	"CUP_V_B_IOTV_MM14_Grenadier_USArmy",
	"CUP_V_B_IOTV_MM14_MG_USArmy",
	"CUP_V_B_IOTV_MM14_Medic_USArmy",
	"CUP_V_B_IOTV_MM14_Rifleman_Deltoid_USArmy",
	"CUP_V_B_IOTV_MM14_Rifleman_USArmy",
	"CUP_V_B_IOTV_MM14_SAW_USArmy",
	"CUP_V_B_IOTV_MM14_SL_USArmy",
	"CUP_V_B_IOTV_MM14_TL_USArmy",
	"CUP_V_CPC_communications_mc",
	"CUP_V_CPC_Fast_mc",
	"CUP_V_CPC_light_mc",
	"CUP_V_CPC_medical_mc",
	"CUP_V_CPC_tl_mc",
	"CUP_V_CPC_weapons_mc",
	"CUP_V_CPC_communicationsbelt_mc",
	"CUP_V_CPC_Fastbelt_mc",
	"CUP_V_CPC_lightbelt_mc",
	"CUP_V_CPC_medicalbelt_mc",
	"CUP_V_CPC_tlbelt_mc",
	"CUP_V_CPC_weaponsbelt_mc",
	"CUP_V_CPC_communications_rngr",
	"CUP_V_CPC_Fast_rngr",
	"CUP_V_CPC_light_rngr",
	"CUP_V_CPC_medical_rngr",
	"CUP_V_CPC_tl_rngr",
	"CUP_V_CPC_weapons_rngr",
	"CUP_V_CPC_communicationsbelt_rngr",
	"CUP_V_CPC_Fastbelt_rngr",
	"CUP_V_CPC_lightbelt_rngr",
	"CUP_V_CPC_medicalbelt_rngr",
	"CUP_V_CPC_tlbelt_rngr",
	"CUP_V_CPC_weaponsbelt_rngr"
];

private _itemVestCrew = 
[
	"CUP_V_B_IOTV_MM14_Empty_USArmy",
	"CUP_V_B_IOTV_MM14_Grenadier_USArmy",
	"CUP_V_B_IOTV_MM14_MG_USArmy",
	"CUP_V_B_IOTV_MM14_Medic_USArmy",
	"CUP_V_B_IOTV_MM14_Rifleman_Deltoid_USArmy",
	"CUP_V_B_IOTV_MM14_Rifleman_USArmy",
	"CUP_V_B_IOTV_MM14_SAW_USArmy",
	"CUP_V_B_IOTV_MM14_SL_USArmy",
	"CUP_V_B_IOTV_MM14_TL_USArmy",
	"CUP_V_CPC_communications_mc",
	"CUP_V_CPC_Fast_mc",
	"CUP_V_CPC_light_mc",
	"CUP_V_CPC_medical_mc",
	"CUP_V_CPC_tl_mc",
	"CUP_V_CPC_weapons_mc",
	"CUP_V_CPC_communicationsbelt_mc",
	"CUP_V_CPC_Fastbelt_mc",
	"CUP_V_CPC_lightbelt_mc",
	"CUP_V_CPC_medicalbelt_mc",
	"CUP_V_CPC_tlbelt_mc",
	"CUP_V_CPC_weaponsbelt_mc",
	"CUP_V_CPC_communications_rngr",
	"CUP_V_CPC_Fast_rngr",
	"CUP_V_CPC_light_rngr",
	"CUP_V_CPC_medical_rngr",
	"CUP_V_CPC_tl_rngr",
	"CUP_V_CPC_weapons_rngr",
	"CUP_V_CPC_communicationsbelt_rngr",
	"CUP_V_CPC_Fastbelt_rngr",
	"CUP_V_CPC_lightbelt_rngr",
	"CUP_V_CPC_medicalbelt_rngr",
	"CUP_V_CPC_tlbelt_rngr",
	"CUP_V_CPC_weaponsbelt_rngr"
];

private _itemVestPilot = 
[
	"CUP_V_B_IOTV_MM14_Empty_USArmy",
	"CUP_V_B_IOTV_MM14_Grenadier_USArmy",
	"CUP_V_B_IOTV_MM14_MG_USArmy",
	"CUP_V_B_IOTV_MM14_Medic_USArmy",
	"CUP_V_B_IOTV_MM14_Rifleman_Deltoid_USArmy",
	"CUP_V_B_IOTV_MM14_Rifleman_USArmy",
	"CUP_V_B_IOTV_MM14_SAW_USArmy",
	"CUP_V_B_IOTV_MM14_SL_USArmy",
	"CUP_V_B_IOTV_MM14_TL_USArmy",
	"CUP_V_CPC_communications_mc",
	"CUP_V_CPC_Fast_mc",
	"CUP_V_CPC_light_mc",
	"CUP_V_CPC_medical_mc",
	"CUP_V_CPC_tl_mc",
	"CUP_V_CPC_weapons_mc",
	"CUP_V_CPC_communicationsbelt_mc",
	"CUP_V_CPC_Fastbelt_mc",
	"CUP_V_CPC_lightbelt_mc",
	"CUP_V_CPC_medicalbelt_mc",
	"CUP_V_CPC_tlbelt_mc",
	"CUP_V_CPC_weaponsbelt_mc",
	"CUP_V_CPC_communications_rngr",
	"CUP_V_CPC_Fast_rngr",
	"CUP_V_CPC_light_rngr",
	"CUP_V_CPC_medical_rngr",
	"CUP_V_CPC_tl_rngr",
	"CUP_V_CPC_weapons_rngr",
	"CUP_V_CPC_communicationsbelt_rngr",
	"CUP_V_CPC_Fastbelt_rngr",
	"CUP_V_CPC_lightbelt_rngr",
	"CUP_V_CPC_medicalbelt_rngr",
	"CUP_V_CPC_tlbelt_rngr",
	"CUP_V_CPC_weaponsbelt_rngr"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_AFU_HelmetACH_MM_14",
		"CUP_H_AFU_HelmetACH_GCOVERED_MM_14",
		"CUP_H_AFU_HelmetACH_GCOVERED_Headset_MM_14",
		"CUP_H_AFU_HelmetACH_ESS_MM_14",
		"CUP_H_AFU_HelmetACH_ESS_Headset_MM_14",
		"CUP_H_AFU_HelmetACH_Headset_MM_14",
		"CUP_H_Booniehat_mm14",
		"CUP_H_OpsCore_Covered_MM14",
		"CUP_H_OpsCore_Covered_MM14_NoHS",
		"CUP_H_OpsCore_Covered_MM14_SF",
		"H_Watchcap_camo",
		"H_Watchcap_khk",
		"H_Booniehat_khk",
		"H_Booniehat_khk_hs",
		"H_Booniehat_oli",
		"H_Cap_grn",
		"CUP_H_PMC_Beanie_Khaki",
		"CUP_H_PMC_Beanie_Headphones_Khaki",
		"CUP_H_USA_Cap_MCAM",
		"hendrix_beanie_blk",
		"hendrix_beanie_g",
		"Aegis_H_Helmet_FASTMT_rgr_F",
		"Aegis_H_Helmet_FASTMT_Headset_rgr_F",
		"Aegis_H_Helmet_FASTMT_Cover_rgr_F",
		"CUP_H_OpsCore_Covered_MTP",
		"CUP_H_OpsCore_Covered_MTP_NoHS",
		"CUP_H_OpsCore_Covered_MTP_SF"
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
	"pca_backpack_invisible",
	"CUP_B_AFU_IIID_MM14",
	"CUP_B_AFU_Assault_MM14",
	"B_AssaultPack_rgr",
	"B_Kitbag_rgr",
	"B_TacticalPack_rgr",
	"B_FieldPack_green_F",
	"B_Carryall_green_F",
	"B_RadioBag_01_green_F",
	"B_AssaultPack_mcamo",
	"B_Carryall_mcamo",
	"B_Kitbag_mcamo",
	"B_RadioBag_01_mtp_F"
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
	"CUP_G_Beard_Shades_Black",
"CUP_G_Beard_Shades_Blonde",
"CUP_G_Grn_Scarf_Shades_Beard",
"CUP_G_Grn_Scarf_Shades_Beard_Blonde",
"CUP_G_Tan_Scarf_Shades_Beard",
"CUP_G_Tan_Scarf_Shades_Beard_Blonde",
"CUP_G_White_Scarf_Shades_Beard",
"CUP_G_White_Scarf_Shades_Beard_Blonde",
"CUP_Beard_Black",
"CUP_Beard_Blonde",
"CUP_Beard_Brown",
"CUP_G_ESS_BLK_Scarf_Blk_Beard",
"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
"CUP_G_ESS_BLK_Scarf_Grn_Beard",
"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
"CUP_G_ESS_BLK_Scarf_Red_Beard",
"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
"CUP_G_ESS_KHK_Scarf_Tan_Beard",
"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
"CUP_G_ESS_BLK_Scarf_White_Beard",
"M40_Gas_mask_nbc_f2_d",
"M40_Gas_mask_nbc_f4_d",
"G_AirPurifyingRespirator_01_F",
"JCA_G_AirPurifyingRespirator_04_black_clear_F",
"JCA_G_AirPurifyingRespirator_04_black_tinted_F",
"G_Cigarette",
"immersion_cigs_cigar0",
"murshun_cigs_cig0",
"immersion_pops_pop0",
"immersion_cigs_cigar0_nv",
"murshun_cigs_cig0_nv",
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
"G_Balaclava_blk_lxWS",
"G_Balaclava_oli_lxWS",
"G_Balaclava_snd_lxWS",
"G_Balaclava_light_blk_F",
"CUP_RUS_Balaclava_blk",
"CUP_RUS_Balaclava_grn",
"CUP_G_RUS_Balaclava_Ratnik",
"CUP_G_RUS_Balaclava_Ratnik_v2",
"CUP_RUS_Balaclava_rgr",
"CUP_RUS_Balaclava_tan",
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
"G_Balaclava_TI_G_blk_F",
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
"PLA_NV_Goggles_F",
"PLA_NV_Glasses_F",
"Goggles",
"Aegis_Goggles_Cover_grn_F",
"Aegis_Goggles_Cover_F",
"Goggles_grn_F",
"Goggles_tna_F",
"Aegis_G_Headset_black_F",
"Aegis_G_Headset_Olive_F",
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
"G_Armband_ligblu_alt_F",
"G_Armband_ligblu_F",
"G_Headband_ligblu_alt_F",
"G_Headband_ligblu_F",
"G_Armband_yel_alt_F",
"G_Armband_yel_F",
"G_Headband_yel_alt_F",
"G_Headband_yel_F"
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
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"ACE_Clacker"
	
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
	"optic_Yorris",
	"optic_Aco",
	"optic_Aco_smg",
	"optic_Arco",
	"optic_Holosight",
	"optic_Holosight_smg",
	"optic_MRCO",
	"optic_Hamr",
	"Aegis_optic_ACOG",
	"Aegis_optic_1p87",
	"Aegis_optic_ICO",
	"Aegis_optic_ROS",
	"Aegis_optic_ROS_SMG",
	"optic_Arco_blk_F",
	"optic_Holosight_blk_F",
	"optic_Holosight_smg_blk_F",
	"optic_ERCO_blk_F",
	"optic_LRCO_blk_F",
	"optic_Arco_AK_blk_F",
	"optic_r1_high_lxWS",
	"optic_r1_low_lxWS",
	"CUP_optic_1P87_RIS",
	"CUP_optic_1P87_1P90_BLK",
	"CUP_optic_CompM4",
	"CUP_optic_AIMM_COMPM4_BLK",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_low",
	"CUP_optic_AIMM_MICROT1_BLK",
	"CUP_optic_AC11704_Black",
	"CUP_optic_HoloBlack",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_G33_HWS_BLK",
	"CUP_optic_CompM2_Black",
	"CUP_optic_AIMM_COMPM2_BLK",
	"CUP_optic_CompM2_low",
	"CUP_optic_AIMM_M68_BLK",
	"CUP_optic_MRad",
	"CUP_optic_OKP_7_rail",
	"JCA_optic_MROS_black",
	"JCA_optic_MROS_black_magnifier",
	
	//Grip
	
	
	//Tactical Device
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"ACE_DBAL_A3_Red",
	"CUP_acc_Flashlight",
	"CUP_muzzle_snds_M16",
	"CUP_muzzle_mfsup_Flashhider_556x45_Black",
	"CUP_muzzle_mfsup_Flashhider_545x39_Black",
	"CUP_muzzle_snds_KZRZP_AK545",
	"Aegis_acc_pointer_compact_red",
	"Aegis_acc_pointer_compact_green"
];

private _itemWeapRifle = 
[
	"CUP_arifle_M4A1_black",
	"CUP_arifle_M4A3_black",
	"CUP_arifle_AK74M_top_rail",
	"CUP_arifle_AK74_top_rail",
	"CUP_arifle_AKS74_top_rail",
	"arifle_SPAR_01_blk_F",
	"CUP_CZ_BREN2_556_11",
	"CUP_arifle_Fort224_Grippod",
	"CUP_arifle_Fort224"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_M4A1_BUIS_GL",
	"CUP_CZ_BREN2_556_11_GL",
	"CUP_arifle_AK74M_GL_top_rail",
	"CUP_arifle_AK74_GL_top_rail",
	"CUP_arifle_AKS74_GL_top_rail",
	"arifle_SPAR_01_GL_blk_F"
];

private _itemWeapAR = 
[
	"CUP_arifle_RPK74_45_top_rail",
	"CUP_arifle_RPK74M_top_rail",
	"Atlas_LMG_Negev_black_F",
	"CUP_lmg_minimi_railed",
	"CUP_lmg_L110A1",
	"CUP_lmg_m249_pip1",
	"CUP_lmg_m249_pip3",
	"CUP_lmg_PKM_front_rail_B50_vfg",
	"CUP_lmg_PKM_top_rail",
	"CUP_lmg_PKM_top_rail_B50_vfg",
	"CUP_lmg_MG3_rail",
	"MMG_01_tan_F",
	"CUP_lmg_M240_B",
	"CUP_lmg_M240"
];

private _itemWeapLAT = 
[
	"CUP_sgun_M1014",
	"CUP_sgun_Saiga12K_top_rail"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Glock17_blk",
	"CUP_hgun_PMM",
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_glock17",
	"CUP_12Rnd_9x18_PMM_M"
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
	"CUP_30Rnd_545x39_AK74M_M",
	"CUP_30Rnd_545x39_AK_M",
	"CUP_8Rnd_12Gauge_Slug",
	"CUP_5Rnd_B_Saiga12_Slug",
	"CUP_12Rnd_B_Saiga12_Slug",
	"CUP_30Rnd_545x39_Fort224_M"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_556x45_Stanag_Tracer_Red",
	"CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M",
	"CUP_30Rnd_TE1_Red_Tracer_545x39_AK74M_M"
];

private _itemAmmoAR = 
[
	"CUP_200Rnd_TE1_Red_Tracer_556x45_M249",
	"CUP_200Rnd_TE4_Red_Tracer_556x45_M249",
	"CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M",
	"CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",
	"Atlas_150Rnd_762x51_Box_Tracer_Red",
	"Atlas_150Rnd_762x51_Box_Red",
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M",
	"CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
	"150Rnd_93x64_Mag_Red",
	"ACE_150Rnd_93x64_Mag_red",
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
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
	"ACE_40mm_Flare_white",
	"CUP_1Rnd_SMOKE_GP25_M",
	"CUP_1Rnd_SmokeRed_GP25_M",
	"CUP_1Rnd_SmokeGreen_GP25_M",
	"CUP_1Rnd_SmokeYellow_GP25_M"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67",
	"CUP_1Rnd_HE_GP25_M",
	"CUP_HandGrenade_RGD5",
	"CUP_HandGrenade_RGO",
	"DemoCharge_Remote_Mag"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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