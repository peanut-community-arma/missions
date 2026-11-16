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
	"U_Simc_TCU_mk3_blench",
	"U_Simc_TCU_mk3_trop_blench",
	"U_Simc_TCU_mk3_tuck",
	"U_Simc_TCU_mk3_cute_blench",
	"U_Simc_TCU_mk3_nomex_blench"
];

private _itemUniformCrew = 
[
	"U_Simc_TCU_mk3_blench",
	"U_Simc_TCU_mk3_trop_blench",
	"U_Simc_TCU_mk3_tuck",
	"U_Simc_TCU_mk3_cute_blench",
	"U_Simc_TCU_mk3_nomex_blench"
];

private _itemUniformPilot = 
[
	"U_Simc_TCU_mk3_blench",
	"U_Simc_TCU_mk3_trop_blench",
	"U_Simc_TCU_mk3_tuck",
	"U_Simc_TCU_mk3_cute_blench",
	"U_Simc_TCU_mk3_nomex_blench",
	"CUP_U_B_USArmy_PilotOverall"
];

//Vest
private _itemVest = 
[
	"V_Simc_56",
	"V_Simc_56_ligt_zusp",
	"V_Simc_56_4cm",
	"V_Simc_56_4cm_ligt",
	"V_Simc_56_frag",
	"V_Simc_56_M43_45",
	"V_Simc_56_med",
	"V_Simc_56_med_side_ass",
	"V_Simc_56_60",
	"V_Simc_56_60_doppel",
	"V_Simc_56_45",
	"V_Simc_56_45_B",
	"V_Simc_56_claymore_45",
	"V_Simc_56_claymore_45_band",
	"V_Simc_nadevest_56"
];

private _itemVestCrew = 
[
	"V_Simc_56",
	"V_Simc_56_ligt_zusp",
	"V_Simc_56_4cm",
	"V_Simc_56_4cm_ligt",
	"V_Simc_56_frag",
	"V_Simc_56_M43_45",
	"V_Simc_56_med",
	"V_Simc_56_med_side_ass",
	"V_Simc_56_60",
	"V_Simc_56_60_doppel",
	"V_Simc_56_45",
	"V_Simc_56_45_B",
	"V_Simc_56_claymore_45",
	"V_Simc_56_claymore_45_band",
	"V_Simc_56_45_ligt_zusp",
	"V_Simc_nadevest_56"
];

private _itemVestPilot = 
[
	"V_Simc_56",
	"V_Simc_56_ligt_zusp",
	"V_Simc_56_4cm",
	"V_Simc_56_4cm_ligt",
	"V_Simc_56_frag",
	"V_Simc_56_M43_45",
	"V_Simc_56_med",
	"V_Simc_56_med_side_ass",
	"V_Simc_56_60",
	"V_Simc_56_60_doppel",
	"V_Simc_56_45",
	"V_Simc_56_45_B",
	"V_Simc_56_claymore_45",
	"V_Simc_56_claymore_45_band",
	"V_Simc_56_45_ligt_zusp",
	"V_Simc_nadevest_56",
	"CUP_V_CZ_vest20"
];

//Headgear 
private _itemHeadgear = 
[
	"H_Simc_M1C_bitch_Cl",
	"H_Simc_M1C_bitch_low",
	"H_Simc_M1C_bitch_low_op",
	"H_Simc_M1C_bitch_low_rot",
	"H_Simc_M1C_bitch_ns",
	"H_Simc_M1C_bitch_op",
	"H_Simc_M1C_bitch_op_2",
	"H_Simc_M1C_bitch_up",
	"H_Simc_Boon_green_1",
	"H_Simc_Boon_green_2",
	"H_Simc_Boon_green_3",
	"H_Simc_Boon_green_4",
	"H_Simc_Boon_green_5",
	"H_Simc_Boon_green_6",
	"H_Simc_Boon_green_7",
	"H_Simc_Boon_green_8",
	"H_Simc_hat_trop_1",
	"H_Bandanna_khk"
];

private _itemHeadgearCrew = 
[
	"H_Simc_CVC",
	"H_Simc_CVC_G",
	"H_Simc_CVC_G_low"
];

private _itemHeadgearPilot = 
[
	"CUP_H_SPH4_green",
	"CUP_H_SPH4_green_visor",
	"CUP_H_SPH4_grey",
	"CUP_H_SPH4_grey_visor",
	"CUP_H_SPH4_khaki",
	"CUP_H_SPH4_khaki_visor",
	"CUP_H_SPH4",
	"CUP_H_SPH4_visor"
];

//Backpack 
private _itemBackpack = 
[
	"pca_backpack_invisible",
	"B_simc_pack_frem_1",
	"B_simc_pack_frem_1_alt",
	"B_simc_pack_frem_2",
	"B_simc_pack_frem_2_alt",
	"B_simc_pack_frem_3",
	"B_simc_pack_frem_8",
	"B_simc_pack_frem_empty",
	"B_simc_pack_frem_5_alt",
	"B_simc_pack_frem_qt",
	"B_simc_pack_frem_4",
	"B_simc_pack_frem_0",
	"B_simc_pack_frem_6_alt",
	"B_simc_pack_frem_7",
	"B_simc_pack_frem_9",
	"B_simc_pack_frem_3_a",
	"B_simc_pack_frem_3_b",
	"B_simc_pack_frem_gasbag",
	"B_simc_pack_frem_5",
	"B_simc_pack_frem_6",
	"B_simc_pack_frem_med5",
	"B_simc_US_Bandoleer_556_1",
	"B_simc_US_Bandoleer_556_3",
	"B_simc_US_Bandoleer_556_fore",
	"B_simc_US_Bandoleer_60",
	"B_simc_US_Bandoleer_60_L",
	"B_simc_US_Bandoleer_60_R",
	"B_simc_US_Bandoleer_556_doppel_1",
	"B_simc_US_Bandoleer_556_doppel_2",
	"B_simc_US_Bandoleer_4cm",
	"B_simc_rajio_Frem",
	"B_simc_rajio_Frem_2",
	"B_simc_rajio_3"
];

