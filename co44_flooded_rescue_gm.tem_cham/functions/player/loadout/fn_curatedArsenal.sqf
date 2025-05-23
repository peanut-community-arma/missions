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
	"usp_g3c_aor2",
	"usp_g3c_mx_aor2",
	"usp_g3c_or_aor2",
	"usp_g3c_kp_aor2",
	"usp_g3c_kp_mx_aor2",
	"usp_g3c_kp_or_aor2",
	"usp_g3c_rs_aor2",
	"usp_g3c_rs_mx_aor2",
	"usp_g3c_rs_or_aor2",
	"usp_g3c_rs_kp_aor2",
	"usp_g3c_rs_kp_mx_aor2",
	"usp_g3c_rs_kp_or_aor2",
	"usp_g3c_rs2_aor2",
	"usp_g3c_rs2_mx_aor2",
	"usp_g3c_rs2_or_aor2",
	"usp_g3c_rs2_kp_aor2",
	"usp_g3c_rs2_kp_mx_aor2",
	"usp_g3c_rs2_kp_or_aor2"
];

//Vest
private _itemVest = 
[
	"s4_lbt_comms_aor2",
	"s4_lbt_light_aor2",
	"s4_lbt_medical_aor2",
	"s4_lbt_operator_aor2",
	"s4_lbt_teamleader_aor2",
	"s4_lbt_weapons_aor2",
	"cup_v_cpc_communications_rngr",
	"cup_v_cpc_communicationsbelt_rngr",
	"cup_v_cpc_fast_rngr",
	"cup_v_cpc_fastbelt_rngr",
	"cup_v_cpc_medical_rngr",
	"cup_v_cpc_medicalbelt_rngr",
	"cup_v_cpc_tl_rngr",
	"cup_v_cpc_tlbelt_rngr",
	"cup_v_cpc_weapons_rngr",
	"cup_v_cpc_weaponsbelt_rngr"
];

//Headgear 
private _itemHeadgear = 
[
	"pca_opscore_cover_ct_aor2_alt",
	"pca_opscore_cover_ct_cb_aor2_alt",
	"pca_opscore_cover_ct_cm_aor2_alt",
	"pca_opscore_cover_ct_cw_aor2_alt",
	"bear_opscore_atacs_fg_alt_pelt",
	"bear_opscore_atacs_fg_alt_pelt_cam",
	"bear_opscore_atacs_fg_alt_pelt_nsw",
	"bear_opscore_atacs_fg_alt_pelt_nsw_cam",
	"bear_opscore_ranger_green_cover_pelt",
	"bear_opscore_ranger_green_cover_pelt_cam",
	"bear_opscore_ranger_green_cover_pelt_nsw",
	"bear_opscore_ranger_green_cover_pelt_nsw_cam"
];

//Backpack 
private _itemBackpack = 
[
	"b_assaultpack_rgr",
	"b_kitbag_rgr",
	"pca_eagle_a3_od",
	"pca_eagle_a3_oli",
	"pca_eagle_a3_rgr",
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"bear_eagleaiii_aor2",
	"aegis_assaultpack_enh_rgr",
	"wsx_tacticalpack_oli"
];

