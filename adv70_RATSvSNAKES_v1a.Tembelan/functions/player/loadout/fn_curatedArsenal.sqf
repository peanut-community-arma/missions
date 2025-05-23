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
	"pca_uniform_m10_wdl",
	"pca_uniform_m10_marpatwd",
	"pca_uniform_m10_atacs_fg",
	"pca_uniform_m10_atacs_au",
	"rhsgref_uniform_para_ttsko_mountain",
	"rhsgref_uniform_para_ttsko_oxblood",
	"rhsgref_uniform_para_ttsko_urban"
];

private _itemUniformCrew = 
[
];

private _itemUniformPilot = 
[
];

//Vest
private _itemVest = 
[
	"pca_vest_invisible_kevlar",
	"aegis_elbv_harness_ghex",
	"aegis_elbv_harness_blk",
	"aegis_elbv_harness_desert",
	"aegis_elbv_harness_cbr"
];

private _itemVestCrew = 
[
];

private _itemVestPilot = 
[
];

//Headgear 
private _itemHeadgear = 
[
	"wsx_helmet_pasgt_wdl",
	"wsx_helmet_combat_wdl_ess_bare",
	"wsx_helmet_combat_wdl_ess",
	"aegis_virtus_helmet_emr_des",
	"aegis_virtus_helmet_emr_wdl",
	"simc_pasgt_m81",
	"simc_pasgt_m81_scrim",
	"simc_pasgt_m81_scrim_2",
	"simc_pasgt_m81_scrim_3",
	"simc_pasgt_mout",
	"simc_pasgt_mout_swdg",
	"simc_pasgt_mout_swdg_high",
	"simc_pasgt_mout_swdg_low",
	"wsx_helmet_pasgt_6cd",
	"wsx_helmet_combat_6cd_ess_bare",
	"wsx_helmet_combat_6cd_ess"
];

private _itemHeadgearCrew = 
[
];

private _itemHeadgearPilot = 
[
];

