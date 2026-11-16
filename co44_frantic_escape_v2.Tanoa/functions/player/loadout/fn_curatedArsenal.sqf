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
	"U_B_T_Soldier_F",
	"Atlas_U_B_T_JSOC_StealthUniform_F",
	"U_B_T_Soldier_SL_F"
];

//Vest
private _itemVest = 
[
	"V_PlateCarrier2_tna_F"
];

//Headgear 
private _itemHeadgear = 
[
	"H_Bandanna_tna_F",
	"H_Booniehat_tna_F",
	"H_Cap_grn",
	"H_HelmetB_Enh_tna_F",
	"H_MilCap_tna_F"
];

//Backpack 
private _itemBackpack = 
[
	"B_AssaultPack_tna_F"
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
	"G_Balaclava_lowprofile",
	"G_Balaclava_Skull1",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_CandySkull",
	"G_Bandanna_OrangeFlame1",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_shades",
	"G_Bandanna_Skull1",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Skull2",
	"G_Bandanna_sport",
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
	"G_Bandanna_kawaii",
	"G_Bandanna_shemag",
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"CUP_FR_NeckScarf3",
	"G_Shemag_white",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shades_Yellowred",
	"CUP_FR_NeckScarf5",
	"$NONE_aegis_shemag_shades_red$",
	"G_Shemag_red",
	"G_Shemag_white",
	"$NONE_aegis_shemag_shades_white$",
	"G_Shemag_white",
	"G_Tactical_Yellow",
	"G_Tactical_Camo",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Skull",
	"CUP_G_ESS_KHK_Facewrap_White",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_BLK_Scarf_White",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_PMC_Facewrap_Black",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
	"CUP_PMC_Facewrap_Red",
	"CUP_PMC_Facewrap_Skull",
	"CUP_PMC_Facewrap_Smilie",
	"CUP_PMC_Facewrap_Winter",
	"CUP_G_PMC_Facewrap_Winter_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Winter_Glasses_Ember",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_White",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"CUP_G_White_Scarf_Shades",
	"CUP_G_White_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard",
	"CUP_G_Beard_Shades_Black",
	"CUP_G_Beard_Shades_Blonde",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"CUP_PMC_G_thug",
	"$REMOVE_usm_swdgoggles$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"pca_balaclava_blk_1",
	"pca_balaclava_blk_2",
	"pca_balaclava_mcalp",
	"pca_balaclava_gogg_mcalp",
	"pca_bandana_mcalp",
	"rhssaf_veil_Green",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhsusf_shemagh_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh2_gogg_white",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
	
	
	//Murshun cigpack and lighter
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack",
	"murshun_cigs_matches",
	
	//NVG slot
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",
	"$NONE_pca_nvg_shemagh_loop_blk$",
	"$NONE_pca_nvg_shemagh_loop_white$",
	"$NONE_pca_nvg_shemagh_mesh_blk$",
	"$NONE_pca_nvg_shemagh_mesh_white$",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_white",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"Goggles",
	"Goggles_grn_F",
	"Goggles_tna_F",
	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_1$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"$NONE_nvg_scrim_wdl_leaves_3$"
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
	"ItemGPS"
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
	"ACE_surgicalKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_30Rnd_762x39mm_polymer_89",
	"rhs_30Rnd_762x39mm_polymer_tracer",
	"pca_mag_30Rnd_545x39_AK12_Blk_7N22",
	"pca_mag_30Rnd_545x39_AK12_Blk_7T3M",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
	"fwa_20rnd_762x51_ar10",
	"fwa_20rnd_762x51_ar10_tracer_red",
	"rhs_20rnd_9x39mm_SP6",
	"CUP_30Rnd_9x39_SP5_VIKHR_M",
	"hlc_42Rnd_556x45_EPR_AUG",
	"hlc_42Rnd_556x45_EPR_T_AUG",
	"fwa_20rnd_762x51_bm59",
	"fwa_20rnd_762x51_bm59_tracer_red",
	"fwa_20rnd_3006_m1918_bar",
	"fwa_20rnd_3006_m1918_bar_tracer_red",
	"30Rnd_9x21_Mag",
	"rhssaf_30rnd_556x45_EPR_G36",
	"rhssaf_30rnd_556x45_Tracers_G36",
	"CUP_30Rnd_762x39_CZ807",
	"CUP_30Rnd_TE1_Red_Tracer_762x39_CZ807",
	"fwa_20rnd_280_em2",
	"fwa_20rnd_280_em2_tracer_red",
	"rhs_mag_20Rnd_762x51_m80_fnfal",
	"rhs_mag_20Rnd_762x51_m62_fnfal",
	"amf_30Rnd_556x45_M855A1_G2_Stanag",
	"amf_30Rnd_556x45_M856A1_G2_Stanag",
	"fwa_10rnd_3006_fn49",
	"fwa_10rnd_3006_fn49_tracer_red",
	"rhs_mag_20Rnd_SCAR_762x51_m80_ball_bk",
	"rhs_mag_20Rnd_SCAR_762x51_m62_tracer_bk",
	"hlc_30Rnd_300BLK_PMAG",
	"CUP_30Rnd_545x39_Fort224_M",
	"CUP_30Rnd_TE1_Red_Tracer_545x39_Fort224_M",
	"30Rnd_65x39_caseless_msbs_mag",
	"30Rnd_65x39_caseless_msbs_mag_Tracer",
	"CUP_35Rnd_556x45_Galil_Mag",
	"CUP_35Rnd_556x45_Red_Tracer_Galil_Mag",
	"CUP_25Rnd_762x51_Galil_Mag",
	"CUP_25Rnd_762x51_Red_Tracers_Galil_Mag",
	"hlc_30Rnd_556x45_B_HK33",
	"hlc_30Rnd_556x45_T_HK33",
	"30Rnd_65x39_caseless_black_mag",
	"30Rnd_65x39_caseless_black_mag_Tracer",
	"hlc_20Rnd_762x51_B_G3",
	"hlc_20Rnd_762x51_T_G3",
	"hlc_30Rnd_9x19_FMJ_MP5",
	"hlc_30Rnd_10x25_FMJ_MP5",
	"rhsgref_5Rnd_792x57_kar98k",
	"30Rnd_65x39_caseless_green",
	"30Rnd_65x39_caseless_green_mag_Tracer",
	"fwa_30rnd_762x33_m2_carbine",
	"fwa_30rnd_762x33_m2_carbine_tracer_red",
	"rhsgref_8Rnd_762x63_M2B_M1rifle",
	"rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle",
	"20Rnd_762x51_Mag",
	"ACE_20Rnd_762x51_Mag_Tracer",
	"fwa_30rnd_45acp_m1a1_thompson",
	"fwa_30rnd_45acp_m1a1_thompson_tracer_red",
	"rhsgref_30rnd_556x45_m21",
	"rhsgref_30rnd_556x45_m21_t",
	"rhsgref_30rnd_1143x23_M1911B_SMG",
	"rhsgref_30rnd_1143x23_M1T_SMG",
	"CUP_10Rnd_50BW_Mag_M4_M",
	"CUP_30Rnd_45ACP_MAC10_M",
	"CUP_30Rnd_45ACP_Green_Tracer_MAC10_M",
	"fwa_10rnd_75_mas49",
	"fwa_10rnd_75_mas49_tracer_red",
	"fwa_32Rnd_9x19_mat49",
	"fwa_32Rnd_9x19_mat49_tracer_red",
	"bnae_10Rnd_303",
	"fwa_32rnd_9x19_mp40",
	"fwa_32rnd_9x19_mp40_tracer_red",
	"rhsgref_30Rnd_792x33_SmE_StG",
	"rhsusf_mag_40Rnd_46x30_AP",
	"30Rnd_580x42_Mag_F",
	"30Rnd_580x42_Mag_Tracer_F",
	"CUP_20Rnd_9x39_SP5_GROZA_M",
	"50Rnd_570x28_SMG_03",
	"CUP_50Rnd_570x28_Red_Tracer_P90_M",
	"CUP_30Rnd_9x19AP_Vityaz",
	"CUP_64Rnd_9x19_Bizon_M",
	"CUP_64Rnd_Red_Tracer_9x19_Bizon_M",
	"rhs_mag_9x19mm_7n31_44",
	"fwa_35rnd_762x25mm_pps43",
	"fwa_35rnd_762x25mm_pps43_tracer_green",
	"fwa_71rnd_762x25mm_ppsh",
	"fwa_71rnd_762x25mm_ppsh_tracer_green",
	"ptv_100Rnd_65x25_CBJ_Mag",
	"ptv_100Rnd_65x25_CBJ_Mag_Tracer_Red",
	"ptv_100Rnd_9x19_CBJ_Mag",
	"ptv_100Rnd_9x19_CBJ_Mag_Tracer_Red",
	"hlc_30Rnd_68x43_FMJ_STANAG",
	"hlc_30Rnd_68x43_Tracer_STANAG",
	"fwa_20Rnd_556x45_ruger_mini14",
	"fwa_20Rnd_556x45_ruger_mini14_tracer_red",
	"rhs_30Rnd_762x39mm_Savz58",
	"rhs_30Rnd_762x39mm_Savz58_tracer",
	"rhsgref_20rnd_765x17_vz61",
	"CUP_10Rnd_762x39_SaigaMk03_M",
	"hlc_24Rnd_75x55_FMJ_STGW57",
	"hlc_24Rnd_75x55_T_STGW57",
	"hlc_30Rnd_556x45_EPR_SG550",
	"hlc_30Rnd_556x45_EPR_T_SG550",
	"fwa_10rnd_762x39_sks",
	"fwa_10rnd_762x39_sks_tracer",
	"hlc_5rnd_3006_B_1903",
	"hlc_5rnd_3006_T_1903",
	"fwa_32rnd_9x19_sterling",
	"fwa_32rnd_9x19_sterling_tracer_red",
	"hlc_25Rnd_9x19mm_FMJ_AUG",
	"10Rnd_50BW_Mag_F",
	"CUP_72Rnd_9x19_UZI_M",
	"30Rnd_45ACP_Mag_SMG_01",
	"30Rnd_45ACP_Mag_SMG_01_Tracer_Red",
	"fwa_10rnd_762x45_vz52",
	"fwa_10rnd_762x45_vz52_tracer",
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_M856A1_soft_pouch",	
	"rhsgref_5Rnd_762x54_m38",
	
	"6Rnd_12Gauge_Slug",
	"6Rnd_12Gauge_Pellets",
	
	//Pistol Ammo
	"rhs_18rnd_9x21mm_7N29",
	"rhs_18rnd_9x21mm_7BT3",
	"rhs_mag_9x18_8_57N181S",
	"hlc_1Rnd_Plasma_DL44",
	"hlc_1Rnd_Plasma_DL44_green",
	"CUP_13Rnd_9x19_Browning_HP",
	"6Rnd_45ACP_Cylinder",
	"9Rnd_45ACP_Mag",
	"16Rnd_9x21_Mag",
	"rhssaf_mag_15Rnd_9x19_FMJ",
	"CUP_7Rnd_50AE_Deagle",
	"11Rnd_45ACP_Mag",
	"rhsusf_mag_17Rnd_9x19_FMJ",
	"CUP_21Rnd_9x19_M17_Black",
	"rhsusf_mag_15Rnd_9x19_FMJ",
	"hlc_10Rnd_763x25_B_C96",
	"hlc_10Rnd_9x19_B_C96",
	"hlc_20Rnd_763x25_B_M712",
	"CUP_12Rnd_45ACP_mk23",
	"rhs_mag_9x19_7n31_17",
	"ptv_12Rnd_45ACP_USP",
	"bnae_6Rnd_357M",
	"hlc_12Rnd_40SW_FMJ_P226",
	"CUP_6Rnd_45ACP_M",
	"CUP_32Rnd_9x19_TEC9",
	"rhs_mag_762x25_8",
	"rhs_mag_6x8mm_mhp"
];

