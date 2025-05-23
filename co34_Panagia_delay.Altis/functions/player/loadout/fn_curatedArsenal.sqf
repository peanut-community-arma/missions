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
	"U_B_CombatUniform_mcam",
	"U_B_CombatUniform_mcam_vest",
	"U_B_CombatUniform_mcam_tshirt",
	
	//Vest
	"milgp_v_marciras_assaulter_mc",
	"milgp_v_marciras_assaulter_belt_mc",
	"milgp_v_marciras_grenadier_mc",
	"milgp_v_marciras_grenadier_belt_mc",
	"milgp_v_marciras_hgunner_mc",
	"milgp_v_marciras_hgunner_belt_mc",
	"milgp_v_marciras_light_mc",
	"milgp_v_marciras_marksman_mc",
	"milgp_v_marciras_marksman_belt_mc",
	"milgp_v_marciras_medic_mc",
	"milgp_v_marciras_medic_belt_mc",
	"milgp_v_marciras_teamleader_mc",
	"milgp_v_marciras_teamleader_belt_mc",
	
	//Headgear
	"aegis_ech_mtp",
	"aegis_ech_enh_mtp",
	"aegis_ech_ghillie_mtp",
	"aegis_lch_mtp",
	"bear_opscore_multicam_cover",
	"bear_opscore_multicam_cover_pelt",
	"bear_opscore_multicam_cover_pelt_cam",
	"bear_opscore_multicam_cover_pelt_nsw",
	"bear_opscore_multicam_cover_pelt_nsw_cam",
	
	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"B_Kitbag_mcamo",
	"aegis_assaultpack_enh_mtp",
	"aegis_assaultpack_mtp",
	"aegis_carryall_mtp",
	"aegis_tacticalpack_mtp",
	"pca_eagle_a3_ocp"
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
	"aegis_bandanna_kawaii",
	"aegis_cigarette",
	"aegis_combat_gogg_blk",
	"aegis_bala_light_blk",
	"aegis_bala_light_gogg_blk",
	"aegis_bala_light_mtp",
	"aegis_bala_light_gogg_mtp",
	"aegis_shemag_khk",
	"aegis_shemag_tactical_khk",
	"aegis_shemag_oli",
	"aegis_shemag_tactical_oli",
	"aegis_shemag_red",
	"aegis_shemag_tactical_red",
	"aegis_shemag_tan",
	"aegis_shemag_tactical_tan",
	"aegis_shemag_white",
	"aegis_shemag_tactical_white",
	"aegis_tactical_yellow",
	"aegis_tactical_camo",
	"G_Combat_Goggles_tna_F",
	"G_Balaclava_TI_blk_F",
	"G_Balaclava_TI_G_blk_F",
	"G_AirPurifyingRespirator_01_F",
	"bear_bandana_multicam",
	"CUP_G_TK_RoundGlasses_blk",
	"usm_scarf",
	"usm_scarf2",
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
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_glasses_org",
	"pca_nvg_glasses_ylw",
	"pca_nvg_ess_blk",
	"pca_nvg_cigarette",
	"pca_nvg_face_shield_khk",
	"pca_nvg_face_shield_mc",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_shemagh_khk",
	"pca_nvg_face_shield_shemagh_mc",
	"pca_nvg_face_shield_shemagh_rgr",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_shemagh_white",
	"pca_nvg_shemagh2_white",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	"pca_nvg_tactical_glasses",
	"pca_nvg_tactical_goggles",
	"nvg_goggles_grn",
	"nvg_goggles_cbr"
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
	"Binocular",
	"rhssaf_zrak_rd7j"
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
	"ACE_DefusalKit",
	"DemoCharge_Remote_Mag"
];

