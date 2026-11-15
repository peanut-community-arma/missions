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
	//Common items shared by all classes except for vehicle crews
	
	//Uniform 
	"U_B_CombatUniform_mcam",
	"U_B_CombatUniform_mcam_vest",
	"U_B_CombatUniform_mcam_tshirt",
	
	//Vest
	"V_PlateCarrier1_mtp",
	"V_PlateCarrierSpec_mtp",
	
	//Headgear
	"H_HelmetB_plain_mcamo",
	"H_HelmetSpecB_mcamo",
	"H_HelmetB_camo_mcamo",
	"H_HelmetSpecB_light_mcamo",
	
	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"B_Kitbag_mcamo",
	"B_AssaultPackSpec_mcamo",
	"B_AssaultPack_mcamo",
	"B_Carryall_mcamo",
	"B_TacticalPack_mcamo",
	"pca_eagle_a3_oefcp"
];

private _itemGearGren = 
[
	//Vest
];

private _itemGearMedic = 
[
	//Vest 
];

private _itemGearMG = 
[
	//Vest
];

private _itemGearLeader = 
[
	//Vest
];

private _itemGearCrew = 
[
	"H_HelmetCrew_B"
];

private _itemGearPilot = 
[
	//Headgear
	"H_PilotHelmetHeli_B"
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
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_face_shield_khk$",
	"$NONE_pca_nvg_face_shield_mc$",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_khk$",
	"$NONE_pca_nvg_face_shield_shemagh_mc$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"Goggles_grn_F",
	"Goggles"
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
	"ToolKit"
];

private _itemBino = 
[
	"Binocular",
	"rhssaf_zrak_rd7j"
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
	"bipod_01_f_khk",
	"bipod_01_f_blk",
	"bipod_01_f_mtp",
	"bipod_01_f_snd",
	"cup_bipod_vltor_modpod_black",
	"cup_bipod_vltor_modpod_od",
	"cup_bipod_vltor_modpod",
	"HLC_bipod_UTGShooters",
	"ptv_acc_hbrs",
	"ptv_acc_grip4",
	"ptv_acc_grip3",
	"ptv_acc_grip1",
	"ptv_acc_grip2",
	"rhsusf_acc_grip1",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_rvg_de",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_tdstubby_tan",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip3_tan",

	"acc_pointer_ir",
	"ace_acc_pointer_green",
	"acc_flashlight",
	"cup_acc_flashlight",
	"cup_acc_flashlight_desert",
	"cup_acc_flashlight_wdl",
	"acc_flashlight_pistol",
	"hlc_acc_TLR1",
	"hlc_acc_DBALPL_FL",
	"hlc_acc_DBALPL",

	"optic_mrd",
	"optic_mrd_black",
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
	"RKSL_optic_EOT552X_C",
	"RKSL_optic_EOT552X",
	"RKSL_optic_EOT552_C",
	"RKSL_optic_EOT552",
	"ptv_acc_eot552",
	"ptv_acc_t1_low",
	"ptv_acc_t1",
	"ptv_acc_aimcs",
	"ptv_acc_compm4s",
	"HLC_optic_RomeoV",
	"HLC_optic_DocterR",
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

	
	//Tactical Device
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top"
];

private _itemAccSpec = 
[
	"optic_dms",
	"optic_hamr",
	"optic_mrco",
	"optic_arco",
	"optic_arco_blk_f",
	"optic_hamr_khk_f",
	"optic_erco_blk_f",
	"optic_erco_khk_f",
	"optic_erco_snd_f",
	"cup_optic_elcan_specterdr_black",
	"cup_optic_elcan_specterdr_kf_black",
	"cup_optic_elcan_specterdr_kf",
	"cup_optic_elcan_specterdr_kf_rmr_black",
	"cup_optic_elcan_reflex"
];

private _itemWeapRifle = 
[
	"SMG_03C_khaki",
	"SMG_03C_black"
];

private _itemWeapRifleUGL = 
[
	"arifle_MX_GL_F",
	"arifle_MX_GL_Black_F"
];

