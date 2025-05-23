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
	////////////////////////////////////////
	//Uniform 
	////////////////////////////////////////
	"rhs_uniform_vkpo",
	"rhs_uniform_vkpo_alt",
	"rhs_uniform_vkpo_gloves",
	"rhs_uniform_vkpo_gloves_alt",
	
	////////////////////////////////////////
	//Vest
	////////////////////////////////////////
	"rhs_6b23_6sh116",
	"rhs_6b23_digi_6sh92",
	"rhs_6b23_digi_6sh92_headset",
	"rhs_6b23_digi_6sh92_headset_spetsnaz",
	"rhs_6b23_digi_6sh92_radio",
	"rhs_6b23_digi_6sh92_spetsnaz",
	"rhs_6b23_digi_6sh92_spetsnaz2",
	
	////////////////////////////////////////
	//Headgear
	////////////////////////////////////////
	//RHS
	"rhs_6b26_digi",
	"rhs_6b26_digi_bala",
	"rhs_6b26_digi_ess",
	"rhs_6b26_digi_ess_bala",
	"rhs_6b27m_digi",
	"rhs_6b27m_digi_bala",
	"rhs_6b27m_digi_ess",
	"rhs_6b27m_digi_ess_bala",
	"rhs_6b47",
	"rhs_6b47_6m2",
	"rhs_6b47_6m2_1",
	"rhs_6b47_bala",
	"rhs_6b47_ess",
	"rhs_6b47_ess_bala",
	"rhs_6b7_1m_emr",
	"rhs_6b7_1m_bala1_emr",
	"rhs_6b7_1m_bala2_emr",
	"rhs_6b7_1m_emr_ess",
	"rhs_6b7_1m_emr_ess_bala",
	"rhs_6m2_nvg",
	"rhs_6m2_1_nvg",
	
	//PCA
	"pca_6b47_emr_1",
	"pca_6b47_emr_2",
	"pca_6b47_emr_3",
	"pca_6b47_emr_ess",
	
	////////////////////////////////////////
	//Backpack
	////////////////////////////////////////
	//RHS
	"rhs_rd54_emr1",
	"rhs_rk_sht_30_emr",
	"rhs_rk_sht_30_olive",
	"rhs_tortila_emr",
	
	//PCA
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	
	//WSX
	"umbts_emr"
];

private _itemGearGren = 
[
	"rhs_6b23_6sh116_vog",
	"rhs_6b23_digi_6sh92_vog",
	"rhs_6b23_digi_6sh92_vog_headset",
	"rhs_6b23_digi_6sh92_vog_radio_spetsnaz",
	"rhs_6b23_digi_6sh92_vog_spetsnaz"
];

private _itemGearLeader = 
[
	"rhs_6b23_6sh116_vog",
	"rhs_6b23_digi_6sh92_headset_mapcase",
	"rhs_6b23_digi_6sh92_vog",
	"rhs_6b23_digi_6sh92_vog_headset",
	"rhs_6b23_digi_6sh92_vog_radio_spetsnaz",
	"rhs_6b23_digi_6sh92_vog_spetsnaz"
];

private _itemGearCrew = 
[
	////////////////////////////////////////
	//Uniform 
	////////////////////////////////////////
	"rhs_uniform_vkpo",
	"rhs_uniform_vkpo_alt",
	"rhs_uniform_vkpo_gloves",
	"rhs_uniform_vkpo_gloves_alt",
	
	////////////////////////////////////////
	//Vest
	////////////////////////////////////////
	"rhs_6b23_digi_6sh92_spetsnaz2",
	"rhs_6b23_digi_6sh92_headset_spetsnaz",
	"rhs_6b23_digi_6sh92_vog_spetsnaz",
	"rhs_6b23_digi_crewofficer",
	
	////////////////////////////////////////
	//Headgear
	////////////////////////////////////////
	"rhs_6b48",
	
	////////////////////////////////////////
	//Backpack
	////////////////////////////////////////
	//RHS
	"rhs_rd54_emr1",
	"rhs_rk_sht_30_emr",
	"rhs_rk_sht_30_olive",
	"rhs_tortila_emr",
	
	//PCA
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	
	//WSX
	"umbts_emr"
];

