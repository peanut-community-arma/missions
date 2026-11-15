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
	"CUP_U_B_CDF_FST_1",
		"CUP_U_B_CDF_FST_2",
		"CUP_U_B_CDF_MNT_1",
		"CUP_U_B_CDF_MNT_2"
];

private _itemUniformCrew = 
[
	"CUP_U_B_CDF_FST_1",
		"CUP_U_B_CDF_FST_2",
		"CUP_U_B_CDF_MNT_1",
		"CUP_U_B_CDF_MNT_2"
];

private _itemUniformPilot = 
[
	"CUP_U_B_CDF_FST_1",
		"CUP_U_B_CDF_FST_2",
		"CUP_U_B_CDF_MNT_1",
		"CUP_U_B_CDF_MNT_2"
];

//Vest
private _itemVest = 
[
	"CUP_V_CZ_NPP2006_nk_black",
		"CUP_V_CZ_NPP2006_vz95_black",
		"CUP_V_CZ_NPP2006_ok_black",
		"CUP_V_CZ_NPP2006_co_black",
		"Atlas_V_OCarrierGora_CQB_blk_F",
		"Atlas_V_OCarrierGora_Lite_blk_F",
		"Atlas_V_OCarrierGora_blk_F",
		"JCA_V_CarrierRigKBT_01_combat_black_F",
		"JCA_V_CarrierRigKBT_01_command_black_F",
		"JCA_V_CarrierRigKBT_01_compact_black_F",
		"JCA_V_CarrierRigKBT_01_CQB_black_F",
		"JCA_V_CarrierRigKBT_01_crew_black_F",
		"JCA_V_CarrierRigKBT_01_heavy_black_F",
		"JCA_V_CarrierRigKBT_01_light_black_F",
		"JCA_V_CarrierRigKBT_01_recon_black_F",
		"JCA_V_CarrierRigKBT_01_tactical_black_F",
		"JCA_V_CarrierRigKBT_01_black_F"
];

private _itemVestCrew = 
[
	"CUP_V_CZ_NPP2006_nk_black",
		"CUP_V_CZ_NPP2006_vz95_black",
		"CUP_V_CZ_NPP2006_ok_black",
		"CUP_V_CZ_NPP2006_co_black",
		"Atlas_V_OCarrierGora_CQB_blk_F",
		"Atlas_V_OCarrierGora_Lite_blk_F",
		"Atlas_V_OCarrierGora_blk_F",
		"JCA_V_CarrierRigKBT_01_combat_black_F",
		"JCA_V_CarrierRigKBT_01_command_black_F",
		"JCA_V_CarrierRigKBT_01_compact_black_F",
		"JCA_V_CarrierRigKBT_01_CQB_black_F",
		"JCA_V_CarrierRigKBT_01_crew_black_F",
		"JCA_V_CarrierRigKBT_01_heavy_black_F",
		"JCA_V_CarrierRigKBT_01_light_black_F",
		"JCA_V_CarrierRigKBT_01_recon_black_F",
		"JCA_V_CarrierRigKBT_01_tactical_black_F",
		"JCA_V_CarrierRigKBT_01_black_F"
];

private _itemVestPilot = 
[
	"CUP_V_CZ_NPP2006_nk_black",
		"CUP_V_CZ_NPP2006_vz95_black",
		"CUP_V_CZ_NPP2006_ok_black",
		"CUP_V_CZ_NPP2006_co_black",
		"Atlas_V_OCarrierGora_CQB_blk_F",
		"Atlas_V_OCarrierGora_Lite_blk_F",
		"Atlas_V_OCarrierGora_blk_F",
		"JCA_V_CarrierRigKBT_01_combat_black_F",
		"JCA_V_CarrierRigKBT_01_command_black_F",
		"JCA_V_CarrierRigKBT_01_compact_black_F",
		"JCA_V_CarrierRigKBT_01_CQB_black_F",
		"JCA_V_CarrierRigKBT_01_crew_black_F",
		"JCA_V_CarrierRigKBT_01_heavy_black_F",
		"JCA_V_CarrierRigKBT_01_light_black_F",
		"JCA_V_CarrierRigKBT_01_recon_black_F",
		"JCA_V_CarrierRigKBT_01_tactical_black_F",
		"JCA_V_CarrierRigKBT_01_black_F"
];

