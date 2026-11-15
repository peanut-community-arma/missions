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
	"U_simc_bdu_raid_blench",
	"U_Simc_bdu_raid_blench_trop",
	"U_Simc_bdu_erla_tee",
	"U_Simc_bdu_raid_blench_knee",
	"U_Simc_bdu_raid_blench_knee_trop",
	"U_Simc_bdu_raid_blench_knee_nomex",
	"U_Simc_bdu_raid_blench_knee_nomex_trop",
	"U_Simc_bdu_raid_blench_nomex",
	"U_simc_bdu_raid",
	"U_Simc_bdu_raid_trop",
	"U_Simc_bdu_raid_knee",
	"U_Simc_bdu_raid_knee_trop",
	"U_Simc_bdu_raid_knee_nomex",
	"U_Simc_bdu_raid_knee_nomex_trop",
	"U_Simc_bdu_raid_nomex"
];

private _itemUniformCrew = 
[
	"U_simc_bdu_raid_blench",
	"U_Simc_bdu_raid_blench_trop",
	"U_Simc_bdu_erla_tee",
	"U_Simc_bdu_raid_blench_knee",
	"U_Simc_bdu_raid_blench_knee_trop",
	"U_Simc_bdu_raid_blench_knee_nomex",
	"U_Simc_bdu_raid_blench_knee_nomex_trop",
	"U_Simc_bdu_raid_blench_nomex",
	"U_simc_bdu_raid",
	"U_Simc_bdu_raid_trop",
	"U_Simc_bdu_raid_knee",
	"U_Simc_bdu_raid_knee_trop",
	"U_Simc_bdu_raid_knee_nomex",
	"U_Simc_bdu_raid_knee_nomex_trop",
	"U_Simc_bdu_raid_nomex"
];

private _itemUniformPilot = 
[
	"U_simc_bdu_raid_blench",
	"U_Simc_bdu_raid_blench_trop",
	"U_Simc_bdu_erla_tee",
	"U_Simc_bdu_raid_blench_knee",
	"U_Simc_bdu_raid_blench_knee_trop",
	"U_Simc_bdu_raid_blench_knee_nomex",
	"U_Simc_bdu_raid_blench_knee_nomex_trop",
	"U_Simc_bdu_raid_blench_nomex",
	"U_simc_bdu_raid",
	"U_Simc_bdu_raid_trop",
	"U_Simc_bdu_raid_knee",
	"U_Simc_bdu_raid_knee_trop",
	"U_Simc_bdu_raid_knee_nomex",
	"U_Simc_bdu_raid_knee_nomex_trop",
	"U_Simc_bdu_raid_nomex"
];

