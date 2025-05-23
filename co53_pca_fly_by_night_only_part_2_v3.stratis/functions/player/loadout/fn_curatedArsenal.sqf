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
	//Common items shared by all classes except for vehicle crews
	
	//Uniform 
	"CUP_U_CRYE_G3C_M81_US",
	"CUP_U_CRYE_G3C_M81_US_V2",
	"CUP_U_CRYE_G3C_M81_US_V3",
	"CUP_U_CRYE_G3C_M81",
	"CUP_U_CRYE_G3C_M81_RGR_US",
	"CUP_U_CRYE_G3C_M81_RGR",
	"CUP_U_CRYE_G3C_M81_Tan_US",
	"CUP_U_CRYE_G3C_M81_Tan",
	
	//Vest
	"rhsusf_plateframe_rifleman",
	
	//Helmets
	"rhsusf_mich_bare",
	"rhsusf_mich_bare_alt",
	"rhsusf_mich_bare_headset",
	"rhsusf_mich_bare_norotos",
	"rhsusf_mich_bare_norotos_alt",
	"rhsusf_mich_bare_norotos_alt_headset",
	"rhsusf_mich_bare_norotos_arc",
	"rhsusf_mich_bare_norotos_arc_alt",
	"rhsusf_mich_bare_norotos_arc_headset",
	
	"rhsusf_mich_bare_semi",
	"rhsusf_mich_bare_alt_semi",
	"rhsusf_mich_bare_semi_headset",
	"rhsusf_mich_bare_norotos_semi",
	"rhsusf_mich_bare_norotos_alt_semi",
	"rhsusf_mich_bare_norotos_alt_semi_headset",
	"rhsusf_mich_bare_norotos_arc_semi",
	"rhsusf_mich_bare_norotos_arc_alt_semi",
	"rhsusf_mich_bare_norotos_arc_semi_headset",
	
	"rhsusf_mich_bare_tan",
	"rhsusf_mich_bare_alt_tan",
	"rhsusf_mich_bare_tan_headset",
	"rhsusf_mich_bare_norotos_tan",
	"rhsusf_mich_bare_norotos_alt_tan",
	"rhsusf_mich_bare_norotos_alt_tan_headset",
	"rhsusf_mich_bare_norotos_arc_tan",
	"rhsusf_mich_bare_norotos_arc_alt_tan",
	"rhsusf_mich_bare_norotos_arc_tan_headset",
	//Hats
	"rhs_Booniehat_m81",
	"bear_bdu_booniehat_m81",
	
	//Backpack
	"rhsusf_assault_eagleaiii_coy",
	"rhsusf_falconii_coy"
];

private _itemGearGren = 
[
	//Vest
	"rhsusf_spcs_ucp_grenadier"
];

private _itemGearMedic = 
[
	//Vest 
	"rhsusf_plateframe_medic"
];

private _itemGearMG = 
[
	//Vest
	"rhsusf_plateframe_machinegunner"
];

private _itemGearLeader = 
[
	//Vest
	"immersion_cigs_cigar0",
	"rhsusf_plateframe_grenadier",
	"rhsusf_plateframe_teamleader",
	"CUP_H_USA_Boonie_wdl",
	"bear_bdu_8point_m81",
	"aegis_milcap_m81"
	
	
];

private _itemGearCrew = 
[
	//Uniform 
	"CUP_U_CRYE_G3C_M81_US",
	"CUP_U_CRYE_G3C_M81_US_V2",
	"CUP_U_CRYE_G3C_M81_US_V3",
	"CUP_U_CRYE_G3C_M81",
	"CUP_U_CRYE_G3C_M81_RGR_US",
	"CUP_U_CRYE_G3C_M81_RGR",
	"CUP_U_CRYE_G3C_M81_Tan_US",
	"CUP_U_CRYE_G3C_M81_Tan",
	
	//Vest 
	"rhsusf_plateframe_light",
	
	//Headgear
	"rhsusf_hgu56p_tan",
	"rhsusf_hgu56p_visor_tan",
	
	//Backpack
	"rhsusf_assault_eagleaiii_ucp"
];

private _itemGearPilot = 
[
	//Uniform 
	"CUP_U_CRYE_G3C_M81_US",
	"CUP_U_CRYE_G3C_M81_US_V2",
	"CUP_U_CRYE_G3C_M81_US_V3",
	"CUP_U_CRYE_G3C_M81",
	"CUP_U_CRYE_G3C_M81_RGR_US",
	"CUP_U_CRYE_G3C_M81_RGR",
	"CUP_U_CRYE_G3C_M81_Tan_US",
	"CUP_U_CRYE_G3C_M81_Tan",
	
	//Vest 
	"rhsusf_plateframe_light",
	
	//Headgear
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_mask",
	"rhsusf_hgu56p_mask_mo",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_visor_mask",
	"rhsusf_hgu56p_visor_mask_mo",
	"rhsusf_hgu56p_mask_smiley",
	"rhsusf_hgu56p_visor_mask_smiley",
	"ACE_NVG_Wide_Black",
	//Backpack
	"pca_backpack_invisible"
];