//Headgear 
private _itemHeadgear = 
[
	"Aegis_H_Helmet_FASTMT_blk_F",
		"Aegis_H_Helmet_FASTMT_Cover_blk_F",
		"Aegis_H_Helmet_FASTMT_Headset_blk_F",
		"CUP_H_RUS_Altyn_black",
		"CUP_H_RUS_Altyn_Goggles_black",
		"CUP_H_RUS_Altyn_Shield_Down_black",
		"CUP_H_RUS_Altyn_Shield_Up_black",
		"CUP_H_OpsCore_Black",
		"CUP_H_OpsCore_Black_NoHS",
		"CUP_H_OpsCore_Black_SF"
];

private _itemHeadgearCrew = 
[
	"lxWS_H_HelmetCrew_I",
	"H_Tank_black_F",
	"H_HelmetCrew_I",
	"CUP_H_SLA_TankerHelmet"
];

private _itemHeadgearPilot = 
[
	"H_PilotHelmetHeli_B"
];

//Backpack 
private _itemBackpack = 
[
	"B_AssaultPack_blk",
		"B_Carryall_blk",
		"B_FieldPack_blk",
		"B_AssaultPackSpec_blk",
		"B_Kitbag_blk",
		"CUP_B_USPack_Black",
		"B_RadioBag_01_black_F",
		"CUP_B_AssaultPack_Black",
		"pca_backpack_invisible"
];

private _itemBackpackCrew = 
[
	"B_AssaultPack_blk",
		"B_Carryall_blk",
		"B_FieldPack_blk",
		"B_AssaultPackSpec_blk",
		"B_Kitbag_blk",
		"CUP_B_USPack_Black",
		"B_RadioBag_01_black_F",
		"CUP_B_AssaultPack_Black",
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
	"G_Balaclava_blk",
	"G_Balaclava_BlueStrips",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_tan",
	"G_Bandanna_Vampire_01",
	"G_Combat",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_Armband_NVG_cdf_alt_F",
	"G_Armband_NVG_cdf_F",
	"G_Headband_NVG_grn_alt_F",
	"G_Headband_NVG_grn_F",
	"G_Armband_cdf_alt_F",
	"G_Armband_cdf_F",
	"G_Headband_grn_alt_F",
	"G_Headband_grn_F",
	"G_Bandanna_BlueFlame1",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_CandySkull",
	"G_Bandanna_RedFlame2",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_shemag",
	"G_Bandanna_Skull1",
	"G_Bandanna_Skull2",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Headset_light",
	"G_Shades_Yellowred",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_shades",
	"G_Shemag_tactical",
	"G_Shemag_tan",
	"G_Shemag_white",
	"Aegis_G_Condor_EyePro_F",
	"G_Balaclava_TI_blk_F",
	"G_Bandanna_TransPride",
	"G_AirPurifyingRespirator_02_black_F",
	"G_AirPurifyingRespirator_01_F",
	"G_Balaclava_blk_lxWS",
	"G_Balaclava_oli_lxWS",
	"G_Balaclava_snd_lxWS",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_RUS_Balaclava_tan",
	"CUP_G_RUS_Ratnik_Balaclava_Green_1",
	"CUP_G_RUS_Ratnik_Balaclava_Green_2",
	"CUP_G_RUS_Ratnik_Balaclava_Olive_1",
	"CUP_G_RUS_Ratnik_Balaclava_Olive_2",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_1",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_2",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Ranger",
	"CUP_G_ESS_CBR_Facewrap_Red",
	"CUP_G_ESS_RGR_Facewrap_Skull",
	"CUP_G_ESS_KHK_Facewrap_Tan",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_PMC_Facewrap_Black",
	"CUP_PMC_Facewrap_Ranger",
	"CUP_PMC_Facewrap_Red",
	"CUP_PMC_Facewrap_Skull",
	"CUP_PMC_Facewrap_Smilie",
	"CUP_G_RUS_Ratnik_6M2_Summer",
	"CUP_G_RUS_Ratnik_6M21_Summer",
	"CUP_TK_NeckScarf",
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
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"JAM_G_Gloves_Leather_blk",
	"JAM_G_Gloves_wool_blk",
	"JAM_G_Gloves_wool_cut_blk",
	"JCA_G_AirPurifyingRespirator_04_black_clear_F",
	"JCA_G_AirPurifyingRespirator_04_black_tinted_F",
	"M40_Gas_mask_nbc_f2_d",
	"M40_Gas_mask_nbc_f4_d",
	"G_SWDG",
	"G_SWDG_low",
	"G_Nomex_1",
	"G_Nomex_1_fold",
	"G_Nomex_1_lang",
	"TC_G_NitrileGloves_1",
	"nomex_1_addon",
	"nomex_1_fold_addon",
	"nomex_1_lang_addon",
	"TC_NVG_NitrileGloves_1",
	"Aegis_NV_G_Armband_IND_alt_F",
	"Goggles",
	"Aegis_Goggles_Cover_grn_F",
	"Aegis_Goggles_Cover_F",
	"Goggles_grn_F",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"JAM_NV_Gloves_Leather_blk",
	"JAM_NV_Gloves_Wool_blk",
	"JAM_NV_Gloves_Wool_cut_oli",
	"JAM_NV_Gloves_Wool_cut_blk",
	"JAM_NV_Gloves_Wool_oli",
	"M40_Gas_mask_nbc_f2_NVG_02",
	"M40_Gas_mask_nbc_f2_NVG_02",
	"pca_nvg_cigarette",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"ptv_Rhino"
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
	"ACE_wirecutter"
	
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
	"optic_Yorris",
	"optic_Aco",
	"optic_MRCO",
	"optic_Hamr",
	"Aegis_optic_ACOG",
	"Aegis_optic_1p87",
	"Aegis_optic_ICO",
	"Aegis_optic_ROS",
	"optic_Holosight_blk_F",
	"optic_ERCO_blk_F",
	"optic_LRCO_blk_F",
	"optic_Arco_AK_blk_F",
	"optic_r1_high_lxWS",
	"optic_r1_low_lxWS",
	"CUP_optic_1P87_RIS",
	"CUP_optic_CompM4",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_low",
	"CUP_optic_AC11704_Black",
	"CUP_optic_HoloBlack",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_HensoldtZO",
	"CUP_optic_HensoldtZO_low",
	"CUP_optic_HensoldtZO_low_RDS",
	"CUP_optic_HensoldtZO_RDS",
	"CUP_optic_CompM2_Black",
	"CUP_optic_CompM2_low",
	"CUP_optic_MARS",
	"CUP_optic_MRad",
	"CUP_optic_ZDDot",
	"CUP_optic_OKP_7_rail",
	"CUP_optic_VortexRazor_UH1_Black",
	"CUP_optic_ZeissZPoint",
	"JCA_optic_MROS_black",
	"CUP_optic_1p63",
	"CUP_optic_ekp_8_02",
	"CUP_optic_Kobra",
	"CUP_optic_OKP_7",
	
	//Grip
	"CUP_bipod_VLTOR_Modpod_black",
	"CUP_bipod_Harris_1A2_L_BLK",
	
	//Tactical Device
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"ACE_DBAL_A3_Red",
	"CUP_acc_Flashlight",
	"CUP_muzzle_mfsup_Flashhider_PK_Black",
	"CUP_muzzle_mfsup_Flashhider_545x39_Black",
	"CUP_muzzle_mfsup_Flashhider_762x39_Black"
];