private _itemBackpackCrew = 
[
	"pca_backpack_invisible",
	"B_simc_pack_frem_1",
	"B_simc_pack_frem_1_alt",
	"B_simc_pack_frem_2",
	"B_simc_pack_frem_2_alt",
	"B_simc_pack_frem_3",
	"B_simc_pack_frem_8",
	"B_simc_pack_frem_empty",
	"B_simc_pack_frem_5_alt",
	"B_simc_pack_frem_qt",
	"B_simc_pack_frem_4",
	"B_simc_pack_frem_0",
	"B_simc_pack_frem_6_alt",
	"B_simc_pack_frem_7",
	"B_simc_pack_frem_9",
	"B_simc_pack_frem_3_a",
	"B_simc_pack_frem_3_b",
	"B_simc_pack_frem_gasbag",
	"B_simc_pack_frem_5",
	"B_simc_pack_frem_6",
	"B_simc_pack_frem_med5",
	"B_simc_US_Bandoleer_556_1",
	"B_simc_US_Bandoleer_556_3",
	"B_simc_US_Bandoleer_556_fore",
	"B_simc_US_Bandoleer_60",
	"B_simc_US_Bandoleer_60_L",
	"B_simc_US_Bandoleer_60_R",
	"B_simc_US_Bandoleer_556_doppel_1",
	"B_simc_US_Bandoleer_556_doppel_2",
	"B_simc_US_Bandoleer_4cm"
];

private _itemBackpackPilot = 
[
	"pca_backpack_invisible",
	"B_simc_pack_frem_1",
	"B_simc_pack_frem_1_alt",
	"B_simc_pack_frem_2",
	"B_simc_pack_frem_2_alt",
	"B_simc_pack_frem_3",
	"B_simc_pack_frem_8",
	"B_simc_pack_frem_empty",
	"B_simc_pack_frem_5_alt",
	"B_simc_pack_frem_qt",
	"B_simc_pack_frem_4",
	"B_simc_pack_frem_0",
	"B_simc_pack_frem_6_alt",
	"B_simc_pack_frem_7",
	"B_simc_pack_frem_9",
	"B_simc_pack_frem_3_a",
	"B_simc_pack_frem_3_b",
	"B_simc_pack_frem_gasbag",
	"B_simc_pack_frem_5",
	"B_simc_pack_frem_6",
	"B_simc_pack_frem_med5",
	"B_simc_US_Bandoleer_556_1",
	"B_simc_US_Bandoleer_556_3",
	"B_simc_US_Bandoleer_556_fore",
	"B_simc_US_Bandoleer_60",
	"B_simc_US_Bandoleer_60_L",
	"B_simc_US_Bandoleer_60_R",
	"B_simc_US_Bandoleer_556_doppel_1",
	"B_simc_US_Bandoleer_556_doppel_2",
	"B_simc_US_Bandoleer_4cm"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_tan",
	"G_Cigarette",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_white",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_G_TK_RoundGlasses_blk",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"JAM_G_Poncho_01_grn",
	"M40_Gas_mask_nbc_v2_d",
	"M40_Gas_mask_nbc_v4_d",
	"TC_G_NitrileGloves_1",
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
"anduk_2_addon",
"pca_nvg_cigarette",
"pca_nvg_shemagh_lowered_khk",
"pca_nvg_shemagh_lowered_oli",
"pca_nvg_shemagh_lowered_red",
"pca_nvg_shemagh_lowered_tan",
"pca_nvg_shemagh_lowered_white",
"immersion_cigs_cigar0_nv",
"murshun_cigs_cig0_nv",
"G_Spectacles_Tinted",
"G_Squares_Tinted",
"G_Squares",
"G_Spectacles"
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
	//Optic
	
	
	//Grip
	
	
	//Tactical Device
	"sp_fwa_acc_machinegun_linkhide",
	"pca_flashlight_led"
];

private _itemWeapRifle = 
[
	"CUP_smg_M3A1",
	"CUP_arifle_M16A1"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_M16A1GL",
	"CUP_glaunch_M79"
];

private _itemWeapAR = 
[
	"CUP_lmg_M60"
];

private _itemWeapLAT = 
[
	"CUP_launch_M72A6"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Colt1911",
	
	//Pistol Ammo
	"CUP_7Rnd_45ACP_1911"
];

//Special
private _itemWeapMG = 
[
	"sp_fwa_m1919a6_browning"
];

private _itemWeapMAT = 
[
	"sp_fwa_m67"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_20Rnd_556x45_Stanag",
	"CUP_30Rnd_45ACP_M3A1_M",
	"CUP_20Rnd_762x51_DMR",
	"6Rnd_Slug_Magazine",
	"6Rnd_00_Buckshot_Magazine"
];

private _itemAmmoTracer = 
[
	"CUP_20Rnd_556x45_Stanag_Tracer_Red",
	"CUP_30Rnd_45ACP_Red_Tracer_M3A1_M"
];

private _itemAmmoAR = 
[
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
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
	"CUP_HandGrenade_M67"
];

//Special
private _itemAmmoMG = 
[
	"sp_fwa_100Rnd_3006_mag_turret",
	"sp_fwa_100Rnd_3006_mag"
];

private _itemAmmoMAT = 
[
	"sp_fwa_m67_1rnd_heat",
	"sp_fwa_m67_1rnd_ap",
	"sp_fwa_m67_1rnd_he"
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
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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