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
	"CUP_I_B_PMC_Unit_41",
	"CUP_I_B_PMC_Unit_42",
	"CUP_I_B_PMC_Unit_36",
	"CUP_I_B_PMC_Unit_40",
	"CUP_I_B_PMC_Unit_43",
	"CUP_I_B_PMC_Unit_39"	
];

private _itemUniformSecurity = 
[
	"aegis_suit_formal_bluecheck",
	"aegis_suit_formal_blue",
	"aegis_suit_formal_brown",
	"aegis_suit_formal_green",
	"aegis_suit_formal_purple",
	"aegis_suit_formal_redcheck",
	"aegis_suit_formal_white"
];

private _itemUniformProduction = 
[
	"aegis_suit_formal_bluecheck",
	"aegis_suit_formal_blue",
	"aegis_suit_formal_brown",
	"aegis_suit_formal_green",
	"aegis_suit_formal_purple",
	"aegis_suit_formal_redcheck",
	"aegis_suit_formal_white",
	"U_Marshal",
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_redwhite",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_C_Poor_1",
	"aegis_jacket_blu",
	"aegis_jacket_maroon",
	
	//Vest
	"V_Press_F",
	
	//Headgear
	"H_WirelessEarpiece_F",
	"H_PASGT_basic_blue_press_F",
	"aegis_cap_tourist"
	
];

private _itemUniformStreamer = 
[
	"U_OrestesBody",
	"U_NikosBody",
	"U_C_man_sport_1_F",
	"U_C_man_sport_3_F",
	"U_C_man_sport_2_F",
	"U_C_Man_casual_6_F",
	"U_C_Man_casual_4_F",
	"U_I_C_Soldier_Para_4_F",
	"U_C_Uniform_Scientist_02_F",
	"U_C_Uniform_Scientist_02_formal_F",
	"U_O_R_Gorka_01_black_F",
	"CUP_U_C_Pilot_01",
	"CUP_U_C_racketeer_02",
	"CUP_U_C_Rocker_01",
	"CUP_U_C_Rocker_03",
	"CUP_U_C_Rocker_02",
	"CUP_U_C_Rocker_04",
	"simc_vc_pajamas_roll_gry_brn",
	"simc_vc_pajamas_roll_grn_brn"	
];

private _itemUniformMedic =
[
	"U_C_Paramedic_01_F",
	"CUP_U_C_Rescuer_01"
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
	"pca_vest_invisible_kevlar"
];

private _itemVestDemo = 
[
	"V_PlateCarrierSpec_blk",
	"V_EOD_olive_F",
	"V_EOD_coyote_F",
	"V_EOD_blue_F"
];

private _itemVestPilot = 
[
	"rhsusf_spcs_ocp_crewman"
];

//Headgear 
private _itemHeadgear = 
[
	"rhsusf_bowman_cap",
	"aegis_boonie_m81",
	"aegis_beanie_blk",
	"aegis_beanie_khk",
	"bear_opscore_tan",
	"bear_opscore_tan_pelt",
	"bear_opscore_tan_pelt_cam"
	
];

private _itemHeadgearStreamer =
[
	"rhs_xmas_antlers",
	"rhsusf_hgu56p_visor_usa",
	"rhsusf_hgu56p_usa",
	"H_Cap_surfer",
	"H_Hat_brown",
	"H_RacingHelmet_1_white_F",
	"H_RacingHelmet_1_black_F",
	"H_RacingHelmet_1_blue_F",
	"H_RacingHelmet_1_green_F",
	"H_RacingHelmet_1_red_F",
	"H_RacingHelmet_2_F",
	"H_Hat_Tinfoil_F",
	"H_Hat_Safari_sand_F",
	"CUP_H_PMC_Cap_Back_Burberry",
	"CUP_H_PMC_Cap_Back_Grey",
	"CUP_H_PMC_Cap_Back_Tan",
	"milgp_h_cap_backwards_02_goggles_khk",
	"milgp_h_cap_backwards_01_goggles_khk",
	"milgp_h_cap_backwards_01_goggles_rgr",
	"milgp_h_cap_backwards_02_goggles_rgr",
	"rhs_cossack_papakha"	
];

private _itemHeadgearCrew = 
[
	"rhsusf_cvc_helmet"
];

private _itemHeadgearPilot = 
[
	"rhsusf_ihadss"
];

