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

private _itemGear = 
[
	//Uniform 
	"CUP_I_B_PARA_Unit_5",
	"CUP_I_B_PARA_Unit_11",
	"CUP_I_B_PARA_Unit_12",
	"bear_uniform_cup_paramilitary_clothes_m81",
	"CUP_I_B_PARA_Unit_15",
	"CUP_I_B_PARA_Unit_14",
	"CUP_I_B_PARA_Unit_8",
	"CUP_I_B_PARA_Unit_6",
	"CUP_I_B_PARA_Unit_2",
	"CUP_I_B_PARA_Unit_9",
	"CUP_I_B_PARA_Unit_4",
	"CUP_I_B_PARA_Unit_1",
	"CUP_I_B_PARA_Unit_3",
	"CUP_I_B_PMC_Unit_20",
	"CUP_I_B_PMC_Unit_22",
	"CUP_I_B_PMC_Unit_21",
	"CUP_I_B_PMC_Unit_19",
	"CUP_I_B_PMC_Unit_17",
	"CUP_I_B_PMC_Unit_13",
	"CUP_I_B_PMC_Unit_14",
	"CUP_I_B_PMC_Unit_16",
	"CUP_I_B_PMC_Unit_15",
	"CUP_I_B_PMC_Unit_3",
	"CUP_I_B_PMC_Unit_2",
	"CUP_I_B_PMC_Unit_1",
	"CUP_I_B_PMC_Unit_4",
	"CUP_I_B_PMC_Unit_7",
	"CUP_I_B_PMC_Unit_6",
	"CUP_I_B_PMC_Unit_5",
	"CUP_I_B_PMC_Unit_8",
	"CUP_I_B_PMC_Unit_11",
	"CUP_I_B_PMC_Unit_10",
	"CUP_I_B_PMC_Unit_9",
	"CUP_I_B_PMC_Unit_12",
	"CUP_I_B_PMC_Unit_42",
	"CUP_I_B_PMC_Unit_41",
	"CUP_I_B_PMC_Unit_43",
	"CUP_I_B_PMC_Unit_40",
	"CUP_I_B_PMC_Unit_39",
	"CUP_I_B_PMC_Unit_36",
	"CUP_I_B_PMC_Unit_38",
	"CUP_I_B_PMC_Unit_37",
	"CUP_I_B_PMC_Unit_24",
	"CUP_I_B_PMC_Unit_23",
	"CUP_I_B_PMC_Unit_35",
	"CUP_I_B_PMC_Unit_31",
	"U_BG_Guerrilla_6_1",
	"U_BG_Guerilla2_2",
	"U_BG_Guerilla2_1",
	"U_BG_Guerilla2_3",
	"aegis_sweater_grn",
	"aegis_guerilla_tshirt_m81",
	"aegis_guerilla_tshirt_m81_alt",
	"aegis_guerilla_garb_m81",
	
	//Vest
	"milgp_v_jpc_assaulter_belt_blk",
	"milgp_v_jpc_assaulter_belt_cb",
	"milgp_v_jpc_assaulter_belt_gry",
	"milgp_v_jpc_assaulter_belt_khk",
	"milgp_v_jpc_assaulter_belt_rgr",
	"milgp_v_jpc_assaulter_belt_tan",
	
	//Headgear
	"rhsusf_ach_bare",
	"rhsusf_ach_bare_ess",
	"rhsusf_ach_bare_headset",
	"rhsusf_ach_bare_headset_ess",
	"rhsusf_ach_bare_semi",
	"rhsusf_ach_bare_semi_ess",
	"rhsusf_ach_bare_semi_headset",
	"rhsusf_ach_bare_semi_headset_ess",
	"rhsusf_ach_bare_tan",
	"rhsusf_ach_bare_tan_ess",
	"rhsusf_ach_bare_tan_headset",
	"rhsusf_ach_bare_tan_headset_ess",
	"rhsusf_ach_bare_wood",
	"rhsusf_ach_bare_wood_ess",
	"rhsusf_ach_bare_wood_headset",
	"rhsusf_ach_bare_wood_headset_ess",
	"H_Bandanna_gry",
	"H_Bandanna_cbr",
	"H_Bandanna_khk_hs",
	"H_Bandanna_khk",
	"H_Bandanna_camo",
	"H_Watchcap_blk",
	"H_Watchcap_cbr",
	"H_Watchcap_camo",
	"H_Watchcap_khk",
	"H_Beret_blk",
	"H_Booniehat_khk_hs",
	"H_Booniehat_khk",
	"H_Booniehat_oli",
	"H_Booniehat_tan",
	
	"H_Cap_blk",
	"H_Cap_grn",
	"H_Cap_oli",
	"H_Cap_oli_hs",
	"H_Cap_tan",
	"H_MilCap_gry",
	"H_Cap_headphones",
	"aegis_cap_headphones_blk",
	"aegis_cap_headphones_gry",
	"aegis_cap_headphones_tan",
	"aegis_milcap_blk",
	"aegis_milcap_cbr",
	"aegis_milcap_sgg",
	"aegis_milcap_tan",
	"CUP_H_FR_BandanaGreen",
	"CUP_H_RUS_Bandana_GSSh_Headphones",
	"CUP_H_RUS_Bandana_HS",
	"CUP_H_FR_Bandana_Headset",
	"CUP_H_PMC_Beanie_Black",
	"CUP_H_PMC_Beanie_Headphones_Black",
	"CUP_H_PMC_Beanie_Khaki",
	"CUP_H_PMC_Beanie_Headphones_Khaki",
	"CUP_H_PMC_Cap_Grey",
	"CUP_H_PMC_Cap_Back_Grey",
	"CUP_H_PMC_Cap_Back_EP_Grey",
	"CUP_H_PMC_Cap_Back_Tan",
	"CUP_H_PMC_Cap_Back_EP_Tan",
	"CUP_H_PMC_Cap_EP_Tan",
	"CUP_H_FR_Headband_Headset",
	"CUP_H_FR_Headset",
	
	"CUP_H_US_patrol_cap_WDL",
	"CUP_H_US_patrol_cap_OD ",
	"usm_bdu_cap_erdl",
	"usm_bdu_cap_gry",
	"usm_bdu_cap_odg",
	"milgp_h_cap_01_cb",
	"milgp_h_cap_01_gry",
	"milgp_h_cap_01_khk",
	"milgp_h_cap_01_rgr",
	"milgp_h_cap_01_goggles_cb",
	"milgp_h_cap_01_goggles_gry",
	"milgp_h_cap_01_goggles_khk",
	"milgp_h_cap_01_goggles_rgr",
	"milgp_h_cap_02_cb",
	"milgp_h_cap_02_gry",
	"milgp_h_cap_02_khk",
	"milgp_h_cap_02_rgr",
	"milgp_h_cap_02_goggles_cb",
	"milgp_h_cap_02_goggles_gry",
	"milgp_h_cap_02_goggles_khk",
	"milgp_h_cap_02_goggles_rgr",
	"milgp_h_cap_03_cb",
	"milgp_h_cap_03_gry",
	"milgp_h_cap_03_khk",
	"milgp_h_cap_03_rgr",
	"milgp_h_cap_03_goggles_cb",
	"milgp_h_cap_03_goggles_gry",
	"milgp_h_cap_03_goggles_khk",
	"milgp_h_cap_03_goggles_rgr",
	
	"milgp_h_cap_backwards_01_cb",
	"milgp_h_cap_backwards_01_gry",
	"milgp_h_cap_backwards_01_khk",
	"milgp_h_cap_backwards_01_rgr",
	"milgp_h_cap_backwards_01_goggles_cb",
	"milgp_h_cap_backwards_01_goggles_gry",
	"milgp_h_cap_backwards_01_goggles_khk",
	"milgp_h_cap_backwards_01_goggles_rgr",
	"milgp_h_cap_backwards_02_cb",
	"milgp_h_cap_backwards_02_gry",
	"milgp_h_cap_backwards_02_khk",
	"milgp_h_cap_backwards_02_rgr",
	"milgp_h_cap_backwards_02_goggles_cb",
	"milgp_h_cap_backwards_02_goggles_gry",
	"milgp_h_cap_backwards_02_goggles_khk",
	"milgp_h_cap_backwards_02_goggles_rgr",
	"milgp_h_cap_backwards_03_cb",
	"milgp_h_cap_backwards_03_gry",
	"milgp_h_cap_backwards_03_khk",
	"milgp_h_cap_backwards_03_rgr",
	"milgp_h_cap_backwards_03_goggles_cb",
	"milgp_h_cap_backwards_03_goggles_gry",
	"milgp_h_cap_backwards_03_goggles_khk",
	"milgp_h_cap_backwards_03_goggles_rgr",
	"pca_headband_blk",
	"pca_headband",
	"pca_headband_red",
	"pca_headband_tan",
	
	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	
	"B_AssaultPack_blk",
	"B_AssaultPack_cbr",
	"B_AssaultPack_rgr",
	"B_AssaultPack_khk",
	"B_Carryall_blk",
	"B_Carryall_cbr",
	"B_Carryall_oli",
	"B_Kitbag_cbr",
	"B_Kitbag_rgr",
	"B_Kitbag_sgg",
	"B_Kitbag_tan",
	"aegis_tacticalpack_cbr",
	"aegis_tacticalpack_khk",
	"aegis_tacticalpack_rgr",
	"aegis_kitbag_blk",
	"aegis_kitbag_khk",
	"aegis_kitbag_rgr",
	"aegis_virtus_carryall_grn",
	"aegis_virtus_carryall_oli",
	"aegis_virtus_kitbag_grn",
	"pca_eagle_a3_blk",
	"pca_eagle_a3_cbr",
	"pca_eagle_a3_khk",
	"pca_eagle_a3_m81",
	"pca_eagle_a3_od",
	"pca_eagle_a3_rgr",
	"pca_eagle_a3_tan",
	"pca_kitbag_m81",
	"rhs_tortila_grey",
	"wsx_eagle_a3_khk"
	
];

