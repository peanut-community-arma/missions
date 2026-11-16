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
		"CUP_U_C_Citizen_03",
		"CUP_U_C_Citizen_01",
		"CUP_U_C_Citizen_04",
		"CUP_U_C_Citizen_02",
		"U_C_Uniform_Farmer_01_F",
		"U_C_ArtTShirt_01_v4_F",
		"U_C_ArtTShirt_01_v5_F",
		"U_C_ArtTShirt_01_v2_F",
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"CUP_U_C_Villager_03",
		"CUP_U_C_Villager_02",
		"CUP_U_C_Villager_04",
		"CUP_U_C_Villager_01",
		"CUP_U_C_Woodlander_01",
		"CUP_U_C_Woodlander_02",
		"CUP_U_C_Woodlander_03",
		"CUP_U_C_Woodlander_04",
		"CUP_U_C_Worker_03",
		"CUP_U_C_Worker_04",
		"CUP_U_C_Worker_02",
		"CUP_U_C_Worker_01",
		"U_C_Poloshirt_stripped",
		"U_C_Poloshirt_tricolour",
		"U_C_Poloshirt_redwhite",
		"U_C_Poloshirt_blue",
		"U_C_HunterBody_grn",
		"U_BG_Guerilla3_1",
		"U_BG_Guerilla2_2",
		"U_BG_Guerrilla_6_1",
		"U_BG_Guerilla2_1",
		"U_Marshal",
		"U_C_Poor_1",
		"U_C_Man_casual_8_F",
		"U_C_Man_casual_7_F",
		"U_C_Uniform_Formal_01_blue_F",
		"U_C_Uniform_Formal_01_blue_F",
		"$NONE_aegis_suit_formal_brown$",
		"$NONE_aegis_suit_formal_green$",
		"$NONE_aegis_suit_formal_purple$",
		"U_C_Uniform_Formal_01_striped_F",
		"U_C_Uniform_Formal_01_white_F",
		"Atlas_U_C_CommonerJacket_01_blue_F",
		"Atlas_U_C_CommonerJacket_01_grey_F",
		"Atlas_U_C_CommonerJacket_01_marroon_F",
		"Opf_U_I_I_Uniform_01_tshirt_black_F",
		"Atlas_U_C_Uniform_01_tshirt_white_F",
		"U_C_Man_casual_2_F",		
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"U_C_ArtTShirt_01_v6_F",		
		"U_C_ArtTShirt_01_v1_F",
		"U_C_ArtTShirt_01_v2_F",
		"U_C_ArtTShirt_01_v4_F",		
		"U_C_ArtTShirt_01_v5_F",
		"U_C_ArtTShirt_01_v3_F",
		"U_C_Uniform_Farmer_01_F",		
		"U_C_E_LooterJacket_01_F",
		"U_I_L_Uniform_01_tshirt_black_F",
		"U_I_L_Uniform_01_tshirt_skull_F",		
		"U_I_L_Uniform_01_tshirt_sport_F",
		"U_C_Mechanic_01_F",
		"CUP_U_C_Mechanic_02",
		"CUP_U_C_Mechanic_03",
		"CUP_U_C_Mechanic_01",
		"CUP_U_C_Profiteer_02",		
		"CUP_U_C_Profiteer_03",
		"CUP_U_C_Profiteer_01",
		"CUP_U_C_Profiteer_04",		
		"CUP_U_C_racketeer_01",
		"CUP_U_C_racketeer_02",
		"CUP_U_C_racketeer_03",		
		"CUP_U_C_racketeer_04",
		"CUP_U_C_Rocker_01",
		"CUP_U_C_Rocker_03",		
		"CUP_U_C_Rocker_02",
		"CUP_U_C_Rocker_04",
		"CUP_U_C_Villager_01",
		"CUP_U_C_Villager_04",
		"CUP_U_C_Villager_02",
		"CUP_U_C_Villager_03",		
		"CUP_U_C_Woodlander_01",
		"CUP_U_C_Woodlander_02",
		"CUP_U_C_Woodlander_03",		
		"CUP_U_C_Woodlander_04",
		"CUP_U_C_Worker_03",
		"CUP_U_C_Worker_04",		
		"CUP_U_C_Worker_02",
		"CUP_U_C_Worker_01",
		"pca_backpack_invisible_large"
];

