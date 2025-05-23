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
	"usm_bdu_wdl",
	"usm_bdu_btisrl_wdl",
	"usm_bdu_bti_wdl",
	"usm_bdu_srl_wdl",
	"usm_bdum65_wdl",
	"usm_bdu_btisrl_odg",
	"usm_bdu_bti_odg",
	"usm_bdum65_odg",
	
	//Vest
	"simc_vest_pasgt_lbv_od3",
	"simc_vest_pasgt_lbv_alt_od3",
	"simc_vest_pasgt_lbv_lc2_od3",
	"simc_vest_pasgt_lbv_lc2_alt_od3",
	"simc_vest_pasgt_lc2_od3",
	"simc_vest_pasgt_lc2_alt_od3",
	
	"simc_vest_pasgt_lbv_m81",
	"simc_vest_pasgt_lbv_alt_m81",
	"simc_vest_pasgt_lbv_lc2_m81",
	"simc_vest_pasgt_lbv_lc2_alt_m81",
	
	//Headgear
	"usm_helmet_pasgt_ceswd_wdl",
	"usm_helmet_pasgt_rm_wdl",
	"usm_helmet_pasgt_ce_wdl",
	"usm_helmet_pasgt_ceswd_odg",
	"usm_helmet_pasgt_rm_odg",
	"usm_helmet_pasgt_ce_odg",
	
	//Backpack
	"pca_eagle_a3_m81",
	"pca_eagle_a3_od",
	"pca_eagle_a3_rgr",
	"pca_kitbag_m81",
	"pca_kitbag_od",
	"B_Kitbag_rgr",
	
	"pca_backpack_invisible",
	"pca_backpack_invisible_large"
	
];

private _itemGearGren = 
[
	//Vest
	"simc_vest_pasgt_lc1_gren_m81",
	"simc_vest_pasgt_lc1_gren_od3"
];

private _itemGearMedic = 
[
	//Vest 
	"simc_vest_pasgt_lbv_holster_m81",
	"simc_vest_pasgt_lbv_holster_alt_m81",
	"simc_vest_pasgt_lbv_holster_od3",
	"simc_vest_pasgt_lbv_holster_alt_od3",
	
	//Headgear
	"CUP_H_Ger_Beret_INF_Grn",
	"amf_beret_infantry",
	"rhssaf_beret_green"
];

private _itemGearMG = 
[
	//Vest
	"simc_vest_pasgt_lc2_saw_m81",
	"simc_vest_pasgt_lc2_saw_od3"
];

private _itemGearLeader = 
[
	//Vest
	"simc_vest_pasgt_lc1_gren_m81",
	"simc_vest_pasgt_lc1_gren_od3",
	//Headgear
	"CUP_H_Ger_Beret_KSK_Red",
	"aegis_beret_sf_grn",
	"CUP_H_BAF_PARA_BERET",
	"aegis_beret_sf_brn",
	"amf_beret_commando_marine",
	"H_Beret_02"
];

private _itemGearCrew = 
[
	//Uniform 
	"usm_bdu_odg",
	"usm_bdu_btisrl_odg",
	"usm_bdu_bti_odg",
	"usm_bdu_srh_odg",
	"usm_bdu_srl_odg",
	
	//Vest 
	"simc_vest_pasgt_m81",
	"simc_vest_pasgt_od3",
	
	//Headgear
	"CUP_H_CZ_Helmet05"
];

private _itemGearPilot = 
[
	//Uniform 
	"usm_bdu_odg",
	"usm_bdu_btisrl_odg",
	"usm_bdu_bti_odg",
	"usm_bdu_srh_odg",
	"usm_bdu_srl_odg",
	
	//Vest 
	"simc_vest_pasgt_m81",
	"simc_vest_pasgt_od3",
	
	//Headgear
	"rhsusf_cvc",
	"rhsusf_cvc_alt_helmet",
	"rhsusf_cvc_ess"
	
];

private _itemGearDM =
[
	//Designators
	"B_Static_Designator_01_weapon_F",
	"B_W_Static_Designator_01_weapon_F",
	
	//UAV terminal
	"B_UavTerminal"
];

