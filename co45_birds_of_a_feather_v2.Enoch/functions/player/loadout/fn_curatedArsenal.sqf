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
	"U_C_CBRN_Suit_01_Black_F",
	"U_C_CBRN_Suit_01_Blue_F",
	"U_C_CBRN_Suit_01_White_F",
	"U_C_CBRN_Suit_01_Yellow_F",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_1",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_2",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_3",
	"CUP_U_O_RUS_Soldier_Gorka_Khaki_4",
	"CUP_U_O_RUS_Soldier_Gorka_Brown_1",
	"CUP_U_O_RUS_Soldier_Gorka_Brown_2",
	"CUP_U_O_RUS_Soldier_Gorka_Brown_3",
	"CUP_U_O_RUS_Soldier_Gorka_Brown_4",
	"CUP_U_O_RUS_Soldier_Gorka_Yellow_1",
	"CUP_U_O_RUS_Soldier_Gorka_Yellow_2",
	"CUP_U_O_RUS_Soldier_Gorka_Yellow_3",
	"CUP_U_O_RUS_Soldier_Gorka_Yellow_4"
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
	"CUP_Vest_RUS_6B45_Sh117_VOG_Green",
	"CUP_Vest_RUS_6B45_Sh117_VOG_Del_Green",
	"CUP_Vest_RUS_6B45_Sh117_VOG_Nut_Green",
	"CUP_Vest_RUS_6B45_Sh117_VOG_Del_Nut_Green",
	"CUP_Vest_RUS_6B45_Sh117_VOG_Full_Green",
	"CUP_Vest_RUS_6B45_Sh117_Green",
	"CUP_Vest_RUS_6B45_Sh117_PKP_Green",
	"CUP_Vest_RUS_6B45_Sh117_PKP_Del_Green",
	"CUP_Vest_RUS_6B45_Sh117_PKP_Nut_Green",
	"CUP_Vest_RUS_6B45_Sh117_PKP_Del_Nut_Green",
	"CUP_Vest_RUS_6B45_Sh117_PKP_Full_Green",
	"CUP_Vest_RUS_6B45_Sh117_Del_Green",
	"CUP_Vest_RUS_6B45_Sh117_Nut_Green",
	"CUP_Vest_RUS_6B45_Sh117_Del_Nut_Green",
	"CUP_Vest_RUS_6B45_Sh117_Full_Green"
];

private _itemVestCrew = 
[
	"CUP_V_B_IOTV_OCP_Rifleman_USArmy"
];

private _itemVestPilot = 
[
	"CUP_V_B_IOTV_OCP_Rifleman_USArmy"
];

