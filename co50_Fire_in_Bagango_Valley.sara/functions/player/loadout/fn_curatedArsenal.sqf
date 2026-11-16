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
	//Common items shared by all classes
	
	//Uniform 
	"CUP_U_I_RACS_Desert_1",
	"CUP_U_I_RACS_Desert_2",
	
	//Vest
	"CUP_V_PMC_IOTV_Coyote_Patrol",
	"CUP_V_PMC_IOTV_Coyote_AR",
	"CUP_V_PMC_IOTV_Coyote_Empty",
	"CUP_V_PMC_IOTV_Coyote_TL",
	"CUP_V_PMC_CIRAS_Coyote_Veh",
	"CUP_V_PMC_CIRAS_Coyote_Patrol",
	"CUP_V_PMC_CIRAS_Coyote_TL",
	"CUP_V_PMC_CIRAS_Coyote_Grenadier",
	"CUP_V_PMC_IOTV_Coyote_Gren",
	
	//Headgear
	"CUP_H_LWHv2_desert",
	"CUP_H_LWHv2_desert_comms",
	"CUP_H_LWHv2_desert_ess_comms",
	"H_Booniehat_oicamo",
	"Aegis_H_MilCap_nohs_desert_lxWS",
	"$NONE_usm_bdu_8point_des$",

	
	//Backpack
	"pca_eagle_a3_cbr",
	"B_AssaultPack_cbr",
	"B_Carryall_cbr",
	"tacpac_tan"
];

private _itemGearCrew = 
[
	//Headgear
	"CUP_H_CVCH_des"

];

private _itemCosmetic = 
[
	//NVG cosmetics
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_balaclava2$",
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_cb$",
	"$NONE_pca_nvg_face_shield_khk$",
	"$NONE_pca_nvg_face_shield_tan$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_cb$",
	"$NONE_pca_nvg_face_shield_shemagh_khk$",
	"$NONE_pca_nvg_face_shield_shemagh_tan$",
	"Goggles",
	"Goggles_grn_F",
	"Goggles_tna_F",
	"$NONE_usm_nvg_kneepads_blk$",
	"$NONE_usm_nvg_rhinoarm$",
	"sfp_nvg_peltor_comtac3",
	"rhsusf_Rhino",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_tan",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"pca_nvg_gloves_wool",
	"$NONE_usm_nvg_giglovesscarf$",
	"$NONE_usm_nvg_giglovesscarf2$",
	"$NONE_usm_nvg_swdgoggles$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	
	//Glasses slot
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_balaclava2$",
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
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
	"G_AirPurifyingRespirator_01_F",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"rhs_ess_black",
	"bear_bandana_atacs_fg",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_CandySkull",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_RedFlame2",
	"G_Bandanna_kawaii",
	"G_Bandanna_khk",
	"G_Bandanna_shades",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"G_Cigarette",
	"G_Combat",
	"G_Combat_Goggles_blk_F",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_cb",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_tan",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_cb",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_tan",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_cb",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_tan",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_cb",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_tan",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_cb",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_tan",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_cb",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_tan",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_cb",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_tan",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_cb",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_tan",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Lowprofile",
	"sfp_peltor_comtac3",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"G_Shades_Black",
	"G_Shades_Green",
	"G_Shades_Red",
	"CUP_G_Beard_Shades_Black",
	"CUP_G_Beard_Shades_Blonde",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"milgp_f_goggles_khk",
	"G_Spectacles_Tinted",
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$"
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
	"ACE_tourniquet",
	"ACE_bloodIV_500"
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

private _itemGPS = 
[
	"ItemGPS"

];


private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemWeapRifle = 
[
	"CUP_arifle_M16A2"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_M16A2_GL"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_pip"
];

private _itemWeapLAT = 
[
	"pca_weap_m136cs"
];

private _itemAcc = 
[
	//Optic
	"CUP_optic_CompM4",
	"RKSL_optic_EOT552",
	"rhsusf_acc_acog",
	"cup_optic_microt1_low",
	"cup_optic_microt1",
	"rhsusf_acc_acog_usmc",
	"$NONE_sma_acc_barska_rds$",
	"cup_optic_ac11704_black",
	"optic_yorris",
	"optic_aco",
	"optic_erco_blk_f",
	"cup_optic_aimpoint_5000",
	"$NONE_sma_acc_cmore_blk$",
	"HLC_optic_DocterR",
	"cup_optic_elcanm145",
	"RKSL_optic_EOT552",
	"RKSL_optic_EOT552",
	"$NONE_sma_acc_eotech_xps3_blk$",
	"optic_holosight_blk_f",
	"rhsusf_acc_elcan",
	"rhsusf_acc_acog2",
	"rhsusf_acc_acog3",
	"RKSL_optic_EOT552",
	"ptv_acc_t1_low",
	"cup_optic_compm2_low",
	"ptv_acc_t1",
	"cup_optic_mrad",
	"$NONE_sma_acc_micro_t2$",
	"ptv_acc_acog_ta11",
	"$NONE_sma_acc_vortex_rds_blk$",
	"$NONE_sma_acc_vortex_rds_lc_blk$",
	"$NONE_sma_acc_vortex_lc_blk$",
	"$NONE_sma_acc_vortex_blk$",
	"rhsusf_acc_eotech_xps3",
	"cup_optic_acog2",
	"rhsusf_acc_mrds"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_m9",
	"CUP_hgun_M9",
	"CUP_hgun_Colt1911",
	"CUP_hgun_Colt1911",
	//Pistol Ammo
	"rhsusf_mag_15Rnd_9x19_JHP",
	"CUP_15Rnd_9x19_M9",
	"CUP_7Rnd_45ACP_1911",
	"CUP_7Rnd_45ACP_1911"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red",
	
	
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
	"rhsusf_100Rnd_556x45_soft_pouch",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch",
	"rhsusf_100Rnd_556x45_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote"
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
		[arsenal, (_itemGear + _itemWeapPistol + _itemCosmetic + _itemMisc + _itemAcc + _itemAmmo + _itemWeapAR + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemBino + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapRifleUGL)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear  + _itemCosmetic + _itemMisc + _itemGPS + _itemAcc + _itemBino + _itemRadio + _itemWeapPistol + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemGPS + _itemAcc + _itemBino + _itemRadio + _itemWeapPistol + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemGPS + _itemAcc + _itemBino + _itemRadio + _itemWeapPistol + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemMed + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemMed + _itemMedSpec + _itemWeapPistol + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapPistol + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemGearCrew + _itemCosmetic + _itemMisc + _itemGPS + _itemBino + _itemRadio + _itemWeapPistol + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
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