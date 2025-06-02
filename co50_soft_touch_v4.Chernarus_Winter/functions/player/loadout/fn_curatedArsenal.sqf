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
private _itemGear = 
[
];

private _itemGearDM =
[
	//Tools
	"ACE_SpottingScope",
	"ACE_Tripod",
	"ACE_Kestrel4500",
	"ACE_RangeCard",
	//Vest
	"milgp_v_mmac_marksman_belt_wht",
	//Scopes
	"rhs_acc_pso1m2",
	"rhs_acc_pso1m21",
	"CUP_optic_PSO_1_AK"
];

//Uniform
private _itemUniform = 
[
	"pca_uniform_gorka_cdf_ttsko_winter",
	"pca_uniform_gorka_cdf_ttsko_winter_gloves"
];

private _itemUniformCrew = 
[

];

private _itemUniformPilot = 
[

];

//Vest
private _itemVest = 
[
	//Belted
	"milgp_v_mmac_assaulter_belt_wht",
	"milgp_v_mmac_grenadier_belt_wht",
	"milgp_v_mmac_hgunner_belt_wht",
	"milgp_v_mmac_teamleader_belt_wht",
	"milgp_v_mmac_medic_belt_wht"
];

private _itemVestCrew = 
[
	"usp_crye_cpc_light_mc"
];

private _itemVestPilot = 
[
	"usp_crye_cpc_comms_mc",
	"usp_crye_cpc_fast_mc",
	"usp_crye_cpc_light_mc"
];

//Headgear 
private _itemHeadgear = 
[
	"pca_opscore_cover_mcalp",
	"pca_opscore_cover_ct_mcalp",
	"pca_opscore_cover_ct_cb_mcalp",
	"pca_opscore_cover_ct_cm_mcalp",
	"usp_opscore_mt_cover_ctg_mcalp",
	//Not helmets
	"H_Cap_headphones_gry",
	"milgp_h_cap_01_goggles_mc",
	"milgp_h_cap_02_mc",
	"milgp_h_cap_02_goggles_gry"
];

private _itemHeadgearCrew = 
[
	"H_Watchcap_khk",
	"H_Watchcap_camo",
	"rhs_tsh4",
	"rhs_tsh4_ess"
];

private _itemHeadgearPilot = 
[
];

//Backpack 
private _itemBackpack = 
[
	"pca_assaultpack_mcalp",
	"pca_eagle_a3_wht",
	"pca_kitbag_mcalp"
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
		//Last updated 2023-06-28, adds optional Tropical and Alpine cosmetics (delete as needed)
	//Focuses on solid colours, 2000-2010s gear. Largely excludes items from DHI/SIMC.
	
	//OPTIONAL - Alpine. Use instead of regular bala/face covering/scarves
	"CUP_G_RUS_Balaclava_Ratnik_winter",
	"CUP_G_RUS_Balaclava_Ratnik_winter_v2",
	"pca_balaclava_mcalp",
	"pca_balaclava_gogg_mcalp",
	"pca_bandana_mcalp",
	"CUP_G_ESS_KHK_Facewrap_White",
	"CUP_G_ESS_BLK_Scarf_Face_White_GPS",
	"CUP_G_Scarf_Face_White",
	"rhsusf_shemagh2_gogg_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh_white",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	
	//OPTIONAL - Alpine, NVG slot
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool_gry",
	"pca_nvg_gloves_wool_grn",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"$NONE_nvg_scrim_snow$",
	"$NONE_nvg_scrim_snow_pine$",
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",
	
	//  =====  Non-covering scarfs, shemaghs  =====  
	"G_Shemag_white",
	"G_Shemag_white",
	"G_Shemag_white",
	"G_Shemag_white",
	"$REMOVE_usm_scarf2$",
	
	//  =====  CORE - Goggles and glasses  =====  
	"G_Combat",
	"G_Combat_Goggles_blk_F",
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
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",
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
	"pca_nvg_gloves_wool"
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
	"ItemGPS"
];

private _itemBino = 
[
	"Binocular",
	"rhssaf_zrak_rd7j",
	"Rangefinder"
];

private _itemRadio = 
[
	"ACRE_PRC148"
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
	//Optic
	"cup_optic_aimpoint_5000",
	"rhsusf_acc_compm4",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_552_wd",
	"cup_optic_eotech553_od",
	"cup_optic_eotech553_black",
	"cup_optic_compm2_low",
	"cup_optic_compm2_low_od",
	"ptv_acc_t1",
	"cup_optic_mars",
	
	//Russian optics
	"rhs_acc_1p78",
	"cup_optic_pechenegscope",
	"rhs_acc_1p63",
	"rhs_acc_ekp8_02",
	"cup_optic_okp_7",
	"rhs_acc_pkas",
	
	//Grip
	"rhsusf_acc_grip2",
	"rhs_acc_grip_ffg2",
	"rhsusf_acc_kac_grip",
	
	//Tactical Device
	"cup_acc_flashlight",
	"pca_flashlight_sf",
	"acc_flashlight",
	
	//Silencers
	"cup_muzzle_pbs4",
	
	//Pistols
	"cup_acc_cz_m3x"
];

