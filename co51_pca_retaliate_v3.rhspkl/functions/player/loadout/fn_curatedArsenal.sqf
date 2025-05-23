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
	"usm_bdum65_erdl",
	"usm_bdu_bnu_erdl",
	"usm_bdu_srl_erdl",
	"usm_bdu_srh_erdl",
	"usm_bdu_bti_erdl",
	"usm_bdu_btisrl_erdl",
	"usm_bdu_erdl"
];

private _itemUniformCrew = 
[
	"usm_bdum65_erdl",
	"usm_bdu_bnu_erdl",
	"usm_bdu_srl_erdl",
	"usm_bdu_srh_erdl",
	"usm_bdu_bti_erdl",
	"usm_bdu_btisrl_erdl",
	"usm_bdu_erdl"
];

private _itemUniformPilot = 
[
	"usm_bdum65_erdl",
	"usm_bdu_bnu_erdl",
	"usm_bdu_srl_erdl",
	"usm_bdu_srh_erdl",
	"usm_bdu_bti_erdl",
	"usm_bdu_btisrl_erdl",
	"usm_bdu_erdl"
];

//Vest
private _itemVest = 
[
	"rhs_6b3_od_ak_1",
	"rhs_6b3_od_ak_2",
	"rhs_6b3_od_ak_3"
];

private _itemVestCrew = 
[
	"rhs_6b3_od_ak_1",
	"rhs_6b3_od_ak_2",
	"rhs_6b3_od_ak_3"
];

private _itemVestPilot = 
[
	"rhs_6b3_od_ak_1",
	"rhs_6b3_od_ak_2",
	"rhs_6b3_od_ak_3"
];

//Headgear 
private _itemHeadgear = 
[
	"usm_helmet_m1v2_erdl",
	"usm_helmet_m1_erdl",
	
	"simc_m1",
	"simc_m1_band",
	"simc_m1_net",
	"simc_m1_net_band",
	"simc_m1_strap",
	"simc_m53_burlap_od",
	"simc_m53_burlap_od_net",
	"simc_m53_burlap_od_net_scrim",
	
	"usm_bdu_boonie_erdl",
	"usm_bdu_boonie_erdl",

	"usm_bdu_cap_erdl",
	"rhs_beanie_green",
	
	"H_Shemag_olive",
	"H_ShemagOpen_tan",
	"H_ShemagOpen_khk",
	
	"H_Hat_Safari_olive_F",
	"H_HeadBandage_clean_F",
	"H_HeadBandage_stained_F",
	"H_HeadBandage_bloody_F"
];

private _itemHeadgearCrew = 
[
	"rhsusf_cvc_green_alt_helmet",
	"rhsusf_cvc_green_ess"
];

private _itemHeadgearPilot = 
[
	"rhs_zsh7a_mike_green",
	"rhs_zsh7a_mike_green_alt"
];

//Backpack 
private _itemBackpack = 
[
	"pca_rd54_od",
	"simc_m1941_pack_od7",
	"B_Messenger_Coyote_F",
	"B_Messenger_Olive_F",
	"B_CivilianBackpack_01_Everyday_Black_F",
	"bear_sidor_strichtarn",
	"rhs_sidor",
	"bear_sidor_tan",
	"pca_backpack_invisible"
	
];
private _itemBigerBackpack = 
[
	"pca_eagle_a3_od"
];
private _itemBackpackCrew = 
[
	"pca_rd54_od",
	"simc_m1941_pack_od7",
	"pca_backpack_invisible"
];

private _itemBackpackPilot = 
[
	"pca_rd54_od",
	"simc_m1941_pack_od7",
	"pca_backpack_invisible"
];

//Cosmetic 
private _itemCosmetic = 
[
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
	
	"simc_nomex_alt",
	"simc_nomex_fold_alt",
	"simc_nomex_long_alt",
	"simc_goggles_swdg",
	"simc_goggles_swdg_low",
	
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
	"rhs_6m2_nvg",
	"rhs_6m2_1_nvg",
	
	"simc_addon_nomex_alt",
	"simc_addon_nomex_fold_alt",
	"simc_addon_nomex_long_alt",
	
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv"
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
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F",
	"rhs_6b3_od_r148"
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
	"hlc_optic_vomz",
	"hlc_optic_vomz_3d",
	"cup_acc_zenit_2ds",
	"cup_acc_flashlight_mp5",
	"rhsgref_mg42_acc_aasight"
];

