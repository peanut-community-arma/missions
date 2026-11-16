/**
	Adds a curated personal arsenal that can be accessed via ACE Self Interact by the players.
	
	Parameters:
	0: unit <OBJECT>
	
	UNIT MUST BE local
	
	Example:
	[player] call pca_fnc_curatedArsenal;
	
	Returns:
	NONE
*/

params ["_unit"];

if !(hasInterface) exitWith {};

private _unitRole = _unit getVariable ["tmf_assignGear_role", nil];

arsenal = "building" createVehicleLocal [0, 0, 0];
_unit setVariable ["startPos", getPosASL _unit];

// *************************************************************// 
// Unit Equipment
// *************************************************************// 
// Common
private _itemGear = [];

// uniform
private _itemUniform =
[
	"pca_g3_orshw"
];

private _itemUniformCrew =
[
	"pca_g3_orshw"
];

private _itemUniformPilot =
[
	"pca_g3_orshw"
];

// vest
private _itemVest =
[
	"s4_lbt_comms_coy",
	"s4_lbt_light_coy",
	"s4_lbt_medical_coy",
	"s4_lbt_operator_coy",
	"s4_lbt_teamleader_coy",
	"s4_lbt_weapons_coy",
	"s4_lbt_comms_aor2",
	"s4_lbt_light_aor2",
	"s4_lbt_medical_aor2",
	"s4_lbt_operator_aor2",
	"s4_lbt_teamleader_aor2",
	"s4_lbt_weapons_aor2",
	"s4_lbt_comms_od",
	"s4_lbt_light_od",
	"s4_lbt_medical_od",
	"s4_lbt_operator_od",
	"s4_lbt_teamleader_od",
	"s4_lbt_weapons_od",
	"milgp_v_mmac_hgunner_belt_cb",
	"milgp_v_mmac_light_tan",
	"milgp_v_mmac_light_cb",
	"milgp_v_mmac_medic_cb",
	"milgp_v_mmac_medic_belt_cb"
];

private _itemVestCrew =
[
	"s4_lbt_light_coy"
];

private _itemVestPilot =
[
	"s4_lbt_light_coy"
];

// headgear
private _itemHeadgear =
[
	"bear_opscore_ranger_green_cover",
	"bear_opscore_ranger_green_cover_pelt",
	"bear_opscore_ranger_green_cover_pelt_cam",
	"bear_opscore_ranger_green_cover_pelt_nsw",
	"bear_opscore_ranger_green_cover_pelt_nsw_cam",
	"bear_opscore_tan",
	"bear_opscore_tan_pelt",
	"bear_opscore_tan_pelt_cam",
	"bear_opscore_tan_pelt_nsw",
	"bear_opscore_tan_pelt_nsw_cam",
	"bear_opscore_aor2",
	"bear_opscore_aor2_pelt",
	"bear_opscore_aor2_pelt_cam",
	"bear_opscore_aor2_pelt_nsw",
	"bear_opscore_aor2_pelt_nsw_cam"
];

private _itemHeadgearCrew =
[
	"rhsusf_cvc_helmet"
];

private _itemHeadgearPilot =
[
	"rhsusf_ihadss"
];

// backpack
private _itemBackpack =
[
	"B_AssaultPack_cbr",
	"B_AssaultPack_khk",
	"B_AssaultPack_cbr",
	"pca_eagle_a3_cbr",
	"pca_eagle_a3_khk",
	"bear_eagleaiii_aor2",
	"pca_backpack_invisible",
	"pca_backpack_invisible_large"
];

private _itemBackpackCrew =
[
	"pca_backpack_invisible"
];

private _itemBackpackPilot =
[
	"pca_backpack_invisible"
];

