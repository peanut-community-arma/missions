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
	//Uniform
	"bw_uniform_combat_fleck",
	"bw_uniform_jacket_fleck",
	"bw_uniform_jacket_rs_fleck",
	"bw_uniform_combat_rs_fleck",
	
	//Vest
	"bw_vest_fleck_rifleman",
	"bw_vest_fleck_marksman",
	
	//Headgear
	"bw_pasgt_fleck",
	"bw_pasgt_fleck_ess_bare",
	"bw_pasgt_fleck_ess",
	"bw_pasgt_fleck_rhino",
	
	//Backpack
	"bw_kitbag_fleck"
];

private _itemGearGren = 
[
	//Vest
	"bw_vest_fleck_grenadier",
	"bw_carryall_fleck",
	"Aegis_B_patrolBackpack_khk_F",
	"rhs_weap_m32"
];

private _itemGearMedic = 
[
	//Vest 
	"bw_vest_fleck_medic",
	"bw_carryall_fleck"
];

private _itemGearMG = 
[
	//Vest
	"bw_vest_fleck_machinegunner"
];

private _itemGearLeader = 
[
	//Vest
	"bw_vest_fleck_teamleader"
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
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_khk",
	"G_Bandanna_sport",
	"G_Combat",
	"G_Lowprofile",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Combat_Goggles_blk_F",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Balaclava_light_mtp_F",
	"G_Balaclava_light_G_mtp_F",
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
	"G_Combat_Goggles_tna_F",
	"G_Balaclava_TI_blk_F",
	"G_Balaclava_TI_G_blk_F",
	"G_AirPurifyingRespirator_01_F",
	"bear_bandana_multicam",
	"CUP_G_TK_RoundGlasses_blk",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_mc",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_mc",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_mc",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_mc",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_mc",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_mc",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh2_gogg_white",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"immersion_pops_pop0",
	"G_AirPurifyingRespirator_02_olive_F",
    "G_AirPurifyingRespirator_02_sand_F",
    "G_AirPurifyingRespirator_01_F",
    "G_RegulatorMask_F",
    "GP21_GasmaskPS",
    "GP5Filter_RaspiratorPS",
    "GP7_RaspiratorPS",
    "SE_M17",
    "Hamster_PS",
    "SE_S10",
	"avon_fm12",
	"avon_sf12",
	"m40_gas_mask_01",
	"m40_gas_mask_01_nbc_hood",
	"m40_gas_mask_01_nbc_hood_3cd",
	"m40_gas_mask_02",
	"m40_gas_mask_03",
	"m40_gas_mask_04",
	"m40_gas_mask_05",
	"m40_gas_mask_06",
	"simc_nomex_blk",
	"simc_nomex_alt",
	"simc_nomex",
	"simc_nomex_tan",
	"simc_nomex_fold_blk",
	"simc_nomex_fold_alt",
	"simc_nomex_fold",
	"simc_nomex_fold_tan",
	"simc_nomex_long_blk",
	"simc_nomex_long_alt",
	"simc_nomex_long",
	"simc_nomex_long_tan",
	"rhssaf_veil_Green",
	"CUP_G_WristWatch",
	
	//NVGs
	"ACE_NVG_Gen4_Black"
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
	"ToolKit",
	"ACE_Flashlight_KSF1"
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

private _itemEng = 
[
	"ACE_Clacker",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"rhsusf_m112_mag",
	"rhsusf_m112x4_mag"
];

private _itemAcc = 
[
	//Optic
	"$NONE_sma_acc_vortex_blk$",
	"$NONE_sma_acc_vortex_lc_blk$",
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_micro_t2_low$",
	"$NONE_sma_acc_eotech_xps3_od$",
	"$NONE_sma_acc_eotech_xps3_blk$",
	"$NONE_sma_acc_eotech_xps3_tan$",
	"$NONE_sma_acc_eotech_552_kf_od$",
	"$NONE_sma_acc_eotech_552_kf_blk$",
	"$NONE_sma_acc_eotech_552_kf_tan$",
	"$NONE_sma_acc_eotech_552_blk$",
	"$NONE_sma_acc_cmore_grn$",
	"$NONE_sma_acc_cmore_blk$",
	"$NONE_sma_acc_barska_rds$",
	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_t1_low_fwd",
	"rhsusf_acc_t1_low",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_rx01",
	"rhsusf_acc_rx01_nofilter",
	"rhsusf_acc_rx01_nofilter_tan",
	"rhsusf_acc_rx01_tan",
	"rhsusf_acc_rm05_fwd",
	"rhsusf_acc_rm05",
	"rhsusf_acc_mrds_fwd_c",
	"rhsusf_acc_mrds_c",
	"rhsusf_acc_mrds_fwd",
	"rhsusf_acc_mrds",
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_552_wd",
	"rhsusf_acc_eotech_552_d",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech",
	"rhsgref_acc_rx01_camo",
	"rhsgref_acc_rx01_nofilter_camo",
	"$NONE_rksl_optic_eot552x_c$",
	"$NONE_rksl_optic_eot552x$",
	"$NONE_rksl_optic_eot552_c$",
	"$NONE_rksl_optic_eot552$",
	"ptv_acc_eot552",
	"ptv_acc_t1_low",
	"ptv_acc_t1",
	"ptv_acc_aimcs",
	"ptv_acc_compm4s",
	"$NONE_hlc_optic_romeov$",
	"$NONE_hlc_optic_docterr$",
	"cup_optic_zeisszpoint_wood",
	"cup_optic_zeisszpoint_hex",
	"cup_optic_zeisszpoint_desert",
	"cup_optic_zeisszpoint",
	"cup_optic_vortexrazor_uh1_tan",
	"cup_optic_vortexrazor_uh1_od",
	"cup_optic_vortexrazor_uh1_khaki",
	"cup_optic_vortexrazor_uh1_coyote",
	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_trijiconrx01_od",
	"cup_optic_trijiconrx01_kf_od",
	"cup_optic_trijiconrx01_kf_desert",
	"cup_optic_trijiconrx01_kf_black",
	"cup_optic_trijiconrx01_desert",
	"cup_optic_trijiconrx01_black",
	"cup_optic_mepro_tri_clear",
	"cup_optic_mepro_openx_orange",
	"cup_optic_mepro_moa_clear",
	"cup_optic_mepro",
	"cup_optic_zddot",
	"cup_optic_mrad",
	"cup_optic_mars",
	"cup_optic_mars_od",
	"cup_optic_mars_tan",
	"cup_optic_compm2_woodland",
	"cup_optic_compm2_woodland2",
	"cup_optic_compm2_od",
	"cup_optic_compm2_desert",
	"cup_optic_compm2_coyote",
	"cup_optic_compm2_black",
	"cup_optic_compm2_low_coyote",
	"cup_optic_compm2_low_od",
	"cup_optic_compm2_low",
	"cup_optic_eotech533",
	"cup_optic_eotech553_od",
	"cup_optic_eotech533grey",
	"cup_optic_eotech553_coyote",
	"cup_optic_eotech553_black",
	"cup_optic_holowdl",
	"cup_optic_holodesert",
	"cup_optic_holoblack",
	"cup_optic_ac11704_tan",
	"cup_optic_ac11704_od",
	"cup_optic_ac11704_jungle",
	"cup_optic_ac11704_coyote",
	"cup_optic_ac11704_black",
	"cup_optic_microt1_od",
	"cup_optic_microt1_low_od",
	"cup_optic_microt1_low_coyote",
	"cup_optic_microt1_low",
	"cup_optic_microt1_coyote",
	"cup_optic_microt1",
	"cup_optic_compm4",
	"cup_optic_aimpoint_5000",
	"optic_holosight",
	"optic_aco",
	"optic_yorris",
	
	//Grip
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
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
	
	//Tactical Device
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top",
	
	//Muzzle
	"rhsusf_acc_ardec_m240",
	"rhsusf_acc_aac_762sd_silencer",
	"rhsusf_acc_aac_762sdn6_silencer",
	"$NONE_hlc_muzzle_evo40$"
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
	"CUP_arifle_HK417_12"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_HK417_12_AG36"
];

private _itemWeapAR = 
[
	"CUP_lmg_Mk48",
	"CUP_lmg_Mk48_nohg"
];

private _itemWeapMG = 
[
	"rhs_weap_m240B"
];

private _itemWeapDMR = 
[
	"CUP_arifle_HK417_20"
];

private _itemWeapLAT = 
[
	"rhs_weap_M136"
];

private _itemWeapMAT = 
[
	"rhs_weap_maaws"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_m9"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"ACE_20Rnd_762x51_Mag_Tracer_Dim",
	"ACE_20Rnd_762x51_M993_AP_Mag",
	"ACE_20Rnd_762x51_Mk319_Mod_0_Mag",
	"ACE_20Rnd_762x51_Mag_Tracer",
	
	//Pistol Ammo
	"ptv_12rnd_45ACP_USP",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67",
	"rhsusf_mag_6Rnd_m441_HE",
	"rhsusf_mag_6Rnd_M433_HEDP",
	"rhsusf_mag_6Rnd_M583A1_white",
	"rhsusf_mag_6Rnd_m661_green",
	"rhsusf_mag_6rnd_m662_red",
	"rhsusf_mag_6Rnd_m713_red",
	"rhsusf_mag_6rnd_m714_white",
	"rhsusf_mag_6rnd_m715_green",
	"rhsusf_mag_6rnd_m716_yellow",
	"ACE_IR_Strobe_Item",
	"B_IR_Grenade"
];

private _itemAmmoAR = 
[
	"rhsusf_100Rnd_762x51_m80a1epr",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

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
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemGearMedic + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAT + _itemWeapPistol + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapDMR + _itemWeapPistol + _itemAmmo + _itemAmmoDMR)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Machine Gunner
	case (_unitRole == "hmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Machine Gunner
	case (_unitRole == "ahmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
};

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