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
	//Helmet
	"simc_hbt_cap_og107",
	"simc_m1",
	"simc_m1_band",
	"simc_m1_net",
	"simc_m1_net_band",
	"simc_m1_strap",
	"simc_m1_cover_mitch",
	"simc_m1_cover_alt_mitch",
	"simc_m1_cover_loose_mitch",
	"simc_m1_cover_swdg_mitch",
	"simc_m1_cover_mitch_dirt",
	"simc_m1_cover_alt_mitch_dirt",
	"simc_m1_cover_loose_mitch_dirt",
	"simc_m1_cover_swdg_mitch_dirt",
	"simc_m1_cover_mitch_fade",
	"simc_m1_cover_alt_mitch_fade",
	"simc_m1_cover_loose_mitch_fade",
	"simc_m1_cover_swdg_mitch_fade",
	"simc_bush_hat_og107",
	"simc_bush_hat_flat_og107",
	"simc_bush_hat_foldf_og107",
	"simc_bush_hat_foldr_og107",
	"simc_bush_hat_tie_og107",
	"H_Bandanna_gry",
	"H_Bandanna_khk",
	"CUP_H_FR_BandanaGreen",
	"$NONE_usm_headwrap_tgrstp$",

	//Uniform
	"simc_tcu_mk3_og107_2",
	"simc_tcu_mk3_nomex_og107_2",
	"simc_tcu_mk3_nomex_fold_og107_2",
	"simc_tcu_mk3_rollh_og107_2",
	"simc_tcu_mk3_roll_og107_2",
	"simc_tcu_mk3_tee_og107_2",
	"simc_tcu_mk3_tuck_og107_2",
	"simc_tcu_mk3_og107_dirt",
	"simc_tcu_mk3_nomex_og107_dirt",
	"simc_tcu_mk3_nomex_fold_og107_dirt",
	"simc_tcu_mk3_rollh_og107_dirt",
	"simc_tcu_mk3_roll_og107_dirt",
	"simc_tcu_mk3_tee_og107_dirt",
	"simc_tcu_mk3_tuck_og107_dirt",
	"simc_tcu_mk3_rain_parka_og107_2",

	//Vest
	"simc_m1956_lce",
	"simc_m1956_lce_frag",
	"simc_m1956_lce_m43",
	"simc_m1956_lce_light",
	"simc_m1956_lce_light_frag",
	"simc_m1956_lce_light_m43",
	"simc_m1956_lce_officer",
	"simc_m1956_lce_officer_band",
	"simc_m1956_lce_officer_m43",
	"simc_m1956_lce_officer_light",
	"simc_m1956_lce_patrol",
	"simc_m1956_lce_patrol_frag",
	"simc_m1956_lce_patrol_frag_band",
	"simc_m1956_lce_patrol_light",

	"simc_m69",
	"simc_m69_lce_56",
	"simc_m69_lce_56_band",
	"simc_m69_lce_56_frag",
	"simc_m69_lce_56_frag_band",
	"simc_m69_lce_56_garrison",
	"simc_m69_lce_56_light",
	"simc_m69_lce_56_light_band",
	"simc_m69_lce_56_officer",
	"simc_m69_lce_56_officer_band",

	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"simc_lw_ruck",
	"simc_lw_ruck_light",
	"simc_lw_ruck_load",
	"simc_lw_ruck_m3_bag",
	"simc_lw_ruck_m43",
	"simc_lw_ruck_medic",
	"simc_lw_ruck_m7_bag",
	"simc_lw_ruck_radio",
	"simc_tropical_pack",
	"simc_tropical_pack_canvas",
	"simc_tropical_pack_frame",
	"simc_tropical_pack_frame_canvas",
	"simc_tropical_pack_patrol",
	"simc_tropical_pack_scout",

	"simc_alice_pack",
	"simc_alice_pack_2",
	"simc_alice_pack_3",
	"simc_alice_pack_4",
	"simc_alice_pack_5",
	"simc_alice_pack_6",
	"simc_alice_pack_7"
];

private _itemGearGren = 
[
	//Vest
	"simc_m69_lce_56_gren",
	"simc_m1956_lce_gren"
];

private _itemGearMedic = 
[
	//Vest 
	"simc_m1956_lce_medic",
	"simc_m1956_lce_medic_holster",
	"simc_m69_lce_56_medic"
];

private _itemGearMG = 
[
	//Vest
	"simc_m69_lce_56_mg"
];

private _itemGearLeader = 
[
	//Vest
];

private _itemGearCrew = 
[
	//Uniform 
	"H_Simc_CVC",
	"simc_cvc_swdg",
	"simc_cvc_swdg_cover",
	"simc_cvc_swdg_low"
];

private _itemGearPilot = 
[
	//Uniform 
	"rhsusf_hgu56p_green",
	"rhsusf_hgu56p_mask_green",
	"rhsusf_hgu56p_visor_green",
	"rhsusf_hgu56p_visor_mask_green",
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_mask",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_visor_mask",
	"rhsusf_hgu56p_pink",
	"rhsusf_hgu56p_mask_pink",
	"rhsusf_hgu56p_visor_pink",
	"rhsusf_hgu56p_visor_mask_pink",
	"rhsusf_hgu56p_mask_smiley",
	"rhsusf_hgu56p_visor_mask_smiley",
	"rhsusf_hgu56p_white",
	"rhsusf_hgu56p_visor_white"
];

