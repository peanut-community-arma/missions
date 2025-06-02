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
	"CUP_I_B_PARA_Unit_5",
	"bear_uniform_cup_paramilitary_clothes_dbdu",
	"CUP_I_B_PARA_Unit_11",
	"CUP_I_B_PARA_Unit_13",
	"CUP_I_B_PARA_Unit_12",
	"CUP_I_B_PARA_Unit_14",
	"CUP_I_B_PARA_Unit_7",
	"CUP_I_B_PARA_Unit_1",
	"CUP_I_B_PARA_Unit_2",
	"CUP_I_B_PARA_Unit_3",
	"CUP_I_B_PMC_Unit_36",
	"CUP_I_B_PMC_Unit_43",
	"CUP_I_B_PMC_Unit_42",
	"CUP_I_B_PMC_Unit_39",
	"CUP_U_B_BDUv2_DCU_US",
	"$NONE_usm_bdu_dcu2$",
	"$NONE_usm_bdu_btisrl_dcu$",
	"$NONE_usm_bdu_btisrl_dcu2$",
	"$NONE_usm_bdu_bti_dcu$",
	"$NONE_usm_bdu_bti_dcu2$",
	"CUP_U_B_BDUv2_roll2_DCU",
	"$NONE_usm_bdu_srh_dcu2$",
	"CUP_U_B_BDUv2_roll_DCU",
	"$NONE_usm_bdu_srl_dcu2$",
	"CUP_U_B_BDUv2_DCU_US",
	"CUP_U_B_BDUv2_roll_DCU_US"
];

//Vest
private _itemVest = 
[
	"milgp_v_marciras_assaulter_tan",
	"milgp_v_marciras_assaulter_belt_tan",
	"milgp_v_marciras_grenadier_tan",
	"milgp_v_marciras_grenadier_belt_tan",
	"milgp_v_marciras_hgunner_tan",
	"milgp_v_marciras_hgunner_belt_tan",
	"milgp_v_marciras_light_tan",
	"milgp_v_marciras_marksman_tan",
	"milgp_v_marciras_marksman_belt_tan",
	"milgp_v_marciras_medic_tan",
	"milgp_v_marciras_medic_belt_tan",
	"milgp_v_marciras_teamleader_tan",
	"milgp_v_marciras_teamleader_belt_tan"
];

//Headgear 
private _itemHeadgear = 
[
	"milgp_h_opscore_01_tan",
	"milgp_h_opscore_01_goggles_tan",
	"milgp_h_opscore_02_tan",
	"milgp_h_opscore_02_goggles_tan",
	"milgp_h_opscore_03_tan",
	"milgp_h_opscore_03_goggles_tan",
	"milgp_h_opscore_04_tan",
	"milgp_h_opscore_04_goggles_tan",
	"milgp_h_opscore_05_tan",
	"milgp_h_opscore_05_goggles_tan",
	"milgp_h_opscore_06_tan",
	"milgp_h_opscore_06_goggles_tan",
	
	"pca_beanie_tan",
	"pca_headband_tan",
	"rhsusf_ach_bare_tan",
	"rhsusf_ach_bare_tan_ess",
	"rhsusf_ach_bare_tan_headset",
	"rhsusf_ach_bare_tan_headset_ess",
	"H_Booniehat_tan",
	"Aegis_H_MilCap_nohs_tan",
	"$NONE_usm_bdu_8point_tan$",
	"CUP_H_PMC_Cap_Tan",
	"H_Cap_tan",
	"milgp_h_cap_01_tan",
	"milgp_h_cap_01_goggles_tan",
	"milgp_h_cap_02_tan",
	"milgp_h_cap_02_goggles_tan",
	"milgp_h_cap_03_tan",
	"milgp_h_cap_03_goggles_tan",
	"milgp_h_cap_backwards_01_tan",
	"milgp_h_cap_backwards_01_goggles_tan",
	"milgp_h_cap_backwards_02_tan",
	"milgp_h_cap_backwards_02_goggles_tan",
	"milgp_h_cap_backwards_03_tan",
	"milgp_h_cap_backwards_03_goggles_tan",
	"H_Bandanna_sand"
];

private _itemHeadgearCrew = 
[
	"rhsusf_cvc_alt_helmet",
	"rhsusf_cvc_ess"
];


//Backpack 
private _itemBackpack = 
[
	"pca_eagle_a3_tan"
];