// Cosmetic
private _itemCosmetic =
[
	// face
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"m40_gas_mask_02",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Combat",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Green",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
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
	"CUP_FR_NeckScarf2",
	"$NONE_aegis_shemag_tactical_khk$",
	"CUP_FR_NeckScarf",
	"G_Shemag_tactical",
	"CUP_FR_NeckScarf5",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shemag_white",
	"G_Tactical_Yellow",
	"G_Tactical_Camo",
	"CUP_FR_NeckScarf5",
	"G_Shemag_red",
	"CUP_RUS_Balaclava_blk",
	"bear_balaclava1_black",
	"CUP_RUS_Balaclava_grn",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
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
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
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
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"$REMOVE_usm_swdgoggles$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"sfp_peltor_comtac3",
	"rhs_scarf",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhssaf_veil_Green",
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
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"G_SWDG",
	"G_SWDG_low",

	// hmd
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
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
	"$NONE_pca_nvg_shemagh_mesh_bge$",
	"$NONE_pca_nvg_shemagh_mesh_blk$",
	"$NONE_pca_nvg_shemagh_mesh_coy$",
	"$NONE_pca_nvg_shemagh_mesh_gold$",
	"$NONE_pca_nvg_shemagh_mesh_grn$",
	"$NONE_pca_nvg_shemagh_mesh_khk$",
	"$NONE_pca_nvg_shemagh_mesh_tan$",
	"$NONE_pca_nvg_shemagh_mesh_white$",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_shemagh_lowered_tan",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"m40_gas_mask_02_nvg",
	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_1$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"$NONE_nvg_scrim_wdl_leaves_3$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"sfp_nvg_peltor_comtac3"
];

// *************************************************************// 
// Miscellaneous items
// *************************************************************// 

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
	// Bandages
	"ACE_fieldDressing",
	"ACE_elasticBandage",
	"ACE_packingBandage",
	"ACE_quikclot",
	// Specialized Equipments
	"ACE_splint",
	"ACE_tourniquet"
];

private _itemMedAdv =
[
	// Fluids
	"ACE_bloodIV",
	"ACE_bloodIV_250",
	"ACE_bloodIV_500",
	"ACE_plasmaIV",
	"ACE_plasmaIV_250",
	"ACE_plasmaIV_500",
	"ACE_salineIV",
	"ACE_salineIV_250",
	"ACE_salineIV_500",
	// Medications
	"ACE_adenosine",
	"ACE_epinephrine",
	"ACE_morphine",
	// Specialized Equipments
	"ACE_surgicalKit"
];

// *************************************************************// 
// weapons
// *************************************************************// 

private _itemAcc =
[
	// Sights
	"$NONE_sma_acc_vortex_blk$",
	"$NONE_sma_acc_vortex_lc_blk$",
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_eotech_xps3_od$",
	"$NONE_sma_acc_eotech_xps3_blk$",
	"$NONE_sma_acc_eotech_552_kf_od$",
	"$NONE_sma_acc_eotech_552_kf_blk$",
	"RKSL_optic_EOT552",
	"$NONE_sma_acc_cmore_grn$",
	"$NONE_sma_acc_cmore_blk$",
	"$NONE_sma_acc_barska_rds$",

	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_rx01",
	"rhsusf_acc_rx01_nofilter",
	"CUP_optic_CompM4",
	"rhsusf_acc_eotech_552_wd",
	"RKSL_optic_EOT552",
	"rhsusf_acc_eotech",
	"rhsgref_acc_rx01_camo",
	"rhsgref_acc_rx01_nofilter_camo",

	"RKSL_optic_EOT552X",
	"RKSL_optic_EOT552",

	"ptv_acc_eot552",
	"ptv_acc_t1",
	"ptv_acc_t1_3x",
	"ptv_acc_compm4s",

	"cup_optic_vortexrazor_uh1_od",
	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_trijiconrx01_od",
	"cup_optic_trijiconrx01_black",
	"cup_optic_mepro_tri_clear",
	"cup_optic_mepro_moa_clear",
	"cup_optic_mepro",
	"cup_optic_eotech553_od",
	"cup_optic_ac11704_od",
	"cup_optic_ac11704_black",
	"cup_optic_microt1_od",
	"cup_optic_microt1",
	"cup_optic_compm4",

	"optic_holosight",
	"optic_aco",
	"optic_mrco",

	"ptv_acc_acog_ta11",
	"ptv_acc_acog_ta11_rmr",
	"optic_ergo_blk_f",
	"optic_ergo_khk_f",
	"rhsusf_acc_acog",
	"rhsusf_acc_acog_d",
	"rhsusf_acc_acog_rmr",
	"rhsusf_acc_acog2",

	// Grip
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip3",
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

	// Tactical Device
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top",

	// Flash Hider
	"$NONE_hlc_muzzle_sf3p$",
	"rhsusf_acc_sf3p556",
	"rhsusf_acc_sfmb556",
	"$NONE_sma_flashhider_noveske_blk$"
];

private _itemWeapRifle =
[
	"rhs_weap_vhsd2",
	"rhs_weap_vhsd2_ct15x",
	"rhs_weap_vhsk2"
];

