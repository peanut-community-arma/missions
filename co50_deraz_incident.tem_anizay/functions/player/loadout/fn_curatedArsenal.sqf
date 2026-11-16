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
	"$NONE_usm_bdu_taki$",
	"$NONE_usm_bdu_bti_taki$",
	"$NONE_usm_bdu_btisrl_taki$",
	"$NONE_usm_bdu_srl_taki$",
	"$NONE_usm_bdu_srh_taki$",
	
	//Vest
	"V_Simc_56_60_ligt_zusp",
	"V_Simc_67",
	"V_Simc_56_ligt_zusp",
	"V_Simc_56_alt",
	"V_Simc_56",
	
	//Headgear
	"pca_m88_fieldcap",
	"pca_m88_fieldcap_taki_lizard",
	"pca_ssh68_helmet",
	"pca_ssh68_helmet_ogrn",
	"pca_ssh68_helmet_taki_clouds",
	"pca_ssh68_helmet_cover",
	"pca_ssh68_helmet_cover_taki_lizard",
	
	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"pca_rd54_oli",
	"pca_rd54_tan",
	"B_TacticalPack_oli",
	"CUP_B_AlicePack_Khaki"
];

private _itemGearCrew = 
[
	//Uniform
	"$NONE_usm_bdu_taki$",
	"$NONE_usm_bdu_bti_taki$",
	"$NONE_usm_bdu_btisrl_taki$",
	"$NONE_usm_bdu_srl_taki$",
	"$NONE_usm_bdu_srh_taki$",
	
	//Vest
	"V_Simc_67",
	"V_Simc_56_ligt_zusp",
	"V_Simc_56_alt",
	"V_Simc_56",
	
	//Headgear
	"rhs_tsh4",
	"rhs_tsh4_ess",
	
	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"pca_rd54_oli",
	"pca_rd54_tan",
	"B_TacticalPack_oli",
	"CUP_B_AlicePack_Khaki"
];

private _itemCosmetic = 
[
	//BIS
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_tan",
	"G_Spectacles",
	"G_Spectacles_Tinted",
	"G_Squares",
	"G_Squares_Tinted",
	
	//RHS
	"rhs_scarf",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	
	//PCA
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	
	//Aegis
	"G_Bandanna_CandySkull",
	"G_Bandanna_kawaii",
	"G_Bandanna_Skull2",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Syndikat2",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"G_Shemag_tan",
	"G_Shemag_white",
	
	//DHI
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	
	//CUP
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf4",
	"CUP_FR_NeckScarf5",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_TK_NeckScarf"
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
	"ToolKit"
];

private _itemBino = 
[
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemAcc = [];

private _itemWeapRifle = 
[
	"CUP_arifle_FNFAL",
	"CUP_arifle_FNFAL_desert",
	"CUP_arifle_FNFAL_sand",
	"CUP_arifle_FNFAL5061",
	"CUP_arifle_FNFAL5062"
];

private _itemWeapCarbine = 
[
	"CUP_arifle_FNFAL_OSW"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_M16A1GL",
	"CUP_arifle_M16A1E1GL"
];

private _itemWeapAR = 
[
	"CUP_lmg_MG3"
];

private _itemWeapLAT = 
[
	"rhs_weap_m72a7"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Makarov"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M193_Stanag",
	"rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red",
	"CUP_20Rnd_762x51_FNFAL_M",
	"CUP_20Rnd_762x51_FNFAL_Desert_M",
	"CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_M",
	"CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_Desert_M",
	
	//Pistol Ammo
	"CUP_8Rnd_9x18_Makarov_M",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"SmokeShell",
	"CUP_HandGrenade_M67"
];

private _itemAmmoAR = 
[
	"CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
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
	"UGL_FlareYellow_F"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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