private _itemWeapRifle = 
[
	"CUP_arifle_AK74_Early",
	"CUP_arifle_AKS74_Early"
];

private _itemWeapBattleRifle = 
[
	"CUP_arifle_G3A3_ris",
	"CUP_arifle_G3A3_modern_ris",
	"rhs_6b3_od_officer"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AK74_GL_Early",
	"CUP_arifle_AKS74_GL_Early",
	"rhs_6b3_od_vog_1",
	"rhs_6b3_od_vog_2"
];

private _itemWeapAR = 
[
	"hlc_rifle_rpk74",
	"rhs_6b3_od_rpk"
];

private _itemWeapLAT = 
[
	"rhs_weap_rpg7",
	"rhs_rpg_6b3"
];

private _itemWeapPistol = 
[
	"CUP_hgun_PMM",
	"CUP_hgun_TT"
];

//Special
private _itemWeapMG = 
[
	"rhs_weap_mg3"
];

private _itemWeapMAT = 
[
	"fwa_weap_m67"
];

private _itemWeapSMG = 
[
	"CUP_smg_MP5A5"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_30Rnd_545x39_7N6M_AK",
	"CUP_20Rnd_762x51_G3",
	
	//Pistol Ammo
	"rhs_mag_762x25_8",
	"rhs_mag_9x18_12_57N181S",
	
	//SMG Ammo
	"CUP_30Rnd_9x19_MP5",
	
	
	
	//Memes
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
];

private _itemAmmoTracer = 
[
	"rhs_30Rnd_545x39_AK_green",
	"CUP_30Rnd_Green_Tracer_9x19_MP5",
	"CUP_20Rnd_TE1_Green_Tracer_762x51_G3"
	
];

private _itemAmmoAR = 
[
	"pca_mag_45Rnd_545X39_RPK_Bakelite_Mixed_7N6M",
	"rhs_45Rnd_545X39_7N6M_AK",
	"rhs_45Rnd_545X39_AK_Green"
];

private _itemAmmoSignal = 
[
	"rhs_GRD40_Red",
	"rhs_GRD40_Green",
	
	"rhs_mag_nspd",
	"rhs_mag_nspn_green",
	"rhs_mag_nspn_red",
	"rhs_mag_nspn_yellow",
	
	"rhs_weap_rsp30_green",
	"rhs_weap_rsp30_red",
	
	"rhs_VG40OP_green",
	"rhs_VG40OP_red"
];

private _itemExplosive = 
[
	"rhs_mag_rdg2_white",
	"rhs_mag_rdg2_black",
	"rhs_mag_rgd5",
	"rhs_VOG25",
	"rhs_VOG25P",
	"rhs_GDM40",
	"rhs_VG40TB",
	"rhs_GRD40_White",
	"rhs_VG40OP_white",
	"rhs_grenade_mki_mag",
	
	"rhs_weap_rsp30_white",
	"CUP_IlumFlareWhite_GP25_M",
	"ACE_Flashlight_Maglite_ML300L",
	
	"rhs_rpg7_PG7V_mag",
	"rhs_rpg7_OG7V_mag"
];

//Special
private _itemAmmoMG = 
[
	"hlc_50Rnd_762x51_M_MG3",
	"hlc_50Rnd_762x51_T_MG3",
	"hlc_100Rnd_762x51_M_MG3",
	"hlc_100Rnd_762x51_T_MG3",
	"hlc_250Rnd_762x51_M_MG3",
	"hlc_250Rnd_762x51_T_MG3"
	
];

private _itemAmmoMAT = 
[
	"fwa_1rnd_m67_HEAT",
	"fwa_1rnd_m67_HE"
];

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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapBattleRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc  + _itemWeapRifleUGL + _itemWeapBattleRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc  + _itemWeapRifleUGL + _itemWeapBattleRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapBattleRifle + _itemWeapPistol + _itemWeapSMG + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearPilot + _itemBackpackPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemBigerBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemWeapPistol + _itemAmmo + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapSMG + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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