private _itemAcc = 
[
	"optic_hamr",
	"ace_optic_hamr_2d",
	"ace_optic_hamr_pip",
	"cup_optic_elcan",
	"cup_optic_elcan_reflex",
	"cup_optic_elcan_specterdr_kf_rmr_black",
	"cup_optic_elcan_specterdr_rmr_black",
	"cup_optic_elcan_specterdr_kf_black",
	"cup_optic_elcan_specterdr_black",
	"optic_arco",
	"optic_arco_blk_f",
	"sma_acc_elcan_specter_blk",
	"rhsusf_acc_acog_usmc",
	"optic_mrco",
	"ace_optic_mrco_2d",
	"rhsusf_acc_acog",
	"optic_erco_blk_f",
	"optic_erco_snd_f",
	"rhsusf_acc_su230",
	"rhsusf_acc_su230_c",
	"rhsusf_acc_su230_mrds",
	"rhsusf_acc_su230_mrds_c",
	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_c",
	"rhsusf_acc_su230a_mrds",
	"rhsusf_acc_su230a_mrds_c",
	"rhsusf_acc_acog_rmr",
	"cup_optic_rco",
	"cup_optic_acog_ta01b_black",
	"cup_optic_acog_ta01b_coyote",
	"cup_optic_acog_ta01b_rmr_black",
	"cup_optic_acog_ta01b_rmr_coyote",
	"cup_optic_acog_ta01b_rmr_tan",
	"cup_optic_acog_ta01b_tan",
	"cup_optic_rco_desert",
	"cup_optic_acog_ta01nsn_rmr_black",
	"cup_optic_acog_ta01nsn_rmr_coyote",
	"cup_optic_acog_ta01nsn_rmr_tan",
	"cup_optic_acog_ta01nsn_tan",
	"cup_optic_acog2",
	"cup_optic_acog_ta31_kf",
	"cup_optic_acog"
];

private _itemWeapRifle = 
[
	"arifle_MX_F",
	"arifle_MX_Black_F"
];

private _itemWeapRifleUGL = 
[
	"arifle_MX_GL_F",
	"arifle_MX_GL_Black_F"
];

private _itemWeapAR = 
[
	"sps_weap_kac_lamg_blk",
	"sps_weap_kac_lamg_tan",
	"sps_weap_kac_lamg_hg_blk",
	"sps_weap_kac_lamg_hg_tan"
];

private _itemWeapMG = 
[
	"MMG_02_sand_F",
	"MMG_02_camo_F",
	"MMG_02_black_F"
];

private _itemWeapLAT = 
[
	"pca_weap_m136cs"
];

private _itemWeapMAT = 
[
	"launch_MRAWS_green_rail_F",
	"launch_MRAWS_olive_rail_F"
];

private _itemWeapHAT = 
[
	"launch_I_Titan_short_F",
	"launch_O_Titan_short_F"
];

private _itemWeapPistol = 
[
	"hgun_P07_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_P07_blk_F",
	"hgun_P07_khk_F",
	"hgun_Pistol_heavy_01_green_F"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"30Rnd_65x39_caseless_black_mag",
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_black_mag_Tracer",
	"30Rnd_65x39_caseless_mag_Tracer",
	"11Rnd_45ACP_Mag",
	"16Rnd_9x21_Mag",
	
	//Explosives
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
	"sps_200Rnd_556x45_M855A1_Mixed_KAC_Box",
	"sps_200Rnd_556x45_M855A1_KAC_Box",
	"sps_200Rnd_556x45_M856A1_Tracer_Red_KAC_Box",
	"sps_200Rnd_556x45_M855A1_Mixed_KAC_Box_Tan",
	"sps_200Rnd_556x45_M855A1_KAC_Box_Tan",
	"sps_200Rnd_556x45_M856A1_Tracer_Red_KAC_Box_Tan"
];

private _itemAmmoMG = 
[
	"ACE_130Rnd_338_Mag_green",
	"130Rnd_338_Mag"
];

private _itemAmmoMAT = 
[
	"MRAWS_HE_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HEAT_F"
];

private _itemAmmoHAT = 
[
	"Titan_AT",
	"Titan_AP"
];

private _itemAmmoSignal = 
[
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokeRed_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell",
	"3Rnd_SmokeOrange_Grenade_shell",
	"3Rnd_SmokeGreen_Grenade_shell",
	"3Rnd_SmokeBlue_Grenade_shell",
	"3Rnd_Smoke_Grenade_shell",
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemAmmoAR + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemWeapPistol + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Weapon Team Leader
	case (_unitRole == "wtl") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoSignal + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemAmmoMG + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "ammg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Anti-Tank Gunner
	case (_unitRole == "hat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapHAT + _itemAmmo + _itemAmmoHAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Anti-Tank Gunner
	case (_unitRole == "ahat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoHAT)] call ace_arsenal_fnc_initBox;
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