private _itemCosmetic = 
[
//Face
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
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
	"G_Spectacles_Tinted",
	"aegis_bandanna_kawaii",
	"aegis_cigarette",
	"aegis_shades_yellow",
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
	"bear_balaclava1_black",
	"bear_bandana_m81",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_RUS_Balaclava_Ratnik_winter",
	"CUP_G_RUS_Balaclava_Ratnik_winter_v2",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_BLK_Scarf_White",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_TK_NeckScarf",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_White",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Grn_Scarf_Shades_Beard",
	"CUP_G_Grn_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"usm_kneepads_blk",
	"usm_swdgoggles",
	"usm_gigloves",
	"usm_giglovesscarf",
	"usm_giglovesscarf2",
	"usm_scarf",
	"usm_scarf2",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"sfp_peltor_comtac3",
	"pca_balaclava_blk_1",
	"pca_balaclava_blk_2",
	"pca_balaclava_oli_1",
	"pca_balaclava_oli_2",
	"rhs_scarf",
	"rhs_ess_black",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh2_gogg_white",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"rhssaf_veil_Green",
	
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
	
	//HMD
	"CUP_NVG_GPNVG_black"
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
	"ItemWatch",
	"ToolKit"
];

private _itemBino = 
[
	"Binocular"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F",
	"aegis_radiobag_cbr"
];

private _itemEng = 
[
	"ACE_Clacker",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"rhsusf_m112_mag",
	"rhsusf_m112x4_mag"
];

private _itemAcc = 
[
	//Optic
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_552_d",
	"rhsusf_acc_rx01_nofilter",
	"rhsusf_acc_rx01_nofilter_tan",
	"rhsusf_acc_eotech_552_wd",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_eotech_xps3",
	
	
	"sma_acc_cmore_blk",
	"sma_acc_cmore_grn",
	"sma_acc_micro_t2",
	"sma_acc_eotech_552_blk",
	"sma_acc_eotech_552_kf_blk",
	"sma_acc_eotech_552_kf_od",
	"sma_acc_eotech_552_kf_tan",
	"sma_acc_eotech_xps3_blk",
	"sma_acc_eotech_xps3_od",
	"sma_acc_eotech_xps3_tan",
	
	
	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_vortexrazor_uh1_coyote",
	"cup_optic_vortexrazor_uh1_od",
	"cup_optic_mars",
	"cup_optic_compm2_low",
	"cup_optic_compm2_low_coyote",
	"cup_optic_compm2_low_od",
	"cup_optic_eotech553_black",
	"cup_optic_eotech553_coyote",
	"cup_optic_eotech553_od",

	"cup_optic_microt1",
	"cup_optic_microt1_coyote",
	"cup_optic_microt1_od",
	"cup_optic_compm4",
	
	"cup_optic_trijiconrx01_black",
	"cup_optic_trijiconrx01_desert",
	"cup_optic_trijiconrx01_od",
	
	"optic_holosight_blk_f",
	"optic_holosight",
	
	//Grip
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip2_tan",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip3_tan",
	"rhsusf_acc_grip4",
	"rhsusf_acc_grip4_bipod",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_kac_grip_saw_bipod",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_rvg_de",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_saw_lw_bipod",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_tdstubby_tan",
	
	"rhsusf_acc_grip_m203_blk",
	"rhsusf_acc_grip_m203_d",
	"rhsusf_acc_grip_m203_wd",
	
	"hlc_bipod_utgshooters",
	"cup_bipod_harris_1a2_l_blk",
	
	//Tactical Device
	"cup_acc_anpeq_15_black",
	"cup_acc_anpeq_15_black_top",
	"cup_acc_anpeq_15",
	"cup_acc_anpeq_15_tan_top",
	"cup_acc_anpeq_15_flashlight_black_l",
	"cup_acc_anpeq_15_flashlight_tan_l",
	"cup_acc_anpeq_15_top_flashlight_black_l",
	"cup_acc_anpeq_15_top_flashlight_tan_l",
	"cup_acc_llm_black_flashlight",
	
	//muzzle
	"ptv_acc_rotexv",
	"rhsusf_acc_rotex5_grey",
	"rhsusf_acc_nt4_black",
	"rhsusf_acc_nt4_tan",
	
	"sma_silencer_gemtech_halo_556_blk",
	"sma_silencer_gemtech_halo_556_blk_hwg",
	"sma_silencer_gemtech_halo_556_tan",
	"sma_silencer_gemtech_halo_556_tan_hwt",
	
	"sma_silencer_kac_nt4_blk",
	"sma_silencer_kac_nt4_blk_hwb",
	"sma_silencer_kac_nt4_blk_hwg",
	"sma_silencer_kac_nt4_tan",
	"sma_silencer_kac_nt4_tan_hwt"
	
];

