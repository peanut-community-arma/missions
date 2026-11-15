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
	"U_B_CTRG_Soldier_F",
	"U_B_CTRG_Soldier_3_F",
	"U_B_CTRG_Soldier_2_F"
];

private _itemUniformCrew = 
[
	"U_B_CTRG_Soldier_F",
	"U_B_CTRG_Soldier_3_F",
	"U_B_CTRG_Soldier_2_F"
];

private _itemUniformPilot = 
[
	"U_B_CTRG_Soldier_F",
	"U_B_CTRG_Soldier_3_F",
	"U_B_CTRG_Soldier_2_F",
	"USAF_Overalls_Ranger_5_w",
	"USAF_Overalls_Ranger_6_w",
	"USAF_Overalls_Ranger_4_w"
];

//Vest
private _itemVest = 
[
	"Aegis_V_CarrierRigKBT_01_recon_CTRG_trp_F",
	"V_CarrierRigKBT_01_heavy_ctrg_F",
	"V_CarrierRigKBT_01_light_ctrg_F",
	"Rev_V_CarrierRigKBT_01_recon_CTRG_trp_F",
	"V_CarrierRigKBT_01_ctrg_F",
	"JCA_V_CarrierRigKBT_01_combat_olive_F",
	"JCA_V_CarrierRigKBT_01_command_olive_F",
	"JCA_V_CarrierRigKBT_01_compact_olive_F",
	"JCA_V_CarrierRigKBT_01_CQB_olive_F",
	"JCA_V_CarrierRigKBT_01_crew_olive_F",
	"JCA_V_CarrierRigKBT_01_heavy_olive_F",
	"JCA_V_CarrierRigKBT_01_light_olive_F",
	"JCA_V_CarrierRigKBT_01_recon_olive_F",
	"JCA_V_CarrierRigKBT_01_tactical_olive_F",
	"JCA_V_CarrierRigKBT_01_olive_F"
];

private _itemVestCrew = 
[
	"Aegis_V_CarrierRigKBT_01_recon_CTRG_trp_F",
	"V_CarrierRigKBT_01_heavy_ctrg_F",
	"V_CarrierRigKBT_01_light_ctrg_F",
	"Rev_V_CarrierRigKBT_01_recon_CTRG_trp_F",
	"V_CarrierRigKBT_01_ctrg_F",
	"JCA_V_CarrierRigKBT_01_combat_olive_F",
	"JCA_V_CarrierRigKBT_01_command_olive_F",
	"JCA_V_CarrierRigKBT_01_compact_olive_F",
	"JCA_V_CarrierRigKBT_01_CQB_olive_F",
	"JCA_V_CarrierRigKBT_01_crew_olive_F",
	"JCA_V_CarrierRigKBT_01_heavy_olive_F",
	"JCA_V_CarrierRigKBT_01_light_olive_F",
	"JCA_V_CarrierRigKBT_01_recon_olive_F",
	"JCA_V_CarrierRigKBT_01_tactical_olive_F",
	"JCA_V_CarrierRigKBT_01_olive_F"
];

private _itemVestPilot = 
[
	"Aegis_V_CarrierRigKBT_01_recon_CTRG_trp_F",
	"V_CarrierRigKBT_01_heavy_ctrg_F",
	"V_CarrierRigKBT_01_light_ctrg_F",
	"Rev_V_CarrierRigKBT_01_recon_CTRG_trp_F",
	"V_CarrierRigKBT_01_ctrg_F",
	"JCA_V_CarrierRigKBT_01_combat_olive_F",
	"JCA_V_CarrierRigKBT_01_command_olive_F",
	"JCA_V_CarrierRigKBT_01_compact_olive_F",
	"JCA_V_CarrierRigKBT_01_CQB_olive_F",
	"JCA_V_CarrierRigKBT_01_crew_olive_F",
	"JCA_V_CarrierRigKBT_01_heavy_olive_F",
	"JCA_V_CarrierRigKBT_01_light_olive_F",
	"JCA_V_CarrierRigKBT_01_recon_olive_F",
	"JCA_V_CarrierRigKBT_01_tactical_olive_F",
	"JCA_V_CarrierRigKBT_01_olive_F",
	"Aircrew_vest_2_NH",
	"CUP_V_B_PilotVest"
];