private _itemWeapRifleUGL =
[
	"rhs_weap_vhsd2_bg",
	"rhs_weap_vhsd2_bg_ct15x"
];

private _itemWeapAR =
[
	"rhs_weap_m249_pip_ris",
	"rhs_weap_m249_pip_L",
	"rhs_weap_m249_pip_L_para",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m249_pip_S_para",

	// AR Sights
	"rhsusf_acc_elcan",
	"rhsusf_acc_elcan_ard",
	"rhsusf_acc_su230",
	"rhsusf_acc_su230_c",
	"rhsusf_acc_su230_mrds",
	"rhsusf_acc_su230_mrds_c",
	"cup_optic_acog_ta01b_black",
	"cup_optic_acog_ta01b_coyote",
	"cup_optic_acog_ta01b_rmr_black",
	"cup_optic_acog_ta01b_rmr_coyote"
];

private _itemWeapLAT =
[
	"CUP_launch_M136"
];

private _itemWeapPistol =
[
	"rhsusf_weap_glock17g4"
];

// Special
private _itemWeapMG =
[
	"CUP_lmg_M240_B",

	// MG Sights
	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_c",
	"rhsusf_acc_su230a_mrds",
	"rhsusf_acc_su230a_mrds_c",
	"rhsusf_acc_acog_mdo",
	"cup_optic_acog_ta648_308_black",
	"cup_optic_acog_ta648_308_coyo",
	"cup_optic_acog_ta648_308_rds_black",
	"cup_optic_acog_ta648_308_rds_coyo"
];

private _itemWeapMAT =
[
	"launch_MRAWS_green_rail_F",
	"launch_MRAWS_olive_rail_F",
	"launch_MRAWS_black_rail_F"
];

// *************************************************************// 
// Ammunitions
// *************************************************************// 

private _itemAmmo =
[
	// Rifle ammo
	"rhsgref_30rnd_556x45_vhs2",

	// Pistol ammo
	"rhsusf_mag_17Rnd_9x19_JHP"
];

private _itemAmmoTracer =
[
	"rhsgref_30rnd_556x45_vhs2_t"
];

private _itemAmmoAR =
[
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote"
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
	"CUP_HandGrenade_M67",
	"Chemlight_green",
	"ACE_Chemlight_HiGreen"
];

// Special
private _itemAmmoMG =
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT =
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M",
	"MRAWS_HE_F"
];

private _itemEngineer =
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"MineDetector",
	"ToolKit"
];

// *************************************************************// 
// Add Current Gear
// *************************************************************// 

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

// *************************************************************// 
// Add items
// *************************************************************// 

switch (true) do
{
	// Rifleman
	case (_unitRole == "rm") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Rifleman (LAT)
	case (_unitRole == "rm_lat") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Automatic Rifle
	case (_unitRole == "ar") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Assistant Automatic Rifle
	case (_unitRole == "aar") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Grenadier
	case (_unitRole == "gren") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Team leader
	case (_unitRole == "tl") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Squad leader
	case (_unitRole == "sl") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Platoon Sergeant
	case (_unitRole == "sgt") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Platoon commander
	case (_unitRole == "co") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Forward Air Controller
	case (_unitRole == "fac") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Rifle First-Aid
	case (_unitRole == "rm_fa") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Combat Life Saver
	case (_unitRole == "cls") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Medium Machine gunner
	case (_unitRole == "mmg") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Assistant Medium Machine gunner
	case (_unitRole == "mmg") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Medium Anti-Tank gunner
	case (_unitRole == "mat") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Assistant Medium Anti-Tank gunner
	case (_unitRole == "amat") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Crewman
	case (_unitRole == "crew") :
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Crewman commander
	case (_unitRole == "crew_co") :
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Helicopter Pilot
	case (_unitRole == "hp") :
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearPilot + _itemBackpackPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	// Engineer
	case (_unitRole == "eng") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	default
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
};

// *************************************************************// 
// Add Actions
// *************************************************************// 

_action =
[
	"personal_arsenal", "Personal Arsenal", "\a3\ui_f\data\igui\cfg\weaponicons\mg_ca.paa",
	{
		[arsenal, _player] call ace_arsenal_fnc_openBox
	},
	{
		(player distance2D (player getVariable ["startPos", [0, 0, 0]])) < 100
	},
	{},
	[],
	[0, 0, 0],
	3
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
