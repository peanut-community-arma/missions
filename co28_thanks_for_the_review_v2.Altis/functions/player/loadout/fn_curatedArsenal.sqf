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
	"U_C_FormalSuit_01_black_F",
	"U_C_FormalSuit_01_blue_F",
        "U_C_Uniform_Formal_01_blue_F",
        "U_C_Uniform_Formal_01_striped_F",
        "U_C_FormalSuit_01_gray_F",
        "U_C_FormalSuit_01_khaki_F",
        "U_NikosAgedBody",
        "U_C_FormalSuit_01_tshirt_black_F",
        "U_C_FormalSuit_01_tshirt_gray_F",
        "U_C_Uniform_Formal_01_white_F",
        "CUP_U_C_Suit_01",
        "CUP_U_C_Suit_02",
        "CUP_U_C_Suit_03",
        "CUP_U_C_Functionary_jacket_02",
        "CUP_U_C_Functionary_jacket_01",
        "CUP_U_C_Functionary_jacket_03"
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
	"JCA_V_CarrierRigKBT_01_light_black_F",
	"V_CarrierRigKBT_01_light_Coyote_F",
	"V_CarrierRigKBT_01_light_Khaki_F",
	"JCA_V_CarrierRigKBT_01_light_olive_F",
	"JCA_V_CarrierRigKBT_01_light_sand_F",
	"Aegis_V_CarrierRigKBT_01_recon_black_F",
        "Aegis_V_CarrierRigKBT_01_recon_cbr_F",
        "Aegis_V_CarrierRigKBT_01_recon_khk_F",
        "Aegis_V_CarrierRigKBT_01_recon_olive_F",
        "JCA_V_CarrierRigKBT_01_recon_olive_F",
        "JCA_V_CarrierRigKBT_01_recon_sand_F",
        "JCA_V_CarrierRigKBT_01_tactical_black_F",
        "Aegis_V_CarrierRigKBT_01_tac_cbr_F",
        "Aegis_V_CarrierRigKBT_01_tac_khk_F",
        "Aegis_V_CarrierRigKBT_01_tac_olive_F",
        "JCA_V_CarrierRigKBT_01_tactical_olive_F",
        "JCA_V_CarrierRigKBT_01_tactical_sand_F",
        "CUP_V_PMC_CIRAS_OD_Grenadier",
        "CUP_V_PMC_CIRAS_Khaki_Grenadier",
        "CUP_V_PMC_CIRAS_Black_Grenadier",
        "pca_vest_invisible_plate",
        "pca_vest_invisible_kevlar",
        "pca_vest_invisible"
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
	"Aegis_H_Helmet_FASTMT_Headset_blk_F",
	"Aegis_H_Helmet_FASTMT_Headset_cbr_F",
        "Aegis_H_Helmet_FASTMT_Headset_rgr_F",
        "Aegis_H_Helmet_FASTMT_Headset_tan_F",
        "Aegis_H_Helmet_FASTMT_blk_F",
        "Aegis_H_Helmet_FASTMT_Cover_blk_F",
        "Aegis_H_Helmet_FASTMT_Cover_rgr_F",
        "Aegis_H_Helmet_FASTMT_Cover_tan_F",
        "Aegis_H_Helmet_FASTMT_cbr_F",
        "Aegis_H_Helmet_FASTMT_rgr_F",
        "Aegis_H_Helmet_FASTMT_tan_F",
        "TC_Helmet_Invisible_Medium",
        "H_Beret_blk",
        "CUP_H_C_Beret_04",
        "CUP_H_C_Beret_01",
        "H_Beret_brn",
        "H_Beret_grn",
        "H_Beret_gry",
        "CUP_H_C_Beret_02",
        "CUP_H_C_Beret_03",
        "TC_Helmet_CowboyHat1",
        "TC_Helmet_CowboyHat3",
        "TC_Helmet_CowboyHat2"
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
	"pca_backpack_invisible_large",
        "B_Kitbag_blk",
        "B_Kitbag_cbr",
        "B_Kitbag_rgr",
        "B_Kitbag_khk",
        "B_Carryall_blk",
        "B_Carryall_cbr",
        "B_Carryall_khk",
        "B_Carryall_oli",
        "B_AssaultPack_blk",
        "B_AssaultPack_cbr",
        "B_AssaultPack_rgr",
        "B_AssaultPack_khk",
        "B_CivilianBackpack_01_Everyday_Black_F",
        "B_CivilianBackpack_01_Everyday_Vrana_F",
        "B_CivilianBackpack_01_Everyday_Astra_F"
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
	"CUP_G_Oakleys_Clr",
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
        "CUP_G_ESS_BLK_Scarf_White_Beard",
        "CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
        "CUP_G_White_Scarf_Shades_Beard",
        "CUP_G_White_Scarf_Shades_Beard_Blonde",
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
        "JAM_G_Glasses_Spamton",
        "CUP_PMC_G_thug",
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
	"ToolKit"
	
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
	"JCA_smg_UMP_black_F",
	"JCA_smg_UMP_olive_F",
	"JCA_smg_UMP_sand_F",
	"JCA_smg_UMP_AFG_black_F",
	"JCA_smg_UMP_AFG_olive_F",
	"JCA_smg_UMP_AFG_sand_F",
	"JCA_smg_UMP_VFG_black_F",
	"JCA_smg_UMP_VFG_olive_F",
	"JCA_smg_UMP_VFG_sand_F",
	"CUP_smg_UZI",
	"SMG_01_F",
	"SMG_01_black_F",
	"SMG_01_khk_F",
	"CUP_smg_Mac10",
	"CUP_smg_Mac10_rail",
	"CUP_smg_MP5A5",
	"CUP_smg_MP5A5_Rail",
	"CUP_smg_MP5A5_Rail_AFG",
	"CUP_smg_MP5A5_Rail_VFG",
	"CUP_smg_MP5SD6",
	"ptv_mp9",
	"ptv_mp9_b",
	"ptv_mp9_t"
];

