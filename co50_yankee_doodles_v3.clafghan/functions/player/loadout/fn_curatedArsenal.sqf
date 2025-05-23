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

// *********************************************************//
// Unit Equipment
// *********************************************************//
// Common
private _itemGear = [];

// uniform
private _itemUniform =
[
	"pca_g3_mcaus"
];

private _itemUniformCrew =
[
	"pca_g3_mcaus"
];

private _itemUniformPilot =
[
	"pca_g3_mcaus"
];

// vest
private _itemVest =
[
	"aegis_platecarrier_lite_ausmtp_arid",
	"aegis_platecarrier_rig_ausmtp_arid",
	"milgp_v_jpc_assaulter_cb",
	"milgp_v_jpc_light_cb",
	"milgp_v_jpc_grenadier_cb",
	"milgp_v_jpc_medic_cb",
	"milgp_v_jpc_assaulter_belt_cb",
	"milgp_v_jpc_grenadier_belt_cb",
	"milgp_v_jpc_medic_belt_cb",
	"milgp_v_jpc_assaulter_mc",
	"milgp_v_jpc_light_mc",
	"milgp_v_jpc_grenadier_mc",
	"milgp_v_jpc_medic_mc",
	"milgp_v_jpc_assaulter_belt_mc",
	"milgp_v_jpc_grenadier_belt_mc",
	"milgp_v_jpc_medic_belt_mc"
];

private _itemVestCrew =
[
	"aegis_platecarrier_lite_ausmtp_arid"
];

private _itemVestPilot =
[
	"aegis_platecarrier_lite_ausmtp_arid"
];

// headgear
private _itemHeadgear =
[
	"pca_opscore_cover_mcaus",
	"pca_opscore_cover_ct_mcaus",
	"aegis_amh_bare_ausmtp_arid",
	"aegis_amh_chops_ausmtp_arid",
	"aegis_amh_ears_ausmtp_arid",
	"aegis_amh_headset_ausmtp_arid",
	"aegis_boonie_ausmtp"
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
	"aegis_assaultpack_ausmtp",
	"aegis_assaultpack_tan",
	"aegis_kitbag_ausmtp",
	"aegis_carryall_ausmtp",
	"wsx_eagle_a3_rgr",
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
	"aegis_bandanna_kawaii",
	"aegis_cigarette",
	"aegis_combat_gogg_blk",
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
	"aegis_shemag_khk",
	"aegis_shemag_tactical_khk",
	"aegis_shemag_oli",
	"aegis_shemag_tactical_oli",
	"aegis_shemag_red",
	"aegis_shemag_tactical_red",
	"aegis_shemag_tan",
	"aegis_shemag_tactical_tan",
	"aegis_shemag_white",
	"aegis_shemag_tactical_white",
	"aegis_tactical_yellow",
	"aegis_tactical_camo",
	"aegis_shemag_red",
	"aegis_shemag_tactical_red",
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
	"usm_swdgoggles",
	"usm_scarf",
	"usm_scarf2",
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
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",

	// hmd
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_glasses_org",
	"pca_nvg_glasses_ylw",
	"pca_nvg_ess_blk",
	"pca_nvg_cigarette",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_shemagh_rgr",
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
	"pca_nvg_shemagh_mesh_bge",
	"pca_nvg_shemagh_mesh_blk",
	"pca_nvg_shemagh_mesh_coy",
	"pca_nvg_shemagh_mesh_gold",
	"pca_nvg_shemagh_mesh_grn",
	"pca_nvg_shemagh_mesh_khk",
	"pca_nvg_shemagh_mesh_tan",
	"pca_nvg_shemagh_mesh_white",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	"pca_nvg_tactical_glasses",
	"pca_nvg_tactical_goggles",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"m40_gas_mask_02_nvg",
	"nvg_scrim_wdl",
	"nvg_scrim_wdl_grass",
	"nvg_scrim_wdl_leaves_1",
	"nvg_scrim_wdl_leaves_2",
	"nvg_scrim_wdl_leaves_3",
	"usm_nvg_scarf",
	"usm_nvg_scarf2",
	"sfp_nvg_peltor_comtac3"
];

