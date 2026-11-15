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
	"U_C_FormalSuit_01_black_F",
	"U_C_FormalSuit_01_gray_F",
	"U_C_FormalSuit_01_khaki_F",
	"U_C_Uniform_Formal_01_white_F",
	"CUP_U_C_Functionary_jacket_02",
	"CUP_U_C_Functionary_jacket_01",
	"CUP_U_C_Functionary_jacket_03",
	"CUP_U_C_Citizen_03",
	"CUP_U_C_Citizen_04",
	"CUP_U_C_Citizen_01",
	"CUP_U_C_Citizen_02",
	"U_simc_civ_jean_khk_tuck",
	"U_simc_civ_jean_khk_tuck_trop"
];

private _itemUniformCrew = 
[
	"CUP_U_B_USArmy_ACU_OCP",
	"CUP_U_B_USArmy_ACU_Rolled_OCP"
];

private _itemUniformPilot = 
[
	"CUP_U_B_USArmy_ACU_OCP",
	"CUP_U_B_USArmy_ACU_Rolled_OCP"
];

//Vest
private _itemVest = 
[
	"pca_vest_invisible",
	"JAM_V_Sov_Webgear_rpk",
	"JAM_V_Equip_VietMinh_smg_01",
	"JAM_V_Equip_VietMinh_grenade_02",
	"JAM_V_Lifchik_V1_khk",
	"JAM_V_Lifchik_V1_belt_khk"
];

private _itemVestCrew = 
[
	"CUP_V_B_IOTV_OCP_Rifleman_USArmy"
];

private _itemVestPilot = 
[
	"CUP_V_B_IOTV_OCP_Rifleman_USArmy"
];

//Headgear 
private _itemHeadgear = 
[
	"H_Cap_blk",
	"H_Cap_red",
	"H_Hat_brown",
	"H_Hat_checker",
	"H_Hat_grey",
	"H_Hat_tan",
	"H_StrawHat_dark",
	"CUP_H_C_Beret_01",
	"CUP_H_PMC_Cap_Tan",
	"CUP_H_C_Ushanka_03",
	"CUP_H_C_Ushanka_02",
	"CUP_H_C_Ushanka_01",
	"CUP_H_C_Ushanka_04"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC"
];

private _itemHeadgearPilot = 
[
	"H_PilotHelmetHeli_B"
];

//Backpack 
private _itemBackpack = 
[
	"pca_backpack_invisible",
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
	//Face
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_tan",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Bandanna_TransPride",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"CUP_G_WristWatch",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"JAM_G_Gloves_Leather_blk",
	"JAM_G_Glasses_Spamton",
	"JAM_G_Gloves_wool_cut_blk",
	"JAM_G_Gloves_wool_cut_brn",
	"G_LEN_BCG",

	//HMD
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"JAM_NV_Gloves_Leather_blk",
	"JAM_NV_Gloves_Wool_cut_blk",
	"JAM_NV_Gloves_Wool_cut_brn",
	"pca_nvg_cigarette"
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
	"murshun_cigs_cigpack",
	"murshun_cigs_matches"

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

private _itemAcc = [];

private _itemWeapRifle = 
[
	"sp_fwa_smg_mp40_black",
	"sp_fwa_smg_mat49",
	"sp_fwa_smg_portsaid_m45",
	"bnae_m97_virtual",
	"bnae_m97_s_virtual",
	"bnae_mk1_virtual",
	"CUP_smg_UZI",
	"Opf_arifle_SKS_F",
	"CUP_smg_Mac10",
	"CUP_smg_SA61",
	"sp_fwa_mas_49",
	"CUP_hgun_Browning_HP",
	"CUP_hgun_CZ75",
	"CUP_hgun_Colt1911",
	"CUP_hgun_Makarov",
	"CUP_hgun_Mac10",
	"CUP_hgun_SA61",
	"CUP_hgun_TaurusTracker455",
	"CUP_hgun_TT",
	"hlc_pistol_C96_Prussian",
	"bnae_l35_virtual",
	"bnae_l35_c_virtual",
	"bnae_saa_c_virtual"
];

private _itemWeapRifleUGL = [];

private _itemWeapAR = 
[
	"sp_fwa_fn_modelDA1",
	"ptv_MG3"
];

private _itemWeapLAT = [];

private _itemWeapPistol = 
[
	"CUP_hgun_Browning_HP",
	"CUP_hgun_CZ75",
	"CUP_hgun_Colt1911",
	"CUP_hgun_Makarov",
	"CUP_hgun_Mac10",
	"CUP_hgun_SA61",
	"CUP_hgun_TaurusTracker455",
	"CUP_hgun_TT",
	"hlc_pistol_C96_Prussian",
	"bnae_l35_virtual",
	"bnae_l35_c_virtual",
	"bnae_saa_c_virtual",
	
	//Pistol Ammo
	"CUP_7Rnd_45ACP_1911",
	"CUP_13Rnd_9x19_Browning_HP",
	"CUP_16Rnd_9x19_cz75",
	"CUP_8Rnd_9x18_Makarov_M",
	"CUP_30Rnd_45ACP_MAC10_M",
	"CUP_30Rnd_45ACP_Green_Tracer_MAC10_M",
	"CUP_20Rnd_B_765x17_Ball_M",
	"CUP_6Rnd_45ACP_M",
	"CUP_8Rnd_762x25_TT",
	"hlc_10Rnd_9x19_B_C96",
	"8Rnd_9x19_Magazine",
	"6Rnd_357M_Magazine"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
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
	"sp_fwa_36Rnd_9mm_carlg_m45",
	"sp_fwa_32Rnd_9x19_mp40",
	"sp_fwa_32Rnd_9x19_MAT49",
	"5Rnd_00_Buckshot_Magazine",
	"5Rnd_Slug_Magazine",
	"10Rnd_303_Magazine",
	"CUP_32Rnd_9x19_UZI_M",
	"CUP_10Rnd_762x39_SaigaMk03_M",
	"sp_fwa_10rnd_75_mas49_ball",
	"CUP_7Rnd_45ACP_1911",
	"CUP_13Rnd_9x19_Browning_HP",
	"CUP_16Rnd_9x19_cz75",
	"CUP_8Rnd_9x18_Makarov_M",
	"CUP_30Rnd_45ACP_MAC10_M",
	"CUP_30Rnd_45ACP_Green_Tracer_MAC10_M",
	"CUP_20Rnd_B_765x17_Ball_M",
	"CUP_6Rnd_45ACP_M",
	"CUP_8Rnd_762x25_TT",
	"hlc_10Rnd_9x19_B_C96",
	"8Rnd_9x19_Magazine",
	"6Rnd_357M_Magazine"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_556x45_Stanag_Tracer_Red"
];

private _itemAmmoAR = 
[
	"CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M",
	"ptv_50Rnd_762x51_T_MG3",
	"ptv_100Rnd_762x51_T_MG3",
	"ptv_50Rnd_762x51_M_MG3",
	"ptv_100Rnd_762x51_M_MG3"
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
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
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