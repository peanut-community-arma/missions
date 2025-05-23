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
	"CUP_U_O_SLA_Green",
	
	//Vest
	"rhs_6b23_6sh116",
	"rhs_6b23_6sh116_vog",
	"rhs_6b23_digi_6sh92",
	"rhs_6b23_digi_6sh92_spetsnaz2",
	"rhs_6b23_digi_6sh92_headset",
	"rhs_6b23_digi_6sh92_headset_spetsnaz",
	"rhs_6b23_digi_6sh92_headset_mapcase",
	"rhs_6b23_digi_6sh92_radio",
	"rhs_6b23_digi_6sh92_Spetsnaz",
	"rhs_6b23_digi_6sh92_vog",
	"rhs_6b23_digi_6sh92_Vog_Spetsnaz",
	"rhs_6b23_digi_6sh92_vog_headset",
	"mrhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz",
	
	//Headgear
	"rhs_6b26_digi",
	"rhs_6b26_digi_bala",
	"rhs_6b26_digi_ess",
	"rhs_6b26_digi_ess_bala",
	"rhs_Booniehat_digi",
	"CUP_H_RUS_Cap_EMR",
	"rhs_fieldcap_helm_digi",
	"rhs_fieldcap_digi",
	
	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"rhs_rd54_emr1",
	"rhs_rk_sht_30_emr",
	"rhs_tortila_emr"
];

private _itemGearGren = 
[
	//Vest
];

private _itemGearMedic = 
[
	//Vest 
];

private _itemGearMG = 
[
	//Vest
];

private _itemGearLeader = 
[
	//Vest
];

private _itemGearCrew = 
[
	""
];

private _itemGearPilot = 
[
	//Headgear
	"H_PilotHelmetHeli_B"
];

private _itemCosmetic = 
[
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_khk",
	"G_Bandanna_sport",
	"G_Combat",
	"G_Lowprofile",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"aegis_bandanna_kawaii",
	"aegis_cigarette",
	"aegis_combat_gogg_blk",
	"aegis_bala_light_blk",
	"aegis_bala_light_gogg_blk",
	"aegis_bala_light_mtp",
	"aegis_bala_light_gogg_mtp",
	"aegis_shemag_khk",
	"aegis_shemag_tactical_khk",
	"aegis_shemag_oli",
	"aegis_shemag_tactical_oli",
	"aegis_shemag_red",
	"aegis_shemag_tactical_red",
	"aegis_shemag_tan",
	"aegis_shemag_tactical_tan",
	"aegis_shemag_white",
	"aegis_shemag_tactical_white",
	"aegis_tactical_yellow",
	"aegis_tactical_camo",
	"G_Combat_Goggles_tna_F",
	"G_Balaclava_TI_blk_F",
	"G_Balaclava_TI_G_blk_F",
	"G_AirPurifyingRespirator_01_F",
	"bear_bandana_multicam",
	"CUP_G_TK_RoundGlasses_blk",
	"usm_scarf",
	"usm_scarf2",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_mc",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_mc",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_mc",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_mc",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_mc",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_mc",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_tactical_khk",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_white",
	"rhsusf_shemagh2_white",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"rhsusf_shemagh_gogg_white",
	"rhsusf_shemagh2_gogg_white",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	"pca_nvg_glasses_blk",
	"pca_nvg_glasses_clr",
	"pca_nvg_glasses_org",
	"pca_nvg_glasses_ylw",
	"pca_nvg_ess_blk",
	"pca_nvg_cigarette",
	"pca_nvg_face_shield_khk",
	"pca_nvg_face_shield_mc",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_shemagh_khk",
	"pca_nvg_face_shield_shemagh_mc",
	"pca_nvg_face_shield_shemagh_rgr",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_tan",
	"pca_nvg_shemagh2_tan",
	"pca_nvg_shemagh_white",
	"pca_nvg_shemagh2_white",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_oakley_goggles_ylw",
	"pca_nvg_tactical_glasses",
	"pca_nvg_tactical_goggles",
	"nvg_goggles_grn",
	"nvg_goggles_cbr"
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
	"Binocular",
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148"
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
	"cup_optic_1p63",
	"cup_optic_ekp_8_02",
	"cup_optic_kobra",
	"cup_optic_okp_7",
	"cup_optic_pgo7v3"
];

