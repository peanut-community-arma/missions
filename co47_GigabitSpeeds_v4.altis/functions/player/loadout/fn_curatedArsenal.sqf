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
	//Common items shared by all classes except for vehicle crews
	
	//Uniform 
	"CUP_I_B_PMC_Unit_40",
	"CUP_I_B_PMC_Unit_37",
	"aegis_worn_clothes_blk",
	"CUP_I_B_PMC_Unit_42",
	"CUP_I_B_PMC_Unit_17",
	"U_C_Driver_1_red",
	"U_C_Driver_1_black",
	"U_C_Poloshirt_redwhite",
	"U_C_ConstructionCoverall_Red_F",
	"U_C_ConstructionCoverall_Black_F",
	
	//Vest
	"milgp_v_marciras_light_blk",
	"milgp_v_marciras_assaulter_blk",
	
	//Headgear
	"H_RacingHelmet_1_red_F",
	"aegis_beanie_red",
	"H_Cap_red",
	"H_Construction_basic_red_F",
	"H_Construction_headset_red_F",
	"H_HeadSet_red_F",
	"CUP_H_Navy_CrewHelmet_Red",
	"pca_headband_red",
	
	//Backpack
	"CUP_B_USPack_Black",
	"B_CivilianBackpack_01_Sport_Red_F",
	"B_FieldPack_blk",
	"wsx_tacticalpack_blk"
];

private _itemGearGren = 
[
	//Vest
];

private _itemGearMedic = 
[
	//Vest 
	"milgp_v_marciras_medic_blk",
	//Uniforms
	"CUP_U_C_Rescuer_01",
	//Backpack
	"pca_eagle_a3_blk",
	"aegis_carryall_blk"
];

private _itemGearMG = 
[
	//Vest
	"milgp_v_marciras_hgunner_blk",
	"milgp_v_marciras_hgunner_belt_blk"
];

private _itemGearLeader = 
[
	//Uniforms
	"aegis_suit_formal_redcheck",
	"aegis_suit_formal_white",
	//Headgear
	"CUP_H_SLA_BeretRed",
	//vest
	"milgp_v_marciras_teamleader_blk",
	"milgp_v_marciras_grenadier_blk",
	//Rangefinder
	"rhsusf_bino_lerca_1200_black"
];

private _itemGearCrew = 
[
	//Uniform 
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp",
	
	//Vest 
	"rhsusf_spcs_ocp_crewman",
	
	//Headgear
	"rhsusf_hgu56p_tan",
	"rhsusf_hgu56p_visor_tan",
	
	//Backpack
	"rhsusf_assault_eagleaiii_ocp"
];

private _itemGearPilot = 
[
	//Uniform 
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp",
	
	//Vest 
	"rhsusf_spcs_ocp_crewman",
	
	//Headgear
	"rhsusf_cvc",
	"rhsusf_cvc_alt_helmet",
	"rhsusf_cvc_ess",
	
	//Backpack
	"rhsusf_assault_eagleaiii_ocp"
];

private _itemCosmetic = 
[
	//Last updated 2022-03-19, includes lighter for Murshun smokes
	//Facewear
	"aegis_bala_skull",
	"pca_balaclava_gogg_mcb",
	"pca_balaclava_mcb",
	"G_Balaclava_blk",
	"G_Balaclava_TI_blk_F",
	"G_Balaclava_TI_G_blk_F",
	"G_Aviator",
	"G_Spectacles",
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
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_White_Scarf_Shades",
	"CUP_G_Scarf_Face_White",
	"CUP_PMC_Facewrap_Red",
	"aegis_bandanna_kawaii",
	"G_Bandanna_beast",
	"G_Bandanna_aviator",
	"aegis_bandanna_inferno",
	"aegis_shemag_red",
	"G_Squares",
	"G_Squares_Tinted",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"bear_balaclava1_black",
	"CUP_G_TK_RoundGlasses",
	"murshun_cigs_lighter",
	"G_Shades_Red",
	"G_Sport_Red",
	"aegis_shemag_red",
	"aegis_shemag_tactical_red",
	"CUP_G_ESS_CBR_Facewrap_Red",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_FR_NeckScarf5",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_PMC_Facewrap_Black",
	"simc_nomex_blk",
	
	//NVG slot
	"pca_nvg_cigarette",
	"pca_nvg_ess_blk",
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"simc_addon_nomex_blk"
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

private _itemMedSpecFA = 
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
	"ACE_morphine"
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
	"rhssaf_zrak_rd7j",
	"rhsusf_bino_lerca_1200_black"
];

