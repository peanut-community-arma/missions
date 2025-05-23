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
	"usm_bdum65_ubn",
	"usm_bdu_bnu_ubn",
	"usm_bdu_srl_ubn",
	"usm_bdu_srh_ubn",
	"usm_bdu_bti_ubn",
	"usm_bdu_btisrl_ubn",
	"usm_bdu_ubn",
	
	//Vest
	"usm_vest_pasgt_lbe_rifleman",
	"usm_vest_pasgt_lbe_rifleman2",
	"usm_vest_pasgt_lbe_rifleman3",
	"usm_vest_pasgt_lbe_rifleman4",
	
	//Headgear
	"usm_helmet_pasgt_ce_ubn",
	"usm_helmet_pasgt_ceswd_ubn",
	"usm_helmet_pasgt_rm_ubn",
	"usm_helmet_pasgt_rms_ubn",
	"usm_helmet_pasgt_ce_wdl",
	"usm_helmet_pasgt_ceswd_wdl",
	"usm_helmet_pasgt_rm_wdl",
	"usm_helmet_pasgt_rms_wdl",
	
	"usm_bdu_boonie_ubn",
	"usm_bdu_boonie_wdl",
	"usm_bdu_8point_ubn",
	"usm_bdu_8point_wdl",
	
	"rhs_beanie_green",
	"pca_beanie_wdl",
	"pca_beanie_white",
	//Backpack
	"CUP_B_AlicePack_Khaki",
	"CUP_B_USMC_MOLLE_WDL",
	"simc_ranger_ruck",
	"simc_ranger_ruck_light",
	"simc_ranger_ruck_patrol",
	"simc_m1941_pack_og107",
	"simc_m1941_pack_light_og107",
	"simc_m1941_pack_patrol_og107",
	
	"pca_backpack_invisible"
];

private _itemGearGren = 
[
	//Vest
	"usm_vest_pasgt_lbe_grenadier"
];

private _itemGearMedic = 
[
	
	"usm_pack_m5_medic",
	"bear_eagleaiii_m81",
	"simc_tropical_pack",
	"simc_tropical_pack_scout",
	"simc_lw_ruck_medic",
	"simc_m5_pack"
		
];

private _itemGearMG = 
[
	//Vest
	"usm_vest_pasgt_lbe_machinegunner"
];

private _itemGearLeader = 
[
	//Vest
	"usm_vest_pasgt_lbe_grenadier",
	
	//Headgear
	
	//Backpack
	"simc_prc25_radiopack",
	"simc_lw_ruck_radio"
	
];

private _itemGearCrew = 
[
	//Uniform 
	"75r_pcu_ucp",
	"75r_g3_ronin_ucp",
	"75r_g3_ucp",
	
	//Vest 
	"rhsusf_spcs_ucp_crewman",
	
	//Headgear
	"rhsusf_hgu56p_tan",
	"rhsusf_hgu56p_visor_tan",
	
	//Backpack
	"rhsusf_assault_eagleaiii_ucp"
];

private _itemGearPilot = 
[
	//Uniform 
	"75r_pcu_ucp",
	"75r_g3_ronin_ucp",
	"75r_g3_ucp",
	
	//Vest 
	"rhsusf_spcs_ucp_crewman",
	
	//Headgear
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_mask",
	"rhsusf_hgu56p_mask_mo",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_visor_mask",
	"rhsusf_hgu56p_visor_mask_mo",
	"rhsusf_hgu56p_mask_smiley",
	"rhsusf_hgu56p_visor_mask_smiley",
	
	//Backpack
	"CUP_B_US_Assault_UCP"
];

