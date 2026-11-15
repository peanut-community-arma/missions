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
	"CUP_I_B_PARA_Unit_8",
		"CUP_I_B_PARA_Unit_6",
		"U_Simc_DCU_blench",
		"U_Simc_DCU_blench_trop",
		"U_Simc_DCU_blench_knee",
		"U_Simc_DCU_blench_knee_trop",
		"U_Simc_DCU_blench_nomex",
		"U_Simc_DCU_blench_tee"
];

private _itemUniformCrew = 
[
	"U_Simc_DCU_blench",
	"U_Simc_DCU_blench_trop"
];

private _itemUniformPilot = 
[
	"U_Simc_DCU_blench",
	"U_Simc_DCU_blench_trop",
	"USAF_Overalls_Ranger_4_w"
];

//Vest
private _itemVest = 
[
	"CUP_V_I_RACS_Carrier_Rig_2",
	"CUP_V_I_RACS_Carrier_Rig_3",
	"CUP_V_I_RACS_Carrier_Rig_wdl_2",
	"CUP_V_I_RACS_Carrier_Rig_wdl_3",
	"CUP_V_OI_TKI_Jacket1_04",
	"CUP_V_OI_TKI_Jacket1_06",
	"CUP_V_OI_TKI_Jacket1_05",
	"CUP_V_OI_TKI_Jacket4_04",
	"CUP_V_OI_TKI_Jacket4_05",
	"CUP_V_OI_TKI_Jacket4_06",
	"CUP_V_OI_TKI_Jacket4_03",
	"CUP_V_OI_TKI_Jacket5_04",
	"CUP_V_OI_TKI_Jacket5_05",
	"CUP_V_OI_TKI_Jacket5_06",
	"CUP_V_OI_TKI_Jacket3_04",
	"CUP_V_OI_TKI_Jacket3_05",
	"CUP_V_OI_TKI_Jacket3_06",
	"CUP_V_OI_TKI_Jacket6_04",
	"CUP_V_OI_TKI_Jacket6_05",
	"CUP_V_OI_TKI_Jacket6_06",
	"CUP_V_OI_TKI_Jacket2_04",
	"CUP_V_OI_TKI_Jacket2_06",
	"CUP_V_OI_TKI_Jacket2_05",
	"CUP_V_B_Delta_1",
	"CUP_V_B_Delta_2",
	"JAM_V_Chicom_Type56_grn",
	"JAM_V_Chicom_Type56_tan",
	"V_Simc_SF_mk56_1",
	"V_Simc_SF_mk56_2",
	"V_Simc_SF_mk56_4",
	"V_Simc_mk56_alt"
];

private _itemVestCrew = 
[
	"CUP_V_B_IOTV_OCP_Rifleman_USArmy"
];

private _itemVestPilot = 
[
	"CUP_V_B_IOTV_OCP_Rifleman_USArmy"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_TKI_Pakol_1_01",
		"CUP_H_TKI_Pakol_2_04",
		"CUP_H_TKI_Pakol_2_05",
		"CUP_H_TKI_Pakol_2_06",
		"CUP_H_TKI_Pakol_1_03",
		"CUP_H_TKI_Pakol_1_04",
		"CUP_H_TKI_Pakol_1_05",
		"CUP_H_TKI_Pakol_1_06",
		"CUP_H_TKI_Pakol_2_01",
		"CUP_H_TKI_Pakol_2_02",
		"CUP_H_TKI_Pakol_2_03",
		"CUP_H_CZ_Pakol_headset_f_brown",
		"CUP_H_CZ_Pakol_headset_b_grey"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC"
];

private _itemHeadgearPilot = 
[
	"H_PilotHelmetHeli_B"
];

