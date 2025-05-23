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
	"aegis_ccu_mtp",
	"aegis_ccu_rs_mtp",
	"aegis_ccu_tshirt_mtp"
];

private _itemUniformJetPilot = 
[
	"U_I_pilotCoveralls"
];

//Vest
private _itemVest = 
[
	"aegis_platecarrier_rig_khk",
	"aegis_platecarrier_lite_khk"
];

private _itemVestJetPilot = 
[
	"pca_vest_invisible_plate"
];

//Headgear 
private _itemHeadgear = 
[
	"aegis_bandana_mtp",
	"aegis_boonie_mtp",
	"aegis_ech_mtp",
	"aegis_ech_enh_mtp",
	"aegis_lch_mtp",
	"aegis_milcap_mtp",
	"TC_Helmet_CowboyHat1",
	"TC_Helmet_CowboyHat2",
	"TC_Helmet_CowboyHat3"	
];

private _itemHeadgearCrew = 
[
	"H_HelmetCrew_I",
	"TC_Helmet_CowboyHat1",
	"TC_Helmet_CowboyHat2",
	"TC_Helmet_CowboyHat3"	
];

private _itemHeadgearPilot = 
[
	"rhsusf_hgu56p_green",
	"rhsusf_hgu56p_mask_green",
	"rhsusf_hgu56p_mask_green_mo",
	"rhsusf_hgu56p_visor_green",
	"rhsusf_hgu56p_visor_mask_green",
	"rhsusf_hgu56p_visor_mask_green_mo",
	"TC_Helmet_CowboyHat1",
	"TC_Helmet_CowboyHat2",
	"TC_Helmet_CowboyHat3"	
];

private _itemHeadgearJetPilot = 
[
	"H_PilotHelmetFighter_O",
	"TC_Helmet_CowboyHat1",
	"TC_Helmet_CowboyHat2",
	"TC_Helmet_CowboyHat3"		
];

//Backpack 
private _itemBackpack = 
[
	"aegis_assaultpack_mtp"
];

