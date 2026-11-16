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
	//Uniform
	"pca_uniform_m88_field_khk",
    "pca_uniform_m88_field_flora",
    "pca_uniform_m88_field_mgrn",
	"pca_uniform_m88_field_od",
    "pca_uniform_m88_field_oli",
    "pca_uniform_m88_field_wdl",
    "pca_uniform_afghanka_plum",
    
	//Vest
	"pca_6b5_khk",
    "pca_6b5_brn",
    "pca_6b5_mgrn",
    "pca_6b5_oli",
    "pca_6b5_plum",
    "pca_6b5_rifleman_oli",
    "pca_6b5_rifleman_khk",
    "pca_6b5_rifleman_mgrn",
    "pca_6b5_rifleman_oli",
    "pca_6b5_rifleman_plum",
	
	//Headgear
	"CUP_H_RUS_SSH68_cover_vsr84_dubok",
    "CUP_H_RUS_SSH68_cover_berezka",
	"CUP_H_SLA_Helmet_BLK",
    "CUP_H_SLA_Helmet_BLK_worn",
    "CUP_H_TK_Helmet",
    "CUP_H_SLA_Helmet_URB",
    "CUP_H_SLA_Helmet_URB_worn",
    "CUP_H_SLA_Helmet",
    "CUP_H_SLA_Helmet_OD_worn",
    "CUP_H_RUS_SSH68_green",
    "CUP_H_RUS_SSH68_olive",
    "pca_ssh68_helmet_emblem_redstar",
    "pca_ushanka",
    
	//Backpack
	"rhs_rd54_flora1",
    "rhs_rd54",
    "rhs_sidor",
    "pca_backpack_invisible"
];

private _itemGearGren = 
[
	//Vest
	"rhs_6b3_brn_vog_1",
	"rhs_6b3_brn_vog_2",
	"rhs_6b3_od_vog_1",
	"rhs_6b3_od_vog_2",
	"rhs_6b3_VOG",
	"rhs_6b3_VOG_2"
];

private _itemGearMedic = 
[
	//Vest 
	"pca_6b5_medic_brn",
	"pca_6b5_medic_khk",
	"pca_6b5_medic_mgrn",
	"pca_6b5_medic_oli",
	"pca_6b5_medic_plum"
];

private _itemGearMG = 
[
	//Vest
	"rhs_tortila_olive"
];

private _itemGearLeader = 
[
	//Vest
	"pca_6b5_officer_brn",
	"pca_6b5_officer_khk",
	"pca_6b5_officer_mgrn",
	"pca_6b5_officer_oli",
	"pca_6b5_officer_plum",
	
	//Headgear
	"pca_m88_fieldcap_ogrn"
];

private _itemGearCrew = 
[
	//Uniform 

	//Weapons
	"CUP_arifle_AKS74U",
	
	//Vest 
	"rhs_6b2",
	
	//Headgear
	"rhs_tsh4",
	"rhs_tsh4_bala",
	"rhs_tsh4_ess",
	"rhs_tsh4_ess_bala"
	
	//Backpack
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
	"G_Balaclava_Skull1",
	"G_Balaclava_oli",
	"pca_balaclava_mcb",
	"G_Balaclava_blk",
	"G_Aviator",
	"G_Spectacles",
	"rhs_ess_black",
	"rhssaf_veil_Green",
	"G_Spectacles_Tinted",
	"G_Cigarette",
	"G_Bandanna_kawaii",
	"G_Bandanna_beast",
	"G_Bandanna_aviator",
	"CUP_FR_NeckScarf5",
	"G_Squares",
	"G_Squares_Tinted",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"bear_balaclava1_black",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	//Murshun cigpack and lighter
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack",

	"pca_nvg_cigarette",
	"$NONE_pca_nvg_ess_blk$",
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"Goggles_grn_F",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"pca_nvg_gloves_wool_grn",

	"$NONE_nvg_scrim_wdl$",
	"$NONE_nvg_scrim_wdl_grass$",
	"$NONE_nvg_scrim_wdl_leaves_1$",
	"$NONE_nvg_scrim_wdl_leaves_2$",
	"$NONE_nvg_scrim_wdl_leaves_3$",
	"$NONE_nvg_scrim_wdl_pine$",

	"pmk1_gas_mask_nvg",

	"$NONE_usm_nvg_kneepads_blk$"
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
	"ACE_tourniquet",

	"ACE_salineIV_250",
	"ACE_plasmaIV_500"
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
	"ACE_surgicalKit",
	"rhs_tortila_olive"
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
	"rhs_acc_1p29",
	"rhs_acc_1pn34"

	//Grip
	
	//Tactical Device
];