//Headgear 
private _itemHeadgear = 
[
	"Aegis_H_Helmet_Virtus_Cover_UN_F",
	"H_PASGT_basic_UNO_F",
	"Aegis_H_PASGT_goggles_UNO_F",
	"Aegis_H_Beret_UNO",
	"Aegis_H_Booniehat_UNO_F",
	"Aegis_H_Booniehat_UNO_hs_F",
	"H_I_Helmet_canvas_UN_F",
	"Aegis_H_Helmet_FASTMT_Cover_UN_F",
	"H_HelmetSpecter_cover_UNO_F"
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
	"B_Carryall_blk",
	"B_Carryall_green_F",
	"B_Carryall_oli",
	"B_Carryall_cbr",
	"B_Kitbag_blk",
	"B_Kitbag_cbr",
	"B_Kitbag_rgr",
	"B_TacticalPack_blk",
	"B_TacticalPack_rgr",
	"B_TacticalPack_khk",
	"B_TacticalPack_oli",
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
	//Face
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"PLA_Balaclava_Alt_Black",
	"PLA_Balaclava_Alt_1_Black",
	"PLA_Balaclava_Alt_Olive",
	"PLA_Balaclava_Alt_1_Olive",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_BlackWhite",
	"G_Sport_Blackred",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Bandanna_Skull1",
	"G_Bandanna_kawaii",
	"G_Bandanna_Syndikat2",
	"G_Cigarette",
	"Aegis_G_Headset_black_F",
	"Aegis_G_Headset_Olive_F",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Headset_light",
	"G_Shades_Yellowred",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_shades",
	"G_Shemag_tactical",
	"G_Shemag_tan",
	"G_Shemag_white",
	"Aegis_G_Condor_EyePro_F",
	"G_Tactical_Yellow",
	"G_Headset_Tactical",
	"G_Headset_Tactical_grn",
	"G_Headset_Tactical_khk",
	"G_Bandanna_TransPride",
	"CUP_RUS_Balaclava_blk",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Facewrap_Black",
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
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_G_PMC_RadioHeadset_Glasses_Dark",
	"CUP_G_PMC_RadioHeadsetCUP_G_PMC_RadioHeadset",
	"CUP_TK_NeckScarf",
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
	"CUP_G_WristWatch",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"ptv_balaclava_01",
	"ptv_balaclava_ct3_b",
	"ptv_balaclava_ct3_g",
	"ptv_bowman2",
	"ptv_comtac3",
	"ptv_comtac3_g",
	"ptv_shemagh_ct3_t",
	"ptv_shemagh_ct3_g",
	"G_Nomex_1_fold",
	"G_Nomex_2_fold",
	"G_Nomex_2_fold_cut",
	"G_Nomex_desu_fold",
	"G_Nomex_desu_2_fold",
	"G_LEN_BCG",
	"G_Simc_tacticool",
	"TC_G_NitrileGloves_1",
	//Respirators
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
	"M40_Gas_mask_nbc_hood_v1_s",
	"M40_Gas_mask_nbc_hood_v4_s",
	"M40_Gas_mask_nbc_hood_v7_s",
	"M40_Gas_mask_nbc_v1_d",
	"M40_Gas_mask_nbc_v2_d",
	"M40_Gas_mask_nbc_v4_d",
	"M40_Gas_mask_nbc_v3_d",
	"M40_Gas_mask_nbc_v1_g",
	"M40_Gas_mask_nbc_v2_g",
	"M40_Gas_mask_nbc_v4_g",
	"M40_Gas_mask_nbc_v3_g",
	"M40_Gas_mask_nbc_green_k1_d",
	"M40_Gas_mask_nbc_green_k2_d",
	"M40_Gas_mask_nbc_green_k4_d",
	"M40_Gas_mask_nbc_green_k3_d",
	"M40_Gas_mask_nbc_f1_d",
	"M40_Gas_mask_nbc_f2_d",
	"M40_Gas_mask_nbc_f4_d",
	"M40_Gas_mask_nbc_f3_d",
	"M40_Gas_mask_nbc_c1_d",
	"M40_Gas_mask_nbc_c2_d",
	"M40_Gas_mask_nbc_c4_d",
	"M40_Gas_mask_nbc_c3_d",
	"PMK_1_Gas_mask_B1_F",
	//Armbands
	"G_Armband_UN_alt_F",
	"Aegis_G_Armband_UNO_F",
	"G_Armband_UN_F",
	"Aegis_G_Armband_UNO_alt_F",
	"Aegis_G_Armband_UNL_alt_F",
	"Aegis_G_Armband_UNL_F",
	"Aegis_G_Armband_Medic_alt_F",
	"Aegis_G_Armband_Medic_F",

	//HMD
	"Aegis_Goggles_Cover_grn_F",
	"Goggles_grn_F",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"pca_nvg_cigarette",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"nomex_1_fold_addon",
	"nomex_2_fold_addon",
	"nomex_4_fold_addon",
	"TC_NVG_NitrileGloves_1",
	//HMD Respirators
	"M40_Gas_mask_nbc_v1_NVG_01",
	"M40_Gas_mask_nbc_v2_NVG_02",
	"M40_Gas_mask_nbc_v4_NVG_04",
	"M40_Gas_mask_nbc_v3_NVG_03",
	"M40_Gas_mask_nbc_g1_NVG_01",
	"M40_Gas_mask_nbc_g2_NVG_02",
	"M40_Gas_mask_nbc_g4_NVG_04",
	"M40_Gas_mask_nbc_g3_NVG_03",
	"M40_Gas_mask_nbc_green_v1_NVG_01",
	"M40_Gas_mask_nbc_green_v2_NVG_02",
	"M40_Gas_mask_nbc_green_v4_NVG_04",
	"M40_Gas_mask_nbc_green_v3_NVG_03",
	"M40_Gas_mask_nbc_f1_NVG_01",
	"M40_Gas_mask_nbc_f2_NVG_02",
	"M40_Gas_mask_nbc_f4_NVG_04",
	"M40_Gas_mask_nbc_f3_NVG_03",
	"M40_Gas_mask_nbc_c1_NVG_01",
	"M40_Gas_mask_nbc_c2_NVG_02",
	"M40_Gas_mask_nbc_c4_NVG_04",
	"M40_Gas_mask_nbc_c3_NVG_03",
	//HMD Armbands
	"G_Armband_NVG_UN_alt_F",
	"G_Armband_NVG_UN_F",
	"Aegis_NV_G_Armband_Medic_alt_F",
	"Aegis_NV_G_Armband_Medic_F"
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
	"DSA_Detector"
	
	//Removed AT4 open sight and Adapter for AKs (both from RHS)
];

