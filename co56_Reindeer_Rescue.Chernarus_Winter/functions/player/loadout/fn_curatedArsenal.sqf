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
	"usp_pcu_g3c_kp_mx_mcalp",
	"usp_pcu_g3c_kp_or_mcalp",
	"usp_pcu_g3c_mx_mcalp",
	"milgp_u_pcu_g3_field_pants_mcalpine",
	"CUP_I_B_PMC_Unit_29",
	"CUP_I_B_PMC_Unit_30",
	"CUP_I_B_PMC_Unit_34",
	"CUP_I_B_PMC_Unit_33"

];

private _itemUniformCrew = 
[];

private _itemUniformPilot = 
[];

//Vest
private _itemVest = 
[
	"pca_mbav_rifleman_wht",
	"pca_mbav_light_wht"
];

private _itemVestCrew = 
[];

private _itemVestPilot = 
[];

//Headgear 
private _itemHeadgear = 
[
	"usp_opscore_mt_cover_mcalp",
	"usp_opscore_mt_cover_ct_mcalp",
	"usp_opscore_mt_cover_ct_cb1_mcalp",
	"usp_opscore_mt_cover_ct_cb2_mcalp",
	"usp_opscore_mt_cover_ct_cb3_mcalp",
	"usp_opscore_mt_cover_ct_cb4_mcalp",
	"usp_opscore_mt_cover_ct_cm_mcalp",
	"usp_opscore_mt_cover_ct_cw_mcalp",
	"usp_opscore_mt_cover_ctg_mcalp",
	"usp_opscore_mt_cover_ctg_cb1_mcalp",
	"usp_opscore_mt_cover_ctg_cb2_mcalp",
	"usp_opscore_mt_cover_ctg_cb3_mcalp",
	"usp_opscore_mt_cover_ctg_cb4_mcalp",
	"usp_opscore_mt_cover_ctg_cm_mcalp",
	"usp_opscore_mt_cover_ctg_cw_mcalp",
	"usp_opscore_mt_cover_ctg_sf_mcalp",
	"usp_opscore_mt_cover_ctg_tl_mcalp",
	"usp_opscore_mt_cover_ct_sf_mcalp",
	"usp_opscore_mt_cover_ct_tl_mcalp",
	"CUP_H_PMC_Beanie_Winter",
	"CUP_H_PMC_Beanie_Headphones_Winter",
	"CUP_H_PMC_Beanie_Black",
	"CUP_H_PMC_Beanie_Headphones_Black",
	"H_Cap_blk",
	"H_MilCap_gry",
	"H_Booniehat_blk",
	"H_Cap_headphones_blk",
	"H_Cap_headphones_gry",
	"milgp_h_cap_01_gry",
	"milgp_h_cap_01_goggles_gry",
	"milgp_h_cap_02_gry",
	"milgp_h_cap_02_goggles_gry",
	"milgp_h_cap_03_gry",
	"milgp_h_cap_03_goggles_gry",
	"milgp_h_cap_backwards_01_gry",
	"milgp_h_cap_backwards_01_goggles_gry",
	"milgp_h_cap_backwards_02_gry",
	"milgp_h_cap_backwards_02_goggles_gry",
	"milgp_h_cap_backwards_03_goggles_gry",
	"TC_Helmet_Hat_Santa1",
	"TC_Helmet_Hat_Santa1_Stealth1",
	"TC_Helmet_Hat_Santa1_Pride1",
	"TC_Helmet_Hat_Santa1_FestivePattern1",
	"TC_Helmet_Hat_Santa1_BluePattern1",
	"TC_Helmet_Hat_Santa1_Bi1",
	"TC_Helmet_Hat_Santa1_Trans1"
	
	
];

private _itemHeadgearCrew = 
[];

private _itemHeadgearPilot = 
[
	"rhsusf_hgu56p_black",
	"rhsusf_hgu56p_mask_black",
	"rhsusf_hgu56p_visor_black",
	"rhsusf_hgu56p_visor_mask_black",
	"rhsusf_hgu56p_visor_mask_Empire_black"
];

//Backpack 
private _itemBackpack = 
[
	"pca_eagle_a3_wht",
	"pca_backpack_invisible_large"
];

private _itemBackpackCrew = 
[];

private _itemBackpackPilot = 
[];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_BlueStrips",
	"G_Balaclava_lowprofile",
	"pca_balaclava_mcalp",
	"pca_balaclava_mcb",
	"pca_balaclava_gogg_mcalp",
	"pca_balaclava_gogg_mcb",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_kawaii",
	"pca_bandana_mcalp",
	"pca_bandana_mcb",
	"G_Combat_Goggles_blk_F",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_KHK_Facewrap_White",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	
	"CUP_FR_NeckScarf5",
	"$NONE_aegis_shemag_shades_red$",
	"G_Shemag_red",
	"G_Shemag_white",
	"$NONE_aegis_shemag_shades_white$",
	"G_Shemag_white",
	"rhsusf_shemagh_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh2_gogg_white",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Balaclava_TI_alt_F",
	"G_Balaclava_TI_G_alt_F",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"NVGogglesB_gry_F",
	"NVGogglesB_blk_F"
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
	"ItemGPS",
	"ToolKit"
];

