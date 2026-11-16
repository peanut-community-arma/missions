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
	"Rev_U_B_FRR_Uniform_02_F",
	"Opf_U_O_S_Uniform_01_sweater_F",
	"U_BG_Guerilla3_1",
	"U_BG_Guerrilla_6_1",
	"Rev_U_B_FRR_Uniform_03_F",
	"Rev_U_B_FRR_Uniform_01_F",
	
	//Vest
	"pca_spcs_rifleman_oefcp",
	"pca_spcs_rifleman_alt_oefcp",
	"pca_spcs_medic_oefcp",
	"CUP_V_B_IOTV_UCP_SAW_USArmy",
	"CUP_V_B_IOTV_UCP_TL_USArmy",
	
	//Headgear
	"H_Watchcap_blk",
	"H_Watchcap_cbr",
	"H_Bandanna_camo",
	"H_Bandanna_sgg",
	"H_Cap_oli_hs",
	"H_Cap_oli",
	"pca_booniehat_flecktarn",
	"H_Shemag_olive",
	"H_Shemag_olive_hs",
	"H_ShemagOpen_tan",
	"H_PASGT_basic_sand_F",
	"H_PASGT_goggles_sand_F",
	"$REMOVE_wsx_helmet_combat_ctan_ess$",
	"CUP_H_PASGTv2_WDL",
	"CUP_H_PASGTv2_NVG_WDL_GG_CB",
	"CUP_H_PASGTv2_NVG_WDL_CF",
	
	
	//Backpack
	"pca_eagle_a3_m81",
	"pca_kitbag_m81",
	"bw_kitbag_fleck"
];

private _itemGearGren = 
[
	//Vest
	"pca_spcs_grenadier_oefcp"
];

private _itemGearMedic = 
[
	"bw_carryall_fleck",
	"B_Carryall_oli",
	"pca_carryall_m81"
];

private _itemGearMG = 
[
	"bw_carryall_fleck",
	"B_Carryall_oli",
	"pca_carryall_m81",
	"pca_spcs_saw_oefcp"
];

private _itemGearLeader = 
[
	"H_Cap_headphones",
	"$NONE_aegis_mil_beret_fia$",
	"pca_spcs_grenadier_oefcp",
	"pca_spcs_squadleader_oefcp",
	"pca_spcs_teamleader_oefcp"
];

private _itemGearCrew = 
[
	"SMG_03C_khaki",
	"SMG_03C_black"
];

private _itemGearPilot = 
[
];

private _itemCosmetic = 
[
	//Last updated 2022-03-19, includes lighter for Murshun smokes
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
	"CUP_FR_NeckScarf5",
	"G_Squares",
	"G_Squares_Tinted",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"bear_balaclava1_black",
	"CUP_G_TK_RoundGlasses",
	
	//Murshun cigpack and lighter
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack",
	
	//NVG slot
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_ess_blk$",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"Goggles_grn_F",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"pca_nvg_gloves_wool",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$"
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
	"Binocular",
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148"
];

private _itemEng = 
[
	"ACE_Clacker",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag"
];

private _itemAcc = 
[
	"cup_optic_g36optics15x",
	"cup_optic_g36optics15x_3d",
	"cup_optic_susat"
];

private _itemAccSpec = 
[
	"rhsusf_acc_ACOG",
	"rhsusf_acc_ACOG2",
	"rhsusf_acc_ACOG3",
	"rhsusf_acc_ACOG_RMR"
];

private _itemWeapRifle = 
[
	"arifle_TRG20_F",
	"arifle_TRG21_F",
	"arifle_TRG20_black_F",
	"arifle_TRG21_black_F",
	//NATO surplus
	"rhs_weap_m4a1_carryhandle",
	"CUP_arifle_M16A4_Base",
	"CUP_CZ_BREN2_556_14",
	"CUP_CZ_BREN2_556_14_Tan",
	"CUP_arifle_G36K",
	"CUP_arifle_G36K_VFG",
	"CUP_arifle_L85A2"
];

private _itemWeapRifleUGL = 
[
	"arifle_TRG21_GL_F",
	"arifle_TRG21_GL_black_F",
	//NATO surplus
	"CUP_arifle_M16A4_GL",
	"CUP_arifle_M4A1_GL_carryhandle",
	"CUP_CZ_BREN2_556_14_GL_Tan",
	"CUP_CZ_BREN2_556_14_GL",
	"CUP_arifle_G36K_AG36",
	"CUP_arifle_L85A2_GL"
];

private _itemWeapAR = 
[
	"CUP_lmg_minimi",
	"rhs_weap_m249"
];

private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemWeapDMR = 
[
	"rhs_weap_m14ebrri"
];

private _itemWeapLAT = 
[
	"launch_RPG32_black_F",
	"bw_carryall_fleck"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Glock17"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red",
	//G36 ammo
	"rhssaf_30rnd_556x45_EPR_G36",
	"rhssaf_30rnd_556x45_Tracers_G36",
	"CUP_30Rnd_556x45_G36",
	"CUP_30Rnd_TE1_Red_Tracer_556x45_G36",
	//Crewman ammo
	"50Rnd_570x28_SMG_03",
	"CUP_50Rnd_570x28_Red_Tracer_P90_M",
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_glock17",
	
	//Yeah that's right, everyone gets rockets. Fear.jpg
	"RPG32_F",
	"RPG32_HE_F",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"SmokeShell",
	"CUP_HandGrenade_M67"
];

private _itemAmmoAR = 
[
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_M856_soft_pouch"
];

private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M",
	"MRAWS_HE_F"
];

private _itemAmmoDMR = 
[
	"rhsusf_20Rnd_762x51_m118_special_Mag"
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
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
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
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////	ROLES NOT USED IN BASE TEMPLATE	////////////////////////////////////////////////////////
	
	//Designated Marksman
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapDMR + _itemWeapPistol + _itemAmmo + _itemAmmoDMR)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Machine Gunner
	case (_unitRole == "hmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Machine Gunner
	case (_unitRole == "ahmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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