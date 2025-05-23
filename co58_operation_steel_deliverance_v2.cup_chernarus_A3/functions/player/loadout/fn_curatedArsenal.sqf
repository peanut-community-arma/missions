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
	"aegis_mcu_rs_m81",
	"aegis_mcu_m81",
	"aegis_merc_polo_m81",
	"aegis_guerilla_jacket_m81",
	"aegis_acu_rs_m81",
	"aegis_acu_m81"
];

private _itemUniformCrew = 
[
	"aegis_mcu_rs_m81",
	"aegis_mcu_m81",
	"aegis_merc_polo_m81",
	"aegis_guerilla_jacket_m81",
	"aegis_acu_rs_m81",
	"aegis_acu_m81"
];

private _itemUniformPilot = 
[
	"aegis_mcu_rs_m81",
	"aegis_mcu_m81",
	"aegis_merc_polo_m81",
	"aegis_guerilla_jacket_m81",
	"aegis_acu_rs_m81",
	"aegis_acu_m81"
];

//Vest
private _itemVest = 
[
	"simc_m69_lce_56",
	"simc_m69_lce_56_band",
	"simc_m69_lce_56_frag",
	"simc_m69_lce_56_frag_band",
	"simc_m69_lce_56_garrison",
	"simc_m69_lce_56_gren",
	"simc_m69_lce_56_light",
	"simc_m69_lce_56_light_band",
	"simc_m69_lce_56_mg",
	"simc_m69_lce_56_medic",
	"simc_m69_lce_56_officer",
	"simc_m69_lce_56_officer_band"
];

private _itemVestCrew = 
[
	"simc_m69_lce_56",
	"simc_m69_lce_56_band",
	"simc_m69_lce_56_garrison",
	"simc_m69_lce_56_light",
	"simc_m69_lce_56_light_band",
	"simc_m69_lce_56_officer",
	"simc_m69_lce_56_officer_band"
];

private _itemVestPilot = 
[
	"simc_m69_lce_56",
	"simc_m69_lce_56_band",
	"simc_m69_lce_56_garrison",
	"simc_m69_lce_56_light",
	"simc_m69_lce_56_light_band",
	"simc_m69_lce_56_officer",
	"simc_m69_lce_56_officer_band"
];

//Headgear 
private _itemHeadgear = 
[
	"pca_m97_pasgt_wdl_1",
	"pca_m97_pasgt_wdl_ess_bare",
	"pca_m97_pasgt_wdl_ess",
	"pca_baseball_cap_wdl",
	"usm_bdu_boonie_wdl",
	"H_Bandanna_khk",
	"milgp_h_cap_backwards_01_rgr",
	"milgp_h_cap_backwards_01_goggles_rgr",
	"milgp_h_cap_01_rgr",
	"milgp_h_cap_01_goggles_rgr"
];

private _itemHeadgearCrew = 
[
	"rhsusf_cvc_green_helmet",
	"rhsusf_cvc_green_ess"
];

private _itemHeadgearPilot = 
[
	"rhsusf_cvc_green_helmet",
	"rhsusf_cvc_green_ess",
	"ACE_NVG_Gen4_Green"
];

private _itemHeadgearPLT =
[
	"rhssaf_beret_green"
];

//Backpack 
private _itemBackpack = 
[
	"pca_assaultpack_od",
	"pca_backpack_invisible"
];