private _itemRadio = 
[
	"ACRE_PRC148"
	//"ACRE_PRC152",
	//"ACRE_PRC117F"
];

private _itemEng = 
[
	//Vest
	"milgp_v_marciras_hgunner_belt_blk",
	"B_UAV_01_backpack_F"
];

private _itemAcc = 
[
	//Optic
	"cup_optic_vortexrazor_uh1_black",
	"sma_acc_eotech_552_kf_blk",
	"cup_optic_eotech553_black",
	"cup_optic_aimpoint_5000",
	"sma_acc_vortex_blk",
	//2x
	"ptv_acc_aimcs_3x",
	"ptv_acc_compm4s_3x",
	"ptv_acc_c79",
	"ptv_acc_shortdot",
	"aegis_acc_lrco_blk",
	"ptv_acc_acog_ta11",
	"rhsusf_acc_ACOG",
	"rhsusf_acc_ACOG2",
	"cup_optic_acog_ta01b_black",
	"cup_optic_acog_ta01b_rmr_black"
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
	"hlc_rifle_acr_car_blk"
];

private _itemWeapRifleUGL = 
[
	"hlc_rifle_acr_car_m203_blk"
];

private _itemWeapAR = 
[
	"sps_weap_kac_lamg_blk",
	"sps_weap_kac_lamg_hg_blk",
	//Accessories
	"cup_bipod_vltor_modpod_black",
	"rhsusf_acc_harris_bipod",
	"hlc_bipod_utgshooters",
	"ptv_acc_grip3"
];

private _itemWeapMG = 
[
	"CUP_lmg_Mk48",
	"CUP_lmg_Mk48_nohg"
];

private _itemWeapDMR = 
[
	"rhs_weap_m14ebrri"
];

private _itemWeapLAT = 
[
	"aegis_weap_mraws_blk",
	"MRAWS_HEAT55_F"
];

private _itemWeapMAT = 
[
	"rhs_weap_maaws"
];

private _itemWeapPistol = 
[
	"ptv_weap_usp45t",
	"ptv_12Rnd_45ACP_USP"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"pca_mag_30Rnd_556x45_M955_PMAG_Base_Blk",
	"pca_mag_30Rnd_556x45_M856A1_EMAG",
	
	//Pistol Ammo
	"ptv_12Rnd_45ACP_USP",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"rhs_mag_an_m8hc",
	"HandGrenade"
];

private _itemAmmoAR = 
[
	"sps_200Rnd_556x45_M995_Mixed_KAC_Box",
	"sps_200Rnd_556x45_M856A1_Tracer_Red_KAC_Box"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51_m80a1epr",
	"rhsusf_100Rnd_762x51_m993"
];

private _itemAmmoMAT = 
[
	"rhs_mag_maaws_HEAT",
	"rhs_mag_maaws_HEDP",
	"rhs_mag_maaws_HE"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (Light Anti-Tank)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapLAT + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpecFA + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAT + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapDMR + _itemAmmoDMR)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Machine Gunner
	case (_unitRole == "hmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Machine Gunner
	case (_unitRole == "ahmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
};

_action = 
[
	"personal_arsenal", "Personal Arsenal", "\A3\ui_f\data\igui\cfg\weaponicons\MG_ca.paa",
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