private _itemAccSpec = 
[
	"rhsusf_acc_ACOG",
	"rhsusf_acc_ACOG2",
	"rhsusf_acc_ACOG3",
	"rhsusf_acc_ACOG_RMR"
];

private _itemWeapRifle = 
[
	"rhs_weap_m27iar",
	"rhs_weap_m27iar_grip",
	"rhs_weap_m4a1_carryhandle_mstock",
	"rhs_weap_m4a1_blockII",
	"rhs_weap_m4a1_blockII_bk",
	"rhs_weap_m4a1_blockII_d",
	"rhs_weap_m4a1_blockII_wd",
	"rhs_weap_m4a1_mstock",
	"rhs_weap_m4a1_d_mstock",
	"rhs_weap_m4a1_wd_mstock",
	"rhs_weap_mk18_KAC",
	"rhs_weap_mk18_KAC_bk",
	"rhs_weap_mk18_KAC_d",
	"rhs_weap_mk18_KAC_wd",
	"rhs_weap_m16a4_carryhandle",
	"rhs_weap_m16a4_imod",
	"rhs_weap_hk416d10_LMT",
	"rhs_weap_hk416d10_LMT_d",
	"rhs_weap_hk416d10_LMT_wd",
	"rhs_weap_hk416d145",
	"rhs_weap_hk416d145_d",
	"rhs_weap_hk416d145_d_2",
	"rhs_weap_hk416d145_wd",
	"rhs_weap_hk416d145_wd_2",
	
	"bear_weap_m4a1_blockII_green",
	"bear_weap_m4a1_blockII_tan",
	"bear_weap_mk18_KAC_green",
	"bear_weap_mk18_KAC_tan"
	
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_hk416d10_m320",
	"rhs_weap_hk416d145_m320",
	"rhs_weap_m16a4_carryhandle_M203",
	"rhs_weap_m16a4_imod_M203",
	"rhs_weap_m4a1_carryhandle_m203S",
	"rhs_weap_m4a1_blockII_M203",
	"rhs_weap_m4a1_blockII_M203_bk",
	"rhs_weap_m4a1_blockII_M203_d",
	"rhs_weap_m4a1_blockII_M203_wd",
	"rhs_weap_m4a1_carryhandle_m203S",
	"rhs_weap_m4a1_m320",
	"rhs_weap_m4a1_m203s_d",
	"rhs_weap_m4a1_m203s_wd",
	"rhs_weap_mk18_m320",
	

	
	"bear_weap_m4a1_blockII_M203_green",
	"bear_weap_m4a1_blockII_M203_tan",
	"bear_weap_mk18_m320_desert",
	"bear_weap_mk18_m320_tan",
	"bear_weap_mk18_m320_green"
	
	
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m249_pip_S_para",
	"bear_weap_m249_pip_S_para_fde"
];

private _itemWeapMG = 
[
	"rhs_weap_m240B"
];

private _itemWeapDMR = 
[
	"rhs_weap_m14ebrri"
];

private _itemWeapLAT = 
[
	"pca_weap_m136cs"
];

private _itemWeapMAT = 
[
	"rhs_weap_maaws"
];

private _itemWeapPistol = 
[
	"hgun_ACPC2_F",
	"CUP_hgun_Colt1911"
];

private _itemAmmo = 
[
	//Rifle Ammo
	
	"ACE_30Rnd_556x45_Stanag_Tracer_Dim",
	"pca_mag_30Rnd_556x45_M856A1_EMAG",
	"pca_mag_30Rnd_556x45_M856A1_EMAG_Tan",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Blk",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 
	
	//Pistol Ammo
	"rhsusf_mag_7x45acp_MHP",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67",
	"B_IR_Grenade",
	"ACE_IR_Strobe_Item",
	
	//Memes
    "murshun_cigs_matches",
    "murshun_cigs_lighter",
    "murshun_cigs_cigpack"
];

private _itemAmmoAR = 
[
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_M856A1_soft_pouch"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51_m80a1epr"
];

private _itemAmmoMAT = 
[
	"rhs_mag_maaws_HEAT",
	"rhs_mag_maaws_HEDP",
	"rhs_mag_maaws_HE"
];

private _itemAmmoDMR = 
[
	"rhsusf_20Rnd_762x51_m118_special_Mag"
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
	"UGL_FlareYellow_F",
	"UGL_FlareCIR_F",
	"ACE_40mm_Flare_ir"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol  + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (Light Anti-Tank)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAT + _itemWeapPistol + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
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
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////	ROLES NOT USED IN BASE TEMPLATE	////////////////////////////////////////////////////////
	
	//Designated Marksman
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapDMR + _itemWeapPistol + _itemAmmo + _itemAmmoDMR)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Machine Gunner
	case (_unitRole == "hmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Machine Gunner
	case (_unitRole == "ahmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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