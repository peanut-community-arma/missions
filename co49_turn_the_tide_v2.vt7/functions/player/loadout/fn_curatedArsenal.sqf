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
	"bw_uniform_jacket_fleck",
"bw_uniform_jacket_rs_fleck"
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
	"CUP_V_B_GER_PVest_Fleck_RFL_LT",
	"CUP_V_B_GER_PVest_Fleck_MG_LT",
	"CUP_V_B_GER_PVest_Fleck_TL_LT",
	"CUP_V_B_GER_PVest_Fleck_Med_LT"
];

private _itemVestCrew = 
[
	"rhsusf_spcs_ocp_crewman"
];

private _itemVestPilot = 
[
	"rhsusf_spcs_ocp_crewman"
];

//Headgear 
private _itemHeadgear = 
[
	"bw_pasgt_fleck",
"bw_pasgt_fleck_ess_bare",
"bw_pasgt_fleck_ess"
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
	"bw_kitbag_fleck",
	"B_Carryall_flecktarn"
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
		"murshun_cigs_cig0",
"immersion_pops_pop0",
"G_Spectacles_Tinted",
"G_Spectacles",
"G_Squares_Tinted",
"G_Squares",
"G_Shemag_tan",
"CUP_FR_NeckScarf3",
"G_Shemag_tan",
"G_Shemag_tan",
"G_Shemag_oli",
"G_Shemag_khk",
"G_Shemag_white",
"G_Shemag_tan",
"CUP_FR_NeckScarf3",
"G_Shemag_tan",
"G_Shemag_tan",
"G_Shemag_oli",
"G_Shemag_khk",
"G_Shemag_white",
"$NONE_aegis_shemag_cbr$",
"CUP_FR_NeckScarf2",
"CUP_FR_NeckScarf",
"CUP_FR_NeckScarf5",
"G_Shemag_white",
"G_Shemag_shades",
"$NONE_aegis_shemag_shades_khk$",
"$NONE_aegis_shemag_shades_oli$",
"$NONE_aegis_shemag_shades_red$",
"$NONE_aegis_shemag_shades_white$",
"CUP_G_Scarf_Face_Grn",
"CUP_G_Scarf_Face_Tan",
"CUP_FR_NeckScarf3",
"CUP_FR_NeckScarf",
"CUP_FR_NeckScarf2",
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
"simc_goggles_swdg",
"simc_goggles_swdg_low",
"G_Aviator",
"G_Bandanna_aviator",
"G_Bandanna_blk",
"G_Bandanna_oli",
"G_Bandanna_shades",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Cigarette",
"G_Shades_Yellowred",
"bear_balaclava1_black",
"bear_bandana_m81",
"CUP_RUS_Balaclava_blk",
"CUP_G_ESS_BLK_Dark",
"CUP_G_ESS_BLK_Ember",
"CUP_G_ESS_BLK",
"CUP_G_ESS_BLK_Facewrap_Black",
"CUP_G_ESS_BLK_Scarf_Face_Blk",
"CUP_G_ESS_BLK_Scarf_Blk",
"CUP_G_ESS_BLK_Scarf_Blk_Beard",
"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
"CUP_PMC_Facewrap_Black",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
"CUP_G_Scarf_Face_Blk",
"CUP_G_TK_RoundGlasses_blk",
"$REMOVE_usm_swdgoggles$",
"$NONE_usm_gigloves$",
"$NONE_usm_giglovesscarf$",
"$NONE_usm_giglovesscarf2$",
"$REMOVE_usm_scarf$",
"$REMOVE_usm_scarf2$",
"milgp_f_face_shield_blk",
"milgp_f_face_shield_goggles_blk",
"milgp_f_face_shield_shades_blk",
"pca_balaclava_blk_1",
"pca_balaclava_blk_2",
"rhs_ess_black",

"pca_balaclava_blk_1",
	"pca_balaclava_blk_2",
	"$NONE_pca_nvg_ess_blk$",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_cb$",
	"$NONE_pca_nvg_face_shield_khk$",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_tan$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_cb$",
	"$NONE_pca_nvg_face_shield_shemagh_khk$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_tan$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_tan",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",

//cigs
	"murshun_cigs_matches",
   // "murshun_cigs_lighter",
    "murshun_cigs_cigpack"
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

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	//Optic
	"$NONE_sma_acc_vortex_blk$",
"$NONE_sma_acc_vortex_lc_blk$",
"$NONE_sma_acc_micro_t2$",
"$NONE_sma_acc_micro_t2_low$",
"$NONE_sma_acc_eotech_xps3_od$",
"$NONE_sma_acc_eotech_xps3_blk$",

"$NONE_sma_acc_eotech_552_kf_od$",
"$NONE_sma_acc_eotech_552_kf_blk$",

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

"rhsusf_acc_rm05_fwd",
"rhsusf_acc_rm05",

"rhsusf_acc_mrds_fwd",
"rhsusf_acc_mrds",
"rhsusf_acc_compm4",
"rhsusf_acc_eotech_552_wd",

"rhsusf_acc_eotech_552",
"rhsusf_acc_eotech",
"rhsgref_acc_rx01_camo",
"rhsgref_acc_rx01_nofilter_camo",

"$NONE_rksl_optic_eot552x$",

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

"cup_optic_zeisszpoint",

"cup_optic_vortexrazor_uh1_od",

"cup_optic_vortexrazor_uh1_black",
"cup_optic_trijiconrx01_od",
"cup_optic_trijiconrx01_kf_od",

"cup_optic_trijiconrx01_kf_black",

"cup_optic_trijiconrx01_black",
"cup_optic_mepro_tri_clear",
"cup_optic_mepro_openx_orange",
"cup_optic_mepro_moa_clear",
"cup_optic_mepro",
"cup_optic_zddot",
"cup_optic_mrad",
"cup_optic_mars",
"cup_optic_mars_od",




"cup_optic_compm2_low_od",
"cup_optic_compm2_low",

"cup_optic_eotech553_od",
"cup_optic_ac11704_od",


"cup_optic_ac11704_black",
"cup_optic_microt1_od",

"cup_optic_microt1",
"cup_optic_compm4",
"cup_optic_aimpoint_5000",
"optic_holosight",
"optic_aco",
"optic_yorris"
];

