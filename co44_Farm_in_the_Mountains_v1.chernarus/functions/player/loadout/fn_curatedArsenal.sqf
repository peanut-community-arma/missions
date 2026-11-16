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
private _startpos = _unit getVariable ["startPos", nil];
if (isNil '_startpos') then {
    _unit setVariable ["startPos", getPosASL _unit, true];
};

//********************************************************************************//
// Unit Equipment
//********************************************************************************//
//Common
private _itemGear = [
];

//Uniform
private _itemUniform = 
[
	"CUP_I_B_PMC_Unit_37",
	"CUP_I_B_PMC_Unit_40",
	"CUP_I_B_PMC_Unit_12",
	"CUP_I_B_PMC_Unit_8",
	"CUP_I_B_PMC_Unit_4",
	"U_C_Uniform_Scientist_02_formal_F",
	"U_C_Man_casual_6_F",
	"U_C_Uniform_Formal_01_striped_F"
];

private _itemUniformCrew = 
[
	"bear_uniform_g3_tigerstripe",
	"pca_g3_tsw",
	"rhsgref_uniform_tigerstripe",
	"CUP_U_B_BDUv2_Tigerstripe",
	"$NONE_usm_bdu_btisrl_tgrstp$",
	"$NONE_usm_bdu_bti_tgrstp$",
	"CUP_U_B_BDUv2_roll2_Tigerstripe",
	"CUP_U_B_BDUv2_roll_Tigerstripe",
	"CUP_U_B_BDUv2_Tigerstripe",
	"U_Simc_arvn_TS"
];

private _itemUniformPilot = 
[
	"bear_uniform_g3_tigerstripe",
	"pca_g3_tsw",
	"rhsgref_uniform_tigerstripe",
	"CUP_U_B_BDUv2_Tigerstripe",
	"$NONE_usm_bdu_btisrl_tgrstp$",
	"$NONE_usm_bdu_bti_tgrstp$",
	"CUP_U_B_BDUv2_roll2_Tigerstripe",
	"CUP_U_B_BDUv2_roll_Tigerstripe",
	"CUP_U_B_BDUv2_Tigerstripe",
	"U_Simc_arvn_TS"
];

//Vest
private _itemVest = 
[
	"V_Simc_flak_M69",
	"V_TacVest_blk",
	"V_TacVest_grn",
	"V_TacVest_grn",
	"V_TacVest_tan",
	"bear_tactical_vest_green"
];

private _itemVestCrew = 
[
	"pca_spcs_oefcp",
	"pca_spcs_crewman_oefcp"
];

private _itemVestPilot = 
[
	"pca_spcs_oefcp",
	"pca_spcs_crewman_oefcp"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_US_patrol_cap_tigerstripe",
	"$NONE_usm_bdu_boonie_tgrstp$",
	"$NONE_usm_bdu_cap_tgrstp$",
	"$NONE_usm_headwrap_tgrstp$",
	"simc_bush_hat_tgrstrp_2",
	"simc_bush_hat_flat_tgrstrp_2",
	"simc_bush_hat_foldr_tgrstrp_2",
	"simc_bush_hat_tie_tgrstrp_2",
	"TC_Helmet_Hat_Santa1_Camo_Tigerstripe1",
	"CUP_H_PMC_Cap_Back_EP_Tan",
	"CUP_H_PMC_Cap_Burberry",
	"TC_Helmet_Invisible_Light",
	"$NONE_TC_Helmet_HalloweenPumpkin$",
	"pca_headband_red",
	"H_EarProtectors_red_F",

	"TC_Helmet_CowboyHat1",
	"TC_Helmet_CowboyHat3",
	"TC_Helmet_CowboyHat2",
	"H_RacingHelmet_1_red_F",
    "$NONE_TC_Helmet_Hat_WitchCop$",
    "$NONE_TC_Helmet_Hat_NavySeer$",
    "$NONE_TC_Helmet_Hat_NavySeer_1$",
    "$NONE_TC_Helmet_Hat_NavySeer_1_White$",
    "$NONE_TC_Helmet_Hat_NavySeer_1_Black$",
    "$NONE_TC_Helmet_Hat_NavySeer_1_Grey$",
    "$NONE_TC_Helmet_Hat_WitchCop_1$",
    "$NONE_TC_Helmet_Hat_WitchCop_1_White$",
    "$NONE_TC_Helmet_Hat_WitchCop_1_Black$",
    "$NONE_TC_Helmet_Hat_WitchCop_1_Grey$"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC",
	"rhsusf_cvc_green_alt_helmet",
	"rhsusf_cvc_green_ess",
	"H_Simc_CVC",
	"simc_cvc_swdg",
	"simc_cvc_swdg_cover",
	"simc_cvc_swdg_low"
];