private _itemAmmoAR = 
[
	"hlc_50Rnd_762x51_B_XMAG",
	"hlc_50Rnd_762x51_M_XMAG",
	"hlc_50Rnd_762x51_T_XMAG",
	"fwa_30rnd_303_bren",
	"fwa_30rnd_303_bren_tracer_red",
	"fwa_100rnd_3006_m1919",
	"fwa_100rnd_3006_m1919_mixed",
	"fwa_100rnd_3006_m1919_tracer_red",
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"150Rnd_93x64_Mag",
	"ACE_150Rnd_93x64_Mag_red",
	"hlc_20Rnd_3006_B_M1941",
	"hlc_20rnd_3006_M_M1941",
	"hlc_20Rnd_3006_T_M1941",
	"hlc_30Rnd_762x51_B_M1941",
	"hlc_30Rnd_762x51_M_M1941",
	"hlc_30Rnd_762x51_T_M1941",
	"sps_200Rnd_556x45_M855A1_KAC_Box",
	"sps_200Rnd_556x45_M855A1_Mixed_KAC_Box",
	"sps_200Rnd_556x45_M856A1_Tracer_Red_KAC_Box",
	"CUP_45Rnd_Sa58_M",
	"CUP_45Rnd_Sa58_M_TracerR",
	"rhs_mag_100Rnd_556x45_M855A1_cmag",
	"rhs_mag_100Rnd_556x45_M855A1_cmag_mixed",
	"130Rnd_338_Mag",
	"ACE_130Rnd_338_Mag_green",
	"rhssaf_250Rnd_762x54R",
	"rhssaf_100rnd_556x45_EPR_G36",
	"rhsgref_296Rnd_792x57_SmE_belt",
	"rhsgref_296Rnd_792x57_SmK_alltracers_belt",
	"100Rnd_65x39_caseless_black_mag",
	"100Rnd_65x39_caseless_black_mag_tracer",
	"100Rnd_580x42_Mag_F",
	"100Rnd_580x42_Mag_Tracer_F",
	"150Rnd_762x54_Box",
	"150Rnd_762x54_Box_Tracer",
	"rhs_100Rnd_762x54mmR_7N26",
	"ptv_200Rnd_556x45_M855A1_m62_soft_pouch",
	"ptv_200Rnd_556x45_M855A1_mixed_m62_soft_pouch",
	"ptv_200Rnd_556x45_M856A1_tracer_m62_soft_pouch",
	"hlc_250Rnd_762x51_B_MG3",
	"hlc_250Rnd_762x51_M_MG3",
	"hlc_250Rnd_762x51_T_MG3",
	"fwa_100rnd_762x39mm_rpd",
	"fwa_100rnd_762x39mm_rpd_mixed",
	"fwa_100rnd_762x39mm_rpd_tracer",
	"75rnd_762x39_AK12_Mag_F",
	"75rnd_762x39_AK12_Mag_Tracer_F",
	"aegis_95Rnd_545x39_7N22_ak12",
	"aegis_95Rnd_545x39_mixed_7N22_ak12",
	"200Rnd_65x39_cased_Box",
	"200Rnd_65x39_cased_Box_Tracer_Red",
	"CUP_50Rnd_UK59_762x54R_Tracer",
		
	"bipod_01_f_blk",
	"rhsusf_acc_grip4_bipod"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellRed",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell"
];

