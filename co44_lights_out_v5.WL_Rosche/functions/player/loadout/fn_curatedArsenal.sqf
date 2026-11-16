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
	"simc_tcu_mk3_rain_parka_erdlh",
"U_Simc_TCU_mk3_erdl_H",
"simc_tcu_mk3_nomex_fold_erdlh",
"simc_tcu_mk3_nomex_erdlh",
"simc_tcu_mk3_rollh_erdlh",
"simc_tcu_mk3_roll_erdlh",
"simc_tcu_mk3_sog_nomex_erdlh",
"U_Simc_TCU_mk3_sog_erdl_h",
"simc_tcu_mk3_tee_erdlh",
"simc_tcu_mk3_tuck_erdlh",
	
	//Vest
	"simc_vest_faust_lbv_blk",
"simc_vest_faust_lbv_holster_blk",
"simc_vest_faust_lbv_lc2_blk",
"simc_vest_faust_lc2_blk",
"simc_vest_faust_lc2_holster_blk",
"simc_vest_faust_lc2_saw_blk",
	
	//Headgear
	"simc_protec_nvg",
"simc_protec_nvg_strobe",
"simc_protec_nvg_strobe_swdg",
"simc_protec_nvg_strobe_swdg_low",
"simc_protec_nvg_swdg",
"simc_protec_nvg_swdg_low",
"simc_protec_hs_nvg",
"simc_protec_hs_nvg_strobe",
"simc_protec_hs_nvg_strobe_swdg",
"simc_protec_hs_nvg_strobe_swdg_low",
"simc_protec_hs_nvg_swdg",
"simc_protec_hs_nvg_swdg_low",
	
	//Backpack
	"pca_backpack_invisible",
"pca_backpack_invisible_large",

"simc_alice_pack",
"simc_alice_pack_2",
"simc_alice_pack_3",
"simc_alice_pack_4",
"simc_alice_pack_5",
"simc_alice_pack_6",
"simc_alice_pack_7",
"simc_ranger_ruck",
"simc_ranger_ruck_canvas",
"simc_ranger_ruck_light",
"simc_ranger_ruck_patrol"
];

private _itemGearGren = 
[
	//Vest
	"rhsusf_spcs_ocp_grenadier"
];

private _itemGearMedic = 
[
	//Vest 
	// "rhsusf_spcs_ocp_medic"
];

private _itemGearMG = 
[
	//Vest
	"rhsusf_spcs_ocp_machinegunner",
	"rhsusf_spcs_ocp_saw"
];

private _itemGearLeader = 
[
	//Vest
	// "rhsusf_spcs_ocp_grenadier",
	// "rhsusf_spcs_ocp_squadleader",
	
	//Headgear
	// "rhsusf_ach_helmet_headset_ocp",
	//"rhsusf_ach_helmet_headset_ocp_alt",
	//"rhsusf_ach_helmet_headset_ess_ocp",
	//"rhsusf_ach_helmet_headset_ess_ocp_alt"
];

private _itemGearCrew = 
[
	//Uniform 
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp",
	
	//Vest 
	"rhsusf_spcs_ocp_crewman",
	
	//Headgear
	"rhsusf_hgu56p_tan",
	"rhsusf_hgu56p_visor_tan",
	
	//Backpack
	"rhsusf_assault_eagleaiii_ocp"
];

private _itemGearPilot = 
[
	//Uniform 
	"rhs_uniform_acu_ocp",
	"rhs_uniform_acu_oefcp",
	
	//Vest 
	"rhsusf_spcs_ocp_crewman",
	
	//Headgear
	"rhsusf_cvc_helmet",
	"rhsusf_cvc_alt_helmet",
	"rhsusf_cvc_ess",
	
	//Backpack
	"rhsusf_assault_eagleaiii_ocp"
];

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
"G_SWDG",
"G_SWDG_low",
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

//cigs
	"murshun_cigs_matches",
   // "murshun_cigs_lighter",
    "murshun_cigs_cigpack"
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
	"ACE_Vector"
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
	// Attachments
"cup_muzzle_snds_m9",
"muzzle_snds_acp",
"cup_acc_mlpls_laser",
"cup_acc_cz_m3x",
"cup_optic_aimpoint_5000",

"rhsusf_acc_anpeq15side_bk",
"rhsusf_acc_harris_swivel",
"rhsusf_acc_sr25s",
"rhsusf_acc_m14_bipod",

// more red dots/1x stuff
"cup_optic_ac11704_od",
"cup_optic_ac11704_black",
"cup_optic_zddot",
"cup_optic_mepro",
"cup_optic_mepro_moa_clear",
"cup_optic_mepro_openx_orange",
"cup_optic_mepro_tri_clear",
"$NONE_sma_acc_tasco_propoint$",
"$NONE_sma_acc_tasco_propoint_glare$",
"cup_optic_trijiconrx01_black",
"cup_optic_trijiconrx01_kf_od",
"cup_optic_trijiconrx01_od",
"rhsgref_acc_rx01_nofilter_camo",
"rhsgref_acc_rx01_camo"
];

private _itemAccSpec = 
[
	"cup_optic_an_pvs_4",
	"rhsusf_acc_ACOG",
		"rhsusf_acc_ACOG2",
		"rhsusf_acc_ACOG3",
		"rhsusf_acc_ACOG_RMR",
	"rhsusf_acc_sr25s"
];

private _itemWeapRifle = 
[
	"CUP_smg_MP5SD6"
];

private _itemWeapRifleUGL = 
[
	"CUP_smg_MP5SD6"
];

private _itemWeapAR = 
[
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S"
];

private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemWeapDMR = 
[
	"rhs_weap_sr25",
"rhs_weap_sr25_wd"
];

private _itemWeapLAT = 
[
	"CUP_launch_M136"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS"
];

private _itemWeapPistol = 
[
	"CUP_hgun_M9A1"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"hlc_30Rnd_9x19_FMJ_MP5",

	
	//Pistol Ammo
	"CUP_15Rnd_9x19_M9",
	
	//Explosives
	
	"SmokeShell",
	
	"CUP_HandGrenade_M67"
];

private _itemAmmoAR = 
[
	"rhsusf_100Rnd_556x45_soft_pouch",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch",
	"rhsusf_100Rnd_556x45_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote"
];

private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M",
	"MRAWS_HE_F"
];

private _itemAmmoDMR = 
[
	"rhsusf_20Rnd_762x51_SR25_m118_special_Mag"
];

private _itemAmmoSignal = 
[
	
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow"
	
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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