private _itemCosmetic = 
[
//Face
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"aegis_bandanna_kawaii",
	"aegis_cigarette",
	"aegis_shades_yellow",
	"aegis_shemag_khk",
	"aegis_shemag_shades_khk",
	"aegis_shemag_tactical_khk",
	"aegis_shemag_oli",
	"aegis_shemag_shades_oli",
	"aegis_shemag_tactical_oli",
	"aegis_shemag_red",
	"aegis_shemag_shades_red",
	"aegis_shemag_tactical_red",
	"aegis_shemag_tan",
	"aegis_shemag_shades_tan",
	"aegis_shemag_tactical_tan",
	"aegis_shemag_white",
	"aegis_shemag_shades_white",
	"aegis_shemag_tactical_white",
	"bear_balaclava1_black",
	"bear_bandana_m81",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_RUS_Balaclava_Ratnik_winter",
	"CUP_G_RUS_Balaclava_Ratnik_winter_v2",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_BLK_Scarf_White",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_TK_NeckScarf",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_White",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Grn_Scarf_Shades_Beard",
	"CUP_G_Grn_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard_Blonde",
	"CUP_G_White_Scarf_Shades_Beard",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	"usm_kneepads_blk",
	"usm_swdgoggles",
	"usm_gigloves",
	"usm_giglovesscarf",
	"usm_giglovesscarf2",
	"usm_scarf",
	"usm_scarf2",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"milgp_f_goggles_khk",
	"sfp_peltor_comtac3",
	"pca_balaclava_blk_1",
	"pca_balaclava_blk_2",
	"pca_balaclava_oli_1",
	"pca_balaclava_oli_2",
	"rhs_scarf",
	"rhs_ess_black",
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
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"rhssaf_veil_Green",
	
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
	
	//HMD
	"pca_nvg_balaclava",
	"pca_nvg_balaclava2",
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_glasses_org",
	"pca_nvg_glasses_ylw",
	"pca_nvg_ess_blk",
	"pca_nvg_cigarette",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_cb",
	"pca_nvg_face_shield_khk",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_face_shield_shemagh_khk",
	"pca_nvg_face_shield_shemagh_rgr",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_white",
	"pca_nvg_shemagh2_white",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	"pca_nvg_tactical_glasses",
	"pca_nvg_tactical_goggles",
	"nvg_goggles_cbr",
	"nvg_goggles_grn",
	"nvg_goggles_tropic",
	"usm_nvg_kneepads_blk",
	"usm_nvg_gigloves",
	"usm_nvg_giglovesscarf",
	"usm_nvg_giglovesscarf2",
	"usm_nvg_swdgoggles",
	"usm_nvg_scarf",
	"usm_nvg_scarf2",
	"sfp_nvg_peltor_comtac3",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv"
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
	"ACE_personalAidKit",
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
	"hlc_rifle_m16a2",
	"hlc_wp_xm4"
];

private _itemWeapRifleUGL = 
[
	"hlc_rifle_m16a2_m203",
	"rhs_weap_m79"
];

private _itemWeapSMG = 
[
	"CUP_smg_M3A1_blk"
];
private _itemWeapAR = 
[
	"CUP_lmg_M60"
];

private _itemWeapMG = 
[
	"CUP_lmg_M60"
];

private _itemWeapDMR = 
[
	"rhs_weap_m14ebrri"
];

private _itemWeapLAT = 
[
	"rhs_weap_m72a7"
];

private _itemWeapMAT = 
[
	"CUP_launch_Mk153Mod0"
];

private _itemWeapPistol = 
[
	"CUP_hgun_M9",
	"CUP_hgun_Colt1911"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855_Stanag",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",
	
	//Pistol Ammo
	"CUP_15Rnd_9x19_M9",
	"9Rnd_45ACP_Mag",
	
	//SMG Ammo
	"CUP_30Rnd_45ACP_M3A1_BLK_M",
	"CUP_30Rnd_45ACP_Red_Tracer_M3A1_BLK_M",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_m576",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67",
	
	//Memes
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"	
];

private _itemAmmoAR = 
[
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"rhsusf_50Rnd_762x51",
	"rhsusf_50Rnd_762x51_m62_tracer"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"rhsusf_50Rnd_762x51",
	"rhsusf_50Rnd_762x51_m62_tracer",
	"bear_eagleaiii_m81"
];

private _itemAmmoMAT = 
[
	"rhs_mag_smaw_HEDP",
	"rhs_mag_smaw_HEAA",
	"CUP_SMAW_Spotting",
	"usm_pack_alice"
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
	"UGL_FlareYellow_F",
	"ACE_40mm_Flare_white"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol  + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (Light Anti-Tank)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapSMG + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapSMG + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAT + _itemWeapPistol + _itemWeapSMG + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapSMG + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "ammg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapSMG + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapSMG + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapSMG + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapSMG + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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