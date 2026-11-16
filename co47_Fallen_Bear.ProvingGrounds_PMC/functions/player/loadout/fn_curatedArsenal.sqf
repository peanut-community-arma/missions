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
	//Helmet
	"simc_m1",
	"simc_m1_band",
	"simc_m1_net",
	"simc_m1_net_band",
	"simc_m1_strap",
	"H_Cap_red",
	"H_Cap_oli",
	"H_Cap_blk",
	"H_Watchcap_camo",
	"bear_beanie_brown",
	"H_Bandanna_gry",
	"CUP_H_FR_BandanaGreen",

	//Uniform
	"simc_m58_field_uniform",
	"simc_m78_field_uniform",
	"simc_m78_field_uniform_alt",

	//Vest
	"simc_m1955_mk2",
	"simc_m1955_mk2_lce_56",
	"simc_m1955_mk2_lce_56_band",
	"simc_m1955_mk2_lce_56_61",
	"simc_m1955_mk2_lce_56_61_band",
	"simc_m1955_mk2_lce_56_61_officer",
	"simc_m1955_mk2_lce_56_61_officer_band",
	"simc_m1955_mk2_lce_61",
	"simc_m1955_mk2_lce_61_band",

	//Backpack
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	"simc_lw_ruck",
	"simc_lw_ruck_light",
	"simc_lw_ruck_load",
	"simc_lw_ruck_m3_bag",
	"simc_lw_ruck_m43",
	"simc_lw_ruck_medic",
	"simc_lw_ruck_m7_bag",
	"simc_tropical_pack",
	"simc_tropical_pack_canvas",
	"simc_tropical_pack_frame",
	"simc_tropical_pack_frame_canvas",
	"simc_tropical_pack_patrol",
	"simc_tropical_pack_scout",
	"simc_ranger_ruck",
	"simc_ranger_ruck_canvas",
	"simc_ranger_ruck_light",
	"simc_ranger_ruck_patrol",
	"simc_alice_pack",
	"simc_alice_pack_2",
	"simc_alice_pack_3",
	"simc_alice_pack_4",
	"simc_alice_pack_5",
	"simc_alice_pack_6",
	"simc_alice_pack_7",
	"simc_prc25_radiopack",
	"simc_lw_ruck_radio",
	"simc_tropical_pack_radio",

	"rhs_rpg_6b2"
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
	"rhs_beret_milp"
];

private _itemGearCrew = 
[
	//Uniform 
];

private _itemGearPilot = 
[
	//Uniform 
];

private _itemCosmetic = 
[
	//Face
	"murshun_cigs_cig0",
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_Bandanna_CandySkull",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_FR_NeckScarf3",
	"$REMOVE_usm_swdgoggles$",
	"$NONE_usm_gigloves$",
	"$NONE_usm_giglovesscarf$",
	"$NONE_usm_giglovesscarf2$",
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"rhs_scarf",
	"rhssaf_veil_Green",
	"simc_bandoleer_gren",
	"simc_bandoleer_center",
	"simc_bandoleer_duplet",
	"simc_bandoleer_duplet_flak",
	"simc_bandoleer_left",
	"simc_bandoleer_left_flak",
	"simc_bandoleer_low",
	"simc_bandoleer_low_flak",
	"simc_bandoleer_right",
	"simc_bandoleer_right_flak",
	"simc_bandoleer_triplet",
	"simc_bandoleer_triplet_flak",
	"simc_claysack",
	"simc_claysack_flak",
	"G_SWDG",
	"G_SWDG_low",
	"G_Balaclava_blk",
	"G_Balaclava_oli",
	"bear_balaclava1_black",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",

	//HMD
	"pca_nvg_cigarette",
	"murshun_cigs_cig0_nv",
	"pca_nvg_gloves_wool",
	"$NONE_usm_nvg_giglovesscarf$",
	"$NONE_usm_nvg_giglovesscarf2$",
	"$NONE_usm_nvg_swdgoggles$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",
	"pca_nvg_gloves_wool",
	"pca_nvg_gloves_wool_brn",
	"pca_nvg_gloves_wool_grn",
	"simc_addon_bandoleer_gren",
	"simc_addon_bandoleer_center",
	"simc_addon_bandoleer_duplet",
	"simc_addon_bandoleer_duplet_flak",
	"simc_addon_bandoleer_left",
	"simc_addon_bandoleer_left_flak",
	"simc_addon_bandoleer_low",
	"simc_addon_bandoleer_low_flak",
	"simc_addon_bandoleer_right",
	"simc_addon_bandoleer_right_flak",
	"simc_addon_bandoleer_triplet",
	"simc_addon_bandoleer_triplet_flak",
	"simc_nvg_claysack",
	"simc_nvg_claysack_flak",
	"$NONE_pca_nvg_balaclava$"
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
	"ToolKit",
	"murshun_cigs_cigpack",
	"murshun_cigs_matches"
];

private _itemBino = 
[
	"rhs_tr8_periscope",
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
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag"
];

private _itemAcc = 
[
	//Sights
	"rhs_acc_pgo7v",
	"sp_fwa_acc_bipod_bar"
];

private _itemAccSpec = 
[
	//
];

private _itemWeapRifle = 
[
	"sp_fwa_ar15_603_m16a1_captured"
];

private _itemWeapRifleUGL = 
[
	"CUP_glaunch_M79",
	"$NONE_hlc_rifle_car15$",
	"rhs_mag_30Rnd_556x45_M193_Stanag",
	"rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red"
];

private _itemWeapAR = 
[
	"sp_fwa_m1918a2_bar"
];

private _itemWeapMG = 
[
	"sp_fwa_m1919a6_browning"
];

private _itemWeapDMR = 
[
	"rhssaf_beret_red",
	"CUP_srifle_CZ550"
];

private _itemWeapLAT = 
[
	"rhs_weap_rpg7"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Browning_HP",
	"bnae_weap_colt357",
	"CUP_hgun_Colt1911"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"rhs_mag_20Rnd_556x45_M193_Stanag",
	"rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red",
	
	//Pistol Ammo
	"CUP_13Rnd_9x19_Browning_HP",
	"bnae_6Rnd_357M",
	"CUP_7Rnd_45ACP_1911",
	
	//Explosives
	"rhs_mag_m714_White",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"SmokeShell",
	"rhs_grenade_mkii_mag",
	"rhs_rpg7_PG7V_mag"
];

private _itemAmmoAR = 
[
	"fwa_20rnd_3006_m1918_bar",
	"fwa_20rnd_3006_m1918_bar_mixed",
	"fwa_20rnd_3006_m1918_bar_tracer_red"
];

private _itemAmmoMG = 
[
	"fwa_100rnd_3006_m1919_mixed",
	"fwa_100rnd_3006_m1919_tracer_red",
	"fwa_250rnd_3006_m1919_mixed",
	"fwa_250rnd_3006_m1919_tracer_red"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M",
	"MRAWS_HE_F"
];

private _itemAmmoDMR = 
[
	"CUP_5Rnd_93x64_CZ550"
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
	"UGL_FlareYellow_F",
	"rhs_mag_m716_yellow",
	"rhs_mag_m715_Green",
	"rhs_mag_m713_Red"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapLAT + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Automatic Rifleman
	case (_unitRole == "ar") : 
	{
		[arsenal, (_itemGear + _itemGearMG + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapAR + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemGearLeader + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
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