private _itemWeapRifle = 
[
	"CUP_smg_bizon"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AK12_GP34_black",
	"ptv_hk69",
	"ptv_L2BPG"
];

private _itemWeapAR = 
[
	"CUP_arifle_RPK74M",
	"CUP_arifle_RPK74M_top_rail",
	"CUP_arifle_RPK74M_railed"
];

private _itemWeapLAT = 
[
	"ptv_m72a7"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Makarov",
	"CUP_hgun_Glock17_blk",
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_glock17",
	"CUP_8Rnd_9x18_Makarov_M"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_Pecheneg",
	"CUP_lmg_Pecheneg_B50_vfg",
	"CUP_lmg_Pecheneg_top_rail",
	"CUP_lmg_Pecheneg_top_rail_B50_vfg"
];

private _itemWeapMAT = 
[
	"CUP_launch_RPG7V",
	"CUP_optic_PGO7V3"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_64Rnd_9x19_Bizon_M",
	"CUP_30Rnd_545x39_AK12_M"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_TE1_Red_Tracer_545x39_AK74M_M"
];

private _itemAmmoAR = 
[
	"CUP_60Rnd_545x39_AK74M_M",
	"CUP_60Rnd_TE1_Red_Tracer_545x39_AK74M_M"
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
	"CUP_1Rnd_SmokeGreen_GP25_M",
	"CUP_1Rnd_SmokeRed_GP25_M",
	"CUP_1Rnd_SmokeYellow_GP25_M"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67",
	"CUP_1Rnd_HE_GP25_M",
	"CUP_1Rnd_SMOKE_GP25_M"
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_OG7_M",
	"CUP_PG7V_M",
	"CUP_TBG7V_M",
	"CUP_PG7VM_M"
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