private _itemWeapRifle = 
[
	"rhs_weap_ak74m_zenitco01",
	"bear_weap_ak74mr_camo",
	"bear_weap_ak74m_zenitco01_camo",
	"rhs_weap_ak74mr"
];

private _itemWeapCarbine =
[
	"CUP_arifle_AKS74U_top_rail",
	"CUP_arifle_AKS74U_railed",
	"CUP_arifle_AKS74U"
];

private _itemWeapRifleUGL = 
[
	"bear_weap_ak74mr_gp25_camo",
	"rhs_weap_ak74mr_gp25"
];

private _itemWeapAR = 
[
	"CUP_arifle_RPK74M",
	"CUP_arifle_RPK74_45",
	"rhs_weap_rpk74m_npz",
	"CUP_arifle_RPK74M_top_rail"
];

private _itemWeapLAT = 
[
	"CUP_launch_RPG7V",
	"cup_optic_pgo7v3"
];

private _itemWeapPistol = 
[
	"CUP_hgun_M17_Black",
	"CUP_hgun_M17_Green",
	"CUP_hgun_CZ75",
	//Pistol ammo
	"CUP_17Rnd_9x19_M17_Black",
	"CUP_16Rnd_9x19_cz75"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_Pecheneg_top_rail",
	"CUP_lmg_Pecheneg_top_rail_B50_vfg",
	
	//Scopes
	"cup_optic_g33_hws_blk",
	"cup_optic_g33_hws_od",
	"cup_optic_aimm_microt1_blk",
	"cup_optic_aimm_compm4_blk",
	"rhsusf_acc_g33_xps3",
	"rhsusf_acc_acog_usmc",
	"rhsusf_acc_acog2_usmc",

	//Silencer
	"cup_muzzle_snds_kzrzp_pk"
];

private _itemWeapMAT = 
[
	"rhs_weap_fgm148"
];

private _itemWeapDM =
[
	"rhs_weap_svdp",
	"rhs_weap_svdp_wd",
	//Optics
	"rhs_acc_pso1m2",
	"rhs_acc_pso1m21",
	//Silencers
	"rhs_acc_tgpv2",
	"CUP_muzzle_snds_KZRZP_SVD",
	"CUP_muzzle_snds_KZRZP_SVD_woodland"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_30Rnd_545x39_7N22_AK",
	"rhs_30Rnd_545x39_7N22_camo_AK",
	
	//RPG-7V2 ammo
	"CUP_PG7VM_M",
	"CUP_OG7_M",
	
	//Pistol Ammo
	"CUP_17Rnd_9x19_M17_Black"
];

private _itemAmmoTracer = 
[
	"rhs_30Rnd_545x39_AK_plum_green"
];

private _itemAmmoAR = 
[
	"aegis_95Rnd_545x39_mixed_7N22_ak12",
	"aegis_95Rnd_545x39_7N22_ak12",
	"rhs_60Rnd_545X39_7N22_AK",
	"rhs_60Rnd_545X39_AK_Green"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"rhs_GRD40_Red",
	"rhs_GRD40_Green",
	"rhs_VG40OP_green",
	"rhs_VG40OP_red",
	"rhs_VG40OP_white"
];

private _itemExplosive = 
[
	"rhs_GRD40_White",
	"SmokeShell",
	"rhs_VOG25P",
	"rhs_VOG25",
	"rhs_mag_rgn",
	"rhs_mag_rgo"
];

//Special
private _itemAmmoMG = 
[
	"rhs_100Rnd_762x54mmR_7BZ3",
	"rhs_100Rnd_762x54mmR_green"
];

private _itemAmmoMAT = 
[
	"rhs_fgm148_magazine_AT",
	//Carryall
	"B_Carryall_mcamo"
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

private _itemAmmoDM =
[
	"rhs_10Rnd_762x54mmR_7N14"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle  + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapLAT + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapLAT + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapLAT + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Rifle First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgear + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapCarbine + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Designated Marksman
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemGearDM + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapDM + _itemWeapPistol + _itemAmmoDM + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Spotter
	case (_unitRole == "spt") : 
	{
		[arsenal, (_itemGear + _itemGearDM + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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