private _itemAccSpec = 
[
	"optic_dms",
	"optic_hamr",
	"optic_mrco",
	"optic_arco",
	"optic_arco_blk_f",
	"optic_hamr_khk_f",
	"optic_erco_blk_f",
	"optic_erco_khk_f",
	"optic_erco_snd_f",
	"cup_optic_elcan_specterdr_black",
	"cup_optic_elcan_specterdr_kf_black",
	"cup_optic_elcan_specterdr_kf",
	"cup_optic_elcan_specterdr_kf_rmr_black",
	"cup_optic_elcan_reflex"
];

private _itemWeapRifle = 
[
	"CUP_arifle_AK74"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AK74_GL"
];

private _itemWeapAR = 
[
	"CUP_arifle_RPK74_45"
];

private _itemWeapMG = 
[
	""
];

private _itemWeapDMR = 
[
	"arifle_MXM_F",
	"arifle_MXM_Black_F"
];

private _itemWeapLAT = 
[
	"CUP_launch_RPG26"
];

private _itemWeapMAT = 
[
	"CUP_launch_RPG7V"
];

private _itemWeapMAA = 
[
	"launch_B_Titan_F",
	"launch_I_Titan_F"
];

private _itemWeapPistol = 
[
	"rhs_weap_makarov_pm"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_545x39_AK_M",
	"CUP_30Rnd_545x39_AK74M_M",
	"CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M",
	"CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M",
	"rhs_mag_9x18_8_57N181S",
	
	//Explosives
	"CUP_1Rnd_HE_GP25_M",
	"SmokeShell",
	"CUP_HandGrenade_RGD5"
];

private _itemAmmoAR = 
[
	"CUP_60Rnd_545x39_AK74M_M",
	"CUP_60Rnd_TE1_Green_Tracer_545x39_AK74M_M"
];

private _itemAmmoMG = 
[
	"rhs_100Rnd_762x54mmR_7N26",
	"rhs_100Rnd_762x54mmR_green"
];

private _itemAmmoMAT = 
[
	"CUP_PG7V_M",
	"CUP_PG7VL_M",
	"CUP_PG7VM_M",
	"CUP_PG7VR_M",
	"CUP_TBG7V_M"
];

private _itemAmmoMAA = 
[
	"Titan_AA"
];

private _itemAmmoDMR = 
[
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_black_mag",
	"30Rnd_65x39_caseless_black_mag_Tracer",
	"30Rnd_65x39_caseless_mag_Tracer"
];

private _itemAmmoSignal = 
[
	"CUP_1Rnd_SMOKE_GP25_M",
	"CUP_1Rnd_SmokeRed_GP25_M",
	"CUP_1Rnd_SmokeGreen_GP25_M",
	"SmokeShellBlue",
	"SmokeShellGreen",
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
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemAmmoAR + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemWeapPistol + _itemAmmoSignal + _itemAccSpec)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal + _itemWeapPistol + _itemAccSpec)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL+  _itemAmmo + _itemAmmoSignal + _itemWeapPistol + _itemAccSpec)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAT + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMAT)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Air Gunner
	case (_unitRole == "maa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAA + _itemAmmo + _itemAmmoMAA)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Air Gunner
	case (_unitRole == "amaa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMAA)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemAmmoMG) + _itemWeapPistol + _itemAmmo] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "ammg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////	ROLES NOT USED IN BASE TEMPLATE	////////////////////////////////////////////////////////
	
	//Designated Marksman
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapDMR + _itemAmmoDMR + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Heavy Machine Gunner
	case (_unitRole == "hmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Heavy Machine Gunner
	case (_unitRole == "ahmg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
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