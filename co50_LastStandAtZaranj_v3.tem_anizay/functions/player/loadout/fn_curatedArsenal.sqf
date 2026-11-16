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
	
	//Vanilla and DLC
	"U_I_C_Soldier_Bandit_4_F",
	"U_I_C_Soldier_Bandit_1_F",
	"U_I_C_Soldier_Bandit_2_F",
	"U_I_C_Soldier_Bandit_5_F",
	"U_I_C_Soldier_Bandit_3_F",
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_redwhite",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_C_Uniform_Farmer_01_F",
	"U_BG_Guerrilla_6_1",
	"U_BG_Guerilla1_1",
	"U_BG_Guerilla1_2_F",
	"U_BG_Guerilla2_2",
	"U_BG_Guerilla2_1",
	"U_BG_Guerilla2_3",
	"U_BG_Guerilla3_1",
	"U_C_HunterBody_grn",
	"U_C_E_LooterJacket_01_F",
	"U_I_L_Uniform_01_tshirt_black_F",
	"U_I_L_Uniform_01_tshirt_olive_F",
	"U_I_L_Uniform_01_tshirt_skull_F",
	"U_C_Mechanic_01_F",
	"U_C_Poor_1",
	
	//Other Civilian
	"U_C_Man_casual_7_F",
	"CUP_U_C_Citizen_04",
	"Atlas_U_C_CommonerJacket_01_grey_F",
	"Atlas_U_C_CommonerJacket_01_blue_F",
	"Atlas_U_C_CommonerJacket_01_marroon_F",
	"Opf_U_I_I_Uniform_01_tshirt_black_F",
	"Atlas_U_C_Uniform_01_tshirt_white_F",
	
	//Merc and paramilitary outfits
	"U_B_ION_Uniform_01_tshirt_black_F",
	"U_B_ION_Uniform_01_poloshirt_wdl_F",
	"U_B_ION_Uniform_01_poloshirt_blue_F",
	"U_I_C_Soldier_Para_1_F",
	"U_I_C_Soldier_Para_2_F",
	"U_I_C_Soldier_Para_5_F",
	"U_I_C_Soldier_Para_3_F",
	"CUP_I_B_PARA_Unit_5",
	"bear_uniform_cup_paramilitary_clothes_m81",
	"CUP_I_B_PARA_Unit_8",
	"CUP_I_B_PARA_Unit_6",
	"CUP_I_B_PARA_Unit_10",
	"CUP_I_B_PARA_Unit_4",
	"CUP_I_B_PARA_Unit_9",
	"CUP_I_B_PARA_Unit_1",
	"CUP_I_B_PARA_Unit_3",
	"CUP_U_O_SLA_Green",
	
	//Proto-CSAT Uniform
	"pca_combat_fatigue_p87_wdl",
	"pca_combat_fatigue_rs_p87_wdl",
	"pca_combat_fatigue_type07_hex_uni",
	"pca_combat_fatigue_rs_type07_hex_uni",
	
	//Vest
	"bear_6sh92_od",
	"bear_6sh92_khaki",
	
	//Headgear
	"pca_m97_pasgt_cdf_ttsko_mountain",
	"pca_m97_pasgt_cdf_ttsko_desert",
	"Atlas_H_PASGT_Cover_Tan_F",
	"$NONE_usm_helmet_pasgt_ceswd_tan$",
	"$NONE_usm_helmet_pasgt_ceswd_gry$",
	"CUP_H_PASGTv2_winter",
	"H_PASGT_basic_olive_F",
	
	//Cosmetic Headgear
	"H_HeadBandage_clean_F",
	"rhs_headband",
	"H_Bandanna_gry",
	"H_Bandanna_khk",
	"CUP_H_US_patrol_cap_WDL",
	"H_Shemag_olive",
	"H_ShemagOpen_tan"
];

