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
	"simc_bdu_dcu",
	"simc_bdu_kp_dcu",
	"simc_bdu_kp_roll_dcu",
	"simc_bdu_roll_dcu",
	"simc_bdu_dcu_2",
	"simc_bdu_kp_dcu_2",
	"simc_bdu_kp_roll_dcu_2",
	"simc_bdu_roll_dcu_2",
	
	//Vest
	"V_Simc_vest_pasgt_dcu",
	"simc_vest_pasgt_lbv_dcu",
	"simc_vest_pasgt_lbv_alt_dcu",
	"simc_vest_pasgt_lbv_holster_dcu",
	"simc_vest_pasgt_lbv_holster_alt_dcu",
	"simc_vest_pasgt_lbv_lc2_dcu",
	"simc_vest_pasgt_lbv_lc2_alt_dcu",
	"simc_vest_pasgt_lc2_dcu",
	"simc_vest_pasgt_lc2_alt_dcu",
	"simc_vest_pasgt_lc2_etool_dcu",
	"simc_vest_pasgt_lc2_gren_dcu",
	"simc_vest_pasgt_lc2_holster_dcu",
	"simc_vest_pasgt_lc2_saw_dcu",
	
	//Headgear
	"H_Bandanna_cbr",
	"simc_bonnie_hat_dcu",
	"simc_bonnie_hat_flat_dcu",
	"H_Simc_pasgt_dcu",
	"simc_pasgt_dcu_band",
	"H_Simc_pasgt_dcu_scrim",
	"simc_pasgt_dcu_scrim_2",
	"H_Simc_pasgt_dcu_SWDG",
	"H_Simc_pasgt_dcu_b_SWDG",
	"simc_pasgt_dcu_swdg_cover_band",
	"simc_pasgt_dcu_swdg_cover",
	"simc_pasgt_dcu_swdg_high",
	"simc_pasgt_dcu_swdg_high_band",
	"H_Simc_pasgt_dcu_SWDG_low",
	"H_Simc_pasgt_dcu_SWDG_low_b",
	"simc_pasgt_dcu_swdg_low_cover",
	"simc_pasgt_dcu_swdg_low_cover_band",
	
	//Backpack
	"pca_kitbag_od"
];

private _itemGearLeader = 
[
	//Headgear
	"Aegis_H_MilCap_nohs_desert_lxWS",
	"$NONE_usm_bdu_8point_dcu$"
];

private _itemGearCrew = 
[
	//Uniform 
	"simc_bdu_dcu",
	"simc_bdu_kp_dcu",
	"simc_bdu_kp_roll_dcu",
	"simc_bdu_roll_dcu",
	"simc_bdu_dcu_2",
	"simc_bdu_kp_dcu_2",
	"simc_bdu_kp_roll_dcu_2",
	"simc_bdu_roll_dcu_2",
	
	//Vest
	"V_Simc_vest_pasgt_dcu",
	"simc_vest_pasgt_lbv_dcu",
	"simc_vest_pasgt_lbv_alt_dcu",
	"simc_vest_pasgt_lbv_holster_dcu",
	"simc_vest_pasgt_lbv_holster_alt_dcu",
	"simc_vest_pasgt_lbv_lc2_dcu",
	"simc_vest_pasgt_lbv_lc2_alt_dcu",
	"simc_vest_pasgt_lc2_dcu",
	"simc_vest_pasgt_lc2_alt_dcu",
	"simc_vest_pasgt_lc2_etool_dcu",
	"simc_vest_pasgt_lc2_gren_dcu",
	"simc_vest_pasgt_lc2_holster_dcu",
	"simc_vest_pasgt_lc2_saw_dcu",
	
	//Headgear
	"H_Bandanna_cbr",
	"simc_bonnie_hat_dcu",
	"simc_bonnie_hat_flat_dcu",
	"H_Simc_pasgt_dcu",
	"simc_pasgt_dcu_band",
	"H_Simc_pasgt_dcu_scrim",
	"simc_pasgt_dcu_scrim_2",
	"H_Simc_pasgt_dcu_SWDG",
	"H_Simc_pasgt_dcu_b_SWDG",
	"simc_pasgt_dcu_swdg_cover_band",
	"simc_pasgt_dcu_swdg_cover",
	"simc_pasgt_dcu_swdg_high",
	"simc_pasgt_dcu_swdg_high_band",
	"H_Simc_pasgt_dcu_SWDG_low",
	"H_Simc_pasgt_dcu_SWDG_low_b",
	"simc_pasgt_dcu_swdg_low_cover",
	"simc_pasgt_dcu_swdg_low_cover_band",
	
	//Backpack
	"pca_kitbag_od"
];

private _itemGearPilot = 
[
	//Uniform 
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp",
	
	//Vest 
	"rhsusf_spcs_ocp_crewman",
	
	//Headgear
	"rhsusf_cvc_helmet",
	"rhsusf_cvc_alt_helmet",
	"rhsusf_cvc_ess",
	
	//Backpack
	"rhsusf_assault_eagleaiii_ocp"
];

private _itemCosmetic = 
[
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_khk",
	"G_Bandanna_sport",
	"G_Combat",
	"G_Lowprofile",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Combat_Goggles_blk_F",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Balaclava_light_mtp_F",
	"G_Balaclava_light_G_mtp_F",
	"CUP_FR_NeckScarf2",
	"$NONE_aegis_shemag_tactical_khk$",
	"CUP_FR_NeckScarf",
	"G_Shemag_tactical",
	"CUP_FR_NeckScarf5",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shemag_white",
	"G_Tactical_Yellow",
	"G_Tactical_Camo",
	"G_Combat_Goggles_tna_F",
	"G_Balaclava_TI_blk_F",
	"G_Balaclava_TI_G_blk_F",
	"G_AirPurifyingRespirator_01_F",
	"bear_bandana_multicam",
	"CUP_G_TK_RoundGlasses_blk",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_mc",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_mc",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_mc",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_mc",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_mc",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_mc",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh2_gogg_white",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"immersion_pops_pop0"
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
	"ACE_personalAidKit",
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
	"Binocular"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemEng = 
[
	"ACE_Clacker",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"MineDetector",
	"hgun_esd_01_F"
];

private _itemAcc = 
[
	//Optic
	"CUP_optic_CompM4",
	"RKSL_optic_EOT552",
	
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
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top"
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
	"rhs_weap_m4",
	"rhs_weap_m4_mstock",
	"rhs_weap_m4_carryhandle",
	"rhs_weap_m4_carryhandle_mstock"
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_m4_m203",
	"rhs_weap_m4_m203s",
	"rhs_weap_m4_carryhandle_m203",
	"rhs_weap_m4_carryhandle_m203s"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S"
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
	"CUP_launch_M136"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_m9"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855_PMAG",
	"rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_Stanag",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Ranger",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red",
	
	//Pistol Ammo
	"rhsusf_mag_15Rnd_9x19_JHP",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"SmokeShell",
	"CUP_HandGrenade_M67",
	
	//Cigarettes
	"murshun_cigs_matches",
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack"
	
];

private _itemAmmoAR = 
[
	"rhsusf_100Rnd_556x45_soft_pouch",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch",
	"rhsusf_100Rnd_556x45_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
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