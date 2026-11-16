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
	"$NONE_wsx_uniform_combat_tubitak$"
];

private _itemUniformCrew =
[
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp"
];

private _itemUniformPilot =
[
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp"
];

//Vest
private _itemVest =
[
	"Atlas_Tacvest_Ard_F",
	"V_TacVest_oli",
	"V_TacVest_khk"
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
	"H_PASGT_basic_UNO_F"
];

private _itemHeadgearCrew =
[
	"rhsusf_cvc_helmet"
];

private _itemHeadgearPilot =
[
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_black",
	"rhsusf_hgu56p_visor_black",
	"rhsusf_hgu56p_tan",
	"rhsusf_hgu56p_visor_tan"
];

//Backpack
private _itemBackpack =
[
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"B_Kitbag_rgr",
	"pca_eagle_a3_rgr"
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
	// face
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"m40_gas_mask_02",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Combat",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Green",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
	"G_Headset_light",
	"G_Shemag_tan",
	"CUP_FR_NeckScarf3",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_oli",
	"G_Shemag_khk",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shemag_tan",
	"CUP_FR_NeckScarf3",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_oli",
	"G_Shemag_khk",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Shades_Yellowred",
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
	"CUP_FR_NeckScarf5",
	"G_Shemag_red",
	"CUP_RUS_Balaclava_blk",
	"bear_balaclava1_black",
	"CUP_RUS_Balaclava_grn",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_White",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"$REMOVE_usm_swdgoggles$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"sfp_peltor_comtac3",
	"rhs_scarf",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhssaf_veil_Green",
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
	"G_SWDG",
	"G_SWDG_low",

	// hmd
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",
	"$NONE_pca_nvg_shemagh_lowered_cbr$",
	"pca_nvg_shemagh_lowered_khk",
	"$NONE_pca_nvg_shemagh_loop_bge$",
	"$NONE_pca_nvg_shemagh_loop_blk$",
	"$NONE_pca_nvg_shemagh_loop_coy$",
	"$NONE_pca_nvg_shemagh_loop_gold$",
	"$NONE_pca_nvg_shemagh_loop_grn$",
	"$NONE_pca_nvg_shemagh_loop_khk$",
	"$NONE_pca_nvg_shemagh_loop_tan$",
	"$NONE_pca_nvg_shemagh_loop_white$",
	"$NONE_pca_nvg_shemagh_mesh_bge$",
	"$NONE_pca_nvg_shemagh_mesh_blk$",
	"$NONE_pca_nvg_shemagh_mesh_coy$",
	"$NONE_pca_nvg_shemagh_mesh_gold$",
	"$NONE_pca_nvg_shemagh_mesh_grn$",
	"$NONE_pca_nvg_shemagh_mesh_khk$",
	"$NONE_pca_nvg_shemagh_mesh_tan$",
	"$NONE_pca_nvg_shemagh_mesh_white$",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_shemagh_lowered_tan",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"m40_gas_mask_02_nvg",
	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_1$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"$NONE_nvg_scrim_wdl_leaves_3$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"sfp_nvg_peltor_comtac3",

	"ACE_CableTie"
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
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"murshun_cigs_matches"
];

private _itemBino =
[
	"Binocular"
];

private _itemRadio =
[
	"ACRE_PRC148",
	"ACRE_PRC152"
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
	"ACE_tourniquet",
	"TC_G_NitrileGloves_1",
	"TC_NVG_NitrileGloves_1"
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
	//Sights

	//Grips/Bipods
];

private _itemWeapRifle =
[
	"$NONE_hlc_rifle_hk33a2$",
	"$NONE_hlc_rifle_hk33ka3$",
	"$NONE_hlc_smg_mp5a2$",
	"$NONE_hlc_smg_mp5a3$",
	"rhs_weap_M590_8RD",
	"rhs_weap_M590_5RD"
];

private _itemWeapRifleUGL =
[
	"$NONE_hlc_rifle_hk33a2_ris_m203$",
	"$NONE_hlc_smg_mp5n_9mmar$"
];

private _itemWeapAR =
[
	"CUP_lmg_PKM"
];

private _itemWeapDM =
[
	"CUP_srifle_M21",
	"cup_optic_artel_m14"
];

private _itemWeapLAT =
[
	"rhs_weap_m72a7"
];

private _itemWeapPistol =
[
	"CUP_hgun_M9",
	"CUP_15Rnd_9x19_M9"
];

//Special
private _itemWeapMG =
[
	"CUP_lmg_M60"
];

private _itemWeapMAT =
[
	"sp_fwa_m67"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo =
[
	//Rifle Ammo
	"hlc_30Rnd_556x45_B_HK33",
	"hlc_30Rnd_9x19_FMJ_MP5",
	"rhsusf_8Rnd_00Buck",
	"rhsusf_5Rnd_00Buck",
	"rhsusf_8Rnd_Slug",
	"rhsusf_5Rnd_Slug"
];

private _itemAmmoTracer =
[
	"hlc_30Rnd_556x45_M_HK33",
	"hlc_30Rnd_556x45_T_HK33",
	"rhsgref_un_beret"
];

private _itemAmmoAR =
[
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M"
];

private _itemAmmoSignal =
[
	// "SmokeShellBlue",
	// "SmokeShellGreen",
	// "SmokeShellOrange",
	// "SmokeShellPurple",
	// "SmokeShellRed",
	// "SmokeShellYellow"
	// "UGL_FlareGreen_F",
	// "UGL_FlareRed_F",
	// "UGL_FlareWhite_F",
	// "UGL_FlareYellow_F",
	// "rhs_mag_m716_yellow",
	// "rhs_mag_m715_Green",
	// "rhs_mag_m713_Red"
];

private _itemExplosive =
[
	// "1Rnd_Smoke_Grenade_shell",
	// "SmokeShell",
	// "rhs_mag_M397_HET",
	// "rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"CUP_HandGrenade_M67"
];

//Special
private _itemAmmoMG =
[
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMAT =
[
	"sp_fwa_m67_1rnd_heat",
	"sp_fwa_m67_1rnd_he"
];

private _itemEngineer =
[
	"ACE_wirecutter",
	"rhs_ec200_mag",
	"rhs_ec400_mag"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant
	case (_unitRole == "sgt") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapDM + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		(player distance2D (player getVariable ["startPos", [0, 0, 0]])) < 100
	},
	{},
	[],
	[0,0,0],
	3
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
