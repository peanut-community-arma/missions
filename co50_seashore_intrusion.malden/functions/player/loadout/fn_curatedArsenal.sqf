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
	"aegis_ccu_mtp",
	"aegis_ccu_cu_mtp",
	"aegis_ccu_rs_mtp",
	
	//Vest
	"V_PlateCarrierL_CTRG",
	
	//Headgear
	"aegis_virtus_helmet_mtp",
	
	//Backpack
	"b_assaultpack_khk",
	"pca_assaultpack_mc",
	"pca_eagle_a3_mc",
	"pca_eagle_a3_rgr",
	"pca_kitbag_mc",
	"pca_tacticalpack_mc",
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"aegis_virtus_assaultpack_mtp",
	"aegis_virtus_carryall_mtp",
	"aegis_virtus_kitbag_mtp",
	"wsx_tacticalpack_oli"
];

private _itemGearContact = 
[
	"aegis_condor_carrier_lite_mtp",
	"aegis_condor_carrier_heavy_mtp",
	"aegis_virtus_radiobag_mtp"
];

private _itemGearGren = [];
private _itemGearMedic = [];
private _itemGearMG = [];
private _itemGearLeader = [];

private _itemCosmetic = 
[
	"G_Aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Spectacles_Tinted",
	"G_Sport_Blackred",
	"G_Squares",
	"G_Squares_Tinted",
	"rhs_ess_black",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"aegis_bandanna_kawaii",
	"aegis_bandanna_shemag",
	"aegis_bandanna_skull",
	"aegis_bandanna_syndikat",
	"aegis_shades_yellow",
	"aegis_shemagh_loop_bge",
	"aegis_shemagh_loop_blk",
	"aegis_shemagh_loop_coy",
	"aegis_shemagh_loop_khk",
	"aegis_shemagh_loop_grn",
	"aegis_shemagh_loop_tan",
	"aegis_shemagh_loop_white",
	"aegis_shemagh_mesh_bge",
	"aegis_shemagh_mesh_blk",
	"aegis_shemagh_mesh_coy",
	"aegis_shemagh_mesh_khk",
	"aegis_shemagh_mesh_grn",
	"aegis_shemagh_mesh_tan",
	"aegis_shemagh_mesh_white",
	"aegis_shemag_cbr",
	"aegis_shemag_shades_cbr",
	"aegis_shemag_tactical_cbr",
	"aegis_shemag_khk",
	"aegis_shemag_shades_khk",
	"aegis_shemag_tactical_khk",
	"aegis_shemag_oli",
	"aegis_shemag_shades_oli",
	"aegis_shemag_tactical_oli",
	"aegis_shemag_tan",
	"aegis_shemag_shades_tan",
	"aegis_shemag_tactical_tan",
	"aegis_shemag_white",
	"aegis_shemag_shades_white",
	"aegis_shemag_tactical_white",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_cb",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_mc",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_tan",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_cb",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_mc",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_shemagh_tan",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_cb",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_mc",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_tan",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_cb",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_mc",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_goggles_shemagh_tan",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_cb",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_mc",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_tan",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_cb",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_mc",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shades_shemagh_tan",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_cb",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_mc",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_tan",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_cb",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_mc",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_face_shield_tactical_shemagh_tan",
	"milgp_f_goggles_khk",
	"milgp_f_tactical_khk",
	"usm_scarf",
	"usm_scarf2",
	"usm_nvg_scarf",
	"usm_nvg_scarf2",
	"cup_g_ess_blk",
	"cup_g_ess_blk_dark",
	"cup_g_ess_cbr",
	"cup_g_ess_cbr_dark",
	"cup_g_ess_khk",
	"cup_g_ess_khk_dark",
	"cup_g_ess_rgr",
	"cup_g_ess_rgr_dark",
	"cup_g_ess_blk_scarf_grn",
	"cup_g_ess_khk_scarf_tan",
	"cup_g_ess_blk_scarf_face_grn",
	"cup_g_ess_khk_scarf_face_tan",
	"cup_g_oakleys_clr",
	"cup_g_oakleys_drk",
	"cup_g_oakleys_embr",
	"cup_g_scarf_face_grn",
	"cup_g_scarf_face_tan",
	"cup_fr_neckscarf",
	"cup_fr_neckscarf2",
	"cup_tk_neckscarf",
	"nvg_goggles_cbr",
	"nvg_goggles_grn",
	"nvg_scrim_wdl",
	"nvg_scrim_wdl_grass",
	"nvg_scrim_wdl_leaves_1",
	"nvg_scrim_wdl_leaves_2",
	"nvg_scrim_wdl_leaves_3",
	"pca_nvg_ess_blk",
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_glasses_org",
	"pca_nvg_glasses_ylw",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_cb",
	"pca_nvg_face_shield_khk",
	"pca_nvg_face_shield_mc",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_tan",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_face_shield_shemagh_cb",
	"pca_nvg_face_shield_shemagh_khk",
	"pca_nvg_face_shield_shemagh_mc",
	"pca_nvg_face_shield_shemagh_rgr",
	"pca_nvg_face_shield_shemagh_tan",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_shemagh_loop_bge",
	"pca_nvg_shemagh_loop_blk",
	"pca_nvg_shemagh_loop_coy",
	"pca_nvg_shemagh_loop_grn",
	"pca_nvg_shemagh_loop_khk",
	"pca_nvg_shemagh_loop_tan",
	"pca_nvg_shemagh_loop_white",
	"pca_nvg_shemagh_mesh_bge",
	"pca_nvg_shemagh_mesh_blk",
	"pca_nvg_shemagh_mesh_coy",
	"pca_nvg_shemagh_mesh_grn",
	"pca_nvg_shemagh_mesh_khk",
	"pca_nvg_shemagh_mesh_tan",
	"pca_nvg_shemagh_mesh_white",
	"pca_nvg_shemagh_lowered_cbr",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_tactical_glasses",
	"pca_nvg_tactical_goggles",
	"cup_nvg_hmnvs"
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
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148"
];

