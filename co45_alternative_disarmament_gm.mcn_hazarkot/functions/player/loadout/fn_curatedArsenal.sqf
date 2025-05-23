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
	"milgp_u_g3_field_set_3cd",
	"milgp_u_g3_field_set_rolled_3cd"
];

//Vest
private _itemVest = 
[
	"milgp_v_marciras_assaulter_tan",
	"milgp_v_marciras_assaulter_belt_tan",
	"milgp_v_marciras_grenadier_tan",
	"milgp_v_marciras_grenadier_belt_tan",
	"milgp_v_marciras_hgunner_tan",
	"milgp_v_marciras_hgunner_belt_tan",
	"milgp_v_marciras_marksman_tan",
	"milgp_v_marciras_marksman_belt_tan",
	"milgp_v_marciras_teamleader_tan",
	"milgp_v_marciras_teamleader_belt_tan",
	"milgp_v_marciras_light_tan"
];

//Headgear 
private _itemHeadgear = 
[
	"bear_ach_dcu2_headset",
	"bear_ach_dcu2_headset_alt"
];

//Backpack 
private _itemBackpack = 
[
	"B_Kitbag_tan",
	"pca_eagle_a3_tan",
	"pca_tacticalpack_3cd"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Sport_Blackred",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_khk",
	"pca_nvg_face_shield_tan",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_face_shield_shemagh_khk",
	"pca_nvg_face_shield_shemagh_tan",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_shemagh_loop_bge",
	"pca_nvg_shemagh_loop_blk",
	"pca_nvg_shemagh_loop_coy",
	"pca_nvg_shemagh_loop_tan",
	"pca_nvg_shemagh_mesh_bge",
	"pca_nvg_shemagh_mesh_blk",
	"pca_nvg_shemagh_mesh_coy",
	"pca_nvg_shemagh_mesh_tan",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk"
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
	"rhsusf_bino_lerca_1200_tan"
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
	//Optic
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",
	"rksl_optic_eot552",
	"rksl_optic_eot552_c",
	"rksl_optic_eot552x",
	"rksl_optic_eot552x_c",
	"sma_acc_eotech_552_blk",
	"sma_acc_eotech_552_kf_blk",
	"sma_acc_eotech_552_tan",
	"sma_acc_eotech_552_kf_tan",
	"sma_acc_eotech_xps3_blk",
	"sma_acc_eotech_xps3_tan",
	"sma_acc_micro_t2",
	"sma_acc_micro_t2_low",
	"hlc_optic_hp",
	"hlc_optic_siglite",
	"hlc_optic_stavenhagen",
	"hlc_optic_vtac",
	"hlc_optic_xs",
	
	//Grip
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip2_tan",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip4",
	"rhsusf_acc_grip4_bipod",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_kac_grip_saw_bipod",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_rvg_de",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_saw_lw_bipod",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_tdstubby_tan",
	
	//Muzzle Device 
	"rhsusf_acc_rotex5_grey",
	"rhsusf_acc_rotex5_tan",
	"rhsusf_acc_nt4_black",
	"rhsusf_acc_nt4_tan",
	"hlc_muzzle_fn_oem556",
	"hlc_muzzle_fn_oem",
	"hlc_muzzle_fn_oem17s",
	"sps_acc_gemtech_shield_blk",
	"sps_acc_gemtech_shield_sand"
];

private _itemWeapRifle = 
[
	"hlc_rifle_scarl_cqc_tan",
	"hlc_rifle_scarl_std_tan"
];

private _itemWeapRifleUGL = 
[
	"hlc_rifle_scarl_cqc_eglm_tan",
	"hlc_rifle_scarl_std_eglm_tan"
];

private _itemWeapAR = 
[
	"hlc_rifle_scarl_std_tan",
	"hlc_rifle_scarl_lb_tan"
];

private _itemWeapLAT = [];

private _itemWeapPistol = 
[
	"hlc_pistol_mk25",
	"hlc_pistol_mk25_tan"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",
	"rhs_mag_30Rnd_556x45_M855A1_EPM",
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Pull",
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger",
	
	//Pistol Ammo
	"hlc_15Rnd_9x19_FMJ_P226",
	"hlc_15Rnd_9x19_JHP_P226"
];

private _itemAmmoTracer = 
[
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red"
];

private _itemAmmoAR = 
[
	"hlc_50Rnd_556x45_EPR_XMAG",
	"hlc_50Rnd_556x45_EPR_M_XMAG",
	"hlc_50Rnd_556x45_EPR_T_XMAG"
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
	"1Rnd_SmokeYellow_Grenade_shell"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_m67"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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