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
	"rhs_uniform_afghanka_winter_boots",
	"rhs_uniform_afghanka_winter"
];

private _itemUniformCrew = 
[
	"rhs_uniform_afghanka_winter_boots",
	"rhs_uniform_afghanka_winter"
];

private _itemUniformPilot = 
[
	"rhs_uniform_afghanka_winter_boots",
	"rhs_uniform_afghanka_winter"
];

//Vest
private _itemVest = 
[
	"rhs_belt_AK",
	"rhs_belt_AK_back",
	"rhs_belt_RPK",
	"rhs_belt_AK4_back",
	"rhs_belt_AK4",
	"rhs_belt_svd"
];

private _itemVestCrew = 
[
	"rhs_belt_AK",
	"rhs_belt_AK_back",
	"rhs_belt_RPK",
	"rhs_belt_AK4_back",
	"rhs_belt_AK4",
	"rhs_belt_svd"
];

private _itemVestPilot = 
[
	"rhs_belt_AK",
	"rhs_belt_AK_back",
	"rhs_belt_RPK",
	"rhs_belt_AK4_back",
	"rhs_belt_AK4",
	"rhs_belt_svd"
];

//Headgear 
private _itemHeadgear = 
[
	"rhs_ssh68_2",
	"rhs_pilotka",
	"rhs_fieldcap_m88",
	"rhs_fieldcap_m88_back"
];

private _itemHeadgearLead = 
[
	"rhs_cossack_visor_cap",
	"rhs_cossack_visor_cap_tan"
];

private _itemHeadgearPilot = 
[
	"rhs_pilotka"
];

//Backpack 
private _itemBackpack = 
[
	"rhs_r148",
	"rhs_rd54"
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
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_kawaii",
	"G_Bandanna_Vampire_01",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"rhs_scarf",
	"rhs_balaclava",
	"rhs_balaclava1_olive",
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool_brn",
	"pca_nvg_gloves_wool_gry",
	"pca_nvg_gloves_wool_grn",
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack"
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
	
	//AT4 open sight
	"rhs_acc_at4_handler",
	
	//Adapter for AK's
	"rhs_acc_npz"
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
	"CUP_srifle_Mosin_Nagant"
];

private _itemWeapRifle = 
[
	"Opf_arifle_SKS_F",
	"CUP_srifle_Mosin_Nagant"
];

private _itemWeapSh = 
[
	"CUP_srifle_Mosin_Nagant",
	"CUP_optic_PEM"
];

private _itemWeapRifleUGL = 
[
	"$NONE_fwa_weap_pps43$",
	"$NONE_fwa_weap_ppsh41$",
	"CUP_hgun_FlareGun",
	"CUP_IllumFlareGreen_265_M",
	"CUP_IllumFlareRed_265_M",
	"CUP_IllumFlareWhite_265_M",
	"CUP_IllumFlareYellow_265_M"
];

private _itemWeapAR = 
[
	"$NONE_fwa_weap_rpd$"
];

private _itemWeapLAT = 
[
	"CUP_srifle_ksvk",
	"CUP_5Rnd_127x108_KSVK_M"
];

private _itemWeapPistol = 
[
	"rhs_weap_makarov_pm",
	
	//Pistol Ammo
	"rhs_mag_9x18_8_57N181S"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhsgref_5Rnd_762x54_m38",
	"fwa_10rnd_762x39_sks",
	"fwa_10rnd_762x39_sks_tracer",
	"fwa_35rnd_762x25mm_ppsh",
	"fwa_35rnd_762x25mm_ppsh_tracer_green",
	"fwa_71rnd_762x25mm_ppsh",
	"fwa_71rnd_762x25mm_ppsh_tracer_green",
	"fwa_35rnd_762x25mm_pps43",
	"fwa_35rnd_762x25mm_pps43_tracer_green"
];

private _itemAmmoTracer = 
[
	"fwa_35rnd_762x25mm_pps43_tracer_green",
	"fwa_71rnd_762x25mm_ppsh_tracer_green",
	"fwa_35rnd_762x25mm_ppsh_tracer_green"
];

private _itemAmmoAR = 
[
	"fwa_100rnd_762x39mm_rpd_mixed",
	"fwa_100rnd_762x39mm_rpd",
	"fwa_100rnd_762x39mm_rpd_tracer"
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
	"CUP_IllumFlareGreen_265_M",
	"CUP_IllumFlareRed_265_M",
	"CUP_IllumFlareWhite_265_M",
	"CUP_IllumFlareYellow_265_M"
];

private _itemExplosive = 
[
	"SmokeShell",
	"rhs_mag_f1"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Sharpshooter 
	case (_unitRole == "sh") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapPistol + _itemWeapRifle + _itemWeapSh + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemHeadgearLead + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemHeadgearLead + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemHeadgearLead + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemHeadgearLead + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Radio Operator
	case (_unitRole == "rad") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemRadio + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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