private _itemWeapAR = 
[
	"arifle_MX_SW_F",
	"arifle_MX_SW_Black_F",
	"sps_weap_kac_lamg_blk",
	"sps_weap_kac_lamg_tan",
	"sps_weap_kac_lamg_hg_blk",
	"sps_weap_kac_lamg_hg_tan"
];

private _itemWeapMG = 
[
	"sps_weap_kac_amg_blk",
	"sps_weap_kac_amg_tan"
];

private _itemWeapDMR = 
[
	"arifle_MXM_F",
	"arifle_MXM_Black_F"
];

private _itemWeapLAT = 
[
	"pca_weap_m136cs"
];

private _itemWeapMAT = 
[
	"launch_MRAWS_green_rail_F",
	"launch_MRAWS_olive_rail_F"
];

private _itemWeapPistol = 
[
	"hgun_P07_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_P07_blk_F",
	"hgun_P07_khk_F",
	"hgun_Pistol_heavy_01_green_F"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"50Rnd_570x28_SMG_03",
	"CUP_50Rnd_570x28_Green_Tracer_P90_M",
	"16Rnd_9x21_Mag",
	"11Rnd_45ACP_Mag",
	
	//Explosives
	"3Rnd_HE_Grenade_shell",
	"3Rnd_Smoke_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67",
	"HandGrenade"
];

private _itemAmmoAR = 
[
	"100Rnd_65x39_caseless_black_mag",
	"100Rnd_65x39_caseless_khaki_mag",
	"100Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_black_mag_tracer",
	"100Rnd_65x39_caseless_khaki_mag_tracer",
	"100Rnd_65x39_caseless_mag_Tracer",
	"sps_200Rnd_556x45_M855A1_Mixed_KAC_Box",
	"sps_200Rnd_556x45_M855A1_KAC_Box",
	"sps_200Rnd_556x45_M856A1_Tracer_Red_KAC_Box",
	"sps_200Rnd_556x45_M855A1_Mixed_KAC_Box_Tan",
	"sps_200Rnd_556x45_M855A1_KAC_Box_Tan",
	"sps_200Rnd_556x45_M856A1_Tracer_Red_KAC_Box_Tan"
];

private _itemAmmoMG = 
[
	"sps_100Rnd_762x51_M62_Tracer_Red_KAC_Box",
	"sps_100Rnd_762x51_M80A1_Mixed_KAC_Box",
	"sps_100Rnd_762x51_M80A1_KAC_Box"
];

private _itemAmmoMAT = 
[
	"MRAWS_HE_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HEAT_F"
];

private _itemAmmoDMR = 
[
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_black_mag",
	"30Rnd_65x39_caseless_black_mag_Tracer",
	"30Rnd_65x39_caseless_mag_Tracer"
];

private _itemAmmoSignal = 
[
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokeRed_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell",
	"3Rnd_SmokeOrange_Grenade_shell",
	"3Rnd_SmokeGreen_Grenade_shell",
	"3Rnd_SmokeBlue_Grenade_shell",
	"CUP_1Rnd_StarFlare_Red_M203",
	"CUP_1Rnd_StarCluster_Red_M203",
	"CUP_1Rnd_StarFlare_Green_M203",
	"CUP_1Rnd_StarCluster_Green_M203",
	"CUP_1Rnd_StarCluster_White_M203",
	"CUP_1Rnd_StarFlare_White_M203",
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
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemAmmoAR + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol + _itemAmmoSignal + _itemAccSpec)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoSignal + _itemWeapPistol + _itemAccSpec)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoSignal + _itemWeapPistol + _itemAccSpec)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAT + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemAmmoMG) + _itemWeapPistol + _itemAmmo] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "ammg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////	ROLES NOT USED IN BASE TEMPLATE	////////////////////////////////////////////////////////
	
	//Designated Marksman
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapDMR + _itemAmmoDMR + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Machine Gunner
	case (_unitRole == "hmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Machine Gunner
	case (_unitRole == "ahmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
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