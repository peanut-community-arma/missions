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
	"U_lxWS_Djella_02_Brown",
	"U_lxWS_Djella_02_Grey",
	"U_lxWS_Djella_03_Green",
	"U_lxWS_Djella_02_Sand",
	"U_lxWS_C_Djella_06",
	"U_lxWS_C_Djella_02",
	"U_lxWS_C_Djella_02a",
	"U_lxWS_C_Djella_07",
	"U_lxWS_C_Djella_05",
	"U_lxWS_C_Djella_04",
	"U_lxWS_C_Djella_01",
	"U_lxWS_Tak_02_B",
	"U_lxWS_Tak_02_C",
	"U_lxWS_Tak_02_A",
	"U_lxWS_Tak_03_B",
	"U_lxWS_Tak_03_A",
	"U_lxWS_Tak_03_C",
	"U_lxWS_Tak_01_C",
	"U_lxWS_Tak_01_B",
	"U_lxWS_Tak_01_A",
	"U_SFIA_deserter_lxWS",
	"CUP_O_TKI_Khet_Jeans_04",
	"CUP_O_TKI_Khet_Jeans_02",
	"CUP_O_TKI_Khet_Jeans_01",
	"CUP_O_TKI_Khet_Jeans_03",
	"CUP_O_TKI_Khet_Partug_04",
	"CUP_O_TKI_Khet_Partug_02",
	"CUP_O_TKI_Khet_Partug_01",
	"CUP_O_TKI_Khet_Partug_07",
	"CUP_O_TKI_Khet_Partug_08",
	"CUP_O_TKI_Khet_Partug_05",
	"CUP_O_TKI_Khet_Partug_06",
	"CUP_O_TKI_Khet_Partug_03"
];

private _itemUniformCrew = 
[
	"U_lxWS_Djella_02_Brown",
	"U_lxWS_Djella_02_Grey",
	"U_lxWS_Djella_03_Green",
	"U_lxWS_Djella_02_Sand",
	"U_lxWS_C_Djella_06",
	"U_lxWS_C_Djella_02",
	"U_lxWS_C_Djella_02a",
	"U_lxWS_C_Djella_07",
	"U_lxWS_C_Djella_05",
	"U_lxWS_C_Djella_04",
	"U_lxWS_C_Djella_01",
	"U_lxWS_Tak_02_B",
	"U_lxWS_Tak_02_C",
	"U_lxWS_Tak_02_A",
	"U_lxWS_Tak_03_B",
	"U_lxWS_Tak_03_A",
	"U_lxWS_Tak_03_C",
	"U_lxWS_Tak_01_C",
	"U_lxWS_Tak_01_B",
	"U_lxWS_Tak_01_A",
	"U_SFIA_deserter_lxWS",
	"CUP_O_TKI_Khet_Jeans_04",
	"CUP_O_TKI_Khet_Jeans_02",
	"CUP_O_TKI_Khet_Jeans_01",
	"CUP_O_TKI_Khet_Jeans_03",
	"CUP_O_TKI_Khet_Partug_04",
	"CUP_O_TKI_Khet_Partug_02",
	"CUP_O_TKI_Khet_Partug_01",
	"CUP_O_TKI_Khet_Partug_07",
	"CUP_O_TKI_Khet_Partug_08",
	"CUP_O_TKI_Khet_Partug_05",
	"CUP_O_TKI_Khet_Partug_06",
	"CUP_O_TKI_Khet_Partug_03"
];

private _itemUniformPilot = 
[
	"U_lxWS_Djella_02_Brown",
	"U_lxWS_Djella_02_Grey",
	"U_lxWS_Djella_03_Green",
	"U_lxWS_Djella_02_Sand",
	"U_lxWS_C_Djella_06",
	"U_lxWS_C_Djella_02",
	"U_lxWS_C_Djella_02a",
	"U_lxWS_C_Djella_07",
	"U_lxWS_C_Djella_05",
	"U_lxWS_C_Djella_04",
	"U_lxWS_C_Djella_01",
	"U_lxWS_Tak_02_B",
	"U_lxWS_Tak_02_C",
	"U_lxWS_Tak_02_A",
	"U_lxWS_Tak_03_B",
	"U_lxWS_Tak_03_A",
	"U_lxWS_Tak_03_C",
	"U_lxWS_Tak_01_C",
	"U_lxWS_Tak_01_B",
	"U_lxWS_Tak_01_A",
	"U_SFIA_deserter_lxWS",
	"CUP_O_TKI_Khet_Jeans_04",
	"CUP_O_TKI_Khet_Jeans_02",
	"CUP_O_TKI_Khet_Jeans_01",
	"CUP_O_TKI_Khet_Jeans_03",
	"CUP_O_TKI_Khet_Partug_04",
	"CUP_O_TKI_Khet_Partug_02",
	"CUP_O_TKI_Khet_Partug_01",
	"CUP_O_TKI_Khet_Partug_07",
	"CUP_O_TKI_Khet_Partug_08",
	"CUP_O_TKI_Khet_Partug_05",
	"CUP_O_TKI_Khet_Partug_06",
	"CUP_O_TKI_Khet_Partug_03"
];