private _itemBackpackLarge = 
[
	"pca_eagle_a3_od",
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

//Cosmetic 
private _itemCosmetic = 
[
	"m40_gas_mask_01",
	"m40_gas_mask_02",
	"m40_gas_mask_04",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
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
	"G_Combat_Goggles_tna_F",
	"rhssaf_veil_Green",
	
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_rgr",
	"G_Spectacles_Tinted",
	"pca_nvg_balaclava",
	"pca_nvg_balaclava2",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_rgr"
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
	"ACE_IR_Strobe_Item"
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

private _itemAcc = 
[
	//Optic
	"cup_optic_1p87_ris",
	"rhs_acc_1p87",
	"cup_optic_ac11704_black",
	"cup_optic_ac11704_od",
	"sma_acc_barska_rds",
	"optic_yorris",
	"optic_aco_grn",
	"optic_aco",
	"sma_acc_cmore_blk",
	"rhs_acc_ekp8_18",
	"cup_optic_holoblack",
	"sma_acc_eotech_552_blk",
	"sma_acc_eotech_552_kf_blk",
	"cup_optic_eotech553_black",
	"sma_acc_eotech_xps3_blk",
	"optic_holosight_blk_f",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_compm4",
	"cup_optic_compm2_low",
	"cup_optic_mrad",
	"sma_acc_micro_t2",
	"sma_acc_micro_t2_low",
	"rhsusf_acc_mrds",
	"rhsusf_acc_mrds_fwd",
	"rhs_acc_okp7_picatinny",
	"ptv_acc_compm4s",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"ptv_acc_eot552",
	"rhsusf_acc_rm05",
	"rhsusf_acc_rm05_fwd",
	"rhsusf_acc_rx01_nofilter",
	"rhsusf_acc_rx01",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",
	"rhsusf_acc_t1_low_fwd",
	"sma_acc_tasco_propoint",
	"sma_acc_tasco_propoint_glare",
	"cup_optic_vortexrazor_uh1_black",
	"sma_acc_vortex_blk",
	"rhsusf_acc_eotech_xps3",
	
	//Grip
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
	
	//Tactical Device
	"pca_flashlight_sf",
	
	//Flash Hider
	"hlc_muzzle_rotex3p"
];

private _itemWeapRifle = 
[
	"hlc_rifle_m16a1",
	"hlc_rifle_m16a2",
	"hlc_rifle_m16a3",

	//Flash Hider
	"hlc_muzzle_rotex3p"
];

private _itemWeapRifleFTL = 
[
	"rhs_weap_m16a4_carryhandle",
	"rhs_weap_m16a4",
	"rhs_weap_m16a4_imod"
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_m4a1_blockII_M203_bk",
	"bear_weap_m4a1_blockII_M203_green",
	"rhs_weap_m4a1_blockII_M203",
	"bear_weap_m4a1_blockII_M203_tan",
	"rhs_weap_m4a1_blockII_M203_wd"
];

private _itemWeapAR = 
[
	"rhs_weap_minimi_para_railed"
];

private _itemWeapLAT = 
[
	"CUP_launch_M72A6"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_glock17g4"
];

private _itemWeapPistolUGL =
[
	"rhs_weap_M320"
];

//Special
private _itemWeapMG = 
[
	"rhs_weap_mg3"
];

private _itemWeapMAT = 
[
	"rhs_weap_maaws"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger",
	
	//Pistol Ammo
	"rhsusf_mag_17Rnd_9x19_JHP"
];

private _itemAmmoTracer = 
[
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red",

	//Pistol Ammo
	"rhsusf_mag_17Rnd_9x19_JHP"
];

private _itemAmmoAR = 
[
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow"
];

private _itemExplosive = 
[
	"rhs_mag_m67",
	"SmokeShell",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_HiYellow",
	"ACE_Chemlight_UltraHiOrange"
];

private _itemAmmoUGL =
[
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"ACE_40mm_Flare_white"
];

//Special
private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51_m80a1epr",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMAT = 
[
	"CUP_PG7VL_M",
	"CUP_OG7_M"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemWeapRifle + _itemWeapPistol+ _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleFTL + _itemWeapPistol + _itemWeapPistolUGL + _itemAmmo + _itemAmmoTracer + _itemAmmoUGL + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoUGL + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoUGL + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemHeadgearPLT + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoUGL + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoUGL + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Medium Machine Gunner Leader
	case (_unitRole == "mmg_sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoUGL + _itemAmmoMG + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Medium Anti-Tank Gunner Leader
	case (_unitRole == "mat_sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoUGL + _itemAmmoMAT + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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