//Cosmetic 
private _itemCosmetic = 
[
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_BlueStrips",
	"G_Balaclava_combat",
	"G_Balaclava_Flecktarn",
	"G_Balaclava_Halloween_01",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Balaclava_Flames1",
	"G_Balaclava_Scarecrow_01",
	"G_Balaclava_Skull1",
	"G_Balaclava_Tropentarn",	
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_CandySkull",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_OrangeFlame1",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_shades",
	"G_Bandanna_Skull1",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Skull2",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Bandanna_Vampire_01",
	"G_Bandanna_Syndikat2",	
	"G_Combat",
	"G_Lady_Blue",
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
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"aegis_bandanna_estdc",
	"aegis_bandanna_kawaii",
	"aegis_bandanna_latpat",
	"aegis_bandanna_shemag",	
	"aegis_headset",
	"aegis_shemagh_loop_bge",
	"aegis_shemagh_loop_blk",
	"aegis_shemagh_loop_coy",
	"aegis_shemagh_loop_gold",
	"aegis_shemagh_loop_grn",
	"aegis_shemagh_loop_khk",
	"aegis_shemagh_loop_tan",
	"aegis_shemagh_loop_white",
	"aegis_shemagh_mesh_bge",
	"aegis_shemagh_mesh_blk",
	"aegis_shemagh_mesh_coy",
	"aegis_shemagh_mesh_gold",
	"aegis_shemagh_mesh_grn",
	"aegis_shemagh_mesh_khk",
	"aegis_shemagh_mesh_tan",
	"aegis_shemagh_mesh_white",
	"aegis_shades_yellow",
	"aegis_shemag_cbr",
	"aegis_shemag_shades_cbr",
	"aegis_shemag_tactical_cbr",
	"aegis_shemag_khk",
	"aegis_shemag_shades_khk",
	"aegis_shemag_tactical_khk",
	"aegis_shemag_oli",
	"aegis_shemag_shades_oli",
	"aegis_shemag_tactical_oli",
	"aegis_shemag_red",
	"aegis_shemag_shades_red",
	"aegis_shemag_tactical_red",
	"aegis_shemag_tan",
	"aegis_shemag_shades_tan",
	"aegis_shemag_tactical_tan",
	"aegis_shemag_white",
	"aegis_shemag_shades_white",
	"aegis_shemag_tactical_white",
	"aegis_tactical_yellow",
	"aegis_tactical_camo",
	"G_Respirator_blue_F",
	"G_Respirator_white_F",
	"G_Respirator_yellow_F",
	"G_EyeProtectors_F",
	"G_EyeProtectors_Earpiece_F",
	"G_WirelessEarpiece_F",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_RUS_Balaclava_tan",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_CBR_Dark",
	"CUP_G_ESS_CBR_Ember",
	"CUP_G_ESS_CBR",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_KHK_Dark",
	"CUP_G_ESS_KHK_Ember",
	"CUP_G_ESS_KHK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Ranger",
	"CUP_G_ESS_CBR_Facewrap_Red",
	"CUP_G_ESS_KHK_Facewrap_Tan",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_G_ESS_KHK_Facewrap_White",
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
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_PMC_Facewrap_Black",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
	"CUP_PMC_Facewrap_Ranger",
	"CUP_PMC_Facewrap_Red",
	"CUP_PMC_Facewrap_Smilie",
	"CUP_PMC_Facewrap_Tan",
	"CUP_G_PMC_Facewrap_Tan_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
	"CUP_PMC_Facewrap_Tropical",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Ember",
	"CUP_PMC_Facewrap_Winter",
	"CUP_G_PMC_Facewrap_Winter_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Winter_Glasses_Ember",
	"CUP_TK_NeckScarf",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"CUP_G_Grn_Scarf_Shades",
	"CUP_G_Tan_Scarf_Shades",
	"CUP_G_White_Scarf_Shades",
	"CUP_G_Grn_Scarf_Shades_Beard_Blonde",
	"CUP_G_Grn_Scarf_Shades_Beard",
	"CUP_G_Tan_Scarf_Shades_Beard_Blonde",
	"CUP_G_Tan_Scarf_Shades_Beard",
	"CUP_G_White_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard",
	"CUP_G_Beard_Shades_Black",
	"CUP_G_Beard_Shades_Blonde",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf4",
	"CUP_FR_NeckScarf5",
	"CUP_PMC_G_thug",
	"usm_kneepads_blk",
	"usm_kneepads_safariland",
	"usm_swdgoggles",
//	"usm_gigloves",
//	"usm_giglovesscarf",
//	"usm_giglovesscarf2",
	"usm_scarf",
	"usm_scarf2",
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
	"pca_balaclava_blk_1",
	"pca_balaclava_blk_2",
	"pca_balaclava_oli_1",
	"pca_balaclava_oli_2",
	"rhs_balaclava",
	"rhs_balaclava1_olive",
	"rhs_scarf",
	"rhssaf_veil_Green",
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
//	"simc_nomex_blk",
//	"simc_nomex_alt",
//	"simc_nomex",
//	"simc_nomex_tan",
//	"simc_nomex_fold_blk",
//	"simc_nomex_fold_alt",
//	"simc_nomex_fold",
//	"simc_nomex_fold_tan",
//	"simc_nomex_long_blk",
//	"simc_nomex_long_alt",
//	"simc_nomex_long",
//	"simc_nomex_long_tan",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
//	"TC_G_NitrileGloves_1",
	
	//Murshun cigpack and lighter
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack",
	"murshun_cigs_matches",
	
	//NVG slot
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"pca_nvg_balaclava",
	"pca_nvg_balaclava2",
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
	"pca_nvg_shemagh_loop_bge",
	"pca_nvg_shemagh_loop_blk",
	"pca_nvg_shemagh_loop_coy",
	"pca_nvg_shemagh_loop_gold",
	"pca_nvg_shemagh_loop_grn",
	"pca_nvg_shemagh_loop_khk",
	"pca_nvg_shemagh_loop_tan",
	"pca_nvg_shemagh_loop_white",
	"pca_nvg_shemagh_loop_bge",
	"pca_nvg_shemagh_mesh_blk",
	"pca_nvg_shemagh_mesh_coy",
	"pca_nvg_shemagh_mesh_gold",
	"pca_nvg_shemagh_mesh_grn",
	"pca_nvg_shemagh_mesh_khk",
	"pca_nvg_shemagh_mesh_tan",
	"pca_nvg_shemagh_mesh_white",
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
	"nvg_goggles_tropic",
//	"usm_nvg_kneepads_blk",
//	"usm_nvg_gigloves",
//	"usm_nvg_giglovesscarf",
//	"usm_nvg_giglovesscarf2",
//	"pca_nvg_gloves_wool",
//	"pca_nvg_gloves_wool_blu",
//	"pca_nvg_gloves_wool_brn",
//	"pca_nvg_gloves_wool_gry",
//	"pca_nvg_gloves_wool_grn",
//	"simc_addon_nomex_blk",
//	"simc_addon_nomex_alt",
//	"simc_addon_nomex",
//	"simc_addon_nomex_tan",
//	"simc_addon_nomex_fold_blk",
//	"simc_addon_nomex_fold_alt",
//	"simc_addon_nomex_fold",
//	"simc_addon_nomex_fold_tan",
//	"simc_addon_nomex_long_blk",
//	"simc_addon_nomex_long_alt",
//	"simc_addon_nomex_long",
//	"simc_addon_nomex_long_tan",
//	"TC_NVG_NitrileGloves_1",
	"usm_nvg_swdgoggles",
	"usm_nvg_scarf",
	"usm_nvg_scarf2"
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
	"Binocular",
	"Rangefinder",
	"ACE_Vector",
	"rhssaf_zrak_rd7j"
];