// *********************************************************//
// Miscellaneous items
// *********************************************************//

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
	"murshun_cigs_cigpack",
	"murshun_cigs_matches"
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

// *********************************************************//
// weapons
// *********************************************************//

private _itemAcc =
[
	// Sights
	"sma_acc_vortex_blk",
	"sma_acc_micro_t2",
	"sma_acc_cmore_blk",
	"sma_acc_barska_rds",

	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_rx01_nofilter",
	"rhsusf_acc_mrds",
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_552",

	"rksl_optic_eot552x",
	"rksl_optic_eot552",

	"ptv_acc_eot552",
	"ptv_acc_t1",
	"ptv_acc_aimcs",
	"ptv_acc_compm4s",

	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_trijiconrx01_black",
	"cup_optic_trijiconrx01_coyote",
	"cup_optic_mepro_moa_clear",
	"cup_optic_mepro",
	"cup_optic_zddot",
	"cup_optic_mrad",
	"cup_optic_mars",
	"cup_optic_compm2_low",
	"cup_optic_ac11704_black",
	"cup_optic_ac11704_coyote",
	"cup_optic_microt1",
	"cup_optic_compm4",

	"optic_holosight",
	"optic_aco",

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
	"rhsusf_acc_anpeq15side_bk"
];

private _itemWeapRifle =
[
	"aegis_weap_aur90",
	"aegis_weap_aur90_tan",
	"aegis_weap_aur90_carbine",
	"aegis_weap_aur90_carbine_tan"
];

private _itemWeapRifleUGL =
[
	"aegis_weap_aur90_eglm",
	"aegis_weap_aur90_eglm_tan"
];

private _itemWeapAR =
[
	"rhs_weap_m249_pip_ris",
	"rhs_weap_m249_pip_L",
	"rhs_weap_m249_pip_L_para",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m249_pip_S_para"
];

private _itemWeapLAT =
[
	"rhs_weap_M136",
	"rhs_weap_M136_hedp"
];

private _itemWeapPistol =
[
	"CUP_hgun_Browning_HP"
];

// Special
private _itemWeapMG =
[
	"rhs_weap_m240B",
	"rhsusf_acc_acog_mdo"
];

private _itemWeapMAT =
[
	"launch_MRAWS_sand_rail_F"
];

// *********************************************************//
// Ammunitions
// *********************************************************//

private _itemAmmo =
[
	// Rifle ammo
	"aegis_30Rnd_556x45_aug",

	// Pistol ammo
	"CUP_13Rnd_9x19_Browning_HP"
];

private _itemAmmoTracer =
[
	"aegis_30Rnd_556x45_aug_tracer_red"
];

private _itemAmmoAR =
[
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",
	"CUP_13Rnd_9x19_Browning_HP"
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
	"SmokeShellRed",
	"SmokeShellBlue",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_m67"
];

// Special
private _itemAmmoMG =
[
	"rhsusf_100Rnd_762x51_m80a1epr"
];

private _itemAmmoMAT =
[
	"MRAWS_HEAT_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HE_F"
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
	"ToolKit"
];

// *********************************************************//
// Add Current Gear
// *********************************************************//

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

// *********************************************************//
// Add items
// *********************************************************//

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

// *********************************************************//
// Add Actions
// *********************************************************//

_action =
[
	"personal_arsenal", "Personal Arsenal", "\a3\ui_f\data\igui\cfg\weaponicons\mg_ca.paa",
	{
		[arsenal, _player] call ace_arsenal_fnc_openBox
	},
	{
		(player distance2D (player getVariable ["startPos", [0, 0, 0]])) < 100 && (alive startFlag)
	},
	{},
	[],
	[0, 0, 0],
	3
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
