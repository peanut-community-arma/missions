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
	"aegis_ccu_cu_mtp",
	"aegis_ccu_mtp",
	"aegis_ccu_rs_mtp",
	"aegis_ccu_tshirt_mtp"
];

private _itemUniformCrew = 
[
	"aegis_ccu_cu_mtp",
	"aegis_ccu_mtp",
	"aegis_ccu_rs_mtp",
	"aegis_ccu_tshirt_mtp"
];

private _itemUniformPilot = 
[
	"aegis_ccu_cu_mtp",
	"aegis_ccu_mtp",
	"aegis_ccu_rs_mtp",
	"aegis_ccu_tshirt_mtp"
];

//Vest
private _itemVest = 
[
	"milgp_v_jpc_assaulter_belt_rgr"
	
];

private _itemVestCrew = 
[
	"milgp_v_jpc_light_rgr"
];

private _itemVestPilot = 
[
	"milgp_v_jpc_light_rgr"
];

//Headgear 
private _itemHeadgear = 
[
	"aegis_ech_enh_grn",
	"aegis_ech_enh_mtp",
	"H_HelmetSpecB",
	"H_HelmetSpecB_snakeskin",
	"milgp_h_cap_01_rgr",
	"milgp_h_cap_02_rgr",
	"milgp_h_cap_03_rgr",
	"milgp_h_cap_backwards_01_rgr",
	"milgp_h_cap_backwards_02_rgr",
	"milgp_h_cap_backwards_03_rgr",
	"milgp_h_cap_backwards_01_goggles_rgr",
	"milgp_h_cap_backwards_02_goggles_rgr",
	"milgp_h_cap_backwards_03_goggles_rgr"
];

private _itemHeadgearCrew = 
[
	"rhsusf_cvc_helmet"
];

private _itemHeadgearPilot = 
[
	"rhsusf_ihadss"
];

//Backpack 
private _itemBackpack = 
[
	"aegis_virtus_assaultpack_grn"
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
	//Facewear
	"aegis_bala_skull",
	"pca_balaclava_gogg_mcb",
	"G_Balaclava_oli",
	"pca_balaclava_mcb",
	"G_Balaclava_blk",
	"G_Aviator",
	"G_Spectacles",
	"usm_giglovesscarf",
	"usm_giglovesscarf2",
	"rhssaf_veil_Green",
	"G_Spectacles_Tinted",
	"aegis_cigarette",
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
	"G_Bandanna_beast",
	"G_Bandanna_aviator",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_CandySkull",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_RedFlame2",
	"G_Bandanna_Skull1",
	"G_Bandanna_Skull2",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Vampire_01",
	"G_Bandanna_Syndikat2",
	"aegis_shemag_red",
	"G_Squares",
	"G_Squares_Tinted",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"bear_balaclava1_black",
	"CUP_G_TK_RoundGlasses",
	"simc_goggles_swdg_low",
	"CUP_G_WatchGPSCombo",
	"CUP_G_Grn_Scarf_GPS",
	"CUP_G_Tan_Scarf_GPS",
	"CUP_G_White_Scarf_GPS",
	"CUP_G_Grn_Scarf_Shades_GPSCombo",
	"CUP_G_Tan_Scarf_Shades_GPSCombo",
	"CUP_G_White_Scarf_Shades_GPSCombo",
	"usm_scarf",
	"G_Tactical_Black",
	"G_Lowprofile",
	"aegis_bala_light_gogg_wdl",
	"aegis_bala_light_wdl",
	"aegis_bala_light_gogg_mtp",
	"aegis_bala_light_mtp",
	"aegis_bala_light_gogg_blk",
	"aegis_bala_light_blk",
	"pca_balaclava_ocp",
	"pca_balaclava_gogg_ocp",
	
	//Murshun cigpack and lighter
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack",
	
	//NVG slot
	"pca_nvg_cigarette",
	"pca_nvg_ess_blk",
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_balaclava",
	"pca_nvg_balaclava2",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_face_shield_mc",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_shemagh_mc",
	"pca_nvg_face_shield_shemagh_rgr",
	"nvg_goggles_grn",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"pca_nvg_gloves_wool",
	"usm_nvg_scarf",
	"usm_nvg_scarf2"
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
[
	//Optic
	"optic_dms",
	"hlc_optic_hensoldtzo_rds",
	"hlc_optic_hensoldtzo_low_rds",
	"ptv_acc_t1_3x",
	"cup_optic_sb_11_4x20_pm_pip",
	"cup_optic_hensoldtzo_low_rds",
	"cup_optic_hensoldtzo_rds",
	
	//Muzzle
	"rhsusf_acc_sfmb556",
	"hlc_muzzle_aac_miter18t",
	"hlc_muzzle_sf3p_556",
	"hlc_muzzle_fn_oem556",
	"hlc_muzzle_fn_oem17s",
	"hlc_muzzle_rotex3p",
	
	//Grip
	"ptv_acc_grip2",
	"ptv_acc_grip4",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_grip2",
	
	//Tactical Device
	"cup_acc_flashlight",
	"cup_acc_anpeq_15_black",
	"cup_acc_anpeq_15_black_top",
	"cup_acc_anpeq_15_flashlight_black_l",
	"cup_acc_anpeq_15_top_flashlight_black_l"
];

private _itemWeapRifle = 
[
	"hlc_rifle_scarl_std_srx",
	"hlc_rifle_scarl_std",
	"hlc_rifle_scarl_sc",
	"hlc_rifle_scarl_cqc"
];

private _itemWeapRifleUGL = 
[
	"hlc_rifle_scarl_std_eglm"
];

private _itemWeapAR = 
[
	"sps_weap_kac_amg_tan"
];

private _itemWeapLAT = 
[
	"launch_MRAWS_green_rail_F"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Duty",
	"16Rnd_9x21_Mag"
];

//Special
private _itemWeapMG = 
[
	"rhs_weap_m240B"
];

private _itemWeapMAT = 
[
	"launch_MRAWS_green_rail_F"
];

private _itemWeapAA =
[
	"launch_i_Titan_F"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"hlc_30Rnd_556x45_EPR_L5",
	
	//Pistol Ammo
	"16Rnd_9x21_Mag"
];

private _itemAmmoTracer = 
[
	"hlc_30Rnd_556x45_EPR_T_L5"
];

private _itemAmmoAR = 
[
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoLAT = 
[
	"MRAWS_HEAT_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HE_F"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow"
];

private _itemExplosive = 
[
	"SmokeShell",
	"HandGrenade"
];

private _itemExplosiveLauncher = 
[
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"1Rnd_Smoke_Grenade_shell"
];

private _itemSignalLauncher = 
[
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell"
];

//Special
private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMAT = 
[
	"MRAWS_HEAT_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HE_F"
];

private _itemAmmoAA = 
[
	"Titan_AA"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemAmmoLAT + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemExplosive + _itemAmmoLAT)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemExplosiveLauncher + _itemSignalLauncher + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemExplosiveLauncher + _itemSignalLauncher + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemExplosiveLauncher + _itemSignalLauncher + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemExplosiveLauncher + _itemSignalLauncher + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemExplosiveLauncher + _itemSignalLauncher + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Anti-Air Gunner
	case (_unitRole == "aa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapAA + _itemAmmo + _itemAmmoAA + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Anti-Air Gunner
	case (_unitRole == "aaa") : 
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