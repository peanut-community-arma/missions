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
	"bear_uniform_indep2_tigerstripe_desert"
];

private _itemUniformCrew = 
[
	"bear_uniform_indep2_tigerstripe_desert"
];

private _itemUniformPilot = 
[
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp"
];

//Vest
private _itemVest = 
[
	"pca_6b5_tan",
"pca_6b5_rifleman_tan"
];

private _itemVestCrew = 
[
	"rhsusf_spcs_ocp_crewman"
];

private _itemVestPilot = 
[
	"rhsusf_spcs_ocp_crewman"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_Ger_M92_Tan",
"CUP_H_Ger_M92_Tan_GG"
];

private _itemHeadgearCrew = 
[
	"rhs_tsh4",
"rhs_tsh4_ess"
];

private _itemHeadgearPilot = 
[
	"rhsusf_ihadss"
];

//Backpack 
private _itemBackpack = 
[
	"bear_sidor_tan",
	"rhs_rpg_empty",
"rhs_rd54_vest",
"B_FieldPack_cbr",
"rhs_assault_umbts",
"pca_backpack_invisible",
"pca_backpack_invisible_large"
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
		//Face
"murshun_cigs_cig0",
"immersion_pops_pop0",
"G_Aviator",
"G_Balaclava_blk",
"G_Bandanna_aviator",
"G_Bandanna_blk",
"G_Bandanna_shades",
"G_Bandanna_sport",
"G_Bandanna_tan",
"G_Lowprofile",
"G_Balaclava_lowprofile",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Spectacles",
"G_Sport_Red",
"G_Sport_Blackyellow",
"G_Sport_BlackWhite",
"G_Sport_Checkered",
"G_Sport_Blackred",
"G_Sport_Greenblack",
"G_Squares_Tinted",
"G_Squares",
"G_Spectacles_Tinted",
"G_Bandanna_kawaii",
"G_Bandanna_shemag",
"G_Cigarette",
"G_Shades_Yellowred",
"CUP_RUS_Balaclava_blk",
"CUP_Beard_Black",
"CUP_Beard_Blonde",
"CUP_Beard_Brown",
"CUP_G_ESS_BLK_Dark",
"CUP_G_ESS_BLK_Ember",
"CUP_G_ESS_BLK",
"CUP_G_ESS_KHK_Dark",
"CUP_G_ESS_KHK_Ember",
"CUP_G_ESS_KHK",
"CUP_G_TK_RoundGlasses_blk",
"CUP_G_WristWatch",
"$REMOVE_usm_swdgoggles$",
"$REMOVE_usm_scarf$",
"milgp_f_face_shield_tan",
"milgp_f_face_shield_goggles_tan",
"milgp_f_face_shield_shades_tan",
"milgp_f_goggles_khk",
"milgp_f_face_shield_rgr",
"milgp_f_face_shield_goggles_rgr",
"milgp_f_face_shield_shades_rgr",
"rhs_scarf",
"rhs_ess_black",
"rhsusf_shemagh_grn",
"rhsusf_shemagh2_grn",
"rhsusf_shemagh_od",
"rhsusf_shemagh2_od",
"rhsusf_shemagh_white",
"rhsusf_shemagh2_white",
"rhsusf_shemagh_gogg_grn",
"rhsusf_shemagh2_gogg_grn",
"rhsusf_shemagh_gogg_od",
"rhsusf_shemagh2_gogg_od",
"rhsusf_shemagh_gogg_white",
"rhsusf_shemagh2_gogg_white",
"CUP_G_Oakleys_Drk",
"CUP_G_Oakleys_Clr",
"CUP_G_Oakleys_Embr",
"rhsusf_shemagh_tan",
"rhsusf_shemagh2_tan",
"rhsusf_shemagh_gogg_tan",
"rhsusf_shemagh2_gogg_tan",

//NVG slot
"$NONE_pca_nvg_ess_blk$",
"pca_nvg_cigarette",
"$NONE_pca_nvg_face_shield_tan$",
"$NONE_pca_nvg_face_shield_rgr$",
"$NONE_pca_nvg_shemagh_grn$",
"$NONE_pca_nvg_shemagh2_grn$",
"$NONE_pca_nvg_shemagh_od$",
"$NONE_pca_nvg_shemagh2_od$",
"$NONE_pca_nvg_shemagh_tan$",
"$NONE_pca_nvg_shemagh2_tan$",
"$NONE_pca_nvg_shemagh_white$",
"$NONE_pca_nvg_shemagh2_white$",
"$NONE_pca_nvg_oakley_goggles_blk$",
"$NONE_pca_nvg_oakley_goggles_clr$",
"$NONE_pca_nvg_oakley_goggles_ylw$",
"$NONE_pca_nvg_tactical_goggles$",
"murshun_cigs_cig0_nv",
"immersion_pops_pop0_nv",
"$NONE_nvg_scrim_wdl$",
"$NONE_nvg_scrim_wdl_grass$",
"$NONE_nvg_scrim_wdl_leaves_3$",
"$NONE_usm_nvg_scarf$",

//cigs
	"murshun_cigs_matches",
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
	"ToolKit"
];

