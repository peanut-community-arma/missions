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
	"CUP_U_B_BDUv2_OD",
	"$NONE_usm_bdu_btisrl_odg$",
	"$NONE_usm_bdu_bti_odg$",
	"CUP_U_B_BDUv2_roll2_OD",
	"CUP_U_B_BDUv2_roll_OD_US",
	"CUP_U_B_BDUv2_OD_US"
];

private _itemUniformPilot = 
[
	"simc_tcu_mk3_sog_nomex_og107"
];

//Vest
private _itemVest = 
[
	"simc_m69_lce_56",
	"simc_m69_lce_56_band",
	"simc_m69_lce_56_frag",
	"simc_m69_lce_56_frag_band",
	"simc_m69_lce_56_garrison",
	"simc_m69_lce_56_gren",
	"simc_m69_lce_56_light",
	"simc_m69_lce_56_light_band",
	"simc_m69_lce_56_mg",
	"simc_m69_lce_56_medic",
	"simc_m69_lce_56_officer",
	"simc_m69_lce_56_officer_band"
];

private _itemVestPilot = 
[
	"simc_m69_lce_56_light"
];

//Headgear 
private _itemHeadgear = 
[
	"simc_m1",
	"simc_m1_band",
	"simc_m1_net",
	"simc_m1_net_band",
	"simc_m1_strap",
	"simc_bush_hat_og107",
	"simc_bush_hat_flat_og107",
	"simc_bush_hat_foldf_og107",
	"simc_bush_hat_foldr_og107",
	"simc_bush_hat_tie_og107"
];

private _itemHeadgearOff = 
[
	"amf_beret_legion_1re"
];

private _itemHeadgearPilot = 
[
	"RHS_jetpilot_usaf"
];

//Backpack 
private _itemBackpack = 
[
	"simc_tropical_pack",
	"simc_tropical_pack_canvas",
	"simc_tropical_pack_frame",
	"simc_tropical_pack_frame_canvas",
	"simc_tropical_pack_patrol",
	"simc_tropical_pack_radio",
	"simc_tropical_pack_scout"
];

private _itemBackpackPilot = 
[
	"pca_backpack_invisible"
];

//Cosmetic 
private _itemCosmetic = 
[
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"pca_balaclava_oli_1",
	"pca_balaclava_oli_2",
	"G_Aviator",
	"CUP_RUS_Balaclava_grn",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_kawaii",
	"G_Bandanna_oli",
	"simc_bandoleer_duplet_flak",
	"simc_bandoleer_left_flak",
	"simc_bandoleer_right_flak",
	"simc_bandoleer_triplet_flak",
	"CUP_Beard_Blonde",
	"CUP_Beard_Black",
	"CUP_Beard_Brown",
	"immersion_cigs_cigar0",
	"G_Cigarette",
	"murshun_cigs_cig0",
	"$NONE_usm_kneepads_blk$",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_shemagh_rgr",
	"immersion_pops_pop0",
	"m40_gas_mask_02",
	"m40_gas_mask_03",
	"$REMOVE_usm_swdgoggles$",
	"G_Spectacles_Tinted",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"G_Shemag_white",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"TC_G_NitrileGloves_1",
	"G_Shemag_oli",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_RGR_Dark",
	"G_SWDG_low",
	
	
	//NVG
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	"$NONE_pca_nvg_ess_blk$",
	"simc_addon_bandoleer_duplet_flak",
	"simc_addon_bandoleer_left_flak",
	"simc_addon_bandoleer_low_flak",
	"simc_addon_bandoleer_right_flak",
	"simc_addon_bandoleer_triplet_flak",
	"immersion_cigs_cigar0_nv",
	"pca_nvg_cigarette",
	"murshun_cigs_cig0_nv",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"Goggles_grn_F",
	"simc_addon_bandoleer_left_flak",
	"simc_addon_bandoleer_low_flak",
	"simc_addon_bandoleer_right_flak",
	"simc_addon_bandoleer_triplet_flak",
	"immersion_cigs_cigar0_nv",
	"pca_nvg_cigarette",
	"murshun_cigs_cig0_nv",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"Goggles_grn_F",
	"immersion_pops_pop0_nv",
	"$NONE_usm_nvg_kneepads_blk$",
	"TC_NVG_NitrileGloves_1",
	"simc_addon_nomex_alt",
	"simc_addon_nomex_fold_alt",
	"simc_addon_nomex_long_alt",
	"simc_nomex_alt",
	"simc_nomex_fold_alt",
	"simc_nomex_long_alt",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_loop_khk$",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red"
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
	"ACE_surgicalKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[];

private _itemWeapRifle = 
[
	"CUP_arifle_M16A2"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_Colt727_M203",
	"DemoCharge_Remote_Mag"
];

private _itemWeapAR = 
[
	"CUP_lmg_M60",
	"CUP_lmg_M60E4_norail"
];

private _itemWeapLAT = 
[
	"rhs_weap_m72a7"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Colt1911",
	"CUP_7Rnd_45ACP_1911"
];


//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
];

private _itemAmmoTracer = 
[
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
];

private _itemAmmoAR = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
	"rhsusf_100Rnd_762x51_m62_tracer"
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
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemHeadgearOff + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemHeadgearOff +_itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemHeadgearOff + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemHeadgearOff + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearPilot + _itemBackpackPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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