private _itemAccSpec = 
[
	"CUP_optic_PSO_1_AK",
	"CUP_optic_PSO_1_AK_open"
];

private _itemWeapRifle = 
[
	"CUP_arifle_AK74_Early",
	"$NONE_hlc_rifle_ak74_worn$",
	"$NONE_hlc_rifle_ak74_dirty$",
	"CUP_arifle_AKS74_Early"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AKS74_GL_Early",
	"CUP_arifle_AK74M_GL"
];

private _itemWeapAR = 
[
	"CUP_arifle_RPK74_45",
	"rhs_6b3_od_rpk"
];

private _itemWeapMG = 
[
	"CUP_lmg_PKMN",
	"cup_optic_pechenegscope"
];

private _itemWeapDMR = 
[
	"pca_weap_svd_wood"
];

private _itemWeapLAT = 
[
	"CUP_launch_RPG26",
	"rhs_weap_rpg18"
];

private _itemWeapMAT = 
[
];

private _itemWeapPistol = 
[
	"CUP_hgun_Makarov"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"bear_30Rnd_545x39_orange_7N6M",
	"bear_30Rnd_545x39_orange_7T3M",
	"rhs_30Rnd_545x39_7N6M_plum_AK",
	"rhs_30Rnd_545x39_AK_plum_green",
	
	//Pistol Ammo
	"CUP_8Rnd_9x18_Makarov_M",
	
	//Explosives
	"rhs_GRD40_Red",
	"rhs_GRD40_White",
	"rhs_VOG25",
	"rhs_VOG25P",
	"rhs_VG40TB",
	"CUP_IlumFlareWhite_GP25_M",

	"rhs_mag_rdg2_white",
	"CUP_HandGrenade_RGD5"
];

private _itemAmmoAR = 
[
	"pca_mag_45Rnd_545X39_RPK_Black_Mixed_7N6M",
	"pca_mag_45Rnd_545X39_RPK_Black_7N6M",
	"pca_mag_45Rnd_545X39_RPK_Black_7T3M",
	"pca_mag_45Rnd_545x39_Bakelite_Mixed_7N6M",
	"pca_mag_45Rnd_545x39_Bakelite_7N6M",
	"pca_mag_45Rnd_545x39_Bakelite_7T3M"
];

private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"
];

private _itemAmmoMAT = 
[
	"rhs_rpg7_PG7VS_mag",
	"rhs_rpg7_PG7VR_mag",
	"rhs_rpg7_PG7VM_mag",
	"rhs_rpg7_PG7VL_mag"
];

private _itemAmmoDMR = 
[
	"rhs_10Rnd_762x54mmR_7N1"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",

	"CUP_IlumFlareWhite_GP25_M",
	"CUP_IlumFlareRed_GP25_M",
	"CUP_IlumFlareGreen_GP25_M",
	"CUP_FlareYellow_GP25_M",

	"rhs_GRD40_Green",
	"rhs_GRD40_Red",
	"rhs_GRD40_White",
	"CUP_1Rnd_SmokeYellow_GP25_M"
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
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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
	case (_unitRole == "commissar") : 
	{
		[arsenal, (["rhs_beret_mvd"] + _itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemGearMedic + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
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