private _itemBackpack =
[
	//Backpack
	"pca_rd54_tan",
	"pca_rd54_oli",
	"B_CivilianBackpack_01_Everyday_Black_F",
	"B_CivilianBackpack_01_Everyday_Vrana_F",
	"B_Kitbag_blk",
	"B_Kitbag_rgr",
	"CUP_B_SLA_Medicbag",
	"B_Messenger_Black_F",
	"B_Messenger_Coyote_F",
	"CUP_O_RUS_Patrol_bag_Green",
	"rhs_sidor",
	"bear_sidor_tan",
	"B_CivilianBackpack_01_Sport_Blue_F",
	"B_CivilianBackpack_01_Sport_Green_F",
	"B_CivilianBackpack_01_Sport_Red_F",
	"B_TacticalPack_blk",
	"B_TacticalPack_khk",
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"B_Kitbag_blk"
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

private _itemGearMTR = 
[
	//Mortar components
	"ace_csw_carryMortarBaseplate",
	"ace_csw_staticMortarCarry",
	
	//Items
	"ACE_RangeTable_82mm",
	"ACE_MapTools",
	"ACE_Kestrel4500"
];

private _itemGearLeader = 
[
	//Vest
	"bear_6sh92_od_radio",
	"bear_6sh92_khaki_radio"
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
	//Facewear - Military-styled
	"rhs_ess_black",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
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
	
	//Balaclavas and bandanas
	"G_Balaclava_lowprofile",
	"CUP_RUS_Balaclava_blk",
	"G_Balaclava_blk",
	"bear_balaclava1_black",
	"G_Balaclava_oli",
	"rhs_balaclava1_olive",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_CandySkull",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_RedFlame2",
	"G_Bandanna_kawaii",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_Skull2",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	
	//Other cosmetic
	"G_Cigarette",
	"G_Lowprofile",
	"CUP_TK_NeckScarf",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"G_Respirator_blue_F",
	"G_Respirator_white_F",
	"G_Respirator_yellow_F",
	"CUP_G_TK_RoundGlasses",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf5",
	"G_Shemag_tan",
	"G_Shemag_white",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"CUP_G_WristWatch",
	
	//NVG-slot facewear
	"$NONE_usm_nvg_kneepads_blk$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_shemagh_tan$",
	"$NONE_pca_nvg_shemagh2_tan$",
	"$NONE_pca_nvg_shemagh_white$",
	"$NONE_pca_nvg_shemagh2_white$",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_cigarette",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$"
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

private _itemMedSpecFA = 
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
	"ACE_personalAidKit"
];

private _itemMisc = 
[
	//"ACRE_PRC343",
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

];

private _itemAccSpec = 
[

];

private _itemWeapRifle = 
[
	"rhs_weap_m1garand_sa43",
	"sp_fwa_fn49"
];

private _itemWeapRifleUGL = 
[
	
];

private _itemWeapAR = 
[
	"fwa_30Rnd_762x39mm_ak47",
	"CUP_arifle_TYPE_56_2_Early"
];

private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemGearDMR = 
[
	"CUP_srifle_LeeEnfield",
	"cup_optic_no23mk2",
	"CUP_10x_303_M"
];

private _itemWeapLAT = 
[
	"CUP_launch_M136"
];

private _itemWeapMAT = 
[
	"CUP_launch_RPG7V",
	//MAT exclusive backpack
	"CUP_B_RPGPack_Khaki"
];

private _itemWeapPistol = 
[
	"CUP_hgun_TT",
	"CUP_hgun_Makarov"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_10x_303_M",
	"rhsgref_8Rnd_762x63_M2B_M1rifle",
	"rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle",
	"sp_fwa_10rnd_3006_fn49",
	"sp_fwa_10rnd_3006_fn49_tracer",
	
	//Pistol Ammo
	"CUP_8Rnd_762x25_TT",
	"CUP_8Rnd_9x18_Makarov_M",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"SmokeShell",
	"CUP_HandGrenade_M67"
];

private _itemAmmoAR = 
[
	"CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_bakelite_M",
	"CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M",
	"CUP_30Rnd_762x39_AK47_bakelite_M",
	"CUP_30Rnd_762x39_AK47_M"
];

private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_PG7VL_M"
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
	"UGL_FlareGreen_F",
	"UGL_FlareRed_F",
	"UGL_FlareWhite_F",
	"UGL_FlareYellow_F"
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
		[arsenal, (_itemGear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Sharpshooter
	case (_unitRole == "rm_dmr") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemGearDMR + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemAmmoAR + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Grenadier
	case (_unitRole == "gren") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemGearGren + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifleUGL + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal + _itemWeapPistol + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoSignal + _itemWeapPistol + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpecFA + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemCosmetic + _itemMisc + _itemMed + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemAmmo + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMAT + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Mortar Gunner
	case (_unitRole == "mtr") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemGearMG + _itemMisc + _itemCosmetic + _itemAcc + _itemGearMTR + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Mortar Gunner
	case (_unitRole == "amtr") : 
	{
		[arsenal, (_itemGear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemGearMTR + _itemWeapPistol)] call ace_arsenal_fnc_initBox;
	};
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////	ROLES NOT USED IN BASE TEMPLATE	////////////////////////////////////////////////////////
	
	//Designated Marksman
	case (_unitRole == "dm") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemAccSpec + _itemWeapDMR + _itemAmmoDMR)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemEng + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Vehicle Crew Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGearCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGearPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
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
		(player distance2D (player getVariable ["startPos", [0,0,0]])) < 100 && (alive startFlag)
	},
	{},
	[],
	[0,0,0],
	3
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;