//Backpack 
private _itemBackpack = 
[
	"pca_backpack_invisible",
		"pca_backpack_taki_jacket1_04",
		"pca_backpack_taki_jacket1_06",
		"pca_backpack_taki_jacket1_05",
		"pca_backpack_taki_jacket4_04",
		"pca_backpack_taki_jacket4_06",
		"pca_backpack_taki_jacket4_05",
		"pca_backpack_taki_jacket5_04",
		"pca_backpack_taki_jacket5_05",
		"pca_backpack_taki_jacket5_06",
		"pca_backpack_taki_jacket3_04",
		"pca_backpack_taki_jacket3_06",
		"pca_backpack_taki_jacket3_05",
		"pca_backpack_taki_jacket6_04",
		"pca_backpack_taki_jacket6_05",
		"pca_backpack_taki_jacket6_06",
		"pca_backpack_taki_jacket2_04",
		"pca_backpack_taki_jacket2_06",
		"pca_backpack_taki_jacket2_05",
		"B_simc_pack_alice_0",
		"B_simc_pack_alice_1",
		"B_simc_pack_alice_2",
		"B_simc_pack_alice_frame_2",
		"B_simc_pack_alice_frame_rajio"
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
	"G_Aviator",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_tan",
	"G_Bandanna_shades",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Headset_light",
	"G_Shades_Yellowred",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_shades",
	"G_Shemag_tan",
	"G_Shemag_white",
	"Aegis_G_Condor_EyePro_F",
	"G_Headset_Tactical",
	"G_Bandanna_TransPride",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
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
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_GPS",
	"CUP_G_ESS_KHK_Scarf_Tan_GPS",
	"CUP_G_ESS_BLK_Scarf_White_GPS",
	"CUP_G_ESS_BLK_Scarf_Face_Grn_GPS",
	"CUP_G_ESS_BLK_Scarf_Face_White_GPS",
	"CUP_G_ESS_KHK_Scarf_Face_Tan_GPS",
	"CUP_G_ESS_BLK_Scarf_Grn_GPS_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_GPS_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_GPS_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_GPS_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_GPS_Beard",
	"CUP_G_ESS_BLK_Scarf_White_GPS_Beard_Blonde",
	"CUP_G_PMC_RadioHeadset_Glasses_Dark",
	"CUP_G_PMC_RadioHeadset_Glasses",
	"CUP_G_PMC_RadioHeadset",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_Grn_Scarf_Shades",
	"CUP_G_Tan_Scarf_Shades",
	"CUP_G_White_Scarf_Shades",
	"CUP_G_Grn_Scarf_Shades_Beard",
	"CUP_G_Grn_Scarf_Shades_Beard_Blonde",
	"CUP_G_Tan_Scarf_Shades_Beard",
	"CUP_G_Tan_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard",
	"CUP_G_White_Scarf_Shades_Beard_Blonde",
	"CUP_G_Beard_Shades_Black",
	"CUP_G_Beard_Shades_Blonde",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"JAM_G_Gloves_Leather_blk",
	"JAM_G_PlashPalatka_01_brn",
	"JAM_G_Gloves_wool_blk",
	"JAM_G_Gloves_wool_brn",
	"JAM_G_Gloves_wool_cut_blk",
	"JAM_G_Gloves_wool_cut_brn",
	"JAM_G_Gloves_wool_cut_oli",
	"JAM_G_Gloves_wool_oli",
	"M40_Gas_mask_nbc_f2_d",
	"M40_Gas_mask_nbc_f4_d",
	"G_SWDG",
	"G_SWDG_low",
	"G_Nomex_1",
	"G_Nomex_1_fold",
	"G_Nomex_1_lang",
	"G_simc_US_Bandoleer_556_fore",
	"G_simc_US_Bandoleer_556_left",
	"G_simc_US_Bandoleer_556_right",
	"G_simc_US_Bandoleer_4cm",
	"G_simc_US_Bandoleer_556",
	"G_simc_US_Bandoleer_556_low",
	"G_Anduk_1",
	"G_Anduk_2",
	"TC_G_NitrileGloves_1",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"JAM_NV_Gloves_Leather_blk",
	"JAM_NV_PlashPalatka_01_brn",
	"JAM_NV_Gloves_Wool_blk",
	"JAM_NV_Gloves_Wool_brn",
	"JAM_NV_Gloves_Wool_cut_blk",
	"JAM_NV_Gloves_Wool_cut_brn",
	"JAM_NV_Gloves_Wool_cut_oli",
	"JAM_NV_Gloves_Wool_oli",
	"M40_Gas_mask_nbc_f2_NVG_02",
	"M40_Gas_mask_nbc_f4_NVG_04",
	"pca_nvg_cigarette",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"bandolier_flak_556_addon",
	"bandolier_flak_556_addon_left",
	"bandolier_flak_556_addon_right",
	"nomex_1_addon",
	"nomex_1_fold_addon",
	"nomex_1_lang_addon",
	"bandolier_556_addon",
	"bandolier_556_addon_fore",
	"bandolier_556_addon_left",
	"bandolier_556_addon_right",
	"m79_band_addon",
	"anduk_1_addon",
	"anduk_2_addon",
	"TC_NVG_NitrileGloves_1"
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
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack"
	
	//Removed AT4 open sight and Adapter for AKs (both from RHS)
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
	"ACE_surgicalKit",
	"ACE_suture",
	"ACE_personalAidKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	"CUP_optic_HoloBlack",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_Aimpoint_5000",
	
	//Grip
	"CUP_bipod_VLTOR_Modpod_black",
	"CUP_bipod_Harris_1A2_L_BLK",
	
	//Tactical Device
	"CUP_acc_ANPEQ_2_grey",
	"CUP_acc_ANPEQ_2_Black_Top",
	"CUP_acc_ANPEQ_2_Flashlight_Black_L",
	"CUP_acc_Flashlight"
];

private _itemWeapRifle = 
[
	"CUP_arifle_M4A1_black",
	"CUP_arifle_M4A3_black",
	"CUP_arifle_M4A1_desert",
	"CUP_arifle_M4A3_desert"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_M4A1_BUIS_GL",
	"CUP_arifle_M4A1_GL_carryhandle",
	"CUP_arifle_M4A1_GL_carryhandle_desert",
	"CUP_arifle_M4A1_BUIS_desert_GL"
];

private _itemWeapAR = 
[
	"CUP_lmg_m249_pip1",
	"CUP_lmg_m249_pip2"
];

private _itemWeapLAT = 
[
	"CUP_launch_M136"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Glock17_blk",
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_glock17"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS",
	"CUP_optic_MAAWS_Scope"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_556x45_Stanag"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_556x45_Stanag_Tracer_Red"
];

private _itemAmmoAR = 
[
	"CUP_200Rnd_TE1_Red_Tracer_556x45_M249",
	"CUP_200Rnd_TE4_Red_Tracer_556x45_M249"
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
	"CUP_1Rnd_SmokeGreen_M203",
	"CUP_1Rnd_SmokeRed_M203",
	"CUP_1Rnd_SmokeYellow_M203",
	"ACE_40mm_Flare_red",
	"ACE_40mm_Flare_green",
	"ACE_40mm_Flare_white"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67"
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
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