private _itemExplosive = 
[
	"SmokeShell",
	"HandGrenade",
	"CUP_6Rnd_HE_GP25_M",
	"CUP_6Rnd_Smoke_GP25",
	"rhs_VOG25",
	"rhs_GRD40_White",
	"1Rnd_HE_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"rhsusf_mag_6Rnd_M397_HET",
	"rhsusf_mag_6Rnd_M433_HEDP",
	"rhsusf_mag_6Rnd_M441_HE",
	"rhsusf_mag_6Rnd_M714_white"
];

//Special
private _itemDM = 
[
	"ACE_5Rnd_127x99_Mag",
	"ACE_5Rnd_127x99_API_Mag",
	"10Rnd_127x54_Mag",
	"10Rnd_93x64_DMR_05_Mag",
	"CUP_5Rnd_93x64_CZ550",
	"CUP_10Rnd_762x51_CZ750",
	"CUP_10Rnd_762x51_CZ750_Tracer",
	"rhs_mag_20Rnd_SCAR_762x51_m118_special_bk",
	"rhs_mag_30Rnd_556x45_Mk262_PMAG",
	"rhsusf_5Rnd_300winmag_xm2010",
	"5Rnd_127x108_Mag",
	"5Rnd_127x108_APDS_Mag",
	"ACE_20Rnd_762x51_M118LR_Mag",
	"CUP_5Rnd_86x70_L115A1",
	"ACE_10Rnd_127x99_Mag",
	"ACE_10Rnd_127x99_API_Mag",
	"7Rnd_408_Mag",
	"ACE_7Rnd_408_305gr_Mag",
	"rhsusf_5Rnd_762x51_m118_special_Mag",
	"rhsusf_10Rnd_762x51_m118_special_Mag",
	"rhsusf_20Rnd_762x51_SR25_m118_special_Mag",
	"ACE_30Rnd_65_Creedmor_msbs_mag",
	"ACE_30Rnd_65_Creedmor_black_mag",
	"10Rnd_338_Mag",
	"ACE_20Rnd_65_Creedmor_mag",
	"hlc_30Rnd_68x43_OTM_STANAG",
	"rhs_10Rnd_762x54mmR_7N14",
	"rhs_5Rnd_338lapua_t5000",
	"hlc_30Rnd_556x45_SPR_G36",
	
	"ACE_Vector",
	"bipod_01_f_blk",
	"optic_lrps",
	"sp_fwa_scope_ar_delft3x25",
	"optic_dms_weathered_kir_f",
	"optic_sos",
	"ACE_ATragMX",
	"ACE_microDAGR"	
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc  + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio +  _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Designated Marksman
	case (_unitRole == "dm") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAmmo + _itemDM + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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