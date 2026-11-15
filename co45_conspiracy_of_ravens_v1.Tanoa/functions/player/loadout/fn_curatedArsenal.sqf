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
	"CUP_U_CRYE_ATACSFG_Full",
	"CUP_U_CRYE_ATACSFG_Roll",
	"CUP_U_CRYE_RGR_Full",
	"CUP_U_CRYE_RGR_Roll",
	"CUP_U_CRYE_MCAM_RUS2_Full",
	"CUP_U_CRYE_MCAM_RUS2_Roll",
	"CUP_U_O_RUS_Soldier_Gorka_A_Tacs_1",
	"CUP_U_O_RUS_Soldier_Gorka_A_Tacs_3",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_1",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_3",
	"Atlas_U_O_Afghanka_01_khk_F",
	"Atlas_U_O_Afghanka_02_khk_F",
	"Aegis_U_O_CombatFatigues_rutaiga_F",
	"Aegis_U_O_CombatFatigues_02_rutaiga_F",
	"Aegis_U_O_LightCombatFatigues_rutaiga_F",
	"U_O_R_CombatUniform_tshirt_taiga_F",
	"Atlas_U_O_Afghanka_01_rutaiga_F",
	"Atlas_U_O_Afghanka_02_rutaiga_F"
];

private _itemUniformCrew = 
[
	"CUP_U_CRYE_ATACSFG_Full",
	"CUP_U_CRYE_ATACSFG_Roll",
	"CUP_U_CRYE_RGR_Full",
	"CUP_U_CRYE_RGR_Roll",
	"CUP_U_CRYE_MCAM_RUS2_Full",
	"CUP_U_CRYE_MCAM_RUS2_Roll",
	"CUP_U_O_RUS_Soldier_Gorka_A_Tacs_1",
	"CUP_U_O_RUS_Soldier_Gorka_A_Tacs_3",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_1",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_3",
	"Atlas_U_O_Afghanka_01_khk_F",
	"Atlas_U_O_Afghanka_02_khk_F",
	"Aegis_U_O_CombatFatigues_rutaiga_F",
	"Aegis_U_O_CombatFatigues_02_rutaiga_F",
	"Aegis_U_O_LightCombatFatigues_rutaiga_F",
	"U_O_R_CombatUniform_tshirt_taiga_F",
	"Atlas_U_O_Afghanka_01_rutaiga_F",
	"Atlas_U_O_Afghanka_02_rutaiga_F"
];

private _itemUniformPilot = 
[
	"CUP_U_CRYE_ATACSFG_Full",
	"CUP_U_CRYE_ATACSFG_Roll",
	"CUP_U_CRYE_RGR_Full",
	"CUP_U_CRYE_RGR_Roll",
	"CUP_U_CRYE_MCAM_RUS2_Full",
	"CUP_U_CRYE_MCAM_RUS2_Roll",
	"CUP_U_O_RUS_Soldier_Gorka_A_Tacs_1",
	"CUP_U_O_RUS_Soldier_Gorka_A_Tacs_3",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_1",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_3",
	"Atlas_U_O_Afghanka_01_khk_F",
	"Atlas_U_O_Afghanka_02_khk_F",
	"Aegis_U_O_CombatFatigues_rutaiga_F",
	"Aegis_U_O_CombatFatigues_02_rutaiga_F",
	"Aegis_U_O_LightCombatFatigues_rutaiga_F",
	"U_O_R_CombatUniform_tshirt_taiga_F",
	"Atlas_U_O_Afghanka_01_rutaiga_F",
	"Atlas_U_O_Afghanka_02_rutaiga_F",
	"USAF_Overalls_Ranger_5_w",
	"USAF_Overalls_Ranger_6_w",
	"USAF_Overalls_Ranger_4_w"
];