private _itemUniformMayor = 
[
	"U_C_FormalSuit_01_tshirt_gray_F",
	"U_C_FormalSuit_01_tshirt_black_F",
	"U_C_FormalSuit_01_khaki_F",
	"U_C_FormalSuit_01_gray_F",
	"U_C_FormalSuit_01_blue_F",
	"U_C_FormalSuit_01_black_F",
	"U_NikosBody",
	"pca_backpack_invisible_large",
	"pca_vest_invisible"
];

private _itemUniformPolice = 
[
	"CUP_U_C_Policeman_01",
	"CUP_H_C_Policecap_01",
	"pca_vest_invisible",
	"pca_backpack_invisible_large"
];

private _itemUniformParamedic = 
[
	"CUP_U_C_Rescuer_01",
	"U_C_Paramedic_01_F",
	"pca_vest_invisible",
	"pca_backpack_invisible_large"
];

private _itemUniformPriest = 
[
	"CUP_U_C_Priest_01",
	"pca_vest_invisible",
	"pca_backpack_invisible_large"
];

private _itemUniformLead = 
[
	"V_Safety_blue_F",
	"V_Safety_orange_F",
	"V_Safety_yellow_F",
	"U_C_IDAP_Man_cargo_F",
	"U_C_IDAP_Man_Jeans_F",
	"U_C_IDAP_Man_casual_F",
	"U_C_IDAP_Man_Tee_F"
];