private _itemHeadgearPilot = 
[
	"rhsusf_ihadss",
	"rhsusf_hgu56p_visor_mask_smiley",
	"rhsusf_hgu56p_visor_mask_mo",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_visor_mask"
];

//Backpack 
private _itemBackpack = 
[
	"CUP_B_Bergen_BAF",
	"CUP_B_USPack_Coyote",
	"pca_backpack_invisible"
];

private _itemBackpackCrew = 
[
	"ptv_backpack_assault_m08w",
	"pca_assaultpack_mct",
	"pca_assaultpack_mc",
	"pca_assaultpack_ocp3",
	"pca_backpack_invisible"
];

private _itemBackpackPilot = 
[
	"ptv_backpack_assault_m08w",
	"pca_assaultpack_mct",
	"pca_assaultpack_mc",
	"pca_assaultpack_ocp3",
	"pca_backpack_invisible"
];

//Cosmetic 
private _itemCosmetic = 
[
	// veerserif's list
	//Last updated 2023-06-28, adds optional Tropical and Alpine cosmetics (delete as needed)
	//Focuses on solid colours, 2000-2010s gear. Largely excludes items from DHI/SIMC.
	
	/*/OPTIONAL - Alpine. Use instead of regular bala/face covering/scarves
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
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	
	//OPTIONAL - Alpine, NVG slot
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool_gry",
	"pca_nvg_gloves_wool_grn",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"$NONE_nvg_scrim_snow$",
	"$NONE_nvg_scrim_snow_pine$",
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",//*/
	
	/*/OPTIONAL - Tropical. Use instead of regular bala/face covering/scarves
	"pca_balaclava_mct",
	"pca_balaclava_gogg_mct",
	"G_Balaclava_light_tropic_F",
	"G_Balaclava_light_G_tropic_F",
	"pca_bandana_mct",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",//*/

    "$NONE_TC_NVG_HalloweenPumpkin$",
	"G_Balaclava_Flames1",
	"G_Balaclava_Halloween_01",
	"G_Balaclava_Scarecrow_01",
	"G_Bandanna_Vampire_01",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_PMC_Facewrap_Skull",
	"CUP_PMC_Facewrap_Smilie",
	"G_EyeProtectors_Earpiece_F",
	"CUP_FR_NeckScarf5",

	//   =====  CORE - Balaclavas  =====  
	"G_Balaclava_blk",
	"G_Balaclava_oli",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
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
	"$REMOVE_usm_scarf$",
	
	//  =====  CORE - Non-covering scarfs, shemaghs  =====  
	"$NONE_aegis_shemag_cbr$",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"$REMOVE_usm_scarf2$",
	
	//  =====  CORE - Goggles and glasses  =====  
	"G_Combat",
	"G_Combat_Goggles_blk_F",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"milgp_f_tactical_khk",

	//  =====  CORE - Non-serious, fan favourites  =====  
	"G_Bandanna_beast",
	"G_Bandanna_aviator",
	"G_Aviator",
	"G_Bandanna_kawaii",
	"G_Bandanna_Skull2",
	"G_Bandanna_CandySkull",
	"G_Spectacles",
	"rhssaf_veil_Green",
	"CUP_G_TK_RoundGlasses_blk",
	"G_Squares",
	"G_Squares_Tinted",
	"G_Spectacles_Tinted",
	
	//  =====  Props  =====  
	"G_Cigarette",
	"immersion_pops_pop0",
	"immersion_cigs_cigar0",
	"G_Headset_light",
	"$NONE_usm_kneepads_blk$",
	"sfp_peltor_comtac3",
	
	//  =====  Murshun cigpack and lighter  =====  
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"murshun_cigs_cigpack",
	
	//  =====  NVG Balaclavas  =====  
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	
	//  =====  NVG Shemagh/Face shields  =====  
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	
	//  =====  NVG Goggles  =====  
	"Goggles_grn_F",
	"$NONE_pca_nvg_ess_blk$",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	
	//  =====  NVG Props  =====  	
	"pca_nvg_cigarette",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"$NONE_usm_nvg_kneepads_blk$",
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool",
	
	//  =====  NVG Scrim  =====  	
	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"immersion_pops_pop0_nv"
];