//Vest
private _itemVest = 
[
	"Aegis_V_ChestrigEast_grn_F",
	"Aegis_V_OCarrierLuchnik_CQB_grn_F",
	"Aegis_V_OCarrierLuchnik_GL_grn_F",
	"Aegis_V_OCarrierLuchnik_Lite_grn_F",
	"Aegis_V_OCarrierLuchnik_grn_F",
	"V_SmershVest_01_F",
	"CUP_V_O_RUS_RPS_Smersh_AK_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_Light_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_SPP_Green",
	"CUP_V_O_RUS_RPS_Smersh_VOG_SPP_Green",
	"CUP_V_O_RUS_RPS_Smersh_SVD_Green",
	"CUP_V_O_RUS_RPS_Smersh_VOG_Green",
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
	"CUP_V_B_Armatus_MCam",
	"CUP_V_B_Armatus_BB_MCam",
	"Aegis_V_OCarrierLuchnik_CQB_blk_F",
	"Aegis_V_OCarrierLuchnik_GL_blk_F",
	"Aegis_V_OCarrierLuchnik_Lite_blk_F",
	"Aegis_V_OCarrierLuchnik_blk_F"
];

private _itemVestCrew = 
[
	"Aegis_V_ChestrigEast_grn_F",
	"Aegis_V_OCarrierLuchnik_CQB_grn_F",
	"Aegis_V_OCarrierLuchnik_GL_grn_F",
	"Aegis_V_OCarrierLuchnik_Lite_grn_F",
	"Aegis_V_OCarrierLuchnik_grn_F",
	"V_SmershVest_01_F",
	"CUP_V_O_RUS_RPS_Smersh_AK_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_Light_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_SPP_Green",
	"CUP_V_O_RUS_RPS_Smersh_VOG_SPP_Green",
	"CUP_V_O_RUS_RPS_Smersh_SVD_Green",
	"CUP_V_O_RUS_RPS_Smersh_VOG_Green",
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
	"CUP_V_B_Armatus_MCam",
	"CUP_V_B_Armatus_BB_MCam"
];

private _itemVestPilot = 
[
	"Aegis_V_ChestrigEast_grn_F",
	"Aegis_V_OCarrierLuchnik_CQB_grn_F",
	"Aegis_V_OCarrierLuchnik_GL_grn_F",
	"Aegis_V_OCarrierLuchnik_Lite_grn_F",
	"Aegis_V_OCarrierLuchnik_grn_F",
	"V_SmershVest_01_F",
	"CUP_V_O_RUS_RPS_Smersh_AK_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_Light_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_Green",
	"CUP_V_O_RUS_RPS_Smersh_PKP_SPP_Green",
	"CUP_V_O_RUS_RPS_Smersh_VOG_SPP_Green",
	"CUP_V_O_RUS_RPS_Smersh_SVD_Green",
	"CUP_V_O_RUS_RPS_Smersh_VOG_Green",
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
	"CUP_V_B_Armatus_MCam",
	"CUP_V_B_Armatus_BB_MCam"
];