//Cosmetic 
private _itemCosmetic = 
[
	"immersion_pops_pop0",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Bandanna_Vampire_01",
	"G_Combat",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
	
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"CUP_FR_NeckScarf5",
	"$NONE_aegis_shemag_shades_red$",
	"G_Shemag_red",
	"G_Shemag_tan",
	"$NONE_aegis_shemag_shades_tan$",
	"G_Shemag_tan",
	"G_Tactical_Yellow",
	"G_AirPurifyingRespirator_02_black_F",
	"G_AirPurifyingRespirator_02_sand_F",
	"G_AirPurifyingRespirator_01_F",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_KHK_Dark",
	"CUP_G_ESS_KHK_Ember",
	"CUP_G_ESS_KHK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_KHK_Facewrap_Tan",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_tan",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_tan",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_tan",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_tan",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_tan",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_tan",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_tan",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_tan",
	"milgp_f_goggles_khk",
	"pca_balaclava_blk_2",
	"pca_balaclava_blk_1",
	"pca_balaclava_mcb",
	"pca_balaclava_ocp",
	"pca_balaclava_gogg_mcb",
	"pca_balaclava_gogg_ocp",
	"pca_bandana_mcb",
	"pca_bandana_mc",
	"pca_bandana_ocp",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"TC_G_NitrileGloves_1",
	
	//NVG SLOT
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_tan$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_tan$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"$NONE_pca_nvg_shemagh_loop_tan$",
	"$NONE_pca_nvg_shemagh_mesh_tan$",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"TC_NVG_NitrileGloves_1",
	
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
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
	"ACE_surgicalKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	"optic_Hamr",
	"ACE_optic_Hamr_2D",
	"ACE_optic_Hamr_PIP",
	"ACE_optic_MRCO_2D",
	"optic_ERCO_snd_F",
	"optic_ERCO_blk_F",
	"optic_MRCO",
	"optic_Arco",
	"optic_Arco_blk_F",
	"rhsusf_acc_ACOG",
	"rhsusf_acc_ACOG2",
	"rhsusf_acc_ACOG3",
	"CUP_optic_AC11704_Tan",
	"CUP_optic_AC11704_Black",
	
	"$NONE_hlc_muzzle_fn_oem$",
	
	//Grip
	"pca_flashlight_sf_tan",
	"pca_flashlight_sf",
	"CUP_bipod_VLTOR_Modpod",
	"CUP_bipod_VLTOR_Modpod_black"
];

private _itemWeapRifle = 
[
	"arifle_SA80_snd_F",
	"arifle_SA80_blk_F",
	"arifle_SA80_C_blk_F",
	"arifle_SA80_C_snd_F"
];

private _itemWeapRifleUGL = 
[
	"arifle_SA80_GL_blk_F",
	"arifle_SA80_GL_snd_F"
];

private _itemWeapAR = 
[
	"sps_weap_kac_amg_tan",
	"sps_weap_kac_amg_blk"
];

private _itemWeapLAT = 
[
	"rhs_weap_M136"
];

private _itemWeapPistol = 
[
	"$NONE_hlc_pistol_mk25tr_tan$",
	"$NONE_hlc_pistol_mk25tr$",
	"hlc_15Rnd_9x19_FMJ_P226"
];

private _itemWeapSpot = 
[
	"CUP_srifle_Mk18_blk",
	"CUP_bipod_VLTOR_Modpod_black",
	"pca_flashlight_sf",
	"CUP_srifle_Mk18_blk",
	"CUP_optic_SB_11_4x20_PM",
	"rhsusf_20Rnd_762x51_m62_Mag",
	"rhsusf_20Rnd_762x51_m80_Mag",
	"Rangefinder"
];

private _itemWeapSnipe = 
[
	"CUP_srifle_AWM_des",
	"CUP_srifle_AWM_blk",
	"CUP_optic_LeupoldMk4",
	"CUP_bipod_VLTOR_Modpod_black",
	"CUP_5Rnd_86x70_L115A1",
	"Rangefinder"
];
//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_black_mag",
	"30Rnd_65x39_caseless_black_mag_Tracer",
	"30Rnd_65x39_caseless_mag_Tracer",
	
	//Pistol Ammo
	"hlc_15Rnd_9x19_FMJ_P226"
];

private _itemAmmoTracer = 
[
	"30Rnd_65x39_caseless_mag_Tracer",
	"30Rnd_65x39_caseless_black_mag_Tracer"
];

private _itemAmmoAR = 
[
	"sps_100Rnd_762x51_M80A1_Mixed_KAC_Box",
	"sps_100Rnd_762x51_M80A1_KAC_Box",
	"sps_100Rnd_762x51_M62_Tracer_Red_KAC_Box"
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
	"1Rnd_SmokeYellow_Grenade_shell"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_m67"
];

//Special

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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifleUGL + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgearCrew + _itemBackpack + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgearCrew + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Spotter/Leader
	case (_unitRole == "rc_co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemWeapSpot + _itemWeapPistol + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Sniper
	case (_unitRole == "rc_sn") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemWeapSniper + _itemWeapPistol + _itemExplosive)] call ace_arsenal_fnc_initBox;
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