private _itemWeapRifle = 
[
	"CUP_arifle_G3A3_modern_ris_black"
];

private _itemWeapRifleUGL = 
[
	"rhs_weap_M320"
];

private _itemWeapAR = 
[
	"CUP_lmg_MG3_rail"
];

private _itemWeapLAT = 
[
	"rhs_weap_M136"
];



private _itemWeapPistol = 
[
	"rhsusf_weap_glock17g4"
];

//Special
private _itemWeapMG = 
[
	"rhs_weap_m240B",
	
	"rhsusf_acc_acog_mdo"
	
];

private _itemWeapMAT = 
[
	"launch_MRAWS_black_F",
	"MRAWS_HEAT55_F"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_20Rnd_762x51_G3",
	
	//Pistol Ammo
	"rhsusf_mag_17Rnd_9x19_JHP"
];

private _itemAmmoTracer = 
[
	"hlc_20Rnd_762x51_T_G3"
];

private _itemAmmoAR = 
[
	"CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
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
	"rhs_mag_m714_White",
	"rhs_mag_m713_Red",
	"rhs_mag_m715_Green",
	"rhs_mag_m716_yellow"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"rhs_mag_m714_White",
	"SmokeShell",
//	"rhs_mag_M397_HET",
//	"rhs_mag_M433_HEDP",
//	"rhs_mag_M441_HE",
	"rhs_mag_m67"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive + _itemWeapLAT)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (LAT)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapLAT + _itemWeapMAT +_itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifle
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmoAR + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifle
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemExplosive + _itemWeapLAT)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier 
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapRifleUGL + _itemAmmo + _itemAmmoTracer + _itemExplosive + _itemWeapLAT)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMedBasic + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive + _itemWeapLAT)] call ace_arsenal_fnc_initBox;
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