//Headgear 
private _itemHeadgear = 
[
	"H_HelmetSpecter_F",
	"H_HelmetSpecter_cover_khaki_F",
	"H_HelmetSpecter_headset_F",
	"H_HelmetSpecter_paint_headset_F",
	"H_HelmetSpecter_paint_F",
	"H_Cap_blk",
	"H_Cap_grn",
	"H_Cap_oli",
	"H_Cap_oli_hs",
	"H_Cap_tan",
	"H_MilCap_mcamo",
	"H_Cap_headphones",
	"Aegis_H_Milcap_nohs_mcamo_F",
	"Aegis_H_MilCap_tachs_grn_F",
	"H_Cap_headphones_tan",
	"H_MilCap_grn",
	"H_milcap_atacs_F",
	"CUP_H_RUS_Cap_ATACSFG",
	"CUP_H_USA_Cap_MCAM",
	"H_Booniehat_khk",
	"H_Booniehat_khk_hs",
	"H_Booniehat_mcamo",
	"H_Booniehat_mgrn",
	"H_Booniehat_atacs_F",
	"Aegis_H_Milcap_nohs_taiga_F",
	"H_Booniehat_taiga",
	"H_MilCap_taiga",
	"H_HelmetLuchnik_headset_grn_F",
	"H_HelmetLuchnik_olive_F",
	"Atlas_H_HelmetCCH_HiCut_grn_F",
	"Atlas_H_HelmetCCH_HiCut_Headset_grn_F",
	"Atlas_H_HelmetCCH_grn_F",
	"Atlas_H_HelmetCCH_Headset_grn_F",
	"CUP_H_RUS_Ratnik_Balaclava_6M2_A_Tacs_1",
	"CUP_H_RUS_Ratnik_Balaclava_6M2_A_Tacs_2",
	"CUP_H_RUS_Ratnik_Balaclava_6M2_A_Tacs_3",
	"CUP_H_RUS_Ratnik_Balaclava_6M2_A_Tacs_4",
	"CUP_H_RUS_Ratnik_Balaclava_6M21_A_Tacs_1",
	"CUP_H_RUS_Ratnik_Balaclava_6M21_A_Tacs_2",
	"CUP_H_RUS_Ratnik_Balaclava_6M21_A_Tacs_3",
	"CUP_H_RUS_Ratnik_Balaclava_6M21_A_Tacs_4",
	"CUP_H_RUS_Bandana_GSSh_Headphones",
	"CUP_H_RUS_Ratnik_6M2_Summer",
	"CUP_H_RUS_Ratnik_6M21_Summer",
	"H_Bandanna_khk",
	"H_Bandanna_khk_hs",
	"H_Bandanna_sgg",
	"H_HelmetSpecter_black_F",
	"H_HelmetSpecter_black_headset_F",
	"Aegis_H_Helmet_FASTMT_blk_F",
	"Aegis_H_Helmet_FASTMT_Headset_blk_F",
	"Aegis_H_Helmet_FASTMT_rgr_F",
	"Aegis_H_Helmet_FASTMT_Headset_rgr_F",
	"Atlas_H_HelmetCCH_HiCut_blk_F",
	"Atlas_H_HelmetCCH_HiCut_Headset_blk_F",
	"Atlas_H_HelmetCCH_blk_F",
	"Atlas_H_HelmetCCH_Headset_blk_F",
	"lxWS_H_bmask_base"
];

private _itemHeadgearCrew = 
[
	"CUP_H_SLA_TankerHelmet",
	"H_Tank_black_F"
];

private _itemHeadgearPilot = 
[
	"CUP_H_RUS_ZSH_Shield_Up",
	"CUP_H_RUS_ZSH_Shield_Down"
];

//Backpack 
private _itemBackpack = 
[
	"pca_backpack_invisible",
	"B_AssaultPack_khk",
	"B_AssaultPack_mcamo",
	"B_AssaultPack_sgg",
	"B_FieldPack_oli",
	"B_Kitbag_sgg",
	"B_TacticalPack_rgr",
	"B_AssaultPack_taiga_F",
	"B_RadioBag_01_green_F",
	"B_RadioBag_01_taiga_F",
	"B_FieldPack_green_F",
	"B_FieldPack_taiga_F",
	"CUP_O_RUS_Patrol_bag_Green_Shovel",
	"CUP_O_RUS_Patrol_bag_Green"
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
"PMK_1_Gas_mask_B1_F",
"G_Cigarette",
"immersion_cigs_cigar0",
"murshun_cigs_cig0",
"immersion_pops_pop0",
"immersion_cigs_cigar0_nv",
"murshun_cigs_cig0_nv",
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
"TC_NVG_NitrileGloves_1"
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
	"ACE_Clacker",
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
	"optic_Yorris",
	"optic_ACO_grn_AK_F",
	"Aegis_optic_1p87",
	"Aegis_optic_1p87_lush",
	"Aegis_optic_ICO_khaki",
	"Aegis_optic_ICO",
	"Aegis_optic_ROS",
	"optic_Arco_blk_F",
	"optic_Holosight_blk_F",
	"optic_Holosight_khk_F",
	"optic_Arco_lush_F",
	"optic_Holosight_lush_F",
	"optic_r1_high_lxWS",
	"optic_r1_high_khaki_lxWS",
	"optic_r1_high_lush_lxWS",
	"optic_r1_low_lxWS",
	"optic_r1_low_khaki_lxWS",
	"optic_r1_low_lush_lxWS",
	"CUP_optic_1P87_RIS",
	"CUP_optic_1P87_RIS_woodland",
	"CUP_optic_CompM4",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_low",
	"CUP_optic_MicroT1_low_OD",
	"CUP_optic_MicroT1_OD",
	"CUP_optic_AC11704_Black",
	"CUP_optic_AC11704_OD",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_Eotech553_OD",
	"CUP_optic_OKP_7_rail",
	"CUP_optic_OKP_7_w_rail",
	"JCA_optic_MROS_black",
	"JCA_optic_MROS_olive",
	"CUP_optic_1P87_1P90_BLK",
	"CUP_optic_AIMM_COMPM4_BLK",
	"CUP_optic_AIMM_MICROT1_BLK",
	"CUP_optic_G33_HWS_BLK",
	"CUP_optic_G33_HWS_OD",
	"CUP_optic_AIMM_COMPM2_BLK",
	"CUP_optic_AIMM_COMPM2_OD",
	"CUP_optic_AIMM_M68_BLK",
	"CUP_optic_AIMM_M68_OD",
	"JCA_optic_MROS_black_magnifier",
	"JCA_optic_MROS_olive_magnifier",
	
	//Muzzle Device
	"CUP_muzzle_mfsup_Flashhider_545x39_Black",
	"CUP_muzzle_mfsup_Flashhider_PK_Black",
	"CUP_muzzle_TGPA",
	"CUP_muzzle_TGPA_woodland",
	
	//Tactical Device
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"ACE_DBAL_A3_Green",
	"CUP_acc_Flashlight",
	"pca_flashlight_sf",
	"pca_flashlight_sf_beam",
	"pca_flashlight_sf_cqb",
	"pca_flashlight_sf_wide",
	"pca_flashlight_sf_od",
	"pca_flashlight_sf_od_beam",
	"pca_flashlight_sf_od_cqb",
	"pca_flashlight_sf_od_wide"
];