private _itemCosmetic = 
[
	//Face
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Bandanna_CandySkull",
	"G_Cigarette",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"$NONE_usm_gigloves$",
	"rhssaf_veil_Green",
	"simc_bandoleer_gren",
	"simc_bandoleer_center",
	"simc_bandoleer_duplet",
	"simc_bandoleer_duplet_flak",
	"simc_bandoleer_left",
	"simc_bandoleer_left_flak",
	"simc_bandoleer_low",
	"simc_bandoleer_low_flak",
	"simc_bandoleer_right",
	"simc_bandoleer_right_flak",
	"simc_bandoleer_triplet",
	"simc_bandoleer_triplet_flak",
	"simc_claysack",
	"simc_claysack_flak",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
	"simc_nomex_blk",
	"simc_nomex_alt",
	"simc_nomex",
	"simc_nomex_tan",
	"simc_nomex_fold_blk",
	"simc_nomex_fold_alt",
	"simc_nomex_fold",
	"simc_nomex_fold_tan",
	"simc_nomex_long_blk",
	"simc_nomex_long_alt",
	"simc_nomex_long",
	"simc_nomex_long_tan",


	//HMD
	"pca_nvg_cigarette",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_1$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"$NONE_nvg_scrim_wdl_leaves_3$",
	"$NONE_nvg_scrim_wdl_pine$",
	"pca_nvg_gloves_wool",
	"simc_addon_nomex_blk",
	"simc_addon_nomex_alt",
	"simc_addon_nomex",
	"simc_addon_nomex_tan",
	"simc_addon_nomex_fold_blk",
	"simc_addon_nomex_fold_alt",
	"simc_addon_nomex_fold",
	"simc_addon_nomex_fold_tan",
	"simc_addon_nomex_long_blk",
	"simc_addon_nomex_long_alt",
	"simc_addon_nomex_long",
	"simc_addon_nomex_long_tan",
	"simc_addon_bandoleer_gren",
	"simc_addon_bandoleer_center",
	"simc_addon_bandoleer_duplet",
	"simc_addon_bandoleer_duplet_flak",
	"simc_addon_bandoleer_left",
	"simc_addon_bandoleer_left_flak",
	"simc_addon_bandoleer_low",
	"simc_addon_bandoleer_low_flak",
	"simc_addon_bandoleer_right",
	"simc_addon_bandoleer_right_flak",
	"simc_addon_bandoleer_triplet",
	"simc_addon_bandoleer_triplet_flak",
	"simc_nvg_claysack",
	"simc_nvg_claysack_flak"
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
	"ToolKit",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"murshun_cigs_matches"
];

private _itemBino = 
[
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148"
];

private _itemEng = 
[
	"ACE_Clacker",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag"
];

private _itemAcc = 
[
	//Sights
	"cup_optic_artel_m14",
	
	//Grips/Bipods
	"cup_bipod_harris_1a2_l_blk",
	"sp_fwa_bipod_ar15_clipon"
];

private _itemAccSpec = 
[
	//
];

private _itemWeapRifle = 
[
	"CUP_smg_M3A1",
	"sp_fwa_ar15_603_m16a1",
	"rhs_weap_M590_8RD",
	"rhs_weap_M590_5RD"
];

private _itemWeapRifleUGL = 
[
	"sp_fwa_ar15_603_m16a1_m203"
];

private _itemWeapAR = 
[
	"CUP_lmg_M60"
];

private _itemWeapMG = 
[
	"CUP_lmg_M60"
];

private _itemWeapDMR = 
[
	"CUP_srifle_M21"
];

private _itemWeapLAT = 
[
	"rhs_weap_m72a7"
];

private _itemWeapMAT = 
[
	"sp_fwa_m67"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_m1911a1",
	"CUP_hgun_TaurusTracker455"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_20Rnd_762x51_DMR",
	"CUP_20Rnd_TE1_Red_Tracer_762x51_DMR",
	"rhsusf_8Rnd_00Buck",
	"rhsusf_8Rnd_Slug",
	"rhsusf_5Rnd_00Buck",
	"rhsusf_5Rnd_Slug",
	"CUP_30Rnd_45ACP_M3A1_BLK_M",
	"CUP_30Rnd_45ACP_Red_Tracer_M3A1_BLK_M",
	"rhs_mag_20Rnd_556x45_M193_Stanag",
	"rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red",
	"CUP_6Rnd_45ACP_M",
	"rhsusf_mag_7x45acp_MHP",
	
	//Explosives
	"rhs_mag_m714_White",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_grenade_mkii_mag"
];

private _itemAmmoAR = 
[
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMAT = 
[
	"fwa_1rnd_m67_HEAT",
	"fwa_1rnd_m67_HE"
];

private _itemAmmoDMR = 
[
	"CUP_20Rnd_762x51_DMR",
	"CUP_20Rnd_TE1_Red_Tracer_762x51_DMR"
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
	"rhs_mag_m716_yellow",
	"rhs_mag_m715_Green",
	"rhs_mag_m713_Red"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (Light Anti-Tank)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemGearGren + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemGearGren + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemGearGren + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemGearMedic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemGearMedic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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