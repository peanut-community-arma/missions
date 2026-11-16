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

// World War Whatever loadout, last modified 2023-05-25
// Leadership has clackers for demo missions. rm_lat repurposed as radio operator

params ["_unit"];

if !(hasInterface) exitWith {};

private _unitRole = _unit getVariable ["tmf_assignGear_role", nil];

arsenal = "building" createVehicleLocal [0,0,0];
_unit setVariable ["startPos", getPosASL _unit];

//********************************************************************************//
// Unit Equipment
//********************************************************************************//
//Common
private _itemGear = 
[
];

//Uniform
private _itemUniform = 
[
	"U_Simc_arvn_og107",
	"simc_arvn_roll_og107",
	"simc_arvn_tuck_roll_og107",
	"simc_arvn_tuck_og107"
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
	"pca_vest_invisible",
	"simc_m1937_belt_sog_patrol"
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
	"rhs_pilotka",
	"rhs_ssh60",
	"simc_p58_cap_og107"
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
	"pca_backpack_invisible",
	"simc_m1941_pack_od3",
	"simc_m1941_pack_light_od3",
	"simc_m1941_pack_patrol_od3",
	"simc_tropical_pack"
];

private _itemBackpackCrew = 
[

];

private _itemBackpackPilot = 
[

];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Bandanna_blk",
	"G_Bandanna_aviator",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_kawaii",
	"rhssaf_veil_Green",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"G_Squares",
	"G_Squares_Tinted",
	"G_Aviator",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	
	//Cigs etc.
	"G_Cigarette",
	"murshun_cigs_cig0",
	"immersion_cigs_cigar0",
	
	//Bandoleers
	"simc_bandoleer_left",
	"simc_bandoleer_low",
	"simc_bandoleer_right",
	
	//NVG
	"pca_nvg_cigarette",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"$NONE_usm_nvg_scarf2$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_giglovesscarf2$",
	"$NONE_usm_nvg_giglovesscarf$",
	"simc_addon_bandoleer_left",
	"simc_addon_bandoleer_low",
	"simc_addon_bandoleer_right",
	
	//Cigpack
	"murshun_cigs_cigpack",
	"murshun_cigs_matches"
	
];

private _itemGearLeader = 
[
	//Gear
	"ACE_Clacker",
	
	//Backpack
	"simc_tropical_pack_radio",
	
	//Headgear
	"CUP_H_C_Beret_01",
	"H_Beret_blk"
];

//********************************************************************************//
// Miscellaneous Items
//********************************************************************************//

private _itemMisc = 
[
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
	"ACRE_PRC77"
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
	
];

private _itemWeapRifle = 
[
	"sp_fwa_mas_49",
	"sp_fwa_mas_49_56"
];

private _itemWeapRifleUGL = 
[
	"fwa_1rnd_rifle_grenade_mas_40mm_DP",
	"fwa_1rnd_rifle_grenade_mas_34mm_HE"
];

private _itemWeapAR = 
[
	"sp_fwa_bren_mk2"
];

private _itemWeapLAT = 
[

];

private _itemWeapPistol = 
[
	"CUP_hgun_Browning_HP"
];

//Special
private _itemWeapMG = 
[
	"sp_fwa_aa52"
];

private _itemWeapMAT = 
[

];

private _itemWeapDMR =
[
	"CUP_srifle_LeeEnfield"
];

private _itemWeapSMG =
[
	"sp_fwa_smg_mat49"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"sp_fwa_10rnd_75_mas49",
	
	//Pistol Ammo
	"CUP_13Rnd_9x19_Browning_HP"
];

private _itemAmmoTracer = 
[
	"fwa_10rnd_75_mas49_tracer_red"
];

private _itemAmmoAR = 
[
	"sp_fwa_30Rnd_303_Bren",
	"fwa_30rnd_303_bren_tracer_red"
];

private _itemAmmoSMG = 
[
	"sp_fwa_32Rnd_9x19_MAT49",
	"fwa_32Rnd_9x19_mat49_tracer_red"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"fwa_1rnd_rifle_grenade_mas_40mm_Flare"
];

private _itemExplosive = 
[
	"SmokeShell",
	"CUP_HandGrenade_M67",
	"DemoCharge_Remote_Mag"
];

private _itemAmmoDM =
[
	"CUP_10x_303_M"
];

//Special
private _itemAmmoMG = 
[
	"rhsusf_50Rnd_762x51",
	"rhsusf_50Rnd_762x51_m62_tracer"
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
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Radio Operator
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc +  _itemWeapSMG + _itemRadio + _itemAmmo + _itemAmmoSMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemWeapRifleUGL + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemGearLeader + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemGearLeader + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemAmmo + _itemAmmoSMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemAmmoSMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	//DM
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Spotter
	case (_unitRole == "spt") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemRadio + _itemBino + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemUniform + _itemVest + _itemHeadgear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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