private _itemCosmetic = 
[
	//Neck
	"aegis_shemagh_loop_bge",
	"aegis_shemagh_loop_coy",
	"aegis_shemagh_loop_grn",
	"aegis_shemagh_mesh_bge",
	"aegis_shemagh_mesh_coy",
	"aegis_shemagh_mesh_grn",
	"aegis_shemag_cbr",
	"aegis_shemag_oli",
	"aegis_shemag_red",
	"aegis_shemag_shades_cbr",
	"aegis_shemag_shades_oli",
	"aegis_shemag_shades_red",
	//Lower Face
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"bear_bandana_atacs_fg",
	"G_Bandanna_beast",
	"aegis_bandanna_candyskull",
	"aegis_bandanna_kawaii",
	"aegis_bandanna_skull",
	"aegis_bandanna_syndikat",
	"aegis_bandanna_thug",
	"aegis_bandanna_inferno",
	"aegis_bandanna_iceprism",
	"bear_bandana_m81",
	"aegis_bandanna_estdc",
	"G_Bandanna_tan",
	"G_Bandanna_aviator",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	//Goggles and Shades
	"rhsusf_oakley_goggles_ylw",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_blk",
	"CUP_G_ESS_BLK_Ember",
	"G_Aviator",
	"G_Shades_Black",
	"G_Spectacles",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_googles_black",
	//Balaclavas
	"pca_balaclava_blk_1",
	"pca_balaclava_blk_2",
	"G_Balaclava_blk",
	"aegis_bala_skull",
	"aegis_bala_tropentarn",
	"aegis_bala_light_blk",
	"aegis_bala_light_wdl",
	//Other
	"immersion_pops_pop0",
	"simc_claysack_flak",
	"simc_bandoleer_left_flak",
	"simc_bandoleer_low_flak",
	"simc_bandoleer_gren",
	"usm_kneepads_blk",
	"usm_kneepads_safariland",
	"sfp_peltor_comtac3",
	//Wrist
	"usm_gigloves",
	"usm_giglovesscarf",
	"usm_giglovesscarf2",
	"simc_nomex_blk",
	"simc_nomex_fold_blk",
	"CUP_G_PMC_RadioHeadset",
	"CUP_G_WristWatch",
	
	//Head Mounted Displays
	"CUP_NVG_PVS7",
	"CUP_NVG_PVS7_Hide",
	"CUP_NVG_HMNVS",
	"CUP_NVG_HMNVS_Hide"
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
	//Optic
	//"rhsusf_acc_acog",
	//"rhsusf_acc_acog_usmc",

	
	//Grip
	
	
	//Tactical Device
	"rhsusf_acc_wmx_bk",
	"cup_acc_flashlight",
	"acc_flashlight"
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
	//"CUP_arifle_L85A2",
	"CUP_arifle_M16A2",
	"CUP_arifle_M16A1",
	"CUP_arifle_Colt727"
];

private _itemWeapRifleUGL = 
[
	//"CUP_arifle_L85A2_GL",
	"CUP_arifle_M16A2_GL",
	"CUP_arifle_Colt727_M203",
	"CUP_arifle_M16A1GL"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S_para",
	"rhs_weap_m249_pip_S"
];

private _itemWeapMG = 
[
	"CUP_lmg_MG3",
	"rhs_weap_m240B"
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
	"rhs_weap_maaws"
];

private _itemWeapPistol = 
[
	"rhsusf_weap_m1911a1",
	"bnae_weap_colt357",
	"rhsusf_weap_m9"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_30Rnd_556x45_M855_Stanag",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Ranger",
	"rhs_mag_30Rnd_556x45_M855_PMAG",
	
	"rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red",
	
	//Pistol Ammo
	"bnae_6Rnd_357M",
	"rhsusf_mag_7x45acp_MHP",
	"rhsusf_mag_15Rnd_9x19_JHP",
	"rhsusf_mag_15Rnd_9x19_FMJ",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67",
	
	//IR Items
	"ACE_IR_Strobe_Item",
	"ACE_Chemlight_IR"
];

private _itemAmmoAR = 
[
	"rhsusf_100Rnd_556x45_M855_soft_pouch_ucp",
	"rhsusf_100Rnd_556x45_M855_soft_pouch",
	"rhsusf_100Rnd_556x45_M855_soft_pouch_coyote",
	
	"rhsusf_100Rnd_556x45_M855_mixed_soft_pouch",
	"rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_ucp",
	
	"rhsusf_100Rnd_556x45_M856_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_M856_soft_pouch",
	"rhsusf_100Rnd_556x45_M856_soft_pouch_ucp",
	
	"rhsusf_200rnd_556x45_M855_box",
	"rhsusf_200rnd_556x45_M855_mixed_box",
	"rhsusf_200rnd_556x45_M856_box"
];

private _itemAmmoMG = 
[
	"rhsusf_100Rnd_762x51",
	"rhsusf_100Rnd_762x51_m62_tracer"
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
	"CUP_1Rnd_StarFlare_Green_M203",
	"CUP_1Rnd_StarFlare_Red_M203",
	"CUP_1Rnd_StarFlare_White_M203"
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
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo + _itemGearMedic)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemGearMedic)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemGearDM)] call ace_arsenal_fnc_initBox;
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