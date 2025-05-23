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
	"U_I_G_resistanceLeader_F",
	"U_I_G_Story_Protagonist_F",
	"U_BG_Guerrilla_6_1",
	"U_BG_Guerilla2_2"
];

private _itemUniformCrew = 
[
	"U_I_G_resistanceLeader_F",
	"U_I_G_Story_Protagonist_F",
	"U_BG_Guerrilla_6_1",
	"U_BG_Guerilla2_2"
];

private _itemUniformPilot = 
[
	"U_I_G_resistanceLeader_F",
	"U_I_G_Story_Protagonist_F",
	"U_BG_Guerrilla_6_1",
	"U_BG_Guerilla2_2"
];

//Vest
private _itemVest = 
[
	""
	
];

private _itemVestCrew = 
[
	""
];

private _itemVestPilot = 
[
	""
];

//Headgear 
private _itemHeadgear = 
[
	"pca_opscore_cover_tsd",
	"pca_opscore_cover_ct_tsd",
	"pca_opscore_cover_ct_cb_tsd",
	"pca_opscore_cover_ct_cm_tsd",
	"pca_opscore_cover_ct_cw_tsd",
	"milgp_h_cap_01_tan",
	"milgp_h_cap_02_tan",
	"milgp_h_cap_03_tan",
	"milgp_h_cap_backwards_01_tan",
	"milgp_h_cap_backwards_02_tan",
	"milgp_h_cap_backwards_03_tan",
	"milgp_h_cap_backwards_01_goggles_tan",
	"milgp_h_cap_backwards_02_goggles_tan",
	"milgp_h_cap_backwards_03_goggles_tan"
];

private _itemHeadgearCrew = 
[
	""
];

private _itemHeadgearPilot = 
[
	""
];

//Backpack 
private _itemBackpack = 
[
	""
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
	"rhs_acc_1p87",
	"hlc_optic_docterr",
	"sma_acc_eotech_xps3_blk",
	"sma_acc_micro_t2_low",
	"rhs_acc_ekp8_18",
	"hlc_optic_ism1400a7",
	"rksl_optic_eot552",
	"rhsusf_acc_t1_high",
	"cup_optic_trijiconrx01_black",
	"",
	"",
	
	//Muzzle
	"rhs_acc_dtk",
	"rhs_acc_dtk1",
	"rhs_acc_dtk2",
	"rhs_acc_dtk3",
	
	//Grip
	"rhs_acc_grip_rk2",
	"rhs_acc_grip_rk6",
	"rhs_acc_grip_ffg2",
	
	//Tactical Device
	"rhs_acc_2dpzenit_ris",
	"rhs_acc_2dpzenit",
	"rhs_acc_perst1ik_ris",
	"rhs_acc_perst1ik",
	"rhs_acc_perst3",
	"rhs_acc_perst3_top"
];

private _itemWeapRifle = 
[
	"rhs_weap_ak74m_zenitco01_b33",
	"bear_weap_ak74m_zenitco01_b33_camo"
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_ak74m_fullplum_gp25_npz"
];

private _itemWeapAR = 
[
	"CUP_lmg_Pecheneg_top_rail_B50_vfg",
	"rksl_optic_eot552x"
];

private _itemWeapLAT = 
[
	"rhs_weap_m72e10",
	"srifle_DMR_01_F",
	"aegis_weap_vs121_blk",
	"optic_mrco",
	"hlc_bipod_utgshooters",
	"10Rnd_762x54_Mag",
	"ACE_10Rnd_762x54_Tracer_mag"
	
];

private _itemWeapPistol = 
[
	"hgun_P07_F",
	"16Rnd_9x21_Mag",
	"hgun_Pistol_heavy_01_F",
	"11Rnd_45ACP_Mag"
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
	"rhs_30Rnd_545x39_7N10_2mag_camo_AK",
	"rhs_30Rnd_545x39_7N10_2mag_AK",
	"bear_30Rnd_545x39_green_7N10",
	"rhs_30Rnd_545x39_7N10_AK",
	
	//Pistol Ammo
	"16Rnd_9x21_Mag"
];

private _itemAmmoTracer = 
[
	"rhs_30Rnd_545x39_7N10_plum_AK"
];

private _itemAmmoAR = 
[
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"
];

private _itemAmmoLAT = 
[
	""
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
	"rhs_VOG25",
	"rhs_VOG25P"
];

private _itemSignalLauncher = 
[
	"rhs_GRD40_Red",
	"rhs_GRD40_White",
	"rhs_GRD40_Green"
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
	"ACE_wirecutter",
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemAmmoLAT + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemExplosive + _itemAmmoLAT + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemExplosive + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
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