private _itemGearGren = 
[
	//Vest
	"milgp_v_jpc_grenadier_belt_blk",
	"milgp_v_jpc_grenadier_belt_cb",
	"milgp_v_jpc_grenadier_belt_gry",
	"milgp_v_jpc_grenadier_belt_khk",
	"milgp_v_jpc_grenadier_belt_rgr",
	"milgp_v_jpc_grenadier_belt_tan"
];

private _itemGearMedic = 
[
	//Vest 
	"milgp_v_jpc_medic_belt_blk",
	"milgp_v_jpc_medic_belt_cb",
	"milgp_v_jpc_medic_belt_gry",
	"milgp_v_jpc_medic_belt_khk",
	"milgp_v_jpc_medic_belt_rgr",
	"milgp_v_jpc_medic_belt_tan"
];

private _itemGearMG = 
[
	//Vest
	"milgp_v_jpc_medic_belt_blk",
	"milgp_v_jpc_medic_belt_cb",
	"milgp_v_jpc_medic_belt_gry",
	"milgp_v_jpc_medic_belt_khk",
	"milgp_v_jpc_medic_belt_rgr",
	"milgp_v_jpc_medic_belt_tan"
];

private _itemGearLeader = 
[
	//Vest
	"milgp_v_jpc_teamleader_belt_blk",
	"milgp_v_jpc_teamleader_belt_cb",
	"milgp_v_jpc_teamleader_belt_gry",
	"milgp_v_jpc_teamleader_belt_khk",
	"milgp_v_jpc_teamleader_belt_rgr",
	"milgp_v_jpc_teamleader_belt_tan"
];