//Vest
private _itemVest = 
[
	"CUP_V_OI_TKI_Jacket1_04",
	"CUP_V_OI_TKI_Jacket1_06",
	"CUP_V_OI_TKI_Jacket1_05",
	"CUP_V_OI_TKI_Jacket4_04",
	"CUP_V_OI_TKI_Jacket4_05",
	"CUP_V_OI_TKI_Jacket4_06",
	"CUP_V_OI_TKI_Jacket5_04",
	"CUP_V_OI_TKI_Jacket5_05",
	"CUP_V_OI_TKI_Jacket5_06",
	"CUP_V_OI_TKI_Jacket3_04",
	"CUP_V_OI_TKI_Jacket3_05",
	"CUP_V_OI_TKI_Jacket3_06",
	"CUP_V_OI_TKI_Jacket6_04",
	"CUP_V_OI_TKI_Jacket6_05",
	"CUP_V_OI_TKI_Jacket6_06",
	"CUP_V_OI_TKI_Jacket2_04",
	"CUP_V_OI_TKI_Jacket2_06",
	"CUP_V_OI_TKI_Jacket2_05",
	"JAM_V_Chicom_Type56_grn",
	"pca_vest_invisible"
];

private _itemVestCrew = 
[
	"CUP_V_OI_TKI_Jacket1_04",
	"CUP_V_OI_TKI_Jacket1_06",
	"CUP_V_OI_TKI_Jacket1_05",
	"CUP_V_OI_TKI_Jacket4_04",
	"CUP_V_OI_TKI_Jacket4_05",
	"CUP_V_OI_TKI_Jacket4_06",
	"CUP_V_OI_TKI_Jacket5_04",
	"CUP_V_OI_TKI_Jacket5_05",
	"CUP_V_OI_TKI_Jacket5_06",
	"CUP_V_OI_TKI_Jacket3_04",
	"CUP_V_OI_TKI_Jacket3_05",
	"CUP_V_OI_TKI_Jacket3_06",
	"CUP_V_OI_TKI_Jacket6_04",
	"CUP_V_OI_TKI_Jacket6_05",
	"CUP_V_OI_TKI_Jacket6_06",
	"CUP_V_OI_TKI_Jacket2_04",
	"CUP_V_OI_TKI_Jacket2_06",
	"CUP_V_OI_TKI_Jacket2_05",
	"JAM_V_Chicom_Type56_grn",
	"pca_vest_invisible"
];

private _itemVestPilot = 
[
	"CUP_V_OI_TKI_Jacket1_04",
	"CUP_V_OI_TKI_Jacket1_06",
	"CUP_V_OI_TKI_Jacket1_05",
	"CUP_V_OI_TKI_Jacket4_04",
	"CUP_V_OI_TKI_Jacket4_05",
	"CUP_V_OI_TKI_Jacket4_06",
	"CUP_V_OI_TKI_Jacket5_04",
	"CUP_V_OI_TKI_Jacket5_05",
	"CUP_V_OI_TKI_Jacket5_06",
	"CUP_V_OI_TKI_Jacket3_04",
	"CUP_V_OI_TKI_Jacket3_05",
	"CUP_V_OI_TKI_Jacket3_06",
	"CUP_V_OI_TKI_Jacket6_04",
	"CUP_V_OI_TKI_Jacket6_05",
	"CUP_V_OI_TKI_Jacket6_06",
	"CUP_V_OI_TKI_Jacket2_04",
	"CUP_V_OI_TKI_Jacket2_06",
	"CUP_V_OI_TKI_Jacket2_05",
	"JAM_V_Chicom_Type56_grn",
	"pca_vest_invisible"
];