private _itemBino = 
[
	"Binocular",
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
	"Aegis_optic_ICO",
	"Aegis_optic_1p87",
	"Aegis_optic_ICO_khaki",
	"Aegis_optic_ROS",
	"optic_Holosight_blk_F",
	"optic_Holosight_khk_F",
	"CUP_optic_MicroT1",
	"CUP_optic_CompM4",
	"CUP_optic_MicroT1_low",
	"CUP_optic_MicroT1_low_OD",
	"CUP_optic_MicroT1_OD",
	"CUP_optic_AC11704_Black",
	"CUP_optic_AC11704_OD",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_Eotech553_OD",
	"CUP_optic_CompM2_Black",
	"CUP_optic_CompM2_OD",
	"CUP_optic_CompM2_low",
	"CUP_optic_CompM2_low_OD",
	"CUP_optic_TrijiconRx01_black",
	"CUP_optic_TrijiconRx01_od",
	"CUP_optic_VortexRazor_UH1_Black",
	"CUP_optic_VortexRazor_UH1_Khaki",
	"JCA_optic_MROS_black",
	"JCA_optic_MROS_olive",
	"ptv_compm5",
	"ptv_compm5s",
	"ptv_t1",
	"ptv_t1s",
	"ptv_eot552",
	"ptv_xps3",
	"RKSL_optic_EOT552",
	"sfp_optic_aimpoint_t1",
	"Aegis_optic_ICO",
	"Aegis_optic_ROS",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_low",
	"CUP_optic_AIMM_MICROT1_BLK",
	"CUP_optic_AC11704_Black",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_CompM2_Black",
	"CUP_optic_CompM2_OD",
	"CUP_optic_CompM2_low",
	"CUP_optic_CompM2_low_OD",
	"CUP_optic_TrijiconRx01_black",
	"CUP_optic_TrijiconRx01_od",
	"JCA_optic_MROS_black",
	"JCA_optic_MROS_black_magnifier",
	"ptv_compm4s",
	"ptv_cm4s3xmag",
	"ptv_cm4s3xmag_pip",
	"ptv_compm5",
	"ptv_cm53xmag",
	"ptv_cm53xmag_pip",
	"ptv_compm5s",
	"ptv_cm5s3xmag",
	"ptv_cm5s3xmag_pip",
	"ptv_aimcs",
	"ptv_aimcs2",
	"ptv_aim3xmag",
	"ptv_t1",
	"ptv_t13xmag",
	"ptv_t13xmag_pip",
	"ptv_t1s",
	"ptv_t1s3xmag",
	"ptv_t1s3xmag_pip",
	"ptv_eot552",
	"ptv_xps3",
	"ptv_xps3xmag",
	"ptv_xps3xmag_pip",
	"RKSL_optic_EOT552",
	"RKSL_optic_EOT552X",
	"ptv_romeo1pro",
	"Aegis_optic_ACOG",
	"Aegis_optic_ACOG_khaki",
	"Aegis_optic_ACOG_sand",
	"optic_MRCO",
	"ACE_optic_MRCO_2D",
	"optic_Hamr",
	"ACE_optic_Hamr_2D",
	"ptv_ta02led_rmr",
	"ptv_ta02led_rmr_2d",
	"ptv_ta02led_rmr_pip",
	"ptv_ta11rmr",
	"ptv_ta11rmr_2d",
	"ptv_ta11rmr_pip",
	"CUP_optic_ACOG_TA01NSN_RMR_Tan",
	"CUP_optic_ACOG_TA01NSN_RMR_OD",
	"CUP_optic_ACOG_TA01NSN_RMR_Black",
	"CUP_optic_ACOG_TA01NSN_RMR_Coyote",
	"HLC_optic_DocterV",
	"optic_MRD",
	"ptv_romeo1pro",
	"RKSL_optic_RMR_HG",
	"RKSL_optic_RMR_HG_FDE",
	"HLC_optic_RomeoV",
	
	//Grip
	"CUP_bipod_VLTOR_Modpod_black",
	"CUP_bipod_Harris_1A2_L_BLK",
	
	//Tactical Device
	"Aegis_acc_pointer_compact_green",
	"Aegis_acc_pointer_compact_red",
	"ACE_muzzle_mzls_L",
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"ACE_DBAL_A3_Red",
	"CUP_acc_Flashlight",
	"CUP_acc_CZ_M3X",
	"CUP_acc_Glock17_Flashlight",
	"Aegis_acc_pointer_compact_pistol_green",
	"Aegis_acc_pointer_compact_pistol_red",
	"hlc_acc_DBALPL_FL",

	//Muzzle
	"ptv_mp9qd",
	"ptv_mp9qd_t",
	"muzzle_mzls_acp",
	"CUP_muzzle_mfsup_Suppressor_Mac10",
	"ACE_muzzle_mzls_smg_01",
	"ptv_trant45",
	"muzzle_snds_acp",
	"JCA_muzzle_snds_45_tactical_black",
	"JCA_muzzle_snds_45_tactical_olive",
	"JCA_muzzle_snds_45_tactical_sand",
	"muzzle_mzls_smg_01",
	"ACE_muzzle_mzls_smg_02",
	"muzzle_mzls_L",
	"CUP_muzzle_snds_MP5",
	"CUP_muzzle_fh_MP5",
	"ptv_trant9",
	"ptv_impuls",
	"muzzle_snds_L",
	"CUP_muzzle_snds_UZI",
	"ptv_cbj_sd",
	"hlc_muzzle_Evo40",
	"CUP_muzzle_snds_mk23",
	"bnae_suppressor_v4_virtual",
	"hlc_muzzle_Octane45",
	"bnae_suppressor_v3_virtual",
	"muzzle_snds_pistol_heavy_01",
	"hlc_muzzle_Evo9",
	"hlc_muzzle_TiRant9",
	"hlc_muzzle_TiRant9S",
	"Aegis_muzzle_snds_9MM_enhanced_black",
	"Aegis_muzzle_snds_9MM_enhanced_khaki",
	"Aegis_muzzle_snds_9MM_enhanced_sand",
	"ptv_trant9",
	"ptv_impuls",
	"CUP_muzzle_snds_M9",
	"hlc_muzzle_Octane9",
	"JCA_muzzle_snds_9MM_tactical_black",
	"JCA_muzzle_snds_9MM_tactical_olive",
	"JCA_muzzle_snds_9MM_tactical_sand",
	"Aegis_Muzzle_mzls_RP57",
	"Aegis_Muzzle_snds_RP57"
];

