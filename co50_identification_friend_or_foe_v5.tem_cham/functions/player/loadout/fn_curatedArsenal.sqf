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
	//Helmet
	"simc_pasgt_m81",
	"simc_pasgt_m81_band",
	"simc_pasgt_m81_scrim",
	"simc_pasgt_m81_scrim_2",
	"simc_pasgt_m81_scrim_3",
	"simc_pasgt_m81_swdg",
	"simc_pasgt_m81_swdg_band",
	"simc_pasgt_m81_swdg_cover_band",
	"simc_pasgt_m81_swdg_cover",
	"simc_pasgt_m81_swdg_high",
	"simc_pasgt_m81_swdg_high_band",
	"simc_pasgt_m81_swdg_low",
	"simc_pasgt_m81_swdg_low_band",
	"simc_pasgt_m81_swdg_low_cover",
	"simc_pasgt_m81_swdg_low_cover_band",
	"simc_bonnie_hat_m81",
	"simc_bonnie_hat_flat_m81",
	"rhs_Booniehat_m81",
	"pca_beanie_oli",
	"CUP_H_FR_BandanaGreen",
	"H_Bandanna_khk",
	"H_Bandanna_gry",
	"Aegis_H_Milcap_nohs_wdl_F",
	"H_Bandanna_khk",

	//Uniform
	"simc_bdu_m81",
	"simc_bdu_kp_m81",
	"simc_bdu_kp_roll_m81",
	"simc_bdu_roll_m81",
	"simc_bdu_m81_2",
	"simc_bdu_kp_m81_2",
	"simc_bdu_kp_roll_m81_2",
	"simc_bdu_roll_m81_2",

	//Vest
	"simc_vest_pasgt_m81",
	"simc_vest_pasgt_lbv_m81",
	"simc_vest_pasgt_lbv_alt_m81",
	"simc_vest_pasgt_lbv_holster_m81",
	"simc_vest_pasgt_lbv_holster_alt_m81",
	"simc_vest_pasgt_lbv_lc2_m81",
	"simc_vest_pasgt_lbv_lc2_alt_m81",
	"simc_vest_pasgt_lc1_m81",
	"simc_vest_pasgt_lc1_combat_m81",
	"simc_vest_pasgt_lc1_etool_m81",
	"simc_vest_pasgt_lc1_gren_m81",
	"simc_vest_pasgt_lc1_holster_m81",
	"simc_vest_pasgt_lc2_m81",
	"simc_vest_pasgt_lc2_alt_m81",
	"simc_vest_pasgt_lc2_holster_m81",
	"simc_vest_pasgt_lc2_saw_m81",


	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"simc_alice_pack",
	"simc_alice_pack_2",
	"simc_alice_pack_3",
	"simc_alice_pack_4",
	"simc_alice_pack_5",
	"simc_alice_pack_6",
	"simc_alice_pack_7",
	"simc_alice_pack_radio",
	"simc_alice_pack_covered_m81",
	"simc_lw_ruck",
	"simc_lw_ruck_light",
	"simc_lw_ruck_load",
	"simc_lw_ruck_m3_bag",
	"simc_lw_ruck_m43",
	"simc_lw_ruck_radio"
];

private _itemGearGren = 
[
	//Vest
];

private _itemGearMedic = 
[
	//Vest 
];

private _itemGearMG = 
[
	//Vest
];

private _itemGearLeader = 
[
	//Vest
];

private _itemGearCrew = 
[
	"75r_nomex_gry",
	"75r_nomex_tan",
	"simc_cvc",
	"simc_cvc_swdg",
	"simc_cvc_swdg_cover",
	"simc_cvc_swdg_low",
	"rhs_weap_m3a1",
	"rhsgref_30rnd_1143x23_M1911B_SMG",
	"rhsgref_30rnd_1143x23_M1T_SMG"
];

private _itemGearPilot = 
[
	"75r_nomex_gry",
	"75r_nomex_tan",
	"rhsusf_hgu56p_black",
	"rhsusf_hgu56p_mask_black",
	"rhsusf_hgu56p_visor_black",
	"rhsusf_hgu56p_visor_mask_black",
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
	"m40_gas_mask_01",
	"m40_gas_mask_01_nbc_hood",
	"m40_gas_mask_01_nbc_hood_m81",
	"m40_gas_mask_02",
	"m40_gas_mask_03",
	"m40_gas_mask_04",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"CUP_RUS_Balaclava_blk",
	"$REMOVE_usm_swdgoggles$",
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"rhs_scarf",
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
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
	"bear_bandana_m81",
	"CUP_G_TK_RoundGlasses_blk",

	//HMD
	"pca_nvg_cigarette",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"m40_gas_mask_01_nvg",
	"m40_gas_mask_02_nvg",
	"m40_gas_mask_03_nvg",
	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_1$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"$NONE_nvg_scrim_wdl_leaves_3$",
	"$NONE_nvg_scrim_wdl_pine$",
	"pca_nvg_gloves_wool",
	"$NONE_usm_nvg_giglovesscarf2$",
	"$NONE_usm_nvg_giglovesscarf$",
	"$NONE_usm_nvg_swdgoggles$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool_blu",
	"pca_nvg_gloves_wool_brn",
	"pca_nvg_gloves_wool_gry",
	"pca_nvg_gloves_wool_grn",
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
	"simc_addon_nomex_long_tan"
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
	"murshun_cigs_lighter"
];

private _itemBino = 
[
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148",
    "ACRE_PRC117F"           
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
	"rhsusf_acc_harris_swivel",
	"rhs_optic_maaws"
];

private _itemAccSpec = 
[
	"cup_optic_acog_ta01b_black"
];

private _itemWeapRifle = 
[
	"CUP_arifle_M16A1",
    "CUP_arifle_M16A2",
	"$REMOVE_hlc_rifle_xm177e2$"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_M16A1GL",
	"CUP_arifle_Colt727_M203",
    "CUP_arifle_Colt727_M203"
];

private _itemWeapAR = 
[
	"CUP_lmg_M249_E1"
];

private _itemWeapMG = 
[
	"CUP_lmg_M60"
];

private _itemWeapDMR = 
[
	"rhs_weap_m14_rail"
];

private _itemWeapLAT = 
[
	"rhs_weap_m72a7"
];

private _itemWeapMAT = 
[
	"ace_dragon_super",
    "ace_dragon_sight"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_m1911a1"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855_Stanag",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",
	"rhsusf_200rnd_556x45_M855_mixed_box",
	"rhsusf_200rnd_556x45_M856_box",
	"pca_mag_100Rnd_556x45_M855_mixed_soft_pouch_od",
	"pca_mag_100Rnd_556x45_M856_soft_pouch_od",
	
	//Pistol Ammo
	"rhsusf_mag_7x45acp_MHP",
	
	//Explosives
	"rhs_mag_m714_White",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67"
];

private _itemAmmoAR = 
[
	"rhsusf_200rnd_556x45_M855_mixed_box",
	"rhsusf_200rnd_556x45_M856_box",
	"pca_mag_100Rnd_556x45_M855_mixed_soft_pouch_od",
	"pca_mag_100Rnd_556x45_M856_soft_pouch_od"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMAT = 
[
    "ace_dragon_super"
];

private _itemAmmoDMR = 
[
	"rhsusf_20Rnd_762x51_m80_Mag",
	"rhsusf_20Rnd_762x51_m62_Mag"
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
	"rhs_mag_m714_White",
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
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemGearMedic + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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