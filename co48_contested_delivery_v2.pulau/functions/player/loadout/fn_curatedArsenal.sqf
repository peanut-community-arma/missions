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
	"usm_bdum65_erdl",
		"usm_bdu_bnu_erdl",
		"usm_bdu_srl_erdl",
		"usm_bdu_srh_erdl",
		"usm_bdu_bti_erdl",
		"usm_bdu_btisrl_erdl",
		"usm_bdu_erdl",
		"U_B_T_Soldier_AR_F",
		"U_C_WorkerCoveralls",
		"U_I_G_Story_Protagonist_F",
		"aegis_merc_polo_m81",
		"U_I_C_Soldier_Para_2_F",
		"U_I_C_Soldier_Para_4_F",
		"U_I_C_Soldier_Para_1_F",
		"bear_uniform_m93_duck_hunter",
		"CUP_U_B_BDUv2_roll2_dirty_CEU",
	
	//Vest
	"rhs_6b3_od_ak_1",
	"rhs_6b3_od_ak_2",
	"rhs_6b3_od_ak_3",
	"pca_vest_invisible_plate",
	
	//Headgear
	"usm_helmet_m1v2_erdl",
		"usm_helmet_m1v2_mit",
		"usm_helmet_m1v2_wdl",
		"usm_helmet_m1_erdl",
		"usm_helmet_m1_mit",
		"usm_helmet_m1_wdl",

		
	"simc_m53_burlap_od_net_scrim",


	"usm_bdu_boonie_erdl",
	"usm_bdu_boonie_erdl",

	"usm_bdu_cap_erdl",
	"rhs_beanie_green",

	"H_Shemag_olive",
	"H_ShemagOpen_tan",
	"H_ShemagOpen_khk",

	
	"H_HeadBandage_clean_F",
	"H_HeadBandage_stained_F",
	"H_HeadBandage_bloody_F",

	"H_Bandanna_camo",
	"H_Bandanna_surfer",
	"H_Bandanna_surfer_blk",

	"pca_headband_blk",
	"pca_headband",
	"pca_headband_red",
	"pca_headband_tan",


	"CUP_H_SLA_BeretRed",
	"pca_patrolcap_greek_lizard",
	"CUP_H_PMC_PRR_Headset",
	"CUP_H_TKI_Pakol_1_02",
	
	//Backpack

	"pca_rd54_od",
	"pca_backpack_invisible"
];

private _itemGearGren = 
[
	//Vest
	"rhs_6b3_od_vog_1",
	"rhs_6b3_od_vog_2"
];

private _itemGearMedic = 
[
	"CUP_B_AlicePack_Khaki",
	"rhs_assault_umbts"
];

private _itemGearMG = 
[
	//Vest
	"rhs_6b3_od_rpk",
	
	//Backpack
	"CUP_B_AlicePack_Khaki",
	"rhs_assault_umbts"
];

private _itemGearLeader = 
[
	//Vest
	"rhs_6b3_od_vog_1",
	"rhs_6b3_od_vog_2",
	"rhs_6b3_od_officer",
	"rhs_6b3_od_r148",

	
	//Headgear
	"CUP_H_NAPA_Fedora",
	"H_Hat_camo",
	"CUP_H_SLA_BeretRed"
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
	
	"simc_addon_nomex_blk",
	"simc_addon_nomex_fold_blk",
	"simc_addon_nomex_long_blk"
	
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
	//"ACE_personalAidKit",
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
	//"ACE_Clacker",
	//"ACE_M26_Clacker",
	//"ACE_wirecutter",
	//"rhsusf_m112_mag",
	//"rhsusf_m112x4_mag"
];

private _itemAcc = 
[

];

private _itemAccSpec = 
[
	"rhs_acc_pso1m2"
];

private _itemWeapRifle = 
[
	"rhs_weap_akm",
	"rhs_weap_akms",
	"rhs_weap_pm63",
	"rhs_weap_m70ab2",
	"rhs_weap_m70b1",
	"rhs_weap_m92"
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_m70b3n_pbg40",
	"rhs_weap_akm_gp25",
	"rhs_weap_akms_gp25"
];

private _itemWeapSMG = 
[
	"fwa_weap_ppsh41"
];
private _itemWeapAR = 
[
	"fwa_weap_rpd"
];

private _itemWeapMG = 
[
	"rhs_weap_mg3"
];

private _itemWeapDMR = 
[
	"pca_weap_svd_wood",
	"CUP_hgun_SA61"
];

private _itemWeapLAT = 
[
	"rhs_rpg_6b3",
	
	"rhs_weap_rpg7",
	
	"rhs_rpg7_PG7V_mag",
	"rhs_rpg7_OG7V_mag"
];

private _itemWeapMAT = 
[
	"rhs_weap_maaws"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Makarov",
	"CUP_hgun_TT"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhssaf_30Rnd_762x39mm_M67",
	"rhssaf_30Rnd_762x39mm_M78_tracer",
	
	//Pistol Ammo
	"CUP_8Rnd_9x18_Makarov_M",
	"CUP_8Rnd_762x25_TT",

	
	//SMG Ammo
	"CUP_20Rnd_B_765x17_Ball_M",
	"fwa_35rnd_762x25mm_ppsh",
	"fwa_35rnd_762x25mm_ppsh_tracer_green",
	"fwa_71rnd_762x25mm_ppsh",
	"fwa_71rnd_762x25mm_ppsh_tracer_green",
	
	//Explosives
	"rhs_mag_rgd5",
	"rhs_mag_rdg2_white",
	"rhs_mag_rdg2_black"
	
	//"rhs_VOG25P",
	//"rhs_VOG25",
	//"rhs_VG40TB"
 
];

private _itemAmmoAR = 
[
	"fwa_100rnd_762x39mm_rpd",
	"fwa_100rnd_762x39mm_rpd_mixed",
	"fwa_100rnd_762x39mm_rpd_tracer"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"rhsusf_50Rnd_762x51",
	"rhsusf_50Rnd_762x51_m62_tracer",
	"rhs_assault_umbts"
];

private _itemAmmoMAT = 
[
	"fwa_1rnd_m67_HEAT",
	"fwa_1rnd_m67_HE",
	"rhs_assault_umbts"
];

private _itemAmmoDMR = 
[
	"rhs_10Rnd_762x54mmR_7N14"
];

private _itemAmmoSignal = 
[
	"rhs_GRD40_White",
	"rhs_GDM40",
	"rhs_GRD40_Green",
	"rhs_GRD40_Red",
	"rhs_VG40OP_green",
	"rhs_VG40OP_red",
	"rhs_VG40OP_white"
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
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapSMG + _itemAmmo)] call ace_arsenal_fnc_initBox;
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