private _itemFAC =
[
	"Laserdesignator_03",
	"Laserbatteries"
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

//Special

private _itemST =
[
	"ACE_SpottingScope",
	"ACE_Tripod",
	"ACE_ATragMX",
	"ACE_Kestrel4500",
	"ACE_microDAGR",
	"optic_Arco_blk_F",
	"optic_MRCO",
	"optic_Hamr",
	"aegis_acc_lrco_blk",
	"ACE_optic_Arco_2D",
	"ACE_optic_Arco_PIP",
	"ACE_optic_MRCO_2D",
	"ACE_optic_Hamr_2D",
	"ACE_optic_Hamr_PIP",	
	"rhsusf_acc_acog_rmr",
	"rhsusf_acc_elcan",
	"sma_acc_elcan_specter_blk",
	"cup_optic_elcan_specterdr_black",
	"cup_optic_elcan_specterdr_rmr_black",
	"cup_optic_elcan",
	"cup_optic_hensoldtzo",
	"cup_optic_hensoldtzo_rds",
	"hlc_optic_hensoldtzo",
	"hlc_optic_hensoldtzo_2d",
	"hlc_optic_hensoldtzo_rds",
	"hlc_optic_hensoldtzo_rds_2d",
	"rhsusf_acc_su230",
	"rhsusf_acc_su230_mrds",
	"cup_optic_acog_ta01b_black",
	"cup_optic_acog_ta01b_rmr_black",
	"cup_optic_rco",
	"cup_optic_acog_ta01nsn_rmr_black",
	"cup_optic_acog2",
	"cup_optic_acog",
	"aegis_ech_ghillie_mtp",
	"ACE_HuntIR_M203",
	"ACE_HuntIR_monitor"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	"optic_aco_grn",
	"optic_aco",
	"optic_holosight_blk_f",
	"cup_optic_1p87_ris",
	"cup_optic_aimpoint_5000",
	"cup_optic_compm4",
	"cup_optic_microt1",
	"cup_optic_microt1_low",
	"cup_optic_ac11704_black",
	"cup_optic_holoblack",
	"cup_optic_eotech553_black",
	"cup_optic_compm2_low",
	"cup_optic_compm2_black",
	"cup_optic_mars",
	"cup_optic_mrad",
	"cup_optic_zddot",
	"cup_optic_mepro",
	"cup_optic_mepro_moa_clear",
	"cup_optic_mepro_openx_orange",
	"cup_optic_mepro_tri_clear",
	"cup_optic_okp_7_rail",
	"cup_optic_trijiconrx01_black",
	"cup_optic_trijiconrx01_kf_black",
	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_zeisszpoint",
	"hlc_optic_docterr",
	"hlc_optic_ism1400a7",
	"hlc_optic_romeov",
	"ptv_acc_compm4s",
	"ptv_acc_aimcs",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"ptv_acc_eot552",
	"rksl_optic_eot552",
	"rksl_optic_eot552x",
	"rhs_acc_rakurspm",
	"rhs_acc_1p87",
	"rhs_acc_ekp8_18",
	"rhs_acc_okp7_picatinny",
	"rhsgref_acc_rx01_nofilter_camo",
	"rhsgref_acc_rx01_camo",
	"rhsusf_acc_eotech",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_compm4",
	"rhsusf_acc_mrds",
	"rhsusf_acc_rm05",
	"rhsusf_acc_rx01_nofilter",
	"rhsusf_acc_rx01",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",
	"rhsusf_acc_eotech_xps3",
	"sma_acc_barska_rds",
	"sma_acc_cmore_blk",
	"sma_acc_eotech_552_blk",
	"sma_acc_eotech_552_kf_blk",
	"sma_acc_eotech_xps3_blk",
	"sma_acc_micro_t2",
	"sma_acc_tasco_propoint",
	"sma_acc_tasco_propoint_glare",
	"sma_acc_vortex_blk",
	"sma_acc_vortex_lc_blk",
	"optic_MRD_black",
	
	//Grip
	"ptv_acc_grip4",
	"ptv_acc_grip3",
	"ptv_acc_grip1",
	"ptv_acc_grip2",
	"rhs_acc_grip_ffg2",
	"rhs_acc_grip_rk2",
	"rhs_acc_grip_rk6",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip1",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_grip3",
	"rhsusf_acc_kac_grip_saw_bipod",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_grip4",
	"rhsusf_acc_grip4_bipod",
	"rhsusf_acc_saw_lw_bipod",
	
	//Tactical Device
	"pca_flashlight_led",
	"pca_flashlight_m952v",
	"pca_flashlight_sf",
	"pca_flashlight_wmx",
	"cup_acc_glock17_flashlight",
	"acc_flashlight_pistol"
];

private _itemWeapRifle = 
[
	"rhs_weap_vhsd2",
	"rhs_weap_vhsd2_ct15x"
];

private _itemWeapCarbine =
[
	"rhs_weap_vhsk2"
];

private _itemWeapGL = 
[
	"rhs_weap_vhsd2_bg",
	"rhs_weap_vhsd2_bg_ct15x"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_L",
	"rhs_weap_m249_light_S",
	"LMG_Mk200_black_F",
	//Scopes
	"optic_Arco_blk_F",
	"optic_MRCO",
	"optic_Hamr",
	"aegis_acc_lrco_blk",
	"ACE_optic_Arco_2D",
	"ACE_optic_Arco_PIP",
	"ACE_optic_MRCO_2D",
	"ACE_optic_Hamr_2D",
	"ACE_optic_Hamr_PIP",
	//Bipod
	"bipod_01_F_blk"
];

private _itemWeapLAT = 
[
	"rhs_weap_M136",
	"rhs_weap_M136_hedp",
	"rhs_weap_M136_hp"
];

private _itemWeapMAT = 
[
	"rhs_weap_smaw_green",
	//Scope
	"rhs_weap_optic_smaw"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_glock17g4",
	"aegis_weap_fnx45_blk"
];

//Special
private _itemWeapMG = 
[
	"rhs_weap_m240B",
	//Scopes
	"rhsusf_acc_ACOG_MDO",
	"optic_Arco_blk_F",
	"optic_MRCO",
	"optic_Hamr",
	"aegis_acc_lrco_blk",
	"ACE_optic_Arco_2D",
	"ACE_optic_Arco_PIP",
	"ACE_optic_MRCO_2D",
	"ACE_optic_Hamr_2D",
	"ACE_optic_Hamr_PIP",	
	//Bipod
	"bipod_01_F_blk"
];

private _itemWeapHAT =
[
	"rhs_weap_fgm148"
];

private _itemWeapSN =
[
	"rhs_weap_M107",
	"srifle_GM6_F",
	//Scopes	
	"rhsusf_acc_nxs_5522x56_md_sun",
	"rhsusf_acc_nxs_3515x50f1_md_sun",
	"rhsusf_acc_nxs_3515x50f1_h58_sun",
	"rhsusf_acc_premier_mrds",
	"rhsusf_acc_leupoldmk4_2",
	"rhsusf_acc_m8541",
	"optic_lrps",
	"cup_optic_leupoldmk4_25x50_lrt",
	"cup_optic_leupoldmk4_20x40_lrt",
	"cup_optic_leupold_vx3",
	"cup_optic_sb_3_12x50_pmii",
	"cup_optic_leupoldmk4",
	"hlc_optic_leupoldm3a"
];
//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhsgref_30rnd_556x45_vhs2",
	"30Rnd_65x39_caseless_msbs_mag",
	
	//Pistol Ammo
	"rhsusf_mag_17Rnd_9x19_FMJ",
	"11Rnd_45ACP_Mag"
];