//Vest
private _itemVest = 
[
	"V_Simc_vest_fauf",
	"V_Simc_vest_fauf_2",
	"V_Simc_vest_fauf_rig_1",
	"V_Simc_vest_fauf_rig_2",
	"V_Simc_vest_fauf_rig_3",
	"V_Simc_vest_fauf_rig_4",
	"V_Simc_vest_fauf_LBV",
	"V_Simc_vest_fauf_LBV_2",
	"V_Simc_vest_fauf_LBV_belt",
	"V_Simc_vest_fauf_LBV_belt_45",
	"V_Simc_vest_fauf_alice",
	"V_Simc_vest_fauf_alice_249",
	"V_Simc_vest_fauf_alice_45"
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
	"H_Simc_pasgt_m81",
	"H_Simc_pasgt_m81_b_SWDG",
	"H_Simc_pasgt_m81_SWDG_low_b",
	"H_Simc_pasgt_m81_scrim",
	"H_Simc_pasgt_m81_scrim_alt",
	"H_Simc_pasgt_m81_scrim_panama",
	"H_Simc_pasgt_m81_scrim_SWDG",
	"H_Simc_pasgt_m81_SWDG",
	"H_Simc_pasgt_m81_SWDG_low",
	"H_Simc_Hat_Patrol_m81",
	"H_Simc_Boon_m81_1",
	"H_Simc_Boon_m81_2",
	"H_Simc_Boon_m81_3",
	"H_Simc_Boon_m81_4",
	"H_Simc_Boon_m81_5",
	"H_Simc_Boon_m81_6",
	"H_Simc_Boon_m81_7",
	"H_Simc_Boon_m81_8",
	"H_Bandanna_khk",
	"H_Bandanna_camo",
	"CUP_H_FR_BandanaGreen",
	"CUP_H_FR_BandanaWdl",
	"H_Watchcap_blk",
	"H_Watchcap_camo",
	"CUP_H_PMC_Beanie_Black",
	"CUP_H_PMC_Beanie_Khaki",
	"CUP_H_SLA_BeanieGreen"
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
	"B_simc_pack_alice_kobel_m81",
	"B_simc_pack_alice_0",
	"B_simc_pack_alice_1",
	"B_simc_pack_alice_2",
	"B_simc_pack_alice_2_alt",
	"B_simc_pack_alice_3",
	"B_simc_pack_alice_frame_2",
	"B_simc_pack_alice_frame_rajio",
	"B_simc_pack_med_m5_flak",
	"B_simc_rajio_1",
	"B_simc_rajio_4"
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
	"M40_Gas_mask_nbc_f2_d",
	"M40_Gas_mask_nbc_f4_d",
	"M40_Gas_mask_nbc_c2_d",
	"M40_Gas_mask_nbc_c4_d",
	"M40_Gas_mask_nbc_f2_NVG_02",
	"M40_Gas_mask_nbc_f4_NVG_04",
	"M40_Gas_mask_nbc_c2_NVG_02",
	"M40_Gas_mask_nbc_c4_NVG_04",
	"G_Cigarette",
"immersion_cigs_cigar0",
"murshun_cigs_cig0",
"immersion_pops_pop0",
"immersion_cigs_cigar0_nv",
"murshun_cigs_cig0_nv",
"G_Balaclava_Skull1",
"G_Bandanna_BlueFlame1",
"G_Bandanna_BlueFlame2",
"G_Bandanna_CandySkull",
"G_Bandanna_RedFlame2",
"G_Bandanna_RedFlame1",
"G_Bandanna_Skull1",
"G_Bandanna_Skull1",
"G_Bandanna_Skull2",
"G_Bandanna_kawaii",
"G_Bandanna_Syndikat1",
"G_Bandanna_Syndikat2",
"G_Bandanna_TransPride",
"G_Shemag_khk",
"G_Shemag_oli",
"G_Shemag_red",
"G_Shemag_tan",
"G_Shemag_white",
"G_Bandanna_shemag",
"CUP_TK_NeckScarf",
"CUP_G_Scarf_Face_Blk",
"CUP_G_Scarf_Face_Grn",
"CUP_G_Scarf_Face_Red",
"CUP_G_Scarf_Face_Tan",
"CUP_G_Scarf_Face_White",
"CUP_FR_NeckScarf3",
"CUP_FR_NeckScarf",
"CUP_FR_NeckScarf2",
"CUP_FR_NeckScarf5",
"CUP_FR_NeckScarf4",
"G_Shemag_shades",
"G_Shemag_tactical",
"CUP_G_Grn_Scarf_Shades",
"CUP_G_Tan_Scarf_Shades",
"CUP_G_White_Scarf_Shades",
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
"pca_nvg_shemagh_lowered_khk",
"pca_nvg_shemagh_lowered_oli",
"pca_nvg_shemagh_lowered_red",
"pca_nvg_shemagh_lowered_tan",
"pca_nvg_shemagh_lowered_white",
"PLA_Balaclava_Alt_Black",
"PLA_Balaclava_Alt_1_Black",
"JAM_G_SovietBalaclava_brn",
"Aegis_G_scrimNet_black_F",
"Aegis_G_scrimNet_olive_F",
"Aegis_G_scrimNet_sand_F",
"Aegis_G_scrimNet_under_black_F",
"Aegis_G_scrimNet_under_olive_F",
"Aegis_G_scrimNet_under_sand_F",
"CUP_PMC_Facewrap_Black",
"CUP_PMC_Facewrap_Ranger",
"CUP_PMC_Facewrap_Red",
"CUP_PMC_Facewrap_Tan",
"CUP_PMC_Facewrap_Tropical",
"CUP_PMC_Facewrap_Winter",
"G_Bandanna_blk",
"G_Bandanna_khk",
"G_Bandanna_oli",
"G_Bandanna_tan",
"G_Balaclava_light_G_blk_F",
"G_Balaclava_lowprofile",
"G_Balaclava_combat",
"CUP_G_ESS_BLK_Facewrap_Black",
"CUP_G_ESS_RGR_Facewrap_Ranger",
"CUP_G_ESS_CBR_Facewrap_Red",
"CUP_G_ESS_KHK_Facewrap_Tan",
"CUP_G_ESS_RGR_Facewrap_Tropical",
"CUP_G_ESS_KHK_Facewrap_White",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tan_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tan_Glasses_Dark",
"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Ember",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
"CUP_G_PMC_Facewrap_Winter_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Winter_Glasses_Dark",
"CUP_G_PMC_Facewrap_Winter_Glasses_Ember",
"G_Bandanna_aviator",
"G_Bandanna_shades",
"G_Aviator",
"G_Squares",
"G_Spectacles_Tinted",
"Aegis_G_Condor_EyePro_F",
"G_Combat_lxWS",
"CUP_G_Oakleys_Clr",
"CUP_G_Oakleys_Drk",
"CUP_G_Oakleys_Embr",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Squares_Tinted",
"G_Shades_Yellowred",
"CUP_G_TK_RoundGlasses",
"CUP_G_TK_RoundGlasses_blk",
"CUP_G_ESS_BLK_Dark",
"CUP_G_ESS_BLK_Ember",
"CUP_G_ESS_BLK",
"G_SWDG",
"G_SWDG_low",
"G_Simc_tacticool",
"PLA_NV_Goggles_F",
"PLA_NV_Glasses_F",
"Goggles",
"Aegis_Goggles_Cover_grn_F",
"Aegis_Goggles_Cover_F",
"Goggles_grn_F",
"Goggles_tna_F",
"G_Headset_light",
"G_Headset_Tactical",
"G_Headset_Tactical_grn",
"G_Headset_Tactical_khk",
"G_Headset_lxWS",
"G_WirelessEarpiece_F",
"CUP_G_RUS_Ratnik_6M2_Desert",
"CUP_G_RUS_Ratnik_6M2_Summer",
"CUP_G_RUS_Ratnik_6M21_Desert",
"CUP_G_RUS_Ratnik_6M21_Summer",
"CUP_G_PMC_RadioHeadset",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tan_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Winter_Glasses_Dark_Headset",
"CUP_G_PMC_RadioHeadset_Glasses_Dark",
"CUP_G_PMC_RadioHeadset_Glasses_Ember",
"CUP_G_PMC_RadioHeadset_Glasses",
"JAM_G_Gloves_Leather_blk",
"JAM_G_Gloves_wool_blk",
"JAM_G_Gloves_wool_brn",
"JAM_G_Gloves_wool_cut_blk",
"JAM_G_Gloves_wool_cut_brn",
"JAM_G_Gloves_wool_cut_oli",
"JAM_G_Gloves_wool_oli",
"G_Nomex_1",
"G_Nomex_1_fold",
"G_Nomex_1_lang",
"G_Nomex_2",
"G_Nomex_2_fold",
"G_Nomex_2_lang",
"G_Nomex_2_cut",
"G_Nomex_2_fold_cut",
"G_Nomex_2_lang_cut",
"G_Nomex_1_cut",
"G_Nomex_1_fold_cut",
"G_Nomex_1_lang_cut",
"G_Nomex_desu",
"G_Nomex_desu_fold",
"G_Nomex_desu_lang",
"G_Nomex_desu_2",
"G_Nomex_desu_2_fold",
"G_Nomex_desu_2_lang",
"G_Nomex_desu_2_cut",
"G_Nomex_desu_2_fold_cut",
"G_Nomex_desu_2_lang_cut",
"G_Nomex_desu_cut",
"G_Nomex_desu_fold_cut",
"G_Nomex_desu_lang_cut",
"TC_G_NitrileGloves_1",
"JAM_NV_Gloves_Leather_blk",
"JAM_NV_Gloves_Wool_blk",
"JAM_NV_Gloves_Wool_brn",
"JAM_NV_Gloves_Wool_cut_blk",
"JAM_NV_Gloves_Wool_cut_brn",
"JAM_NV_Gloves_Wool_cut_oli",
"JAM_NV_Gloves_Wool_oli",
"nomex_1_addon",
"nomex_1_fold_addon",
"nomex_1_lang_addon",
"nomex_2_addon",
"nomex_2_fold_addon",
"nomex_2_lang_addon",
"nomex_3_addon",
"nomex_3_fold_addon",
"nomex_3_lang_addon",
"nomex_4_addon",
"nomex_4_fold_addon",
"nomex_4_lang_addon",
"TC_NVG_NitrileGloves_1",
"G_simc_US_Bandoleer_flak_556_left",
"G_simc_US_Bandoleer_flak_556_right",
"G_simc_US_flak_Bandoleer_556",
"G_claysack_flak",
"G_illegal_canteen",
"G_M17_Gasbag",
"G_simc_US_Bandoleer_556_fore",
"G_simc_US_Bandoleer_556_left",
"G_simc_US_Bandoleer_556_right",
"G_simc_US_Bandoleer_60",
"G_simc_US_Bandoleer_60_L",
"G_simc_US_Bandoleer_60_R",
"G_simc_US_Bandoleer_4cm",
"G_simc_US_Bandoleer_556",
"G_simc_US_Bandoleer_556_low",
"G_botol_left",
"G_botol_regt",
"G_botol",
"G_claysack",
"G_Anduk_1",
"G_Anduk_2",
"G_simc_roll",
"bandolier_flak_556_addon",
"bandolier_flak_556_addon_left",
"bandolier_flak_556_addon_right",
"claysac_flak_addon",
"illegal_canteen_addon",
"M17_gasbag_addon",
"bandolier_556_addon",
"bandolier_556_addon_fore",
"bandolier_556_addon_left",
"bandolier_556_addon_low",
"bandolier_556_addon_right",
"m60_band_addon",
"m60_band_addon_L",
"m60_band_addon_R",
"m79_band_addon",
"botol_left_addon",
"botol_regt_addon",
"botol_addon",
"claysac_addon",
"anduk_1_addon",
"anduk_2_addon",
"G_Balaclava_blk",
"CUP_RUS_Balaclava_grn",
"CUP_RUS_Balaclava_blk",
"G_Balaclava_oli"
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
	"murshun_cigs_cigpack",
	"ACE_wirecutter",
	"ACE_Clacker"
	
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
	
	//Grip
	"CUP_bipod_VLTOR_Modpod_black",
	"CUP_bipod_Harris_1A2_L_BLK",
	
	//Tactical Device
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"ACE_DBAL_A3_Red",
	"CUP_acc_Flashlight",
	"pca_flashlight_led"
];

private _itemWeapRifle = 
[
	"CUP_smg_MP5SD6"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_Colt727_M203",
	"ptv_hk69"
];

private _itemWeapAR = 
[
	"CUP_lmg_M249_E1"
];

private _itemWeapLAT = 
[
	"CUP_launch_M72A6"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Colt1911",
	"CUP_hgun_M9",
	
	//Pistol Ammo
	"CUP_7Rnd_45ACP_1911",
	"CUP_15Rnd_9x19_M9"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_norail"
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
	"CUP_30Rnd_556x45_Stanag",
	"CUP_30Rnd_9x19_MP5"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_556x45_Stanag_Tracer_Red",
	"CUP_30Rnd_Red_Tracer_9x19_MP5"
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
	"ACE_40mm_Flare_white",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"Aegis_HandFlare_Green",
	"Aegis_HandFlare_Red"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"ATMine_Range_Mag"
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