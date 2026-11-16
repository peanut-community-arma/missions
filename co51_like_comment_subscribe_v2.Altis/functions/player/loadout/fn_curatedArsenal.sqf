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
	"U_C_Uniform_Formal_01_blue_F",
	"U_C_Uniform_Formal_01_blue_F",
	"$NONE_aegis_suit_formal_brown$",
	"$NONE_aegis_suit_formal_green$",
	"$NONE_aegis_suit_formal_purple$",
	"U_C_Uniform_Formal_01_striped_F",
	"U_C_Uniform_Formal_01_white_F"
];

private _itemUniformProduction = 
[
	"U_C_Uniform_Formal_01_blue_F",
	"U_C_Uniform_Formal_01_blue_F",
	"$NONE_aegis_suit_formal_brown$",
	"$NONE_aegis_suit_formal_green$",
	"$NONE_aegis_suit_formal_purple$",
	"U_C_Uniform_Formal_01_striped_F",
	"U_C_Uniform_Formal_01_white_F",
	"U_Marshal",
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_redwhite",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_C_Poor_1",
	"Atlas_U_C_CommonerJacket_01_blue_F",
	"Atlas_U_C_CommonerJacket_01_marroon_F",
	
	//Vest
	"V_Press_F",
	
	//Headgear
	"H_WirelessEarpiece_F",
	"H_PASGT_basic_blue_press_F",
	"H_Cap_MaldenTours"
	
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
	"H_Booniehat_m81_F",
	"H_Watchcap_blk",
	"H_Watchcap_khk",
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
	"B_Kitbag_blk",
	"pca_kitbag_mcb",
	"B_TacticalPack_blk"
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
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
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
	"$REMOVE_usm_scarf$",
	
	//  =====  CORE - Non-covering scarfs, shemaghs  =====  
	"$NONE_aegis_shemag_cbr$",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"$REMOVE_usm_scarf2$",
	
	//  =====  CORE - Goggles and glasses  =====  
	"G_Combat",
	"G_Combat_Goggles_blk_F",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"milgp_f_tactical_khk",

	//  =====  CORE - Non-serious, fan favourites  =====  
	"G_Bandanna_beast",
	"G_Bandanna_aviator",
	"G_Aviator",
	"G_Bandanna_kawaii",
	"G_Bandanna_Skull2",
	"G_Bandanna_CandySkull",
	"G_Spectacles",
	"rhssaf_veil_Green",
	"CUP_G_TK_RoundGlasses_blk",
	"G_Squares",
	"G_Squares_Tinted",
	"G_Spectacles_Tinted",
	
	//  =====  Props  =====  
	"G_Cigarette",
	"immersion_pops_pop0",
	"immersion_cigs_cigar0",
	"G_Headset_light",
	"$NONE_usm_kneepads_blk$",
	"sfp_peltor_comtac3",
	
	//  =====  Murshun cigpack and lighter  =====  
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"murshun_cigs_cigpack",
	
	//  =====  NVG Balaclavas  =====  
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	
	//  =====  NVG Shemagh/Face shields  =====  
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	
	//  =====  NVG Goggles  =====  
	"Goggles_grn_F",
	"$NONE_pca_nvg_ess_blk$",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	
	//  =====  NVG Props  =====  	
	"pca_nvg_cigarette",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"$NONE_usm_nvg_kneepads_blk$",
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool",
	
	//  =====  NVG Scrim  =====  	
	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"immersion_pops_pop0_nv",
	
	// ===== Addt'l =====
	"G_Balaclava_Flames1",
	"G_Balaclava_Skull1",
	"G_Bandanna_beast",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_RedFlame2",
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
	"CUP_arifle_M4A1_BUIS_GL",
	"CUP_arifle_M4A1_BUIS_GL"
];

private _itemWeapLeader = 
[
	"$NONE_hlc_rifle_magpul556_blk$",
	"$NONE_hlc_rifle_magpul556$",
	
	//Attachments
	"$NONE_hlc_muzzle_fn_oem556$",
	"$NONE_hlc_muzzle_rotex3p$",
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_552",
	"$NONE_sma_acc_micro_t2$",
	"ptv_acc_t1",
	"rhsusf_acc_t1_high",
	"cup_optic_trijiconrx01_black",
	"cup_optic_trijiconrx01_kf_black",
	"$NONE_sma_acc_vortex_blk$",
	"cup_optic_compm4",
	"cup_optic_microt1",
	"cup_optic_ac11704_black",
	"optic_aco",
	"cup_optic_holoblack",
	"$NONE_sma_acc_eotech_552_blk$",
	"$NONE_sma_acc_eotech_552_kf_blk$",
	"cup_optic_eotech553_black"
];

private _itemWeapLAT = 
[
	"CUP_launch_M136"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_glock17g4",
	"rhsusf_mag_17Rnd_9x19_JHP"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS"
];

private _itemWeapProduction =
[
	"$NONE_XZ_CamRecorder_1$",
	"$NONE_XZ_CamRecorder_2$",
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
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M",
	"MRAWS_HE_F"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
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