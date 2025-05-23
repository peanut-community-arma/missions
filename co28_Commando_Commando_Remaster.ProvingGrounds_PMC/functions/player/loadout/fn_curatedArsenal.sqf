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
	"pca_g3_mcaus"
];

//Vest
private _itemVest = 
[
	"milgp_v_marciras_assaulter_mc",
	"milgp_v_marciras_assaulter_belt_mc",
	"milgp_v_marciras_grenadier_mc",
	"milgp_v_marciras_grenadier_belt_mc",
	"milgp_v_marciras_hgunner_mc",
	"milgp_v_marciras_hgunner_belt_mc",
	"milgp_v_marciras_marksman_mc",
	"milgp_v_marciras_marksman_belt_mc",
	"milgp_v_marciras_medic_mc",
	"milgp_v_marciras_medic_belt_mc",
	"milgp_v_marciras_teamleader_mc",
	"milgp_v_marciras_teamleader_belt_mc",
	
	//USP
	"usp_crye_cpc_comms_mc",
	"usp_crye_cpc_comms_belt_mc",
	"usp_crye_cpc_fast_mc",
	"usp_crye_cpc_fast_belt_mc",
	"usp_crye_cpc_gren_mc",
	"usp_crye_cpc_gren_belt_mc",
	"usp_crye_cpc_light_mc",
	"usp_crye_cpc_light_belt_mc",
	"usp_crye_cpc_medical_mc",
	"usp_crye_cpc_medical_belt_mc",
	"usp_crye_cpc_teamlead_mc",
	"usp_crye_cpc_teamlead_belt_mc",
	"usp_eagle_mbav_mc"
];

//Headgear 
private _itemHeadgear = 
[
	"pca_opscore_cover_mcaus",
	"pca_opscore_cover_ct_mcaus",
	"pca_opscore_cover_ct_cb_mcaus",
	"pca_opscore_cover_ct_cm_mcaus",
	"pca_opscore_cover_ct_cw_mcaus"
];

