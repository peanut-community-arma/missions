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
	"sfp_m90w_uniform_fs18",
	"sfp_m90w_uniform",
	"sfp_m90w_uniform_m08jacket",
	"sfp_m90w_uniform_m08",
	"sfp_m90w_uniform_m08tucked",

	//Vest
	"milgp_v_mmac_assaulter_rgr",
	"milgp_v_mmac_assaulter_belt_rgr",
	"milgp_v_mmac_hgunner_rgr",
	"milgp_v_mmac_hgunner_belt_rgr",
	"milgp_v_mmac_light_rgr",
	"milgp_v_mmac_marksman_rgr",
	"milgp_v_mmac_marksman_belt_rgr",

	//Headgear
	"sfp_booniehat_m90w",
	"sfp_m90w_helmet",
	"sfp_m90w_helmet_comtac",
	"sfp_m90w_helmet_nvg",

	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"pca_eagle_a3_od",
	"pca_kitbag_od",
	"pca_carryall_od",
	"pca_assaultpack_od"
];

private _itemGearGren =
[
	//Vest
	"milgp_v_mmac_grenadier_rgr",
	"milgp_v_mmac_grenadier_belt_rgr"
];

private _itemGearMedic =
[
	//Vest
	"milgp_v_mmac_medic_rgr",
	"milgp_v_mmac_medic_belt_rgr"
];

private _itemGearMG =
[
	//Vest
	"milgp_v_mmac_hgunner_rgr",
	"milgp_v_mmac_hgunner_belt_rgr"
];

private _itemGearLeader =
[
	//Vest
	"milgp_v_mmac_grenadier_rgr",
	"milgp_v_mmac_grenadier_belt_rgr",
	"milgp_v_mmac_teamleader_rgr",
	"milgp_v_mmac_teamleader_belt_rgr",

	//Headgear
	"sfp_m90w_helmet_comtac_igr",
	"sfp_m90w_helmet_nvg_comtac_igr",
	
	//Explosives for mission
	"DemoCharge_Remote_Mag"
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
	"rhsusf_cvc_helmet",
	"rhsusf_cvc_alt_helmet",
	"rhsusf_cvc_ess",

	//Backpack
	"rhsusf_assault_eagleaiii_ocp"
];

private _itemCosmetic =
[
	//Face
	"G_Aviator",
	"G_Balaclava_oli",
	"G_Balaclava_blk",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Lowprofile",
	"G_Balaclava_lowprofile",
	"G_Spectacles",
	"G_Bandanna_sport",
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
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Headset_light",
	"G_Combat_Goggles_tna_F",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_FR_NeckScarf3",
	"$REMOVE_usm_swdgoggles$",
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"sfp_peltor_comtac3",
	"rhs_ess_black",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",

	//HMD
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"Goggles_grn_F",
	"pca_nvg_gloves_wool",
	"$NONE_usm_nvg_giglovesscarf$",
	"$NONE_usm_nvg_giglovesscarf2$",
	"$NONE_usm_nvg_swdgoggles$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"sfp_nvg_peltor_comtac3",
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool_gry",
	"pca_nvg_gloves_wool_grn"
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
	"ACE_morphine",
	//Specialized Equipments
	"ACE_personalAidKit"
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
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag"
];

private _itemAcc =
[
	//Optic
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_micro_t2_low$",
	"rhsusf_acc_t1_low_fwd",
	"rhsusf_acc_t1_low",
	"rhsusf_acc_t1_high",
	"CUP_optic_CompM4",
	"ptv_acc_t1_low",
	"ptv_acc_t1",
	"ptv_acc_aimcs",
	"ptv_acc_compm4s",
	"cup_optic_compm2_woodland",
	"cup_optic_compm2_woodland2",
	"cup_optic_compm2_od",
	"cup_optic_compm2_black",
	"cup_optic_compm2_low_od",
	"cup_optic_compm2_low",
	"cup_optic_microt1_od",
	"cup_optic_microt1_low_od",
	"cup_optic_microt1_low",
	"cup_optic_microt1",
	"cup_optic_compm4",

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
	"sfp_weap_ak5c",
	"sfp_weap_ak5c_blk",
	"sfp_weap_ak5c_vfg",
	"sfp_weap_ak5c_vfg_blk"
];

private _itemWeapRifleUGL =
[
	"sfp_weap_ak5c_m203",
	"sfp_weap_ak5c_m203_blk"
];

private _itemWeapAR =
[
	"CUP_lmg_minimi_railed",
	"CUP_lmg_minimipara"
];

private _itemWeapMG =
[
	"CUP_lmg_M240"
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
	"pca_weap_m136cs"
];

private _itemWeapPistol =
[
	"rhsusf_weap_glock17g4"
];

private _itemAmmo =
[
	//Rifle Ammo
	"hlc_30rnd_556x45_EPR_L5",
	"hlc_30rnd_556x45_M_L5",
	"hlc_30rnd_556x45_T_L5",

	//Pistol Ammo
	"rhsusf_mag_17Rnd_9x19_FMJ",
	"rhsusf_mag_17Rnd_9x19_JHP",

	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"rhs_mag_an_m8hc",
	"CUP_HandGrenade_M67"
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
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMAT =
[
	"MRAWS_HE_F",
	"MRAWS_HEAT_F"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") :
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
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