private _itemWeapRifleUGL = 
[
	"ptv_L2F",
	"ptv_L2F_g",
	"ptv_L2F_t",
	"ptv_L2BPG",
	"ptv_L2BPG_g",
	"ptv_L2BPG_t"
];

private _itemWeapAR = 
[
	"ptv_cbj_ms",
	"ptv_cbj_ms_b",
	"ptv_cbj_ms2",
	"ptv_cbj_ms2_b",
	"ptv_AG_c",
	"ptv_AG_c_b",
	"ptv_AG_c_r",
	"ptv_AG_c_r_b"
];

private _itemWeapLAT = 
[
	"CUP_launch_M72A6",
	"CUP_glaunch_M32"
];

private _itemWeapPistol = 
[
	"hgun_Pistol_heavy_01_black_F",
	"CUP_hgun_Deagle",
	"ptv_l9a2",
	"ptv_l9a2_g",
	"ptv_l9a2_t",
	"ptv_l9a2t",
	"ptv_l9a2t_g",
	"ptv_l9a2t_t",
	"CUP_hgun_Mac10",
	"CUP_hgun_MicroUzi",
	"hgun_Mk26_F",
	"Aegis_hgun_Pistol_R57_F",
	"Aegis_hgun_Pistol_R57_olive_F",
	"Aegis_hgun_Pistol_R57_sand_F",
	"Aegis_hgun_Pistol_R57_silver_F",
	"bnae_saa_c_virtual",
	"bnae_saa_virtual",
	"CUP_hgun_UZI",
	
	//Pistol Ammo
	"11Rnd_45ACP_Mag",
	"CUP_7Rnd_50AE_Deagle",
	"ptv_17Rnd_9mm_L9A2",
	"7Rnd_127x33_Mag",
	"Aegis_20rnd_570x28_RP57_Mag",
	"Aegis_10Rnd_570x28_RP57_Mag",
	"6Rnd_357M_Magazine"
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

private _itemWeapSG =
[
	"CUP_sgun_SPAS12",
	"CUP_sgun_AA12",
	"sgun_M4_F",
	"CUP_sgun_M1014",
	"CUP_sgun_M1014_vfg",
	"CUP_sgun_M1014_solidstock",
	"CUP_sgun_M1014_Entry",
	"CUP_sgun_M1014_Entry_vfg"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"JCA_25Rnd_45ACP_UMP_Red_Mag",
	"JCA_25Rnd_45ACP_UMP_Red_Sand_Mag",
	"JCA_25Rnd_45ACP_UMP_Sand_Mag",
	"JCA_25Rnd_45ACP_UMP_Mag",
	"ptv_50Rnd_556x45_AG",
	"CUP_30Rnd_45ACP_MAC10_M",
	"CUP_30Rnd_9x19_MP5",
	"CUP_30Rnd_Subsonic_9x19_MP5",
	"CUP_32Rnd_9x19_UZI_M",
	"CUP_30Rnd_9x19_UZI",
	"30Rnd_45ACP_Mag_SMG_01",
	"ptv_30Rnd_9x19_MP9_Mag",
	"ptv_30Rnd_9x19_Sub_MP9_Mag",
	"ptv_20Rnd_9x19_MP9_Mag",
	"CUP_20Rnd_B_AA12_Buck_00",
	"CUP_20Rnd_B_AA12_Slug",
	"CUP_20Rnd_B_AA12_Buck_0",
	"CUP_20Rnd_B_AA12_Buck_1",
	"CUP_20Rnd_B_AA12_Buck_2",
	"CUP_20Rnd_B_AA12_Buck_3",
	"CUP_20Rnd_B_AA12_Buck_4",
	"CUP_8Rnd_12Gauge_Pellets_No00_Buck",
	"CUP_8Rnd_12Gauge_Pellets_No0_Buck",
	"CUP_8Rnd_12Gauge_Pellets_No1_Buck",
	"CUP_8Rnd_12Gauge_Pellets_No2_Buck",
	"CUP_8Rnd_12Gauge_Pellets_No3_Buck",
	"CUP_8Rnd_12Gauge_Pellets_No4_Bird",
	"CUP_8Rnd_12Gauge_Pellets_No4_Buck",
	"CUP_8Rnd_12Gauge_Slug",
	"8Rnd_12Gauge_Pellets",
	"8Rnd_12Gauge_Slug",
	"Aegis_8Rnd_12Gauge_Smoke",
	"CUP_6Rnd_12Gauge_Pellets_No0_Buck",
	"CUP_6Rnd_12Gauge_Pellets_No00_Buck",
	"CUP_6Rnd_12Gauge_Pellets_No1_Buck",
	"CUP_6Rnd_12Gauge_Pellets_No2_Buck",
	"CUP_6Rnd_12Gauge_Pellets_No3_Buck",
	"CUP_6Rnd_12Gauge_Pellets_No4_Bird",
	"CUP_6Rnd_12Gauge_Pellets_No4_Buck",
	"CUP_6Rnd_12Gauge_Slug",
	"ptv_100Rnd_9x19_CBJ_Mag",
	"ptv_100Rnd_9x19_Sub_CBJ_Mag",
	"ptv_30Rnd_9x19_CBJ_Mag",
	"ptv_30Rnd_9x19_Sub_CBJ_Mag",
	"ptv_100Rnd_9x19_Red_CBJ_Mag",
	"ptv_100Rnd_65x25_CBJ_Mag",
	"ptv_100Rnd_65x25_Sub_CBJ_Mag"
];

private _itemAmmoTracer = 
[
	"ptv_50Rnd_556x45_AG_Tracer_Red",
	"JCA_25Rnd_45ACP_UMP_Tracer_Red_Mag",
	"JCA_25Rnd_45ACP_UMP_Tracer_Red_Sand_Mag",
	"CUP_30Rnd_45ACP_Green_Tracer_MAC10_M",
	"CUP_30Rnd_Red_Tracer_9x19_MP5",
	"30Rnd_45ACP_Mag_SMG_01_Tracer_Red",
	"ptv_30Rnd_9x19_Red_MP9_Mag",
	"ptv_100Rnd_9x19_Red_CBJ_Mag",
	"ptv_30Rnd_9x19_Red_CBJ_Mag",
	"ptv_100Rnd_65x25_Red_CBJ_Mag"
];

private _itemAmmoAR = 
[
	"ptv_50Rnd_556x45_AG",
	"ptv_50Rnd_556x45_AG_Tracer_Red",
	"ptv_100Rnd_9x19_CBJ_Mag",
	"ptv_100Rnd_9x19_Sub_CBJ_Mag",
	"ptv_30Rnd_9x19_CBJ_Mag",
	"ptv_30Rnd_9x19_Sub_CBJ_Mag",
	"ptv_100Rnd_9x19_Red_CBJ_Mag",
	"ptv_100Rnd_65x25_CBJ_Mag",
	"ptv_100Rnd_65x25_Sub_CBJ_Mag",
	"ptv_100Rnd_65x25_Red_CBJ_Mag"
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
	"CUP_6Rnd_HE_M203",
	"CUP_6Rnd_SmokeRed_M203",
	"CUP_6Rnd_Smoke_M203",
	"CUP_6Rnd_SmokeGreen_M203",
	"CUP_6Rnd_SmokeYellow_M203"
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
	//Breacher 
	case (_unitRole == "br") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapSG + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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