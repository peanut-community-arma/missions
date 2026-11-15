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
	"CUP_U_B_AFU_ACU_Gloves_M14",
	"CUP_U_B_AFU_ACU_Kneepad_Gloves_M14",
	"CUP_U_B_AFU_ACU_Kneepad_M14",
	"CUP_U_B_AFU_ACU_Kneepad_Rolled_Gloves_M14",
	"CUP_U_B_AFU_ACU_Kneepad_Rolled_M14",
	"CUP_U_B_AFU_ACU_M14",
	"CUP_U_B_AFU_ACU_Rolled_Gloves_M14",
	"CUP_U_B_AFU_ACU_Rolled_M14"
];

private _itemUniformCrew = 
[
	"CUP_U_B_AFU_ACU_Gloves_M14",
	"CUP_U_B_AFU_ACU_Kneepad_Gloves_M14",
	"CUP_U_B_AFU_ACU_Kneepad_M14",
	"CUP_U_B_AFU_ACU_Kneepad_Rolled_Gloves_M14",
	"CUP_U_B_AFU_ACU_Kneepad_Rolled_M14",
	"CUP_U_B_AFU_ACU_M14",
	"CUP_U_B_AFU_ACU_Rolled_Gloves_M14",
	"CUP_U_B_AFU_ACU_Rolled_M14"
];

private _itemUniformPilot = 
[
	"CUP_U_B_USArmy_PilotOverall"
];

//Vest
private _itemVest = 
[
	"CUP_V_PlateCarrierSpec_MM14",
	"CUP_V_B_IOTV_MM14_Empty_USArmy",
	"CUP_V_B_IOTV_MM14_MG_USArmy",
	"CUP_V_B_IOTV_MM14_Medic_USArmy",
	"CUP_V_B_IOTV_MM14_Rifleman_USArmy",
	"CUP_V_B_IOTV_MM14_SAW_USArmy",
	"CUP_V_B_IOTV_MM14_SL_USArmy",
	"CUP_V_B_IOTV_MM14_TL_USArmy"
];

private _itemVestCrew = 
[
	"CUP_V_PlateCarrierSpec_MM14",
	"CUP_V_B_IOTV_MM14_Empty_USArmy",
	"CUP_V_B_IOTV_MM14_MG_USArmy",
	"CUP_V_B_IOTV_MM14_Medic_USArmy",
	"CUP_V_B_IOTV_MM14_Rifleman_USArmy",
	"CUP_V_B_IOTV_MM14_SAW_USArmy",
	"CUP_V_B_IOTV_MM14_SL_USArmy",
	"CUP_V_B_IOTV_MM14_TL_USArmy"
];

private _itemVestPilot = 
[
	"CUP_V_B_PilotVest"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_AFU_HelmetACH_MM_14",
	"CUP_H_AFU_HelmetACH_GCOVERED_MM_14",
	"CUP_H_AFU_HelmetACH_GCOVERED_Headset_MM_14",
	"CUP_H_AFU_HelmetACH_ESS_MM_14",
	"CUP_H_AFU_HelmetACH_ESS_Headset_MM_14",
	"CUP_H_AFU_HelmetACH_Headset_MM_14",
	"CUP_H_Booniehat_mm14",
	"CUP_H_PMC_Beanie_Khaki",
	"H_Beret_brn",
	"H_Booniehat_khk",
	"CUP_H_PMC_Cap_Back_Tan",
	"CUP_H_PMC_Cap_Back_EP_Tan",
	"CUP_H_PMC_Cap_EP_Tan",
	"CUP_H_PMC_Cap_Tan",
	"CUP_H_CVC"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC"
];

private _itemHeadgearPilot = 
[
	"CUP_H_SPH4_khaki_visor"
];

private _itemHeadgearJetPilot = 
[
	"H_PilotHelmetFighter_B"
];

//Backpack 
private _itemBackpack = 
[
	"pca_backpack_invisible_large"
];

private _itemBackpackCrew = 
[
	"pca_backpack_invisible_large"
];

private _itemBackpackPilot = 
[
	"B_Parachute"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_SWDG",
	"G_SWDG_low",
	"G_AirPurifyingRespirator_01_F",
	"JCA_G_AirPurifyingRespirator_04_black_clear_F",
	"JCA_G_AirPurifyingRespirator_04_black_tinted_F",
	"G_Aviator",
	"CUP_RUS_Balaclava_blk",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_khk",
	"G_Bandanna_TransPride",
	"G_Bandanna_kawaii",
	"G_Bandanna_Vampire_01",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"G_LEN_BCG",
	"G_Combat",
	"ptv_comtac3",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_RUS_Ratnik_6M2_Summer",
	"CUP_G_RUS_Ratnik_6M21_Summer",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"TC_G_NitrileGloves_1",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"G_Shemag_khk",
	"G_Shemag_tan",
	"G_Shemag_red",
	"JAM_G_Glasses_Spamton",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	
	"sns_hair",
	"sns_hair_long_2",
	"sns_hair_long",
	"Aegis_Goggles_Cover_F",
	"Goggles",
	"TC_NVG_NitrileGloves_1",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_red",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
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
	"ItemGPS"
	
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

private _itemAcc = 
[
	"CUP_acc_Flashlight"
];

private _itemWeapRifle = 
[
	"CUP_arifle_AKS74U",
	"CUP_arifle_AKS74"
];

private _itemWeapRifleUGL = 
[
	"ptv_hk69"
];

private _itemWeapPistol = 
[
	"CUP_hgun_M17_Coyote",
	"CUP_hgun_M17_Black",
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_M17_Black"
];


//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_545x39_AK_M"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M"
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
	"SmokeShell",
	"1Rnd_HE_Grenade_shell",
	"CUP_HandGrenade_M67"
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
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVest + _itemHeadgearPilot + _itemBackpackPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Jet Pilot
	case (_unitRole == "jp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearJetPilot + _itemBackpackPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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