//********************************************************************************//
// Miscellaneous Items
//********************************************************************************//

private _itemMisc = 
[
	"ACRE_BF888S",
	"ACE_MapTools",
	"ACE_RangeCard",
	"ItemCompass",
	"ItemMap",
	"ItemWatch",
	"ToolKit",
	"ACE_CableTie",
    "ACE_wirecutter"
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
	"ACE_tourniquet",

	// Medic cosmetics
	"TC_G_NitrileGloves_1",
	"TC_NVG_NitrileGloves_1"
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
	"CUP_optic_CompM4",
	"RKSL_optic_EOT552",
	
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
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top",

	"rhs_acc_at4_handler", // at4 peep mod
	"rhs_acc_npz" // AK western scope adapter
];

private _itemWeapRifle = 
[
	"CUP_srifle_Mosin_Nagant"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AK101"
];

private _itemWeapAR = 
[
	"rhs_weap_m3a1_specops"
];

private _itemWeapLAT = 
[
	//"rhs_weap_M136",
	//"rhs_weap_M136_hedp",
	"rhs_weap_M590_8RD",
	"rhs_weap_M590_5RD"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Makarov"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhsgref_5Rnd_762x54_m38",
	"CUP_30Rnd_556x45_AK",
	"rhsusf_5Rnd_Slug",
    "rhsusf_8Rnd_Slug",
	
	//Pistol Ammo
	"CUP_8Rnd_9x18_Makarov_M"
];

private _itemAmmoTracer = 
[
	
];

private _itemAmmoAR = 
[
	"rhsgref_30rnd_1143x23_M1911B_2mag_SMG"
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
    
	// command drip
	"$NONE_TC_Helmet_Hat_WitchCop$",
    "$NONE_TC_Helmet_Hat_NavySeer$",
    "H_Beret_blk",
    "CUP_H_Beret_HIL",
    "CUP_H_SLA_BeretRed"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell"
	//"rhs_mag_M397_HET",
	//"rhs_mag_M433_HEDP",
	//"rhs_mag_M441_HE",
	//"rhs_mag_m67"
];

//Special
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

private _ownedDLCs = getDLCs 1; // DLC check, Credit to MajorDanvers
private _hasApex = 395180 in _ownedDLCs;
private _hasContact = 1021790 in _ownedDLCs;
private _hasMarksmen = 332350 in _ownedDLCs;
private _hasLoW = 571710 in _ownedDLCs;

private _itemLoW = [
	"H_Construction_basic_black_F",
	"H_Construction_headset_red_F",
	"H_Construction_basic_red_F"
];

if (_hasLow) then {_itemHeadgear append _itemLoW};

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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	case (_unitRole == "ammg") :
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