private _itemWeapRifle = 
[
	"arifle_AK12_545_F",
	"arifle_AK12_545_lush_F",
	"arifle_AK12U_545_F",
	"arifle_AK12U_545_lush_F"
];

private _itemWeapRifleUGL = 
[
	"arifle_AK12_GL_545_F",
	"arifle_AK12_GL_545_lush_F"
];

private _itemWeapAR = 
[
	"Aegis_arifle_RPK12_545_F",
	"Aegis_arifle_RPK12_545_lush_F"
];

private _itemWeapLAT = 
[
	"CUP_launch_RPG26"
];

private _itemWeapPistol = 
[
	"hgun_Rook40_F",
	
	//Pistol Ammo
	"17Rnd_9x21_Mag"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_Pecheneg_top_rail",
	"CUP_lmg_Pecheneg_top_rail_B50_vfg"
];

private _itemWeapMAT = 
[
	"CUP_launch_RPG7V",
	"CUP_optic_PGO7V3",
	"hendrix_rpg_2"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"30Rnd_545x39_AK12_Mag_F",
	"30Rnd_545x39_AK12_Lush_Mag_F",
	"CUP_30Rnd_545x39_AK12_M",
	"CUP_30Rnd_545x39_AK12_Green_M",
	"10Rnd_127x54_Mag"
];

private _itemAmmoTracer = 
[
	"30Rnd_545x39_AK12_Mag_Tracer_F",
	"30Rnd_545x39_AK12_Lush_Mag_Tracer_F",
	"CUP_30Rnd_TE1_Green_Tracer_545x39_AK12_M",
	"CUP_30Rnd_TE1_Green_Tracer_545x39_AK12_Green_M"
];

private _itemAmmoAR = 
[
	"Aegis_45Rnd_545x39_Mag_Green_F",
	"Aegis_45Rnd_545x39_Mag_Tracer_Green_F",
	"CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"
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
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_HiYellow",
	"ACE_Chemlight_Orange",
	"ACE_Chemlight_UltraHiOrange",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow",
	"Aegis_HandFlare_Green",
	"Aegis_HandFlare_Red",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_RGD5",
	"CUP_HandGrenade_RGO",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag"
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"
];

private _itemAmmoMAT = 
[
	"CUP_OG7_M",
	"CUP_PG7VM_M",
	"CUP_PG7VR_M",
	"CUP_TBG7V_M"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemWeapMAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapMG + _itemWeapPistol + _itemAmmoAR + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapMAT + _itemWeapLAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
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