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
	"CUP_U_B_GER_Flecktarn_1",
	"CUP_U_B_GER_Flecktarn_2",
	"CUP_U_B_GER_Flecktarn_3",
	"CUP_U_B_GER_Flecktarn_4",
	"CUP_U_B_GER_Flecktarn_5",
	"CUP_U_B_GER_Flecktarn_6",
	"CUP_U_B_GER_Flecktarn_7",
	"CUP_U_B_GER_Flecktarn_8"
];

private _itemUniformCrew = 
[
	"CUP_U_B_GER_Fleck_Overalls_Tank"
];

//Vest
private _itemVest = 
[
	"CUP_V_B_GER_PVest_Fleck_Gren",
	"CUP_V_B_GER_PVest_Fleck_MG",
	"CUP_V_B_GER_PVest_Fleck_Med",
	"CUP_V_B_GER_PVest_Fleck_RFL",
	"CUP_V_B_GER_PVest_Fleck_TL"
];

private _itemVestCrew = 
[
	"CUP_V_B_GER_PVest_Fleck_RFL"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_Ger_M92_Cover",
	"CUP_H_Ger_M92_Cover_GG_CB",
	"CUP_H_Ger_M92_Cover_GG_CF",
	"CUP_H_Ger_M92_Cover_GG",
	"CUP_H_Ger_Cap_Grn2",
	"CUP_H_Ger_Cap_EP_Grn1",
	"CUP_H_Ger_Boonie2_Flecktarn",
	"CUP_H_Ger_Boonie_Flecktarn"
];

private _itemHeadgearLead = 
[
	"CUP_H_Ger_Beret_INF_Grn"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC",
	"CUP_H_Ger_Beret_ARM_Grn",
	"CUP_H_Ger_Beret_TankCommander_Grn"
];

//Backpack 
private _itemBackpack = 
[
	"B_Kitbag_flecktarn",
	"CUP_B_GER_Pack_Flecktarn",
	"B_Carryall_flecktarn",
	"pca_backpack_invisible"
];

private _itemBackpackCrew = 
[
	"pca_backpack_invisible_large"
];

//Cosmetic 
private _itemCosmetic = 
[
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"JCA_G_AirPurifyingRespirator_04_black_clear_F",
	"JCA_G_AirPurifyingRespirator_04_black_tinted_F",
	"JCA_G_AirPurifyingRespirator_04_olive_clear_F",
	"JCA_G_AirPurifyingRespirator_04_olive_tinted_F",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_Flecktarn",
	"ptv_balaclava_01",
	"ptv_balaclava_01_g",
	"ptv_balaclava_02",
	"ptv_balaclava_02_g",
	"ptv_balaclava_ess_b",
	"ptv_balaclava_ess_g",
	"ptv_balaclava_ct3_b",
	"ptv_balaclava_ct3_g",
	"ptv_balaclava_ess_ct3_b",
	"ptv_balaclava_ess_ct3_g",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_Germany",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_TransPride",
	"G_Bandanna_kawaii",
	"G_Bandanna_Vampire_01",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"G_LEN_BCG",
	"murshun_cigs_cig0",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"TC_G_NitrileGloves_1",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_TK_RoundGlasses_blk",
	"G_Shades_Black",
	"CUP_G_Beard_Shades_Black",
	"CUP_G_Beard_Shades_Blonde",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Spectacles_Tinted",
	"PLA_NV_Glasses_F",
	"PLA_NV_Goggles_F",
	"TC_NVG_NitrileGloves_1"
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
	//Optic
	"optic_ACO_grn_AK_F",
	"HLC_optic_Aimpoint5000",
	"HLC_optic_Aimpoint5000_Sunshade",
	"CUP_optic_CompM4",
	"sfp_optic_aimpoint",
	"CUP_optic_G36Optics15x",
	"optic_r1_high_lxWS",
	"optic_r1_low_lxWS",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_low",
	"sfp_optic_aimpoint_t1",
	"CUP_optic_AC11704_Black",
	"optic_ACO_grn",
	"optic_Aco",
	"CUP_optic_HoloBlack",
	"RKSL_optic_EOT552",
	"CUP_optic_Eotech553_Black",
	"optic_Holosight_blk_F",
	"Aegis_optic_ICO",
	"CUP_optic_CompM2_Black",
	"CUP_optic_MARS",
	"JCA_optic_MROS_black",
	"ptv_compm4s",
	"ptv_compm5",
	"ptv_compm5s",
	"ptv_t1",
	"ptv_t1s",
	"Aegis_optic_ROS",
	"CUP_optic_TrijiconRx01_black",
	"CUP_optic_TrijiconRx01_kf_black",
	"CUP_optic_VortexRazor_UH1_Black",
	"CUP_optic_ZeissZPoint",
	"CUP_optic_G36Optics15x_3D"
];

private _itemWeapRifle = 
[
	"CUP_arifle_G36A",
	"CUP_arifle_G36A_RIS",
	"CUP_arifle_G36A3",
	"CUP_arifle_G36A3_grip",
	"CUP_arifle_G36C",
	"CUP_arifle_G36C_VFG_Carry",
	"CUP_arifle_G36C_VFG",
	"CUP_arifle_G36CA3",
	"CUP_arifle_G36CA3_afg",
	"CUP_arifle_G36CA3_grip",
	"CUP_arifle_G36E",
	"CUP_arifle_G36K",
	"CUP_arifle_G36K_VFG",
	"CUP_arifle_G36K_RIS",
	"CUP_arifle_G36K_KSK",
	"CUP_arifle_G36K_KSK_AFG",
	"CUP_arifle_G36K_KSK_VFG",
	"CUP_arifle_G36KA3",
	"CUP_arifle_G36KA3_afg",
	"CUP_arifle_G36KA3_grip"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AG36",
	"CUP_arifle_G36A_AG36_RIS",
	"CUP_arifle_G36A3_AG36",
	"CUP_arifle_G36K_AG36",
	"CUP_arifle_G36K_RIS_AG36"
];

private _itemWeapAR = 
[
	"ptv_MG3KWS_b"
];

private _itemWeapLAT = 
[
	"Atlas_Launch_Pzf3_F",
	"Atlas_DM12_HEAT_F",
	"Atlas_DM22_HEAT_F",
	"Atlas_DM32_HEAT_MP_F"
];

private _itemWeapPistol = 
[
	"ptv_usp45t",
	
	//Pistol Ammo
	"ptv_12Rnd_45ACP_USP"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_556x45_G36"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_TE1_Red_Tracer_556x45_G36"
];

private _itemAmmoAR = 
[
	"ptv_250Rnd_762x51_M_MG3",
	"ptv_100Rnd_762x51_M_MG3",
	"ptv_50Rnd_762x51_M_MG3",
	"ptv_250Rnd_762x51_T_MG3",
	"ptv_100Rnd_762x51_T_MG3",
	"ptv_50Rnd_762x51_T_MG3"
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
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemHeadgearLead + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemHeadgearLead + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemHeadgearLead + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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