private _itemBino = 
[
	"Rangefinder"
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
	"ACE_tourniquet",
	"pca_mbav_medic_wht"
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
	"optic_mrco",
	"optic_hamr",
	"ace_optic_mrco_2d",
	"ace_optic_hamr_2d",
	"rhsusf_acc_acog",
	"rhsusf_acc_acog_rmr",
	"$NONE_sma_acc_elcan_specter_blk$",
	"cup_optic_elcan_specterdr_black",
	"cup_optic_elcan_specterdr_rmr_black",
	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_mrds",
	"cup_optic_acog2",
	"cup_optic_acog",
	"optic_arco_blk_f",
	
	//Tactical Device
	"rhsusf_acc_anpeq15side_bk",
	
	//Suppressor
	"ptv_acc_rotexv",
	
	//Grips
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_grip2",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip1"
];

private _itemWeapRifle = 
[
	"$NONE_hlc_rifle_acr_sbr_blk$",
	"$NONE_hlc_rifle_acr_sbr_pink$",
	"CUP_arifle_ACRC_blk_68",
	"$NONE_hlc_rifle_acr_car_pink$",
	"$NONE_hlc_rifle_acr_iar_blk$",
	"$NONE_hlc_rifle_acr_iar_pink$",
	"$NONE_hlc_rifle_acr_dmr_blk$",
	"$NONE_hlc_rifle_acr_dmr_pink$"
];

private _itemWeapRifleUGL = 
[
	"$NONE_hlc_rifle_acr_sbr_m203_blk$",
	"$NONE_hlc_rifle_acr_sbr_m203_pink$",
	"CUP_arifle_ACRC_EGLM_blk_68",
	"$NONE_hlc_rifle_acr_car_m203_pink$",
	"$NONE_hlc_rifle_acr_iar_m203_blk$",
	"$NONE_hlc_rifle_acr_iar_m203_pink$",
	"$NONE_hlc_rifle_acr_dmr_m203_blk$",
	"$NONE_hlc_rifle_acr_dmr_m203_pink$"
];

private _itemWeapAR = 
[
	"sps_weap_kac_lamg_hg_blk",
	"sps_weap_kac_lamg_blk",
	"pca_mbav_mg_wht"
];

private _itemWeapLAT = 
[
	"pca_weap_m136cs"
];

private _itemWeapPistol = 
[
	"CUP_18Rnd_9x19_Phantom",
	"CUP_hgun_Phantom"
];

private _itemWeapSniper = 
[
	"optic_tws",
	"CUP_srifle_G22_blk",
	"cup_optic_leupoldmk4_25x50_lrt_pip",
	"cup_bipod_vltor_modpod_black",
	"CUP_5Rnd_762x67_G22",
	"cup_muzzle_snds_awm",
	"CUP_srifle_M107_Base",
	"cup_muzzle_mfsup_suppressor_m107_black",
	"ACE_10Rnd_127x99_API_Mag"
];

private _itemWeapSpotter = 
[
	"optic_tws",
	"CUP_srifle_M14_DMR",
	"cup_optic_sb_3_12x50_pmii",
	"cup_bipod_vltor_modpod_black",
	"ACE_20Rnd_762x51_M993_AP_Mag",
	"muzzle_snds_b"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"pca_mag_30Rnd_556x45_M995_PMAG_Blk"
];

private _itemAmmoTracer = 
[
	"pca_mag_30Rnd_556x45_M856A1_PMAG_Blk"
];

private _itemAmmoAR = 
[
	"sps_200Rnd_556x45_M995_Mixed_KAC_Box",
	"sps_200Rnd_556x45_M995_KAC_Box",
	"sps_200Rnd_556x45_M856A1_Tracer_Red_KAC_Box"
];

private _itemAmmoSignal = 
[
	"ACE_40mm_Flare_ir",
	"rhs_mag_m714_White",
	"rhs_mag_m713_Red",
	"rhs_mag_m715_Green",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow"
];

private _itemExplosive = 
[
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifleUGL + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemWeapPistol + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoSignal + _itemHeadgearPilot + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Spotter
	case (_unitRole == "sp") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemWeapPistol + _itemBackpack + _itemWeapSpotter + _itemCosmetic + _itemBino + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmoSignal + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Sniper
	case (_unitRole == "sn") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemWeapPistol + _itemBackpack + _itemWeapSniper + _itemCosmetic + _itemBino + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
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