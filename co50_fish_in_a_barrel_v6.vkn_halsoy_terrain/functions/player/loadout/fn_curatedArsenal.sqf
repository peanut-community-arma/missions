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
	"$NONE_usm_bdu_wdl$",
	"$NONE_usm_bdu_btisrl_wdl$",
	"$NONE_usm_bdu_bti_wdl$",
	"$NONE_usm_bdu_srl_wdl$",
	"$NONE_usm_bdum65_wdl$",
	"$NONE_usm_bdu_btisrl_odg$",
	"$NONE_usm_bdu_bti_odg$",
	"U_simc_tcu_veldjas",
	
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
	"$NONE_usm_helmet_pasgt_ceswd_wdl$",
	"CUP_H_PASGTv2_NVG_WDL",
	"CUP_H_PASGTv2_WDL",
	"$NONE_usm_helmet_pasgt_ceswd_odg$",
	"CUP_H_PASGTv2_NVG_OD",
	"CUP_H_PASGTv2_OD",
	
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
	"H_Beret_grn_SF",
	"CUP_H_BAF_PARA_BERET",
	"H_Beret_brn_SF",
	"amf_beret_commando_marine",
	"H_Beret_02"
];

private _itemGearCrew = 
[
	//Uniform 
	"CUP_U_B_BDUv2_OD",
	"$NONE_usm_bdu_btisrl_odg$",
	"$NONE_usm_bdu_bti_odg$",
	"CUP_U_B_BDUv2_roll2_OD",
	"CUP_U_B_BDUv2_roll_OD_US",
	
	//Vest 
	"simc_vest_pasgt_m81",
	"simc_vest_pasgt_od3",
	
	//Headgear
	"CUP_H_CZ_Helmet05"
];

private _itemGearPilot = 
[
	//Uniform 
	"CUP_U_B_BDUv2_OD",
	"$NONE_usm_bdu_btisrl_odg$",
	"$NONE_usm_bdu_bti_odg$",
	"CUP_U_B_BDUv2_roll2_OD",
	"CUP_U_B_BDUv2_roll_OD_US",
	
	//Vest 
	"simc_vest_pasgt_m81",
	"simc_vest_pasgt_od3",
	
	//Headgear
	"rhsusf_cvc_helmet",
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
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_oli",
	"G_Shemag_tan",
	"G_Shemag_tan",
	"G_Shemag_oli",
	"$NONE_aegis_shemag_cbr$",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"G_Shemag_shades",
	"$NONE_aegis_shemag_shades_oli$",
	"$NONE_aegis_shemag_shades_red$",
	//Lower Face
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"bear_bandana_atacs_fg",
	"G_Bandanna_beast",
	"G_Bandanna_CandySkull",
	"G_Bandanna_kawaii",
	"G_Bandanna_Skull2",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Syndikat2",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_BlueFlame1",
	"bear_bandana_m81",
	"$NONE_aegis_bandanna_estdc$",
	"G_Bandanna_tan",
	"G_Bandanna_aviator",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	//Goggles and Shades
	"CUP_G_Oakleys_Embr",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
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
	"G_Balaclava_Skull1",
	"G_Balaclava_Tropentarn",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_wdl_F",
	//Other
	"immersion_pops_pop0",
	"simc_claysack_flak",
	"simc_bandoleer_left_flak",
	"simc_bandoleer_low_flak",
	"simc_bandoleer_gren",
	"$NONE_usm_kneepads_blk$",
	"$NONE_usm_kneepads_safariland$",
	"sfp_peltor_comtac3",
	//Wrist
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
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
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag"
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
	"CUP_lmg_M240_B"
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
	"CUP_launch_MAAWS"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Colt1911",
	"bnae_weap_colt357",
	"rhsusf_weap_m9"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"30Rnd_556x45_Stanag",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Pull",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Ranger",
	"rhs_mag_30Rnd_556x45_M855_PMAG",
	
	"rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Pull_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Ranger_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red",
	
	//Pistol Ammo
	"bnae_6Rnd_357M",
	"CUP_7Rnd_45ACP_1911",
	"rhsusf_mag_15Rnd_9x19_JHP",
	"rhsusf_mag_15Rnd_9x19_FMJ",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"rhs_mag_an_m8hc",
	"CUP_HandGrenade_M67",
	
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
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M",
	"MRAWS_HE_F"
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