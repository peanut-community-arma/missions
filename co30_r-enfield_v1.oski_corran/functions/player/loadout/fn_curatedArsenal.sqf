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
	"U_Simc_CDO",
	"U_Simc_trop_alt",
	"u_hendrix_gorka_1_berezka",
	"u_hendrix_gorka_1",
	"u_hendrix_ichkeria_insurgent_10_2",
	"u_hendrix_ichkeria_insurgent_9_1",
	"u_hendrix_ichkeria_insurgent_1_1",
	"u_hendrix_ichkeria_insurgent_1_2",
	"U_I_C_Soldier_Bandit_2_F",
	"U_I_C_Soldier_Bandit_3_F",
	"U_C_ArtTShirt_01_v6_F",
	"U_C_ArtTShirt_01_v1_F",
	"Rev_U_C_baracasfc_F",
	"U_Simc_bdu_civ",
	"U_simc_bdu_civ_trop",
	"U_simc_civ_jean_blau_dunkel",
	"U_Simc_DCU_civ",
	"U_simc_civ_jean_rot",
	"U_simc_civ_jean_rot_ligt",
	"U_simc_swetr1_floyd",
	"U_simc_swetr1_ghoat"
];

private _itemUniformCrew = 
[
	"U_Simc_CDO",
	"U_Simc_trop_alt"
];

private _itemUniformPilot = 
[
	"U_Simc_CDO",
	"U_Simc_trop_alt"
];

//Vest
private _itemVest = 
[
	"V_TacVest_camo",
	"V_TacVest_grn",
	"V_TacVest_oli",
	"V_TacVest_gry",
	"V_TacVest_blk",
	"Atlas_Tacvest_Ard_F"
];

private _itemVestCrew = 
[
	"V_TacVest_tan"
];

private _itemVestPilot = 
[
	"V_TacVest_tan"
];

//Headgear 
private _itemHeadgear = 
[
	"H_Watchcap_camo",
	"H_Watchcap_cbr",
	"H_Bandanna_cbr",
	"H_Bandanna_khk",
	"hendrix_ushanka",
	"CUP_H_C_Beret_04",
	"H_Beret_brn",
	"CUP_H_C_Beret_02",
	"H_Cap_blk",
	"H_Cap_grn_BI",
	"H_Cap_grn",
	"CUP_H_NAPA_Fedora",
	"H_Shemag_khk",
	"TC_Helmet_CowboyHat1",
	"TC_Helmet_CowboyHat3",
	"TC_Helmet_CowboyHat2"
];

private _itemHeadgearCrew = 
[
	"H_Watchcap_camo"
];

private _itemHeadgearPilot = 
[
	"H_Watchcap_camo"
];

//Backpack 
private _itemBackpack = 
[
	"B_TacticalPack_blk",
	"B_Carryall_blk"
];

private _itemBackpackCrew = 
[
	"B_TacticalPack_blk"
];

private _itemBackpackPilot = 
[
	"B_CivilianBackpack_01_Everyday_Black_F"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Balaclava_blk",
	"G_Balaclava_Halloween_01",
	"G_Bandanna_aviator",
	"G_Bandanna_CandySkull",
	"G_Bandanna_TransPride",
	"G_Bandanna_kawaii",
	"G_claysack",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"TC_G_NitrileGloves_1",
	"JAM_G_PlashPalatka_01_brn",
	"G_Respirator_blue_F",
	"G_Respirator_white_F",
	"G_Respirator_yellow_F",
	"CUP_G_TK_RoundGlasses",
	"TC_Glasses_Hat_Santa1_Buffalo1",
	"TC_Glasses_Hat_Santa1_Garf1",
	"TC_Glasses_Hat_Santa1_Pride1",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_white",
	
	"bandolier_flak_556_addon",
	"bandolier_flak_556_addon_left",
	"bandolier_flak_556_addon_right",
	"claysac_flak_addon",
	"sns_hair",
	"sns_hair_long_2",
	"sns_hair_long",
	"immersion_cigs_cigar0_nv",
	"pca_nvg_cigarette",
	"murshun_cigs_cig0_nv",
	"TC_NVG_NitrileGloves_1",
	"JAM_NV_PlashPalatka_01_brn",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"nomex_4_fold_addon",
	"nomex_2_fold_addon",
	"JAM_NV_Poncho_01_grn"
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
	
	//Removed AT4 open sight and Adapter for AKs (both from RHS)
];

private _itemBino = 
[
	"Binocular",
	"bnae_m97_virtual",
	"bnae_m97_camo1_virtual",
	"bnae_m97_s_virtual",
	"5Rnd_Slug_Magazine",
	"5Rnd_00_Buckshot_Magazine"
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
	"ACE_personalAidKit",
	"U_C_Paramedic_01_F"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	
];

private _itemWeapRifle = 
[
	"sp_fwa_enfield_no5",
	"sp_fwa_enfield_no4t",
	"CUP_srifle_LeeEnfield",
	
	"CUP_hgun_Colt1911",
	"CUP_hgun_Glock17",
	"CUP_hgun_Deagle",
	"CUP_hgun_M9",
	"CUP_hgun_Makarov",
	"bnae_saa_virtual",
	"bnae_l35_virtual",
	"CUP_hgun_TEC9"
];

private _itemWeapRifleUGL = 
[
	"sp_fwa_enfield_no4"
];

private _itemWeapAR = 
[
	"CUP_arifle_FNFAL5061_wooden",
	"CUP_arifle_FNFAL"
];

private _itemWeapLAT = 
[
	"sp_fwa_smg_sten_mk2",
	"sp_fwa_32Rnd_9x19_sten",
	"sp_fwa_32Rnd_9x19_sten_Ball",
	"sp_fwa_32Rnd_9x19_sten_Tracer"
];

private _itemWeapPistol = 
[
	
];

//Special
private _itemWeapMG = 
[
	"sp_fwa_bren_mk2"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS",
	"CUP_optic_MAAWS_Scope"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"sp_fwa_10Rnd_303_No4",
	"CUP_hgun_TEC9",
	"6Rnd_357M_Magazine",
	"CUP_7Rnd_45ACP_1911",
	"CUP_17Rnd_9x19_glock17",
	"CUP_7Rnd_50AE_Deagle",
	"CUP_8Rnd_9x18_Makarov_M",
	"8Rnd_9x19_Magazine"
];

private _itemAmmoTracer = 
[
	"sp_fwa_1Rnd_303_No4_Tracer"
];

private _itemAmmoAR = 
[
	"sp_fwa_20Rnd_762_FAL_Metric",
	"sp_fwa_20Rnd_762_FAL_Metric_Ball",
	"sp_fwa_20Rnd_762_FAL_Metric_Tracer",
	"sp_fwa_30Rnd_Curved_762_FAL_Metric",
	"sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer",
	"sp_fwa_30Rnd_Straight_762_FAL_Metric_Tracer"
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
	"ACE_40mm_Flare_white",
	"sp_fwa_1rnd_riflegrenade_mas_flare",
	"CUP_U_C_Priest_01"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67",
	"sp_fwa_1rnd_riflegrenade_mas_ap"
];

//Special
private _itemAmmoMG = 
[
	"sp_fwa_30Rnd_303_Bren",
	"sp_fwa_30Rnd_303_Bren_Ball",
	"sp_fwa_30Rnd_303_Bren_Tracer"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M"
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