private _itemBino = 
[
	"rhssaf_zrak_rd7j"
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
	"rhs_acc_1p63",
	
	//Grip
	
	
	// Flash hiders
	"rhs_acc_dtk",
	"rhs_acc_dtkrpk",
	"rhs_acc_pgs64_74u"
];

private _itemAccSpec = 
[
	"rhs_acc_pso1m2"
];

private _itemWeapRifle = 
[
	"CUP_arifle_AK74_Early",
		"$NONE_hlc_rifle_ak74_worn2$",
		"$NONE_hlc_rifle_ak74_worn$"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AKS74_GL_Early"
];

private _itemWeapAR = 
[
	"CUP_arifle_RPK74_45"
];

private _itemWeapLAT = 
[
	"CUP_launch_RPG26"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Browning_HP"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_PKM"
];

private _itemWeapMAT = 
[
	"rhs_weap_rpg7",
	"rhs_acc_pgo7v3"
];

private _itemWeapDMR = 
[
	"CUP_srifle_SVD"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_30Rnd_545x39_7N6_AK",
	
	//Pistol Ammo
	"CUP_13Rnd_9x19_Browning_HP"
];

private _itemAmmoTracer = 
[
	"rhs_30Rnd_545x39_AK_green"
];

private _itemAmmoAR = 
[
	"rhs_45Rnd_545X39_7N6M_AK",
	"rhs_45Rnd_545X39_7N6_AK",
	"rhs_45Rnd_545X39_AK_Green"
];

private _itemAmmoSignal = 
[
	"rhs_GRD40_Red",
	"rhs_GRD40_Green",
	"rhs_GRD40_White",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"rhs_VG40OP_green",
	"rhs_VG40OP_red",
	"rhs_VG40OP_white"
];

private _itemExplosive = 
[
	"rhs_GRD40_White",
	"SmokeShell",
	"rhs_VOG25",
	"rhs_VOG25P",
	"rhs_GDM40",
	"CUP_HandGrenade_RGD5",
	"rhs_mag_rgn",
	"CUP_HandGrenade_RGO"
];

//Special
private _itemAmmoMG = 
[
	"150Rnd_762x54_Box_Tracer",
	"150Rnd_762x54_Box"
];

private _itemAmmoMAT = 
[
	"rhs_rpg7_PG7VL_mag",
"rhs_rpg7_PG7VR_mag",
"rhs_rpg7_OG7V_mag"
];

private _itemAmmoDMR = 
[
	"rhs_10Rnd_762x54mmR_7N14"
];

private _itemEngineer = 
[
	
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
	//Designated Marksman
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAccSpec + _itemWeapDMR + _itemWeapPistol + _itemAmmo + _itemAmmoDMR + _itemExplosive)] call ace_arsenal_fnc_initBox;
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