//Backpack 
private _itemBackpack = 
[
	"B_CivilianBackpack_01_Everyday_Black_F",
	"B_CivilianBackpack_01_Sport_Blue_F",
	"B_CivilianBackpack_01_Sport_Green_F",
	"B_CivilianBackpack_01_Sport_Red_F",
	"B_Messenger_Black_F",
	"B_Messenger_Coyote_F",
	"B_Messenger_Gray_F",
	"B_Messenger_Olive_F",
	"pca_backpack_invisible"
];

private _itemBackpackLarge = 
[
	"aegis_kitbag_blk",
	"pca_kitbag_mcb",
	"wsx_tacticalpack_blk"
];

private _itemBackpackPilot = 
[
	"pca_backpack_invisible"
];

//Cosmetic 
private _itemCosmetic = 
[
	//   =====  CORE - Balaclavas  =====  
	"G_Balaclava_blk",
	"G_Balaclava_oli",
	"aegis_bala_light_blk",
	"aegis_bala_light_gogg_blk",
	"CUP_RUS_Balaclava_tan",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"bear_balaclava1_black",
	
	//  =====  CORE - Bandanas, face wraps, face shields  =====  
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_KHK_Facewrap_Tan",
	"CUP_G_ESS_RGR_Facewrap_Ranger",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_tan",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_tan",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh2_gogg_tan",
	"usm_scarf",
	
	//  =====  CORE - Non-covering scarfs, shemaghs  =====  
	"aegis_shemag_cbr",
	"aegis_shemag_khk",
	"aegis_shemag_oli",
	"aegis_shemag_red",
	"usm_scarf2",
	
	//  =====  CORE - Goggles and glasses  =====  
	"G_Combat",
	"aegis_combat_gogg_blk",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"milgp_f_tactical_khk",

	//  =====  CORE - Non-serious, fan favourites  =====  
	"G_Bandanna_beast",
	"G_Bandanna_aviator",
	"G_Aviator",
	"aegis_bandanna_kawaii",
	"aegis_bandanna_skull",
	"aegis_bandanna_candyskull",
	"G_Spectacles",
	"rhssaf_veil_Green",
	"CUP_G_TK_RoundGlasses_blk",
	"G_Squares",
	"G_Squares_Tinted",
	"G_Spectacles_Tinted",
	
	//  =====  Props  =====  
	"aegis_cigarette",
	"immersion_pops_pop0",
	"immersion_cigs_cigar0",
	"aegis_headset",
	"usm_kneepads_blk",
	"sfp_peltor_comtac3",
	
	//  =====  Murshun cigpack and lighter  =====  
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"murshun_cigs_cigpack",
	
	//  =====  NVG Balaclavas  =====  
	"pca_nvg_balaclava",
	"pca_nvg_balaclava2",
	
	//  =====  NVG Shemagh/Face shields  =====  
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"usm_nvg_scarf",
	"usm_nvg_scarf2",
	
	//  =====  NVG Goggles  =====  
	"nvg_goggles_grn",
	"pca_nvg_ess_blk",
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	
	//  =====  NVG Props  =====  	
	"pca_nvg_cigarette",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"usm_nvg_kneepads_blk",
	"usm_nvg_gigloves",
	"pca_nvg_gloves_wool",
	
	//  =====  NVG Scrim  =====  	
	"nvg_scrim_wdl",
	"nvg_scrim_wdl_grass",
	"nvg_scrim_wdl_leaves_2",
	"immersion_pops_pop0_nv",
	
	// ===== Addt'l =====
	"G_Balaclava_Flames1",
	"G_Balaclava_Skull1",
	"G_Bandanna_beast",
	"aegis_bandanna_frostbite",
	"aegis_bandanna_inferno",
	"aegis_bandanna_innerfire",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Skull2",
	"G_Bandanna_sport",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_GPS",
	"G_Lady_Blue",
	"CUP_G_Oakleys_Embr",
	"CUP_G_WristWatch"	
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

private _itemDrone =
[
	"C_UavTerminal",
	"B_UavTerminal",
	"C_UAV_06_medical_backpack_F",
	"B_UAV_06_medical_backpack_F"
];

private _itemGearStreamer =
[
	"ACE_Cellphone",
	"Xnooz_AppareilPhoto",
	"Xnooz_micro1",
	"rhs_weap_tr8",
	"hgun_Pistol_Signal_F",
	"6Rnd_GreenSignal_F",
	"6Rnd_RedSignal_F"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[

];

private _itemWeapRifle = 
[
	"SMG_03C_black",
	"SMG_03C_hex"
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_m4a1_m203",
	"rhs_weap_m4a1_m203s"
];

private _itemWeapLeader = 
[
	"hlc_rifle_magpul556_blk",
	"hlc_rifle_magpul556",
	
	//Attachments
	"hlc_muzzle_fn_oem556",
	"hlc_muzzle_rotex3p",
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_552",
	"sma_acc_micro_t2",
	"ptv_acc_t1",
	"rhsusf_acc_t1_high",
	"cup_optic_trijiconrx01_black",
	"cup_optic_trijiconrx01_kf_black",
	"sma_acc_vortex_blk",
	"cup_optic_compm4",
	"cup_optic_microt1",
	"cup_optic_ac11704_black",
	"optic_aco",
	"cup_optic_holoblack",
	"sma_acc_eotech_552_blk",
	"sma_acc_eotech_552_kf_blk",
	"cup_optic_eotech553_black"
];

private _itemWeapLAT = 
[
	"rhs_weap_M136"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_glock17g4",
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

private _itemWeapProduction =
[
	"XZ_CamRecorder_1",
	"XZ_CamRecorder_2",
	"XZ_CamRecorder_Mag"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"50Rnd_570x28_SMG_03",
	"CUP_50Rnd_570x28_Red_Tracer_P90_M"
];

private _itemAmmoTracer = 
[
];

private _itemAmmoLeader = 
[
	"pca_mag_30Rnd_556x45_M855A1_PMAG_QP_Tan",
	"pca_mag_30Rnd_556x45_M855A1_PMAG_QP",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"pca_mag_30Rnd_556x45_M855A1_EMAG",
	"pca_mag_30Rnd_556x45_M855A1_EMAG_Tan"
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
	//"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	//"rhs_mag_M397_HET",
	//"rhs_mag_M433_HEDP",
	//"rhs_mag_M441_HE",
	//"rhs_mag_m67"
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow"
];

//Special
private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51_m80a1epr"
];

private _itemAmmoMAT = 
[
	"rhs_mag_maaws_HEAT",
	"rhs_mag_maaws_HEDP",
	"rhs_mag_maaws_HE"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_wirecutter",
	"rhsusf_m112_mag",
	"ACE_VMM3",
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
	//Demo
	case (_unitRole == "demo") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemVestDemo + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemEngineer + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapLeader + _itemWeapPistol + _itemAmmo + _itemAmmoLeader + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Chief of Security + Dept Security
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniformSecurity + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemWeapRifle + _itemWeapLeader + _itemWeapPistol + _itemAmmo + _itemAmmoLeader + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemUniformMedic + _itemVest + _itemHeadgear + _itemBackpack + _itemBackpackLarge + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapPistol + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemUniformMedic + _itemVest + _itemHeadgear + _itemBackpack + _itemBackpackLarge + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle +  _itemWeapPistol + _itemWeapLeader + _itemAmmo + _itemWeapLeader + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Streamer
	case (_unitRole == "str") : 
	{
		[arsenal, (_itemGear + _itemGearStreamer + _itemUniformStreamer + _itemUniformProduction + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc )] call ace_arsenal_fnc_initBox;
	};
	//Production
	case (_unitRole == "prd") : 
	{
		[arsenal, (_itemGear + _itemUniformProduction + _itemVest + _itemBackpack + _itemBackpackLarge + _itemCosmetic + _itemMisc + _itemBino + _itemWeapProduction)] call ace_arsenal_fnc_initBox;
	};
	//Drone operator
	case (_unitRole == "drone") : 
	{
		[arsenal, (_itemGear + _itemUniformProduction + _itemVest + _itemBackpack + _itemCosmetic + _itemMisc + _itemDrone + _itemWeapProduction)] call ace_arsenal_fnc_initBox;
	};
	//Production leader
	case (_unitRole == "prd_tl") : 
	{
		[arsenal, (_itemGear + _itemUniformProduction + _itemVest + _itemBackpack + _itemBackpackLarge + _itemCosmetic + _itemMisc + _itemBino + _itemWeapProduction)] call ace_arsenal_fnc_initBox;
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