//Backpack 
private _itemBackpack = 
[
	"pca_backpack_invisible_large",
	"aegis_kitbag_ausmpt",
	"aegis_kitbag_blk",
	"B_Kitbag_cbr",
	"aegis_kitbag_dgtl",
	"aegis_kitbag_eaf",
	"ptv_backpack_kitbag_m08w",
	"ptv_backpack_kitbag_m08d"
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
	"CUP_G_RUS_Balaclava_Ratnik_winter",
	"CUP_G_RUS_Balaclava_Ratnik_winter_v2",
	"pca_balaclava_mcalp",
	"pca_balaclava_gogg_mcalp",
	"pca_bandana_mcalp",
	"CUP_G_ESS_KHK_Facewrap_White",
	"CUP_G_ESS_BLK_Scarf_Face_White_GPS",
	"CUP_G_Scarf_Face_White",
	"rhsusf_shemagh2_gogg_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh_white",
	"usm_scarf",
	"usm_scarf2",
	
	//OPTIONAL - Alpine, NVG slot
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool_gry",
	"pca_nvg_gloves_wool_grn",
	"usm_nvg_scarf",
	"usm_nvg_scarf2",
	"nvg_scrim_snow",
	"nvg_scrim_snow_pine",
	"pca_nvg_shemagh_white",
	"pca_nvg_shemagh2_white",
	
	//OPTIONAL - Tropical. Use instead of regular bala/face covering/scarves
	"pca_balaclava_mct",
	"pca_balaclava_gogg_mct",
	"aegis_bala_light_tropic",
	"aegis_bala_light_gogg_tropic",
	"pca_bandana_mct",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",

	//   =====  CORE - Balaclavas  =====  
	"G_Balaclava_blk",
	"G_Balaclava_oli",
	"aegis_bala_light_blk",
	"aegis_bala_light_gogg_blk",
	"CUP_RUS_Balaclava_tan",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"bear_balaclava1_black",
	
	//  =====  CORE - Bandanas, face wraps, face shields  =====  
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_KHK_Facewrap_Tan",
	"CUP_G_ESS_RGR_Facewrap_Ranger",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_tan",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_tan",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh2_gogg_tan",
	"usm_scarf",
	
	//  =====  CORE - Non-covering scarfs, shemaghs  =====  
	"aegis_shemag_cbr",
	"aegis_shemag_khk",
	"aegis_shemag_oli",
	"aegis_shemag_red",
	"usm_scarf2",
	
	//  =====  CORE - Goggles and glasses  =====  
	"G_Combat",
	"aegis_combat_gogg_blk",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"milgp_f_tactical_khk",

	//  =====  CORE - Non-serious, fan favourites  =====  
	"G_Bandanna_beast",
	"G_Bandanna_aviator",
	"G_Aviator",
	"aegis_bandanna_kawaii",
	"aegis_bandanna_skull",
	"aegis_bandanna_candyskull",
	"G_Spectacles",
	"rhssaf_veil_Green",
	"CUP_G_TK_RoundGlasses_blk",
	"G_Squares",
	"G_Squares_Tinted",
	"G_Spectacles_Tinted",
	
	//  =====  Props  =====  
	"aegis_cigarette",
	"immersion_pops_pop0",
	"immersion_cigs_cigar0",
	"aegis_headset",
	"usm_kneepads_blk",
	"sfp_peltor_comtac3",
	
	//  =====  Murshun cigpack and lighter  =====  
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"murshun_cigs_cigpack",
	
	//  =====  NVG Balaclavas  =====  
	"pca_nvg_balaclava",
	"pca_nvg_balaclava2",
	
	//  =====  NVG Shemagh/Face shields  =====  
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"usm_nvg_scarf",
	"usm_nvg_scarf2",
	
	//  =====  NVG Goggles  =====  
	"nvg_goggles_grn",
	"pca_nvg_ess_blk",
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	
	//  =====  NVG Props  =====  	
	"pca_nvg_cigarette",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"usm_nvg_kneepads_blk",
	"usm_nvg_gigloves",
	"pca_nvg_gloves_wool",
	
	//  =====  NVG Scrim  =====  	
	"nvg_scrim_wdl",
	"nvg_scrim_wdl_grass",
	"nvg_scrim_wdl_leaves_2",
	"immersion_pops_pop0_nv"
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
	"ACE_NVG_Wide_Black_WP",
	"ACE_NVG_Wide_WP",
	"ACE_NVG_Wide_Green_WP"
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
	"rhs_acc_1p87",
	"cup_optic_aimpoint_5000",
	"cup_optic_compm4",
	"cup_optic_ac11704_black",
	"cup_optic_ac11704_od",
	"optic_yorris",
	"optic_aco",
	"optic_aco_grn",
	"rksl_optic_eot552",
	"rhsusf_acc_compm4",
	"rhsusf_acc_mrds",
	"ptv_acc_t1_low",
	"ptv_acc_eot552",
	"sma_acc_tasco_propoint",
	"cup_optic_trijiconrx01_black",
	"cup_optic_trijiconrx01_od",
	"sma_acc_vortex_blk",
	
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
	"cup_acc_anpeq_15_black",
	"cup_acc_anpeq_15_od",
	"cup_acc_anpeq_15_od_top",
	"cup_acc_anpeq_15_black_top",
	"cup_acc_anpeq_15_flashlight_black_l",
	"cup_acc_anpeq_15_flashlight_od_l",
	"cup_acc_anpeq_15_top_flashlight_black_l",
	"cup_acc_anpeq_15_top_flashlight_od_l",
	"cup_acc_llm_black",
	"cup_acc_llm_od",
    "ACE_DBAL_A3_Green",
    "ACE_DBAL_A3_Red"
];

private _itemWeapRifle = 
[
	"hlc_rifle_hk416d145",
	"hlc_rifle_hk416d10",
	"hlc_rifle_hk416d10_camo_grn",
	"hlc_rifle_hk416d10_camo_tan",
	"hlc_rifle_hk416d145_camo_grn",
	"hlc_rifle_hk416d145_camo_tan"
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_m4a1_m203",
	"rhs_weap_m4a1_m203s"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S"
];

private _itemWeapLAT = 
[
	"rhs_weap_M136"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Phantom"
];

//Special
private _itemWeapMG = 
[
	"rhs_weap_m240B"
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
	"CUP_30Rnd_556x45_PMAG_BLACK_PULL",
	"CUP_30Rnd_556x45_PMAG_COYOTE_PULL",
	"CUP_30Rnd_556x45_PMAG_OD_PULL",
	
	//Pistol Ammo
	"CUP_18Rnd_9x19_Phantom"
];

private _itemAmmoTracer = 
[];

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
	"rhs_mag_m67"
];

//Special
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
		[arsenal, (_itemAmmoSignal + _itemWeapPistol + _itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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