private _itemAmmoTracer = 
[
	"rhsgref_30rnd_556x45_vhs2_t",
	"30Rnd_65x39_caseless_msbs_mag_Tracer"
];

private _itemAmmoAR = 
[
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_M856A1_soft_pouch",
	"200Rnd_65x39_cased_Box_Red",
	"200Rnd_65x39_cased_Box_Tracer_Red"
];

private _itemAmmoMAT = 
[
	"rhs_mag_smaw_HEAA",
	"rhs_mag_smaw_HEDP",
	"rhs_mag_smaw_SR"
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
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"HandGrenade"
];

//Special
private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51_m80a1epr",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"130Rnd_338_Mag"
];

private _itemAmmoHAT =
[
	"rhs_fgm148_magazine_AT"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"rhsusf_m112_mag",
	"rhsusf_m112x4_mag",
	"MineDetector",
	"ToolKit",
	"ACE_EntrenchingTool",
	"ace_marker_flags_black",
	"ace_marker_flags_blue",
	"ace_marker_flags_green",
	"ace_marker_flags_orange",
	"ace_marker_flags_purple",
	"ace_marker_flags_red",
	"ace_marker_flags_white",
	"ace_marker_flags_yellow",
	"ACE_SpraypaintBlack",
	"ACE_SpraypaintBlue",
	"ACE_SpraypaintGreen",
	"ACE_SpraypaintRed",
	"ACE_SpraypaintWhite",
	"ACE_SpraypaintYellow"
];