private _itemCosmetic = 
[
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"aegis_bala_skull",
	
	"aegis_bandanna_kawaii",
	"aegis_combat_gogg_blk",
	"aegis_bala_light_blk",
	"aegis_bala_light_gogg_blk",
	"aegis_bala_light_eaf",
	"aegis_bala_light_gogg_eaf",
	"aegis_shemag_khk",
	"aegis_shemag_oli",
	"aegis_shemag_red",
	"aegis_shemag_tan",
	"aegis_shemag_white",
	"aegis_shemag_shades_cbr",
	"aegis_shemag_tactical_cbr",
	"aegis_shemag_shades_khk",
	"aegis_shemag_tactical_khk",
	"aegis_shemag_shades_oli",
	"aegis_shemag_tactical_oli",
	"aegis_shemag_shades_red",
	"aegis_shemag_tactical_red",
	"aegis_shemag_shades_tan",
	"aegis_shemag_tactical_tan",
	"aegis_shemag_shades_white",
	"aegis_shemag_tactical_white",
	
	"aegis_bala_ti_sand",
	"aegis_bala_ti_gogg_sand",
	"aegis_tactical_yellow",
	"aegis_tactical_camo",
	"G_AirPurifyingRespirator_02_black_F",
	"G_AirPurifyingRespirator_02_olive_F",
	"G_AirPurifyingRespirator_02_sand_F",
	"G_AirPurifyingRespirator_01_F",
	"bear_bandana_m81",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_CBR_Dark",
	"CUP_G_ESS_CBR_Ember",
	"CUP_G_ESS_CBR",
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
	"CUP_G_TK_RoundGlasses",
	
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_cb",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_tan",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_cb",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_tan",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_cb",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_goggles_shemagh_tan",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_cb",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_tan",
	"milgp_f_face_shield_shades_shemagh_blk",
	
	"milgp_f_face_shield_shades_shemagh_cb",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shades_shemagh_tan",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_cb",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_shemagh_tan",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_cb",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_tan",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_cb",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_face_shield_tactical_shemagh_tan",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"rhs_googles_black",
	"rhs_googles_clear",
	
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh2_gogg_white",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_glasses_org",
	"pca_nvg_glasses_ylw",
	"pca_nvg_ess_blk",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_cb",
	"pca_nvg_face_shield_khk",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_tan",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_face_shield_shemagh_cb",
	"pca_nvg_face_shield_shemagh_khk",
	"pca_nvg_face_shield_shemagh_rgr",
	"pca_nvg_face_shield_shemagh_tan",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_shemagh_white",
	"pca_nvg_shemagh2_white",
	"pca_nvg_shemagh_lowered_cbr",
	"pca_nvg_shemagh_lowered_khk",
	
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	"pca_nvg_tactical_glasses",
	"pca_nvg_tactical_goggles",
	"nvg_goggles_cbr",
	"nvg_goggles_grn",
	"sfp_nvg_peltor_comtac3"
];