private _itemCosmetic = 
[
	//BIS
	"G_Balaclava_oli",
	"G_Bandanna_blk",
	"G_Bandanna_oli",
	"G_Balaclava_TI_blk_F",
	
	//RHS
	"rhs_balaclava",
	"rhs_balaclava1_olive",
	"rhs_ess_black",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	
	//Aegis
	"aegis_bala_light_blk",
	"aegis_bandanna_candyskull",
	"aegis_bandanna_kawaii",
	"aegis_bandanna_shemag",
	"aegis_bandanna_skull",
	"aegis_bandanna_syndikat",
	"aegis_bandanna_thug",
	"aegis_shemag_khk",
	"aegis_shemag_oli",
	
	//Bearskin
	"bear_balaclava1_black",
	
	//DHI
	"usm_scarf",
	"usm_scarf2",
	"usm_nvg_scarf",
	"usm_nvg_scarf2",
	
	//Military Gear Packs
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_goggles_khk",
	
	//CUP
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf3",
	"CUP_PMC_Facewrap_Black",
	"CUP_PMC_Facewrap_Tropical",
	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_emr",
	"CUP_RUS_Balaclava_grn",
	"CUP_RUS_Balaclava_rgr",
	"CUP_TK_NeckScarf",
	
	//PCA
	"pca_nvg_balaclava",
	"pca_nvg_balaclava2",
	"pca_nvg_ess_blk",
	"pca_nvg_face_shield_blk",
	"pca_nvg_face_shield_rgr",
	"pca_nvg_face_shield_shemagh_blk",
	"pca_nvg_face_shield_shemagh_rgr",
	"pca_nvg_shemagh_grn",
	"pca_nvg_shemagh2_grn",
	"pca_nvg_shemagh_od",
	"pca_nvg_shemagh2_od",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_oakley_goggles_blk",
	"pca_nvg_oakley_goggles_clr",
	"pca_nvg_tactical_goggles"
	
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
	"rhs_pdu4"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemAcc = 
[
	"rhs_acc_1p87",
	"rhs_acc_ekp8_18",
	"CUP_optic_1P87_RIS",
	"rhs_acc_rakursPM",
	"optic_MRCO",
	"optic_Arco_blk_F"
];

private _itemAccSpec = 
[
	"rhs_acc_grip_ffg2",
	"rhs_acc_grip_rk2",
	"rhs_acc_grip_rk6",
	"pca_flashlight_sf"
];

private _itemWeapRifle = 
[
	"hlc_rifle_ak12"
];

private _itemWeapCarbine = 
[
	"hlc_rifle_aku12"
];

private _itemWeapRifleUGL = 
[
	"hlc_rifle_ak12_gp25"
];

private _itemWeapAR = 
[
	"CUP_lmg_Pecheneg_top_rail_B50_vfg",
	"CUP_lmg_Pecheneg_top_rail"
];

private _itemWeapLAT = 
[
	"rhs_acc_pgo7v3",
	"rhs_weap_rpg7",
	"rhs_acc_1pn93_2",
	"rhs_rpg7_PG7VL_mag",
	"rhs_rpg7_PG7VR_mag",
	"rhs_rpg7_TBG7V_mag"
];

private _itemWeapPistol = 
[
	"rhs_mag_9x19_17",
	"rhs_weap_pya"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"pca_mag_30Rnd_545x39_AK12_Blk_7N22",
	"pca_mag_30Rnd_545x39_AK12_Blk_7T3M",
	
	//Pistol Ammo
	"rhs_mag_9x19_17",
	
	//Explosives
	"rhs_VOG25",
	"rhs_GRD40_White",
	"CUP_IlumFlareGreen_GP25_M",
	"CUP_IlumFlareRed_GP25_M",
	"CUP_IlumFlareWhite_GP25_M",
	"rhs_mag_rdg2_white",
	"rhs_mag_rgd5",
	"rhs_mag_rgn",
	"rhs_mag_rgo"
];

private _itemAmmoAR = 
[
	"rhs_100Rnd_762x54mmR_7N26",
	"rhs_100Rnd_762x54mmR_green"
];

private _itemAmmoSignal = 
[
	"rhs_GRD40_Green",
	"rhs_GRD40_Red",
	"CUP_IlumFlareGreen_GP25_M",
	"CUP_IlumFlareRed_GP25_M",
	"CUP_IlumFlareWhite_GP25_M",
	"rhs_mag_nspn_green",
	"rhs_mag_nspn_red",
	"rhs_mag_nspn_yellow",
	"rhs_mag_nspd"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemAccSpec + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (Light Anti-Tank)
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemAccSpec + _itemWeapRifle + _itemWeapLAT + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc +  _itemWeapAR + _itemWeapPistol + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemAccSpec + _itemWeapRifleUGL + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapRifleUGL + _itemWeapRifle + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemAccSpec + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemAccSpec + _itemWeapCarbine + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemAcc + _itemAccSpec + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemAccSpec + _itemWeapCarbine + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemAccSpec + _itemWeapCarbine + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemAccSpec +  _itemWeapCarbine + _itemWeapPistol + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemAccSpec + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
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