private _itemAmmoSN =
[
	"rhsusf_mag_10Rnd_STD_50BMG_M33",
	"rhsusf_mag_10Rnd_STD_50BMG_mk211",
	"5Rnd_127x108_Mag",
	"5Rnd_127x108_APDS_Mag"
];
//********************************************************************************//
// DLC stuff
//********************************************************************************//

private _ownedDLCs = getDLCs 1; // DLC check, Credit to MajorDanvers
private _hasApex = 395180 in _ownedDLCs;
private _hasContact = 1021790 in _ownedDLCs;
private _hasMarksmen = 332350 in _ownedDLCs;
private _hasLoW = 571710 in _ownedDLCs;

if (_hasApex) then 
{
	_itemUniform append 
	[
		"aegis_ccu_cu_mtp"	
	];
	
    _itemCosmetic append 
	[
		"G_Combat_Goggles_tna_F",
		"G_Balaclava_TI_blk_F",
		"G_Balaclava_TI_G_blk_F",
		"G_Balaclava_TI_tna_F",
		"G_Balaclava_TI_G_tna_F",
		"aegis_combat_gogg_blk",
		"aegis_bala_light_blk",
		"aegis_bala_light_gogg_blk",
		"aegis_bala_light_eaf",
		"aegis_bala_light_gogg_eaf",
		"aegis_bala_light_mtp",
		"aegis_bala_light_gogg_mtp",
		"aegis_bala_light_tropic",
		"aegis_bala_light_gogg_tropic",
		"aegis_bala_light_wdl",
		"aegis_bala_light_gogg_wdl",	
		"aegis_bala_ti_sand",
		"aegis_bala_ti_gogg_sand"	
    ];

    _itemWeapAR append 
	[
        "optic_ERCO_blk_F"
    ];
	
    _itemWeapMG append 
	[
        "optic_ERCO_blk_F"
    ];

    _itemST append 
	[
        "optic_ERCO_blk_F"
    ];		
};

if (_hasContact) then 
{
	_itemCosmetic append 
	[
		"G_Blindfold_01_black_F",
		"G_Blindfold_01_white_F"
	];

	_itemWeapRifle append 
	[
		"arifle_MSBS65_black_F",
		//funny scope
		"optic_ico_01_black_f"
	];
	
	_itemWeapGL append 
	[
		"arifle_MSBS65_GL_black_F"
	];
	
};

if (_hasMarksman) then 
{

	_itemWeapSN append 
	[
		"optic_KHS_blk",
		"optic_AMS"
	];
	
	_itemWeapMG append 
	[
		"MMG_02_black_F"
	];

};
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (AT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapLAT + _itemWeapMAT + _itemAmmo + _itemAmmoTracer + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemWeapLAT + _itemFAC + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "ammg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapHAT + _itemAmmo + _itemAmmoTracer + _itemAmmoHAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemAmmoHAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgearCrew + _itemBackpack + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgearCrew + _itemBackpack + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};	
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgearPilot + _itemBackpack + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};	
	//Jet Pilot
	case (_unitRole == "jp") : 
	{
		[arsenal, (_itemGear + _itemUniformJetPilot + _itemVestJetPilot + _itemHeadgearJetPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};	
	//Sniper
	case (_unitRole == "sn") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapSN + _itemWeapPistol + _itemAmmo + _itemAmmoSN + _itemST + _itemBino + _itemExplosive)] call ace_arsenal_fnc_initBox;		
	};
	//Spotter
	case (_unitRole == "spt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapGL + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemAmmoTracer + _itemST + _itemAmmoSN + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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