//Cosmetic 
private _itemCosmetic = 
[
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_tan",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_face_shield_shemagh_rgr",
	"pca_nvg_face_shield_shemagh_tan",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_shemagh_loop_bge",
	"pca_nvg_shemagh_loop_blk",
	"pca_nvg_shemagh_loop_grn",
	"pca_nvg_shemagh_loop_khk",
	"pca_nvg_shemagh_loop_tan",
	"pca_nvg_shemagh_mesh_bge",
	"pca_nvg_shemagh_mesh_blk",
	"pca_nvg_shemagh_mesh_grn",
	"pca_nvg_shemagh_mesh_khk",
	"pca_nvg_shemagh_mesh_tan",
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
	"ACE_Vector"
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
	"ACE_surgicalKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_g33_t1",
	"rhsusf_acc_g33_xps3",
	"rhsusf_acc_su230",
	"rhsusf_acc_su230_mrds",
	"rhsusf_acc_t1_high",
	"ptv_acc_compm4s",
	"ptv_acc_eot552",
	"ptv_acc_t1",
	"sma_acc_eotech_552_blk",
	"sma_acc_eotech_552_kf_blk",
	"sma_acc_eotech_xps3_blk",
	"sma_acc_micro_t2",
	"rksl_optic_eot552",
	"rksl_optic_eot552x",
	
	//Grip
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
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
	
	//Tactical Device
	"rhsusf_acc_anpeq15",
	"rhsusf_acc_anpeq15_bk",
	"rhsusf_acc_anpeq15_wmx",
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top",
	"rhsusf_acc_anpeq15a",
	"rhsusf_acc_m952v",
	"rhsusf_acc_wmx",
	"rhsusf_acc_wmx_bk"
];

private _itemWeapRifle = 
[
	"rhs_weap_mk18",
	"rhs_weap_mk18_KAC",
	"rhs_weap_mk18_bk",
	"rhs_weap_mk18_KAC_bk",
	"rhs_weap_mk18_wd",
	"rhs_weap_mk18_KAC_wd",
	"rhs_weap_m4a1_blockII",
	"rhs_weap_m4a1_blockII_KAC",
	"rhs_weap_m4a1_blockII_bk",
	"rhs_weap_m4a1_blockII_KAC_bk",
	"rhs_weap_m4a1_blockII_wd",
	"rhs_weap_m4a1_blockII_KAC_wd",
	"bear_weap_m4a1_blockII_tan",
	"bear_weap_m4a1_blockII_KAC_tan",
	"bear_weap_m4a1_blockII_green",
	"bear_weap_m4a1_blockII_KAC_green",
	"bear_weap_mk18_green",
	"bear_weap_mk18_KAC_green",
	"bear_weap_mk18_tan",
	"bear_weap_mk18_KAC_tan"
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_mk18_m320",
	"rhs_weap_m4a1_blockII_M203",
	"rhs_weap_m4a1_blockII_M203_bk",
	"rhs_weap_m4a1_blockII_M203_wd",
	"bear_weap_m4a1_blockII_m203_green",
	"bear_weap_mk18_m320_green",
	"bear_weap_mk18_m320_tan"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S"
];

private _itemWeapLAT = [];

private _itemWeapPistol = 
[
	"rhsusf_weap_glock17g4"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_Blk",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_OD",
	"pca_mag_30Rnd_556x45_M855A1_EMAG",
	"pca_mag_30Rnd_556x45_M855A1_EMAG_Olive",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_Base_Blk",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_Pull_Blk",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_Ranger_Blk",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_Base_OD",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_Pull_OD",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_Ranger_OD",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_QP",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_QP_Olive",
	"sps_30Rnd_M855A1_HK_G3_PMAG",
	"sps_30Rnd_M855A1_HK_G3_PMAG_Olive",

	//Pistol Ammo
	"rhsusf_mag_17Rnd_9x19_JHP"
];

private _itemAmmoTracer = 
[
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Blk",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_OD",
	"pca_mag_30Rnd_556x45_M856A1_EMAG",
	"pca_mag_30Rnd_556x45_M856A1_EMAG_Olive",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Base_Blk",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Pull_Blk",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Ranger_Blk",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Base_OD",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Pull_OD",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Ranger_OD",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_QP",
	"pca_mag_30Rnd_556x45_M856A1_PMAG_QP_Olive",
	"sps_30Rnd_M856A1_HK_G3_PMAG",
	"sps_30Rnd_M856A1_HK_G3_PMAG_Olive"
];

private _itemAmmoAR = 
[
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",
	"rhsusf_mag_17Rnd_9x19_JHP"
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