private _itemWeapRifle = 
[
	"cro_vhs_d2",
	"cro_vhs_d2_ct",
	"cro_vhs_k2",
	"cro_vhs_k2_ct"
];

private _itemWeapRifleUGL = 
[
	"cro_vhs_d2_ct_gl",
	"cro_vhs_d2_gl",
	"cro_vhs_k2_ct_gl",
	"cro_vhs_k2_gl"
];

private _itemWeapAR = 
[
	"CUP_lmg_Pecheneg_B50_vfg",
	"CUP_lmg_Pecheneg_B50_vfg",
	"CUP_lmg_Pecheneg_desert",
	"CUP_lmg_Pecheneg_top_rail",
	"CUP_lmg_Pecheneg_top_rail_B50_vfg",
	"CUP_lmg_Pecheneg_woodland",
	"ptv_ng5_b",
	"ptv_ng5_sf_b",
	"ptv_ng5",
	"ptv_ng5_sf"
];

private _itemWeapLAT = 
[
	"CUP_launch_Mk153Mod0",
	"CUP_launch_Mk153Mod0_blk",
	"CUP_optic_SMAW_Scope"
];

private _itemWeapPistol = 
[
	"ptv_usp45t",
	"hgun_G17_F",
	
	//Pistol Ammo
	"ptv_12Rnd_45ACP_USP",
	"17Rnd_9x21_Mag"
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
	"cro_30Rnd_556x45_Stanag",
	"cro_30Rnd_556x45_Stanag_Tracer_Red",
	"CUP_SMAW_HEAA_M",
	"CUP_SMAW_HEDP_M",
	"CUP_SMAW_NE_M",
	"CUP_SMAW_Spotting"
];

private _itemAmmoTracer = 
[
	"cro_30Rnd_556x45_Stanag_Tracer_Red"
];

private _itemAmmoAR = 
[
	"ptv_150Rnd_556x45_Negev",
	"ptv_150Rnd_556x45_Negev_Tracer_Red",
	"ptv_150Rnd_556x45_Negev_b",
	"ptv_150Rnd_556x45_Negev_b_Tracer_Red",
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M",
	"ACE_150Rnd_762x54_Box_red",
	"ACE_150Rnd_762x54_Box_tracer_red"
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
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67",
	"ACE_Clacker",
	"ACE_M26_Clacker",
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapRifleUGL + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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