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
private _itemGear = 
[
	//NVGs
	"CUP_NVG_GPNVG_black",
	"ACE_NVG_Wide_Black_WP"
];

//Uniform
private _itemUniform = 
[
	"usp_g3c_mc",
	"usp_g3c_rs2_mc",
	"usp_softshell_g3c_mc",
	"usp_g3c_kp_mc",
	"usp_g3c_kp_mx_mc",
	"usp_g3c_mx_mc",
	"usp_g3c_rs2_kp_mc",
	"usp_g3c_rs2_kp_mx_mc",
	"usp_g3c_rs2_mx_mc",
	"usp_softshell_g3c_kp_mc",
	"usp_softshell_g3c_kp_or_mc",
	"usp_softshell_g3c_or_mc"
];

private _itemUniformCrew = 
[
	"usp_g3c_mc",
	"usp_g3c_rs2_mc",
	"usp_g3c_mx_mc",
	"usp_g3c_rs2_mx_mc"
];

private _itemUniformPilot = 
[
	"usp_g3c_mc",
	"usp_g3c_rs2_mc",
	"usp_g3c_mx_mc",
	"usp_g3c_rs2_mx_mc"
];

//Vest
private _itemVest = 
[
	"usp_crye_cpc_comms_mc",
	"usp_crye_cpc_fast_mc",
	"milgp_v_jpc_medic_mc", //i just like the one that says medic ok
	"usp_crye_cpc_gren_mc",
	"usp_crye_cpc_light_mc",
	"usp_crye_cpc_teamlead_mc",
	"milgp_v_mmac_hgunner_mc"
];

private _itemVestCrew = 
[
	"rhsusf_spcs_ocp_crewman"
];

private _itemVestPilot = 
[
	"usp_crye_cpc_comms_mc",
	"usp_crye_cpc_fast_mc",
	"usp_crye_cpc_light_mc"
];

//Headgear 
private _itemHeadgear = 
[
	"milgp_h_airframe_01_mc",
	"milgp_h_airframe_02_mc",
	"milgp_h_airframe_03_mc",
	"milgp_h_airframe_04_mc",
	"milgp_h_airframe_05_mc",
	"milgp_h_airframe_06_mc",
	//Not helmets
	"milgp_h_cap_01_mc",
	"milgp_h_cap_01_goggles_mc",
	"milgp_h_cap_02_mc"
];

private _itemHeadgearCrew = 
[
	"rhsusf_cvc_helmet"
];

private _itemHeadgearPilot = 
[
	"rhsusf_ihadss",
	"rhsusf_hgu56p_black",
	"rhsusf_hgu56p_mask_black",
	"rhsusf_hgu56p_visor_black",
	"rhsusf_hgu56p_visor_mask_black",
	"H_PilotHelmetHeli_B",
	//Wide NVGs
	"ACE_NVG_Wide_Black"
];

//Backpack 
private _itemBackpack = 
[
	"pca_assaultpack_mc",
	"pca_eagle_a3_mc",
	"pca_kitbag_mc",
	"pca_carryall_mc"
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
	"G_Balaclava_Skull1",
	"pca_balaclava_gogg_mcb",
	"G_Balaclava_oli",
	"pca_balaclava_mcb",
	"G_Balaclava_blk",
	"G_Aviator",
	"G_Spectacles",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"rhssaf_veil_Green",
	"G_Spectacles_Tinted",
	"G_Cigarette",
	"rhs_ess_black",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
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
	"G_Bandanna_kawaii",
	"G_Bandanna_beast",
	"G_Bandanna_aviator",
	"pca_bandana_mc",
	"bear_bandana_multicam",
	"G_Bandanna_shemag",
	"CUP_G_ESS_RGR_Facewrap_Skull",
	"milgp_f_face_shield_goggles_mc",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_mc",
	"milgp_f_face_shield_blk",
	"G_Balaclava_light_mtp_F",
	"G_Balaclava_light_G_mtp_F",
	"G_Balaclava_light_wdl_F",
	"G_Balaclava_light_G_wdl_F",
	"G_Squares",
	"G_Squares_Tinted",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"bear_balaclava1_black",
	"CUP_G_TK_RoundGlasses",
	
	//Murshun cigpack and lighter
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
	"ItemGPS",
	"ACE_IR_Strobe_Item"
];