//Headgear 
private _itemHeadgear = 
[
	"H_Bandanna_gry",
	"H_Bandanna_blu",
	"H_Bandanna_cbr",
	"H_Bandanna_khk",
	"H_Bandanna_sgg",
	"H_Bandanna_sand",
	"H_Bandanna_surfer",
	"H_Bandanna_surfer_blk",
	"H_Bandanna_surfer_grn",
	"H_Booniehat_khk",
	"H_Booniehat_oli",
	"H_Booniehat_tan",
	"H_Cap_blk",
	"H_Cap_blu",
	"H_Cap_grn",
	"H_Cap_oli",
	"H_Cap_red",
	"H_Cap_surfer",
	"H_Cap_tan",
	"H_Hat_blue",
	"H_Hat_brown",
	"H_Hat_camo",
	"H_Hat_checker",
	"H_Hat_grey",
	"H_Hat_tan",
	"H_StrawHat",
	"H_StrawHat_dark",
	"H_Watchcap_blk",
	"H_Watchcap_sgg",
	"H_Watchcap_cbr",
	"H_Watchcap_camo",
	"H_Watchcap_khk",
	"H_Watchcap_red",
	"H_Booniehat_blk",
	"H_Cap_MaldenTours",
	"H_Helmet_Skate",
	"H_EarProtectors_black_F",
	"H_EarProtectors_orange_F",
	"H_EarProtectors_red_F",
	"H_EarProtectors_white_F",
	"H_EarProtectors_yellow_F",
	"H_HeadSet_black_F",
	"H_HeadSet_orange_F",
	"H_HeadSet_red_F",
	"H_HeadSet_white_F",
	"H_HeadSet_yellow_F",
	"H_Hat_Safari_olive_F",
	"H_Hat_Safari_sand_F",
	"H_WirelessEarpiece_F",
	"CUP_H_C_Beanie_01",
	"CUP_H_C_Beanie_02",
	"CUP_H_C_Beanie_03",
	"CUP_H_C_Beanie_04",
	"CUP_H_C_Beret_04",
	"CUP_H_C_Beret_01",
	"CUP_H_C_Beret_02",
	"CUP_H_C_Beret_03",
	"G_Headband_blk_F",
	"pca_headband",
	"G_Headband_red_F",
	"pca_headband_tan",
	"pca_ushanka",
	"rhs_headband",
	"rhs_ushanka",
	"G_Balaclava_Halloween_01",
	"G_Balaclava_Flames1",
	"G_Balaclava_Scarecrow_01",
	"G_Balaclava_Skull1"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Aviator",
	"G_Balaclava_blk",
	"bear_balaclava1_black",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_kawaii",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Lady_Blue",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"G_Respirator_blue_F",
	"G_Respirator_white_F",
	"G_Respirator_yellow_F",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_G_TK_RoundGlasses_gold",
	"G_EyeProtectors_F",
	"G_EyeProtectors_Earpiece_F",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Shades_Yellowred",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_WirelessEarpiece_F",
	"murshun_cigs_cig0_nv",
	"immersion_pops_pop0_nv",
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool_blu",
	"pca_nvg_gloves_wool_brn",
	"pca_nvg_gloves_wool_gry",
	"pca_nvg_gloves_wool_grn"
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
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"murshun_cigs_matches"
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

private _itemWeapFarm = 
[
	"CUP_srifle_Remington700",
	"cup_optic_remington",
	"CUP_6Rnd_762x51_R700",
	"sgun_HunterShotgun_01_F",
	"sgun_HunterShotgun_01_sawedoff_F",
	"2Rnd_12Gauge_Pellets"
];

private _itemWeapww2 = 
[
	"$NONE_fwa_weap_ppsh41$",
	"fwa_35rnd_762x25mm_ppsh_tracer_green",
	"CUP_srifle_Mosin_Nagant",
	"rhsgref_5Rnd_762x54_m38",
	"CUP_srifle_Mosin_Nagant",
	"rhs_weap_m38",
	"rhs_weap_kar98k",
	"rhsgref_5Rnd_792x57_kar98k"
];

private _itemWeapPolice = 
[
	"rhsusf_weap_glock17g4",
	"acc_flashlight_pistol",
	"CUP_hgun_Glock17_blk",
	"rhsusf_mag_17Rnd_9x19_FMJ"
];

private _itemWeapMayor = 
[
	"rhs_weap_cz99_etched",
	"rhssaf_mag_15Rnd_9x19_FMJ",
	"CUP_hgun_TaurusTracker455_gold",
	"CUP_6Rnd_45ACP_M",
	"CUP_hgun_Deagle",
	"CUP_7Rnd_50AE_Deagle"
];

private _itemWeaplight = 
[
	"ACE_Flashlight_Maglite_ML300L"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

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
	//basic
	case (_unitRole == "rm") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemHeadgear + _itemCosmetic + _itemMisc + _itemWeapLight)] call ace_arsenal_fnc_initBox;
	};
	//ww2
	case (_unitRole == "rm_lat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemHeadgear + _itemCosmetic + _itemMisc + _itemWeapww2)] call ace_arsenal_fnc_initBox;
	};
	//farmer
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemHeadgear + _itemCosmetic + _itemMisc + _itemWeapFarm)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader 
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemUniformLead + _itemHeadgear + _itemCosmetic + _itemMisc + _itemWeapLight)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemUniformLead + _itemRadio + _itemHeadgear + _itemCosmetic + _itemMisc + _itemWeapLight)] call ace_arsenal_fnc_initBox;
	};
	//police chief 
	case (_unitRole == "Pc") : 
	{
		[arsenal, (_itemGear + _itemUniformPolice + _itemRadio + _itemCosmetic + _itemMisc + _itemWeapPolice)] call ace_arsenal_fnc_initBox;
	};
	//police chief 
	case (_unitRole == "Dp") : 
	{
		[arsenal, (_itemGear + _itemUniformPolice + _itemRadio + _itemCosmetic + _itemMisc + _itemWeapPolice)] call ace_arsenal_fnc_initBox;
	};
	//Priest
	case (_unitRole == "P") : 
	{
		[arsenal, (_itemGear + _itemUniformPriest + _itemRadio + _itemCosmetic + _itemMisc + _itemWeapLight)] call ace_arsenal_fnc_initBox;
	};
	//Mayor
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniformMayor + _itemRadio + _itemHeadgear + _itemCosmetic + _itemMisc + _itemWeapMayor)] call ace_arsenal_fnc_initBox;
	};
	//First-Aid
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemHeadgear + _itemCosmetic + _itemMisc + _itemMedBasic + _itemWeapLight)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "CLS") : 
	{
		[arsenal, (_itemGear + _itemUniformParamedic + _itemHeadgear + _itemCosmetic + _itemMisc + _itemMedBasic + _itemMedAdv + _itemWeapLight)] call ace_arsenal_fnc_initBox;
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