//Headgear 
private _itemHeadgear = 
[
	"Aegis_H_Helmet_FASTMT_Cover_dazzle_tna_F",
	"Rev_H_OPSCORE_01_dazzle_01",
	"Rev_H_OPSCORE_02_dazzle_01",
	"Aegis_H_Helmet_FASTMT_Headset_rgr_F",
	"Aegis_H_Helmet_FASTMT_rgr_F",
	"H_HelmetB_TI_tna_F",
	"H_Booniehat_oli",
	"H_Booniehat_oli_hs"
];

private _itemHeadgearCrew = 
[
	"H_HelmetCrew_B",
	"H_HelmetCrew_B_oli_F"
];

private _itemHeadgearPilot = 
[
	"H_CrewHelmetHeli_B",
	"H_CrewHelmetHeli_O",
	"H_CrewHelmetHeli_I_E",
	"H_PilotHelmetHeli_B",
	"H_PilotHelmetHeli_O",
	"H_PilotHelmetHeli_B_visor_up",
	"H_PilotHelmetHeli_I_E_visor_up",
	"H_PilotHelmetHeli_O_visor_up",
	"H_PilotHelmetHeli_I_E"
];

//Backpack 
private _itemBackpack = 
[
	"B_AssaultPackSpec_rgr",
	"B_Kitbag_rgr",
	"B_AssaultPack_rgr",
	"B_RadioBag_01_green_F",
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
	"NVGogglesB_blk_F",
	"Aegis_NVG_IVAS_01_blk_F",
	"G_AirPurifyingRespirator_02_black_F",
"G_AirPurifyingRespirator_02_olive_F",
"G_AirPurifyingRespirator_02_sand_F",
"G_AirPurifyingRespirator_01_F",
"JCA_G_AirPurifyingRespirator_04_black_clear_F",
"JCA_G_AirPurifyingRespirator_04_black_tinted_F",
"JCA_G_AirPurifyingRespirator_04_olive_clear_F",
"JCA_G_AirPurifyingRespirator_04_olive_tinted_F",
"JCA_G_AirPurifyingRespirator_04_sand_clear_F",
"JCA_G_AirPurifyingRespirator_04_sand_tinted_F",
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
"CUP_RUS_Balaclava_grn",
"CUP_G_RUS_Balaclava_Ratnik",
"CUP_G_RUS_Balaclava_Ratnik_v2",
"CUP_RUS_Balaclava_rgr",
"CUP_RUS_Balaclava_tan",
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
"Aegis_NVG_IVAS_01_blk_F",
"Aegis_NVG_IVAS_01_grn_F",
"Aegis_NVG_IVAS_01_tan_F",
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
"CUP_NVG_GPNVG_black_WP",
"NVGogglesB_grn_F",
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
	"ToolKit",
	"ItemGPS",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"ACE_IR_Strobe_Item"
	
	//Removed AT4 open sight and Adapter for AKs (both from RHS)
];

private _itemBino = 
[
	"Laserdesignator",
	"Laserdesignator_01_khk_F",
	"Laserdesignator_03"
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
	"optic_Arco",
	"optic_Holosight",
	"optic_Hamr",
	"ACE_optic_Arco_2D",
	"ACE_optic_Hamr_2D",
	"Aegis_optic_ACOG",
	"Aegis_optic_ACOG_sand",
	"Aegis_optic_ICO",
	"Aegis_optic_ICO_sand",
	"Aegis_optic_ROS",
	"optic_Arco_blk_F",
	"optic_Holosight_blk_F",
	"optic_ERCO_blk_F",
	"optic_ERCO_snd_F",
	"optic_r1_high_lxWS",
	"optic_r1_high_black_sand_lxWS",
	"optic_r1_high_sand_lxWS",
	"optic_r1_low_lxWS",
	"optic_r1_low_sand_lxWS",
	"optic_Hamr_sand_lxWS",
	"CUP_optic_CompM4",
	"CUP_optic_AIMM_COMPM4_BLK",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_coyote",
	"CUP_optic_MicroT1_low",
	"CUP_optic_MicroT1_low_coyote",
	"CUP_optic_AIMM_MICROT1_BLK",
	"CUP_optic_AIMM_MICROT1_TAN",
	"CUP_optic_AC11704_Black",
	"CUP_optic_Elcan_SpecterDR_RMR_black",
	"CUP_optic_Elcan_SpecterDR_RMR_coyote",
	"CUP_optic_Elcan_SpecterDR_KF_RMR_black",
	"CUP_optic_Elcan_SpecterDR_KF_RMR_coyote",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_Eotech553_Coyote",
	"CUP_optic_Eotech533",
	"CUP_optic_G33_HWS_BLK",
	"CUP_optic_G33_HWS_COYOTE",
	"CUP_optic_G33_HWS_TAN",
	"JCA_optic_MROS_black",
	"JCA_optic_MROS_black_magnifier",
	"JCA_optic_MROS_sand",
	"JCA_optic_MROS_sand_magnifier",
	
	//Grip
	
	//Tactical Device
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"CUP_acc_ANPEQ_15_Black_Top",
	"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L",
	"CUP_acc_ANPEQ_15",
	"CUP_acc_ANPEQ_15_Tan_Top",
	"CUP_acc_ANPEQ_15_Flashlight_Tan_L",
	"CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L",
	"ACE_DBAL_A3_Red",
	"CUP_acc_Flashlight",
	"ACE_muzzle_mzls_B",
	"ACE_muzzle_mzls_L",
	"CUP_muzzle_mfsup_Flashhider_556x45_Black",
	"CUP_muzzle_mfsup_Flashhider_762x51_Black",
	"CUP_muzzle_snds_M16_coyote",
	"CUP_muzzle_snds_M16",
	"muzzle_snds_H"
];

