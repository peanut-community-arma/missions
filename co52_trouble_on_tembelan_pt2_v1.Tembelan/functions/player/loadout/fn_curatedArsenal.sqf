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
	"U_B_UBACS_mtp_f",
	"U_B_UBACS_vest_mtp_f",
	"U_B_UBACS_tshirt_mtp_f"
];

private _itemUniformJetPilot = 
[
	"U_I_pilotCoveralls"
];

//Vest
private _itemVest = 
[
	"V_PlateCarrier2_cbr",
	"V_PlateCarrier1_cbr"
];

private _itemVestJetPilot = 
[
	"pca_vest_invisible_plate"
];

//Headgear 
private _itemHeadgear = 
[
	"H_Bandanna_mcamo",
	"H_Booniehat_mcamo",
	"H_HelmetB_plain_mcamo",
	"H_HelmetSpecB_mcamo",
	"H_HelmetSpecB_light_mcamo",
	"H_MilCap_mcamo",
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
	"B_AssaultPack_mcamo"
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
	"$NONE_aegis_bandanna_estdc$",
	"G_Bandanna_kawaii",
	"$NONE_aegis_bandanna_latpat$",
	"G_Bandanna_shemag",	
	"G_Headset_light",
	"G_Shemag_tan",
	"CUP_FR_NeckScarf3",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_oli",
	"G_Shemag_khk",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shemag_tan",
	"CUP_FR_NeckScarf3",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_oli",
	"G_Shemag_khk",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shades_Yellowred",
	"$NONE_aegis_shemag_cbr$",
	"G_Shemag_shades",
	"$NONE_aegis_shemag_tactical_cbr$",
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
	"G_Tactical_Yellow",
	"G_Tactical_Camo",
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
	"$NONE_usm_kneepads_blk$",
	"$NONE_usm_kneepads_safariland$",
	"$REMOVE_usm_swdgoggles$",
//	"$NONE_usm_gigloves$",
//	"$NONE_usm_giglovesscarf$",
//	"$NONE_usm_giglovesscarf2$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
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
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_cb$",
	"$NONE_pca_nvg_face_shield_khk$",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_tan$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_cb$",
	"$NONE_pca_nvg_face_shield_shemagh_khk$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_tan$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",
	"$NONE_pca_nvg_shemagh_lowered_cbr$",
	"pca_nvg_shemagh_lowered_khk",
	"$NONE_pca_nvg_shemagh_loop_bge$",
	"$NONE_pca_nvg_shemagh_loop_blk$",
	"$NONE_pca_nvg_shemagh_loop_coy$",
	"$NONE_pca_nvg_shemagh_loop_gold$",
	"$NONE_pca_nvg_shemagh_loop_grn$",
	"$NONE_pca_nvg_shemagh_loop_khk$",
	"$NONE_pca_nvg_shemagh_loop_tan$",
	"$NONE_pca_nvg_shemagh_loop_white$",
	"$NONE_pca_nvg_shemagh_loop_bge$",
	"$NONE_pca_nvg_shemagh_mesh_blk$",
	"$NONE_pca_nvg_shemagh_mesh_coy$",
	"$NONE_pca_nvg_shemagh_mesh_gold$",
	"$NONE_pca_nvg_shemagh_mesh_grn$",
	"$NONE_pca_nvg_shemagh_mesh_khk$",
	"$NONE_pca_nvg_shemagh_mesh_tan$",
	"$NONE_pca_nvg_shemagh_mesh_white$",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"Goggles",
	"Goggles_grn_F",
	"Goggles_tna_F",
//	"$NONE_usm_nvg_kneepads_blk$",
//	"pca_nvg_gloves_wool",
//	"$NONE_usm_nvg_giglovesscarf$",
//	"$NONE_usm_nvg_giglovesscarf2$",
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
	"$NONE_usm_nvg_swdgoggles$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$"
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
	"optic_LRCO_blk_F",
	"ACE_optic_Arco_2D",
	"ACE_optic_Arco_PIP",
	"ACE_optic_MRCO_2D",
	"ACE_optic_Hamr_2D",
	"ACE_optic_Hamr_PIP",	
	"rhsusf_acc_acog_rmr",
	"rhsusf_acc_elcan",
	"$NONE_sma_acc_elcan_specter_blk$",
	"cup_optic_elcan_specterdr_black",
	"cup_optic_elcan_specterdr_rmr_black",
	"cup_optic_elcan",
	"cup_optic_hensoldtzo",
	"cup_optic_hensoldtzo_rds",
	"$NONE_hlc_optic_hensoldtzo$",
	"$NONE_hlc_optic_hensoldtzo_2d$",
	"$NONE_hlc_optic_hensoldtzo_rds$",
	"$NONE_hlc_optic_hensoldtzo_rds_2d$",
	"rhsusf_acc_su230",
	"rhsusf_acc_su230_mrds",
	"cup_optic_acog_ta01b_black",
	"cup_optic_acog_ta01b_rmr_black",
	"cup_optic_rco",
	"cup_optic_acog_ta01nsn_rmr_black",
	"cup_optic_acog2",
	"cup_optic_acog",
	"H_HelmetB_camo_mcamo",
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
	"$NONE_hlc_optic_docterr$",
	"$NONE_hlc_optic_ism1400a7$",
	"$NONE_hlc_optic_romeov$",
	"ptv_acc_compm4s",
	"ptv_acc_aimcs",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"ptv_acc_eot552",
	"$NONE_rksl_optic_eot552$",
	"$NONE_rksl_optic_eot552x$",
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
	"$NONE_sma_acc_barska_rds$",
	"$NONE_sma_acc_cmore_blk$",
	"$NONE_sma_acc_eotech_552_blk$",
	"$NONE_sma_acc_eotech_552_kf_blk$",
	"$NONE_sma_acc_eotech_xps3_blk$",
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_tasco_propoint$",
	"$NONE_sma_acc_tasco_propoint_glare$",
	"$NONE_sma_acc_vortex_blk$",
	"$NONE_sma_acc_vortex_lc_blk$",
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
	"ACE_Flashlight_Maglite_ML300L",
	"pca_flashlight_sf",
	"ACE_Flashlight_Maglite_ML300L",
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
	"optic_LRCO_blk_F",
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
	"hgun_Pistol_heavy_01_black_F"
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
	"optic_LRCO_blk_F",
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
	"$NONE_hlc_optic_leupoldm3a$"
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
		"U_B_UBACS_mtp_f"	
	];
	
    _itemCosmetic append 
	[
		"G_Combat_Goggles_tna_F",
		"G_Balaclava_TI_blk_F",
		"G_Balaclava_TI_G_blk_F",
		"G_Balaclava_TI_tna_F",
		"G_Balaclava_TI_G_tna_F",
		"G_Combat_Goggles_blk_F",
		"G_Balaclava_light_blk_F",
		"G_Balaclava_light_G_blk_F",
		"G_Balaclava_light_eaf_F",
		"G_Balaclava_light_G_eaf_F",
		"G_Balaclava_light_mtp_F",
		"G_Balaclava_light_G_mtp_F",
		"G_Balaclava_light_tropic_F",
		"G_Balaclava_light_G_tropic_F",
		"G_Balaclava_light_wdl_F",
		"G_Balaclava_light_G_wdl_F",	
		"G_Balaclava_TI_alt_F",
		"G_Balaclava_TI_G_alt_F"	
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
		"arifle_MSBS65_black_F"//,
		//funny scope
		//"optic_ico_01_black_f"
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