private _itemMed = 
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

private _itemMedSpec = 
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
	"ACE_personalAidKit",
	"ACE_surgicalKit"
];

private _itemMisc = 
[
	"ACRE_PRC343",
	"ACE_MapTools",
	"ACE_RangeCard",
	"ItemCompass",
	"ItemMap",
	"ItemWatch"
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

private _itemAcc = 
[
	//Optic
	"cup_optic_ac11704_black",
	"sma_acc_barska_rds",
	"optic_aco_grn",
	"optic_aco",
	"sma_acc_cmore_blk",
	"sma_acc_eotech_552_blk",
	"rksl_optic_eot552",
	"cup_optic_eotech553_black",
	"optic_holosight_blk_f",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_compm4",
	"cup_optic_compm2_low",
	"rhsusf_acc_mrds",
	"ptv_acc_compm4s",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"rhsusf_acc_rx01_nofilter",
	"rhsusf_acc_rx01",
	"cup_optic_vortexrazor_uh1_black",
	
	//Grip
	"rhsusf_acc_grip",
	"rhsusf_acc_grip2",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_grip3"
];

private _itemWeapRifle = 
[
	"hlc_rifle_acr_car_blk",
	"hlc_rifle_acr_sbr_pink",
	"hlc_rifle_acr_car_blk",
	"hlc_rifle_acr_car_pink",
	"hlc_rifle_acr_iar_blk",
	"hlc_rifle_acr_iar_pink"
];

private _itemWeapRifleUGL = 
[
	"hlc_rifle_acr_sbr_m203_blk",
	"hlc_rifle_acr_sbr_m203_pink",
	"hlc_rifle_acr_car_m203_blk",
	"hlc_rifle_acr_car_m203_pink",
	"hlc_rifle_acr_iar_m203_blk",
	"hlc_rifle_acr_iar_m203_pink"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S"
];

private _itemWeapMG = 
[
	"sps_weap_kac_amg_blk",
	"bipod_01_f_blk",
	"rksl_optic_eot552x"
];

private _itemWeapLAT = 
[
	"rhs_weap_M136"
];

private _itemWeapPistol = 
[
	"hlc_pistol_mk25",
	"hlc_pistol_mk25_pinktac",
	"hlc_pistol_mk25_pink"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"pca_mag_30Rnd_556x45_M995_PMAG_Blk",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Blk",
	
	//Pistol Ammo
	"hlc_15Rnd_9x19_FMJ_P226",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_m67",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
];

private _itemAmmoAR = 
[
	"pca_mag_200Rnd_556x45_M995_mixed_soft_pouch_od"
];

private _itemAmmoMG = 
[
	"sps_100Rnd_762x51_M80A1_Mixed_KAC_Box"
];

private _itemAmmoSignal = 
[
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"UGL_FlareGreen_F",
	"UGL_FlareRed_F",
	"UGL_FlareWhite_F",
	"UGL_FlareYellow_F"
];

private _itemVIP = 
[
	//Uniform
	"U_B_FullGhillie_lsh",
	"U_C_ArtTShirt_01_v3_F",
	"U_C_Driver_1_yellow",
	"U_C_Uniform_Farmer_01_F",
	"U_C_FormalSuit_01_black_F",
	"U_C_FormalSuit_01_blue_F",
	"U_C_FormalSuit_01_gray_F",
	"U_C_FormalSuit_01_khaki_F",
	"U_C_FormalSuit_01_tshirt_gray_F",
	"U_C_Man_casual_2_F",
	"U_C_Poloshirt_tricolour",
	"U_C_Uniform_Scientist_01_formal_F",
	"U_C_Uniform_Scientist_02_F",
	"U_I_L_Uniform_01_tshirt_black_F",
	"U_Competitor",
	"U_NikosAgedBody",
	"U_OrestesBody",
	"rhs_uniform_df15",
	"aegis_cbrn_suit_ylw",
	"aegis_polo_casual_gry",
	"aegis_suit_formal_blue",
	"aegis_suit_formal_redcheck",
	"CUP_I_B_PMC_Unit_29",
	"CUP_O_TKI_Khet_Jeans_02",
	"CUP_U_C_Citizen_01",
	"CUP_U_C_Citizen_02",
	"CUP_U_C_Citizen_03",
	"CUP_U_C_Citizen_04",
	"CUP_U_C_Labcoat_01",
	"CUP_U_C_Labcoat_03",
	"CUP_U_C_Mechanic_02",
	"CUP_U_C_Profiteer_01",
	"CUP_U_C_Profiteer_02",
	"CUP_U_C_Suit_01",
	"CUP_U_C_Villager_01",
	"CUP_U_C_Villager_02",
	"CUP_U_C_Villager_03",
	"CUP_U_C_Villager_04",
	"CUP_U_O_CHDKZ_Lopotev",
	"CUP_U_O_CHDKZ_Bardak",
	"CUP_U_O_TK_Ghillie_Top",
	//Vest
	"V_DeckCrew_blue_F",
	"V_DeckCrew_green_F",
	"V_DeckCrew_yellow_F",
	"V_DeckCrew_red_F",
	"V_Pocketed_black_F",
	"V_Pocketed_coyote_F",
	"V_Pocketed_olive_F",
	"V_Safety_orange_F",
	"V_Safety_yellow_F",
	"V_Safety_blue_F",
	"rhs_suspender_AK",
	"rhs_vest_commander",
	"aegis_modular_carrier_blk",
	"CUP_V_B_BAF_DPM_Osprey_Mk3_Empty",
	"CUP_V_B_LHDVest_Blue",
	"CUP_V_B_LHDVest_Brown",
	"CUP_V_B_LHDVest_Green",
	"CUP_V_B_LHDVest_Red",
	"CUP_V_B_LHDVest_Violet",
	"CUP_V_B_LHDVest_White",
	"CUP_V_B_LHDVest_Yellow",
	//Headgear
	"H_Bandanna_surfer",
	"H_Cap_blk_CMMG",
	"H_Cap_surfer",
	"H_Construction_basic_black_F",
	"H_Construction_earprot_black_F",
	"H_Construction_basic_orange_F",
	"H_Construction_earprot_orange_F",
	"H_Construction_basic_red_F",
	"H_Construction_earprot_red_F",
	"H_Construction_basic_vrana_F",
	"H_Construction_earprot_vrana_F",
	"H_Construction_basic_yellow_F",
	"H_Construction_earprot_yellow_F",
	"H_EarProtectors_orange_F",
	"H_EarProtectors_red_F",
	"H_EarProtectors_white_F",
	"H_EarProtectors_yellow_F",
	"H_Hat_brown",
	"H_Hat_camo",
	"H_Hat_grey",
	"H_Hat_tan",
	"H_Hat_Safari_sand_F",
	"H_Hat_Tinfoil_F",
	"H_Helmet_Skate",
	"H_HelmetHBK_chops_F",
	"H_WirelessEarpiece_F",
	"rhs_xmas_antlers",
	"rhsusf_hgu56p_visor_mask_smiley",
	"rhsusf_hgu56p_visor_usa",
	"usm_bdu_boonie_tan",
	"aegis_guardian_cover",
	"CUP_H_NAPA_Fedora",
	"CUP_H_PMC_Cap_Burberry",
	"CUP_H_PMC_Cap_Back_Burberry",
	"CUP_H_RUS_K6_3_Shield_Up_black",
	"CUP_H_RUS_6B47_v2_Desert",
	"CUP_H_RUS_6B47_v2_GogglesClosed_Desert",
	"CUP_H_RUS_6B47_v2_GogglesDown_Desert",
	"CUP_H_RUS_6B47_v2_GogglesUp_Desert",
	"CUP_H_USArmy_Helmet_Protec",
	"CUP_H_USArmy_Helmet_Protec_Gog_Strb",
	//Backpack
	"B_CivilianBackpack_01_Everyday_Astra_F",
	"B_CivilianBackpack_01_Everyday_Black_F",
	"B_CivilianBackpack_01_Everyday_Vrana_F",
	"B_CivilianBackpack_01_Sport_Blue_F",
	"B_CivilianBackpack_01_Sport_Red_F",
	"B_CivilianBackpack_01_Sport_Green_F",
	"B_Messenger_Black_F",
	"B_Messenger_Gray_F",
	"aegis_carryall_blk",
	"aegis_loadbearing_blk",
	"pca_backpack_invisible",
	"CUP_B_HikingPack_Civ",
	//Facewear
	"G_Aviator",
	"G_Blindfold_01_black_F",
	"G_Blindfold_01_white_F",
	"G_EyeProtectors_F",
	"G_EyeProtectors_Earpiece_F",
	"G_Lady_Blue",
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
	"G_Goggles_VR",
	"G_WirelessEarpiece_F",
	"aegis_cigarette",
	"aegis_shades_yellow",
	"usm_kneepads_blk",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_Beard_Shades_Black",
	"CUP_G_Beard_Shades_Blonde",
	"CUP_G_GPS",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"CUP_G_WatchGPSCombo",
	"CUP_G_WristWatch",
	//NVG slot
	"pca_nvg_cigarette",
	"usm_nvg_kneepads_blk",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
];

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

switch (true) do 
{
	//Rifleman
	case (_unitRole == "rm") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (Light Anti-Tank)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifleUGL + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemGearMedic + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "ammg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	//Very Important Person
	case (_unitRole == "vp") : 
	{
		[arsenal, (_itemMed + _itemVIP + _itemBino)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
};

_action = 
[
	"personal_arsenal", "Personal Arsenal", "\A3\ui_f\data\igui\cfg\weaponicons\MG_ca.paa",
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