private _itemWeapRifle = 
[
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_02_blk_F",
	"CUP_arifle_M4A1_SOMMOD_black",
	"CUP_arifle_M4A1_SOMMOD_ctrgt",
	"CUP_arifle_M4A1_SOMMOD_Grip_black",
	"CUP_arifle_M4A1_SOMMOD_Grip_ctrgt"
];

private _itemWeapRifleUGL = 
[
	"arifle_SPAR_01_GL_blk_F"
];

private _itemWeapAR = 
[
	"CUP_lmg_m249_pip3",
	"CUP_lmg_m249_pip4",
	"SPS_KAC_LAMG_NHG_black_F",
	"LMG_Mk200_black_F",
	"LMG_Mk200_F",
	
	//Grip
	"CUP_bipod_Harris_1A2_L_BLK"
];

private _itemWeapLAT = 
[
	"launch_NLAW_F"
];

private _itemWeapPistol = 
[
	"Aegis_hgun_P320_black_F",
	"CUP_hgun_M17_Black",
	"Aegis_optic_PRO_black",
	"optic_MRD_black",
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_M17_Black",
	"17Rnd_9x21_Mag"
];

//Special
private _itemWeapMG = 
[
	"MMG_02_black_F",
	"SPS_KAC_LWAMG_Black_F",
	"CUP_lmg_Mk48",
	"CUP_lmg_Mk48_nohg",
	"CUP_lmg_M240_B",
	"CUP_lmg_M240"
];

private _itemWeapMAT = 
[
	"launch_MRAWS_black_F",
	"launch_MRAWS_green_F",
	"launch_MRAWS_olive_F"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_556x45_PMAG_COYOTE",
	"CUP_30Rnd_556x45_PMAG_BLACK"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red",
	"CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red"
];

private _itemAmmoAR = 
[
	"CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch",
	"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",
	"CUP_100Rnd_TE4_Red_Tracer_556x45_M249",
	"SPS_KAC_LAMG_M855A1_150rnd_Box_Tan",
	"SPS_KAC_LAMG_M855A1_150rnd_Box",
	"SPS_KAC_LAMG_M856A1_150rnd_IR_Box_Tan",
	"SPS_KAC_LAMG_M856A1_150rnd_T_Box_Tan",
	"SPS_KAC_LAMG_M856A1_150rnd_IR_Box",
	"SPS_KAC_LAMG_M856A1_150rnd_T_Box",
	"200Rnd_65x39_cased_Box",
	"ACE_200Rnd_65x39_cased_Box_red",
	"ACE_200Rnd_65x39_cased_Box_tracer_red",
	"ACE_200Rnd_65x39_cased_Box_Tracer_Dim"
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
	"ACE_40mm_Flare_ir",
	"CUP_1Rnd_StarCluster_White_M203",
	"CUP_1Rnd_StarCluster_Green_M203",
	"CUP_1Rnd_StarCluster_Red_M203"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow"
];

//Special
private _itemAmmoMG = 
[
	"130Rnd_338_Mag",
	"SPS_KAC_LWAMG_100rnd_Box_M80A1",
	"SPS_KAC_LWAMG_100rnd_Box_M80A1M62A1",
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
	"100Rnd_762x51_S77_Red_lxWS"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapMG + _itemAmmoMG + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMG + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
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