private _itemBino = 
[
	"Binocular",
	"Rangefinder"
];

private _itemRadio = 
[
	"ACRE_PRC148"
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
	"cup_optic_aimpoint_5000",
	"CUP_optic_CompM4",
	"RKSL_optic_EOT552",
	"rhsusf_acc_eotech_552_wd",
	"cup_optic_eotech553_od",
	"cup_optic_eotech553_black",
	"cup_optic_compm2_low",
	"cup_optic_compm2_low_od",
	"ptv_acc_t1",
	
	//2x optics
	"ptv_acc_compm4s_3x",
	"ptv_acc_aimcs_3x",
	"cup_optic_aimm_compm4_blk",
	"cup_optic_aimm_microt1_blk",
	"cup_optic_aimm_microt1_od",
	"cup_optic_g33_hws_blk",
	"cup_optic_g33_hws_od",
	"rhsusf_acc_g33_xps3",
	"cup_optic_aimm_m68_blk",
	"cup_optic_aimm_m68_od",
	
	//Grip
	"rhsusf_acc_grip2",
	"rhs_acc_grip_ffg2",
	"rhsusf_acc_kac_grip",
	
	//Tactical Device
	"cup_acc_anpeq_15_flashlight_black_l",
	"cup_acc_anpeq_15_flashlight_od_l",
	"ACE_DBAL_A3_Red",
	
	//Silencers
	"cup_muzzle_snds_kzrzp_ak545",
	
	//Pistols
	"cup_acc_cz_m3x"
	
];

private _itemWeapRifle = 
[
	"bear_weap_ak74m_zenitco01_b33_camo",
	"bear_weap_ak74mr_camo",
	"bear_weap_ak74m_zenitco01_camo",
	"rhs_weap_ak74mr"
];

private _itemWeapCarbine =
[
	"CUP_arifle_AKS74U_top_rail",
	"CUP_arifle_AKS74U_railed"
];

private _itemWeapRifleUGL = 
[
	"bear_weap_ak74mr_gp25_camo",
	"rhs_weap_ak74mr_gp25"
];

private _itemWeapAR = 
[
	"rhs_weap_rpk74m_npz",
	"CUP_arifle_RPK74M_top_rail"
];

private _itemWeapLAT = 
[
	"pca_weap_m136cs",
	"pca_weap_m136cs_hedp",
	"pca_weap_m136cs_hp",
	"CUP_launch_NLAW"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Duty"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_Pecheneg_top_rail",
	"CUP_lmg_Pecheneg_top_rail_B50_vfg",
	
	//Scopes
	"cup_optic_g33_hws_blk",
	"cup_optic_g33_hws_od",
	"cup_optic_aimm_microt1_blk",
	"cup_optic_aimm_compm4_blk",
	"rhsusf_acc_g33_xps3",
	"rhsusf_acc_acog_usmc",
	"rhsusf_acc_acog2_usmc",

	//Silencer
	"cup_muzzle_snds_kzrzp_pk"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_30Rnd_545x39_7N22_AK",
	"rhs_30Rnd_545x39_7N22_camo_AK",
	
	//SMG Ammo
	
	//Pistol Ammo
	"16Rnd_9x21_Mag"
];

private _itemAmmoTracer = 
[
	"rhs_30Rnd_545x39_AK_plum_green"
];

private _itemAmmoAR = 
[
	//Pistol ammo
	"16Rnd_9x21_Mag",
	
	"aegis_95Rnd_545x39_mixed_7N22_ak12",
	"aegis_95Rnd_545x39_7N22_ak12",
	"rhs_60Rnd_545X39_7N22_AK",
	"rhs_60Rnd_545X39_AK_Green"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"rhs_GRD40_Red",
	"rhs_GRD40_Green",
	"rhs_VG40OP_green",
	"rhs_VG40OP_red",
	"rhs_VG40OP_white"
];

private _itemExplosive = 
[
	"rhs_GRD40_White",
	"SmokeShell",
	"rhs_VOG25P",
	"rhs_VOG25",
	"rhs_mag_rgn",
	"CUP_HandGrenade_RGO"
];

//Special
private _itemAmmoMG = 
[
	"rhs_100Rnd_762x54mmR_7BZ3",
	"rhs_100Rnd_762x54mmR_green"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapLAT + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapLAT + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapLAT + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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