//Backpack 
private _itemBackpack = 
[
	"pca_assaultpack_ocp",
	"pca_assaultpack_ocp2",
	"pca_assaultpack_ocp3",
	"pca_eagle_a3_ocp",
	"pca_kitbag_ocp",
	"pca_kitbag_ocp2",
	"pca_kitbag_ocp3",
	"pca_tacticalpack_ocp",
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	
	//Aegis
	"aegis_assaultpack_auscam",
	"aegis_kitbag_auscam",
	"aegis_tacticalpack_auscam"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Spectacles_Tinted",
	"G_Sport_Blackred",
	"G_Squares",
	"G_Squares_Tinted",

	//RHS
	"rhs_balaclava",
	"rhs_ess_black",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_scarf",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
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

	//Aegis
	"aegis_bandanna_candyskull",
	"aegis_bandanna_kawaii",
	"aegis_bandanna_shemag",
	"aegis_bandanna_skull",
	"aegis_bandanna_syndikat",
	"aegis_bandanna_thug",
	"aegis_headset",
	"aegis_shades_yellow",
	"aegis_shemag_khk",
	"aegis_shemag_shades_khk",
	"aegis_shemag_tactical_khk",
	"aegis_shemag_oli",
	"aegis_shemag_shades_oli",
	"aegis_shemag_tactical_oli",
	"aegis_shemag_tan",
	"aegis_shemag_shades_tan",
	"aegis_shemag_tactical_tan",
	
	//PCA
	"pca_balaclava_ocp",
	"pca_bandana_mc",
	"pca_bandana_ocp",
	
	//Bearskins
	"bear_bandana_atacs_fg",
	"bear_bandana_m81",

	//Military Gear Packs
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_cb",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_mc",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_cb",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_mc",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_cb",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_mc",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_cb",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_mc",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_cb",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_mc",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_cb",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_mc",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_cb",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_mc",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_cb",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_mc",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_goggles_khk",
	"milgp_f_tactical_khk",

	//DHI
	"usm_scarf",
	"usm_scarf2",
	"usm_nvg_scarf",
	"usm_nvg_scarf2",

	//CUP
	//Bala
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	//ESS
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_CBR",
	"CUP_G_ESS_CBR_Dark",
	"CUP_G_ESS_CBR_Ember",
	"CUP_G_ESS_KHK",
	"CUP_G_ESS_KHK_Dark",
	"CUP_G_ESS_KHK_Ember",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	//Glasses
	"CUP_G_Grn_Scarf_Shades",
	"CUP_G_Tan_Scarf_Shades",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Ember",
	//Face Covers
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf3",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Tan",
	"CUP_PMC_Facewrap_Black",
	"CUP_PMC_Facewrap_Tropical",
	"CUP_TK_NeckScarf"
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
	"rhsusf_bino_lerca_1200_black",
	"rhsusf_bino_lerca_1200_tan",
	"rhsusf_bino_m24",
	"rhsusf_bino_m24_ard",
	"rhsusf_bino_lrf_Vector21",
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
	"ACE_surgicalKit",
	"ACE_suture",
	"ACE_personalAidKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	"rhs_acc_at4_handler",
	"rhs_acc_npz",
	
	
	"optic_aco",
	"optic_aco_grn",
	"optic_holosight",
	"optic_holosight_blk_f",
	
	//RHS
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_552_d",
	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_mrds",
	"rhsusf_acc_mrds_c",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",
	
	//SMA
	"sma_acc_barska_rds",
	"sma_acc_cmore_blk",
	"sma_acc_eotech_552_blk",
	"sma_acc_eotech_552_kf_blk",
	"sma_acc_eotech_552_kf_tan",
	"sma_acc_eotech_xps3_blk",
	"sma_acc_eotech_xps3_tan",
	"sma_acc_micro_t2",
	"sma_acc_micro_t2_low",
	"sma_acc_vortex_blk",
	"sma_acc_vortex_lc_blk",
	
	//PCA
	"ptv_acc_compm4s",
	"ptv_acc_eot552",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"rksl_optic_eot552",
	"rksl_optic_eot552x",
	
	//CUP
	"cup_optic_ac11704_black",
	"cup_optic_compm2_low",
	"cup_optic_compm2_low_coyote",
	"cup_optic_compm4",
	"cup_optic_eotech553_black",
	"cup_optic_microt1",
	"cup_optic_microt1_coyote",
	"cup_optic_microt1_low",
	"cup_optic_microt1_low_coyote",
	"cup_optic_mrad",
	"cup_optic_trijiconrx01_black",
	"cup_optic_trijiconrx01_kf_black",
	"cup_optic_vortexrazor_uh1_black",
	
	
	//================================================================================
	//Bipod & Foregrips
	//================================================================================
	//BIS
	"bipod_01_f_blk",
	"bipod_02_f_blk",
	"bipod_03_f_blk",
	
	//RHS
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip2_tan",
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
	
	
	//================================================================================
	//Tactical Devices
	//================================================================================
	//RHS
	"rhsusf_acc_anpeq15",
	"rhsusf_acc_anpeq15_bk",
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top",
	"rhsusf_acc_anpeq15a",
	"rhsusf_acc_m952v",
	"rhsusf_acc_wmx_bk",
	
	//CUP
	"cup_acc_anpeq_15",
	"cup_acc_anpeq_15_black",
	"cup_acc_anpeq_15_black_top",
	"cup_acc_anpeq_15_tan_top",
	"cup_acc_anpeq_15_flashlight_black_l",
	"cup_acc_anpeq_15_flashlight_tan_l",
	"cup_acc_anpeq_15_top_flashlight_black_l",
	"cup_acc_anpeq_15_top_flashlight_tan_l",
	"cup_acc_flashlight",
	"cup_acc_flashlight_desert"
];

private _itemWeapRifle = 
[
	"hlc_rifle_auga3_blk",
	"hlc_rifle_auga3_tan"
];

private _itemWeapRifleUGL = 
[
	"hlc_rifle_auga3_m203_blk",
	"hlc_rifle_auga3_m203_tan"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_pip_S_para"
];

private _itemWeapLAT = 
[
	"rhs_weap_M136"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_glock17g4",
	
	//Pistol Ammo
	"rhsusf_mag_17Rnd_9x19_JHP"
];

//Special
private _itemWeapMG = 
[
	"rhs_weap_m240B"
];

private _itemWeapMAT = 
[
	"rhs_weap_maaws"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	"hlc_30Rnd_556x45_EPR_AUG",
	"hlc_30Rnd_556x45_EPR_T_AUG"
];

private _itemAmmoTracer = 
[
	"hlc_30Rnd_556x45_EPR_T_AUG"
];

private _itemAmmoAR = 
[
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote"
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
	"rhs_mag_m715_Green",
	"rhs_mag_m713_Red",
	"rhs_mag_m716_yellow",
	"ACE_40mm_Flare_red",
	"ACE_40mm_Flare_green",
	"ACE_40mm_Flare_white"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"rhs_mag_m714_White",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_m67"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"rhsusf_m112_mag",
	"rhsusf_m112x4_mag",
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