private _itemAcc = 
[
	//Optic
	"optic_holosight_blk_f",
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_mrds",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",
	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_mrds",
	"sma_acc_eotech_552_blk",
	"sma_acc_eotech_552_kf_blk",
	"sma_acc_eotech_xps3_blk",
	"sma_acc_micro_t2",
	"sma_acc_micro_t2_low",
	"sma_acc_vortex_blk",
	"sma_acc_vortex_lc_blk",
	"rksl_optic_eot552",
	"rksl_optic_eot552x",
	"CUP_optic_Elcan_SpecterDR_black",
	"CUP_optic_Elcan_SpecterDR_RMR_black",
	"CUP_optic_Elcan_SpecterDR_od",
	"CUP_optic_Elcan_SpecterDR_RMR_od",
	
	
	//Grip
	"ptv_acc_hbrs",
	
	//Tactical Device
	"rhsusf_acc_anpeq15a",
	"rhsusf_acc_m952v",
	"cup_acc_anpeq_15_black",
	"cup_acc_anpeq_15_od",
	"cup_acc_anpeq_15_flashlight_black_l",
	"cup_acc_anpeq_15_flashlight_od_l",
	"cup_acc_flashlight",
	"cup_acc_flashlight_wdl",
	"cup_acc_llm_black",
	"cup_acc_llm_od"
];

private _itemWeapRifle = 
[
	"aegis_weap_sa80"
];

private _itemWeapRifleUGL = 
[
	"aegis_weap_sa80_eglm_blk"
];

private _itemWeapCarbine = 
[
	"aegis_weap_sa80c_blk"
];

private _itemWeapAR = 
[
	"LMG_Mk200_black_F"
];

private _itemWeapMG = 
[
	"MMG_02_black_F"
];

private _itemWeapLAT = 
[
	"ACE_launch_NLAW_ready_F"
];

private _itemWeapMAT = 
[
	"launch_MRAWS_green_F"
];

private _itemWeapPistol = 
[
	"CUP_hgun_M17_Black"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"30Rnd_65x39_caseless_black_mag",
	"30Rnd_65x39_caseless_black_mag_Tracer",
	"30Rnd_65x39_caseless_khaki_mag",
	"30Rnd_65x39_caseless_khaki_mag_Tracer",
	
	//Pistol Ammo
	"CUP_21Rnd_9x19_M17_Black",
	
	//Explosives
	"NLAW_F",
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67"
];

private _itemAmmoAR = 
[
	"200Rnd_65x39_cased_Box_Red",
	"ACE_200Rnd_65x39_cased_Box_red",
	"ACE_200Rnd_65x39_cased_Box_tracer_red"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51_m80a1epr"
];

private _itemAmmoMAT = 
[
	"MRAWS_HEAT_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HE_F"
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

private _hasContact = (1021790 in (getDLCs 1));

if (local _unit && _hasContact) then 
{
	{
		_itemGear pushBackUnique _x;
	}forEach _itemGearContact;
};

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
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
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