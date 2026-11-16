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
	"U_Simc_TCU_mk3_erdl",
	"simc_tcu_mk3_nomex_erdl",
	"simc_tcu_mk3_nomex_fold_erdl",
	"simc_tcu_mk3_rollh_erdl",
	"simc_tcu_mk3_roll_erdl",
	"simc_tcu_mk3_tee_erdl",
	"simc_tcu_mk3_tuck_erdl",
	"simc_tcu_mk3_rain_parka_erdl"
];

private _itemUniformCrew =
[
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp"
];

private _itemUniformPilot =
[
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp"
];

//Vest
private _itemVest =
[
	"simc_m69",
	"simc_m69_lce_56",
	"simc_m69_lce_56_band",
	"simc_m69_lce_56_medic",
	"simc_m69_lce_56_mg",
	"simc_m69_lce_56_officer",
	"simc_m69_lce_56_officer_band",
	"simc_m69_lce_56_gren"
];

private _itemVestCrew =
[
	"rhsusf_spcs_ocp_crewman"
];

private _itemVestPilot =
[
	"rhsusf_spcs_ocp_crewman"
];

//Headgear
private _itemHeadgear =
[
	"simc_hbt_cap_og107",
	"simc_m1",
	"simc_m1_band",
	"simc_m1_net",
	"simc_m1_net_band",
	"simc_m1_strap",
	"simc_m1_cover_erdl",
	"simc_m1_cover_alt_erdl",
	"simc_m1_cover_loose_erdl",
	"simc_m1_cover_swdg_erdl",
	"simc_m1_cover_mitch_dirt",
	"simc_m1_cover_alt_mitch_dirt",
	"simc_m1_cover_loose_mitch_dirt",
	"simc_m1_cover_mitch_fade",
	"simc_m1_cover_alt_mitch_fade",
	"simc_m1_cover_loose_mitch_fade",
	"simc_bush_hat_og107",
	"simc_bush_hat_flat_og107",
	"simc_bush_hat_foldf_og107",
	"simc_bush_hat_foldr_og107",
	"simc_bush_hat_tie_og107",
	"simc_bush_hat_erdl",
	"simc_bush_hat_flat_erdl",
	"simc_bush_hat_foldf_erdl",
	"simc_bush_hat_foldr_erdl",
	"simc_bush_hat_tie_erdl",
	"H_Bandanna_gry",
	"H_Bandanna_khk",
	"CUP_H_FR_BandanaGreen",
	"$NONE_usm_headwrap_tgrstp$"
];

private _itemHeadgearCrew =
[
	"rhsusf_cvc_helmet"
];

private _itemHeadgearPilot =
[
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_black",
	"rhsusf_hgu56p_visor_black",
	"rhsusf_hgu56p_tan",
	"rhsusf_hgu56p_visor_tan"
];

//Backpack
private _itemBackpack =
[
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"simc_lw_ruck",
	"simc_lw_ruck_light",
	"simc_lw_ruck_load",
	"simc_lw_ruck_m3_bag",
	"simc_lw_ruck_medic",
	"simc_m1941_pack_og107"
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
	"simc_addon_bandoleer_triplet_flak"
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
	"Binocular"
];

private _itemRadio =
[
	"ACRE_PRC148",
	"ACRE_PRC152"
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
	//Sights
	"cup_optic_artel_m14",

	//Grips/Bipods
	"cup_bipod_harris_1a2_l_blk"
];

private _itemWeapRifle =
[
	"sp_fwa_ar15_603_m16a1",
	"rhs_weap_m3a1_specops",
	"rhs_weap_m72a7"
];

private _itemWeapRifleUGL =
[
	"CUP_arifle_M16A1GL"
];

private _itemWeapAR =
[
	"CUP_lmg_M60"
];

private _itemWeapDM =
[
	"CUP_srifle_M21",
	"cup_optic_artel_m14"
];

private _itemWeapLAT =
[
	"rhs_weap_m72a7"
];

private _itemWeapPistol =
[
	"rhsusf_weap_m1911a1",
	"bnae_weap_colt357",
	"rhsusf_mag_7x45acp_MHP",
	"bnae_6Rnd_357M"
];

//Special
private _itemWeapMG =
[
	"CUP_lmg_M60"
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
	"rhsusf_20Rnd_762x51_m80_Mag",
	"rhsusf_20Rnd_762x51_m62_Mag",
	"rhs_mag_20Rnd_556x45_M193_Stanag",
	"rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red",
	"rhs_mag_20Rnd_556x45_M193_2MAG_Stanag",
	"rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red",
	"rhsgref_30rnd_1143x23_M1911B_SMG",
	"rhsgref_30rnd_1143x23_M1T_SMG",
	"rhsgref_30rnd_1143x23_M1911B_2mag_SMG",
	"rhsgref_30rnd_1143x23_M1T_2mag_SMG"
];

private _itemAmmoTracer = [];

private _itemAmmoAR =
[
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoSignal =
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow"
	// "UGL_FlareGreen_F",
	// "UGL_FlareRed_F",
	// "UGL_FlareWhite_F",
	// "UGL_FlareYellow_F",
	// "rhs_mag_m716_yellow",
	// "rhs_mag_m715_Green",
	// "rhs_mag_m713_Red"
];

private _itemExplosive =
[
	// "rhs_mag_m714_White",
	// "SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"rhs_mag_an_m8hc",
	"rhs_grenade_mkii_mag"
	// "rhs_mag_M583A1_white"
];

//Special
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

private _itemEngineer =
[
	"ACE_wirecutter",
	"rhs_ec200_mag",
	"rhs_ec400_mag"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
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
	//Designated Marksman
	case (_unitRole == "dm") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapDM + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		(player distance2D (player getVariable ["startPos", [0, 0, 0]])) < 100
	},
	{},
	[],
	[0,0,0],
	3
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
