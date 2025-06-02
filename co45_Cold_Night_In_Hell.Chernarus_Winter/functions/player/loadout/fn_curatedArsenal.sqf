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
	"milgp_h_cap_backwards_03_goggles_gry"
	
	
];

private _itemHeadgearCrew = 
[];

private _itemHeadgearPilot = 
[];

//Backpack 
private _itemBackpack = 
[
	"pca_eagle_a3_wht"
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
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Balaclava_TI_alt_F",
	"G_Balaclava_TI_G_alt_F",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
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
	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_ac11704_black",
	"optic_aco_grn",
	"optic_aco",
	"$NONE_rksl_optic_eot552$",
	"cup_optic_eotech553_black",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_compm4",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"ptv_acc_eot552",
	"rhsusf_acc_rx01_nofilter",
	"rhsusf_acc_rx01",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",
	"rhsusf_acc_eotech_xps3",
	"ptv_acc_compm4s",
	
	//Tactical Device
	"pca_flashlight_sf"
];

private _itemWeapRifle = 
[
	"CUP_arifle_AK12_AFG_black",
	"CUP_arifle_AK12_VG_black",
	"CUP_arifle_AK12_AFG_snowtiger",
	"CUP_arifle_AK12_AFG_winter",
	"CUP_arifle_AK12_VG_snowtiger",
	"CUP_arifle_AK12_VG_winter"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AK12_GP34_black",
	"CUP_arifle_AK12_GP34_snowtiger",
	"CUP_arifle_AK12_GP34_winter",
	"pca_mbav_grenadier_wht"
];

private _itemWeapAR = 
[
	"CUP_lmg_Pecheneg_top_rail_B50_vfg",
	"pca_mbav_mg_wht"
];

private _itemWeapLAT = 
[
	"rhs_weap_rpg7",
	"rhs_acc_pgo7v3",
	"rhs_rpg7_PG7VM_mag"
];

private _itemWeapPistol = 
[
	"CUP_18Rnd_9x19_Phantom",
	"CUP_hgun_Phantom"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"pca_mag_30Rnd_545x39_AK12_Blk_7N22",
	"pca_mag_30Rnd_545x39_AK12_Gry_7N22"
];

private _itemAmmoTracer = 
[
	"pca_mag_30Rnd_545x39_AK12_Blk_7T3M",
	"pca_mag_30Rnd_545x39_AK12_Gry_7T3M"
];

private _itemAmmoAR = 
[
	"rhs_100Rnd_762x54mmR_green",
	"rhs_100Rnd_762x54mmR"
];

private _itemAmmoSignal = 
[
	"CUP_IlumFlareRed_GP25_M",
	"CUP_1Rnd_SMOKE_GP25_M",
	"CUP_1Rnd_SmokeRed_GP25_M",
	"CUP_1Rnd_SmokeGreen_GP25_M",
	"1Rnd_SmokeYellow_Grenade_shell"
];

private _itemExplosive = 
[
	"SmokeShell",
	"CUP_1Rnd_HE_GP25_M",
	"rhs_mag_m67"
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