//Headgear 
private _itemHeadgear = 
[
	"lxWS_H_ssh40_green",
	"lxWS_H_cloth_5_A",
	"lxWS_H_cloth_5_C",
	"lxWS_H_cloth_5_B",
	"lxWS_H_turban_03_black",
	"lxWS_H_turban_03_blue",
	"lxWS_H_turban_03_green",
	"lxWS_H_turban_03_green_pattern",
	"lxWS_H_turban_03_orange",
	"lxWS_H_turban_03_red",
	"lxWS_H_turban_03_sand",
	"lxWS_H_turban_03_gray",
	"lxWS_H_turban_03_yellow",
	"lxWS_H_turban_04_black",
	"lxWS_H_turban_04_blue",
	"lxWS_H_turban_04_green",
	"lxWS_H_turban_04_red",
	"lxWS_H_turban_04_sand",
	"lxWS_H_turban_04_gray",
	"lxWS_H_turban_04_yellow",
	"lxWS_H_turban_02_black",
	"lxWS_H_turban_02_blue",
	"lxWS_H_turban_02_green",
	"lxWS_H_turban_02_green_pattern",
	"lxWS_H_turban_02_orange",
	"lxWS_H_turban_02_red",
	"lxWS_H_turban_02_sand",
	"lxWS_H_turban_02_gray",
	"lxWS_H_turban_02_yellow",
	"lxWS_H_turban_01_black",
	"lxWS_H_turban_01_blue",
	"lxWS_H_turban_01_green",
	"lxWS_H_turban_01_red",
	"lxWS_H_turban_01_sand",
	"lxWS_H_turban_01_gray",
	"lxWS_H_turban_01_yellow",
	"CUP_H_SLA_Helmet_OD_worn",
	"CUP_H_TKI_Lungee_Open_01",
	"CUP_H_TKI_Lungee_Open_02",
	"CUP_H_TKI_Lungee_Open_03",
	"CUP_H_TKI_Lungee_Open_04",
	"CUP_H_TKI_Lungee_Open_05",
	"CUP_H_TKI_Lungee_Open_06",
	"CUP_H_TKI_Lungee_01",
	"CUP_H_TKI_Lungee_02",
	"CUP_H_TKI_Lungee_03",
	"CUP_H_TKI_Lungee_04",
	"CUP_H_TKI_Lungee_05",
	"CUP_H_TKI_Lungee_06",
	"CUP_H_TKI_Pakol_1_01",
	"CUP_H_TKI_Pakol_2_04",
	"CUP_H_TKI_Pakol_2_05",
	"CUP_H_TKI_Pakol_2_06",
	"CUP_H_TKI_Pakol_1_03",
	"CUP_H_TKI_Pakol_1_04",
	"CUP_H_TKI_Pakol_1_05",
	"CUP_H_TKI_Pakol_1_06",
	"CUP_H_TKI_Pakol_2_01",
	"CUP_H_TKI_Pakol_2_02",
	"CUP_H_TKI_Pakol_2_03",
	"CUP_H_TKI_SkullCap_01",
	"CUP_H_TKI_SkullCap_02",
	"CUP_H_TKI_SkullCap_03",
	"CUP_H_TKI_SkullCap_04",
	"CUP_H_TKI_SkullCap_05",
	"CUP_H_TKI_SkullCap_06"
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
	"JAM_B_Sidor_khk",
	"pca_backpack_invisible",
	"pca_backpack_taki_jacket1_04",
	"pca_backpack_taki_jacket1_06",
	"pca_backpack_taki_jacket1_05",
	"pca_backpack_taki_jacket4_04",
	"pca_backpack_taki_jacket4_06",
	"pca_backpack_taki_jacket4_05",
	"pca_backpack_taki_jacket5_04",
	"pca_backpack_taki_jacket5_05",
	"pca_backpack_taki_jacket5_06",
	"pca_backpack_taki_jacket3_04",
	"pca_backpack_taki_jacket3_06",
	"pca_backpack_taki_jacket3_05",
	"pca_backpack_taki_jacket6_04",
	"pca_backpack_taki_jacket6_05",
	"pca_backpack_taki_jacket6_06",
	"pca_backpack_taki_jacket2_04",
	"pca_backpack_taki_jacket2_06",
	"pca_backpack_taki_jacket2_05",
	"B_simc_pack_alice_0"
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
"G_Bandanna_blk",
"G_Bandanna_khk",
"G_Bandanna_oli",
"G_Bandanna_tan",
"G_Balaclava_light_G_blk_F",
"G_Balaclava_lowprofile",
"G_Balaclava_combat",
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
"Aegis_G_Headset_Sand_F",
"Aegis_G_Headset_white_F",
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
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack"
	
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
	
];

private _itemWeapRifle = 
[
	"CUP_arifle_AKM",
	"CUP_arifle_AKMS"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AKM_GL",
	"CUP_arifle_AKMS_GL"
];

private _itemWeapAR = 
[
	"CUP_arifle_RPK74_45"
];

private _itemWeapLAT = 
[
	"CUP_launch_RPG26"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Makarov",
	
	//Pistol Ammo
	"CUP_8Rnd_9x18_Makarov_M"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_PKMN"
];

private _itemWeapMAT = 
[
	"CUP_launch_RPG7V",
	"CUP_optic_PGO7V"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_762x39_AK47_M",
	"CUP_30Rnd_762x39_AK47_bakelite_M",
	"CUP_5Rnd_762x54_Mosin_M"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M",
	"CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M"
];

private _itemAmmoAR = 
[
	"CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"CUP_1Rnd_SmokeYellow_GP25_M",
	"CUP_1Rnd_SMOKE_GP25_M",
	"CUP_1Rnd_SmokeRed_GP25_M",
	"CUP_1Rnd_SmokeGreen_GP25_M"
];

private _itemExplosive = 
[
	"CUP_1Rnd_SMOKE_GP25_M",
	"SmokeShell",
	"CUP_1Rnd_HE_GP25_M",
	"CUP_HandGrenade_RGD5",
	"CUP_HandGrenade_RGO"
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"
];

private _itemAmmoMAT = 
[
	"CUP_OG7_M",
	"CUP_PG7V_M",
	"CUP_TBG7V_M"
];

private _itemEngineer = 
[
	"ACE_Cellphone",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_wirecutter",
	"MineDetector",
	"ToolKit",
	"CUP_IED_V1_M"
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