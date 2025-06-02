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
	//Uniform
	"simc_bdu_m81",
	"simc_bdu_kp_m81",
	"simc_bdu_kp_roll_m81",
	"simc_bdu_roll_m81",
	
	//Vest
	"simc_vest_pasgt_lc1_m81",
	"simc_vest_pasgt_lc1_combat_m81",
	"simc_vest_pasgt_lc1_etool_m81",
	"simc_vest_pasgt_lc1_holster_m81",
	"simc_vest_pasgt_lc2_m81",
	"simc_vest_pasgt_lc2_alt_m81",
	"simc_vest_pasgt_lc2_holster_m81",
	"simc_vest_pasgt_lc2_saw_m81",
	"simc_vest_pasgt_lc1_od3",
	"simc_vest_pasgt_lc1_combat_od3",
	"simc_vest_pasgt_lc1_etool_od3",
	"simc_vest_pasgt_lc1_holster_od3",
	"simc_vest_pasgt_lc2_od3",
	"simc_vest_pasgt_lc2_alt_od3",
	"simc_vest_pasgt_lc2_holster_od3",
	"simc_vest_pasgt_lc2_saw_od3",
	
	//Headgear
	"simc_pasgt_m81",
	"simc_pasgt_m81_band",
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
	
	//Backpack
	"simc_lw_ruck_m7_bag",
	"simc_lw_ruck_m43",
	"simc_lw_ruck_m3_bag",
	"simc_lw_ruck_light",
	"simc_lw_ruck",
	"pca_backpack_invisible"
];

private _itemGearFAC = 
[
	//Bag
	"simc_lw_ruck_radio"
];

private _itemGearMedic = 
[
	//Bag
	"simc_lw_ruck_medic"
];

private _itemGearLeader = 
[
	//Vest
	"simc_vest_pasgt_lc1_gren_m81",
	"simc_vest_pasgt_lc1_gren_od3",
	
	//Bag
	"simc_lw_ruck_radio"
];

private _itemGearPilot = 
[
	//Uniform 
	"simc_tcu_mk3_og107_dirt_2",
	"simc_tcu_mk3_nomex_fold_og107_dirt_2",
	"simc_tcu_mk3_nomex_og107_dirt_2",
	"simc_tcu_mk3_rollh_og107_dirt_2",
	"simc_tcu_mk3_roll_og107_dirt_2",
	
	//Vest 
	"simc_vest_pasgt_od3",
	
	//Headgear
	"CUP_H_SPH4_visor",
	"CUP_H_SPH4",
	
	//Backpack
	"pca_backpack_invisible"
];

private _itemCosmetic = 
[
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_kawaii",
	"bear_bandana_m81",
	"G_Bandanna_oli",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
	"G_Spectacles_Tinted",
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"G_Aviator",
	
	"rhs_balaclava",
	"CUP_RUS_Balaclava_blk",
	"G_Balaclava_blk",
	"bear_balaclava1_black",
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	"$NONE_pca_nvg_ess_blk$",
	"murshun_cigs_cig0_nv",
	"murshun_cigs_cig0",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_tactical_goggles$",
	"Goggles_grn_F",
	"pca_nvg_gloves_wool",
	"$NONE_usm_nvg_giglovesscarf$",
	"$NONE_usm_nvg_giglovesscarf2$",
	"$NONE_usm_nvg_swdgoggles$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"G_Spectacles_Tinted",
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$"
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
	"ACRE_PRC117F"
];

private _itemWeapRifle = 
[
	"sp_fwa_ar15_645_a2"
];

private _itemWeapRifleUGL = 
[
	"sp_fwa_ar15_705_m16a2_m203"
];

private _itemWeapAR = 
[
	"rhs_weap_m249"
];

private _itemWeapLAT = 
[
	"rhs_weap_m72a7"
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
	
	//cigs
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
];

private _itemAmmoAR = 
[
	"pca_mag_100Rnd_556x45_M855_soft_pouch_od",
	"pca_mag_100Rnd_556x45_M855_mixed_soft_pouch_od",
	"pca_mag_100Rnd_556x45_M856_soft_pouch_od",
	"pca_mag_200Rnd_556x45_M855_soft_pouch_od",
	"pca_mag_200Rnd_556x45_M855_mixed_soft_pouch_od",
	"pca_mag_200Rnd_556x45_M856_soft_pouch_od"
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
	"ACE_40mm_Flare_green",
	"ACE_40mm_Flare_red",
	"ACE_40mm_Flare_white"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (Light Anti-Tank)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemWeapRifle + _itemWeapLAT + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//FAC
	case (_unitRole == "FAC") : 
	{
		[arsenal, (_itemGear + _itemGearFAC + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear  + _itemCosmetic + _itemMisc + _itemMed + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear  + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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