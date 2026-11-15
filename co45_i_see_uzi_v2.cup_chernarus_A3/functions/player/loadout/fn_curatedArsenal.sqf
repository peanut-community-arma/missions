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
	"U_B_CTRG_Soldier_Black_F",
	"CUP_I_B_PMC_Unit_24",
	"U_O_R_Gorka_01_black_F"
];

private _itemUniformCrew = 
[
	"U_B_CTRG_Soldier_Black_F",
	"CUP_I_B_PMC_Unit_24",
	"U_O_R_Gorka_01_black_F"
];

private _itemUniformPilot = 
[
	"U_B_CTRG_Soldier_Black_F",
	"CUP_I_B_PMC_Unit_24",
	"U_O_R_Gorka_01_black_F"
];

//Vest
private _itemVest = 
[
	"pca_vest_invisible_kevlar",
		"JAM_V_PASGT_Vest_blk",
		"JAM_V_PASGT_Vest_rifleman_buttpack_blk",
		"JAM_V_PASGT_Vest_light_blk",
		"JAM_V_PASGT_Vest_rifleman_blk",
		"JAM_V_PASGT_Vest_rifleman_alt_blk",
		"JAM_V_PASGT_Vest_leader_blk",
		"JAM_V_PASGT_Vest_machinegunner_asst_blk",
		"JAM_V_PASGT_Vest_machinegunner_blk",
		"JAM_V_PASGT_Vest_medic_blk"
];

private _itemVestCrew = 
[
	"pca_vest_invisible_kevlar",
		"JAM_V_PASGT_Vest_blk",
		"JAM_V_PASGT_Vest_rifleman_buttpack_blk",
		"JAM_V_PASGT_Vest_light_blk",
		"JAM_V_PASGT_Vest_rifleman_blk",
		"JAM_V_PASGT_Vest_rifleman_alt_blk",
		"JAM_V_PASGT_Vest_leader_blk",
		"JAM_V_PASGT_Vest_machinegunner_asst_blk",
		"JAM_V_PASGT_Vest_machinegunner_blk",
		"JAM_V_PASGT_Vest_medic_blk"
];

private _itemVestPilot = 
[
	"pca_vest_invisible_kevlar",
		"JAM_V_PASGT_Vest_blk",
		"JAM_V_PASGT_Vest_rifleman_buttpack_blk",
		"JAM_V_PASGT_Vest_light_blk",
		"JAM_V_PASGT_Vest_rifleman_blk",
		"JAM_V_PASGT_Vest_rifleman_alt_blk",
		"JAM_V_PASGT_Vest_leader_blk",
		"JAM_V_PASGT_Vest_machinegunner_asst_blk",
		"JAM_V_PASGT_Vest_machinegunner_blk",
		"JAM_V_PASGT_Vest_medic_blk"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_BAF_PARA_BERET",
		"TC_Helmet_Invisible_Medium",
		"H_Booniehat_blk",
		"CUP_H_PMC_Beanie_Black",
		"CUP_H_PMC_Beanie_Headphones_Black"
];

private _itemHeadgearCrew = 
[
	"CUP_H_CVC"
];

private _itemHeadgearPilot = 
[
	"H_PilotHelmetHeli_B"
];

//Backpack 
private _itemBackpack = 
[
	"B_ViperHarness_blk_F",
	"B_ViperLightHarness_blk_F",
	"B_RadioBag_01_black_F",
	"CUP_B_AssaultPack_Black",
	"CUP_B_USPack_Black",
	"B_AssaultPack_blk",
		"B_Carryall_blk",
		"B_FieldPack_blk",
		"B_Kitbag_blk",
		"Aegis_B_patrolBackpack_blk_F",
		"pca_backpack_invisible",
		"pca_backpack_invisible_large"
];

private _itemBackpackCrew = 
[
	"B_ViperHarness_blk_F",
	"B_ViperLightHarness_blk_F",
	"B_RadioBag_01_black_F",
	"CUP_B_AssaultPack_Black",
	"CUP_B_USPack_Black",
	"B_AssaultPack_blk",
		"B_Carryall_blk",
		"B_FieldPack_blk",
		"B_Kitbag_blk",
		"Aegis_B_patrolBackpack_blk_F",
		"pca_backpack_invisible",
		"pca_backpack_invisible_large"
];

private _itemBackpackPilot = 
[
	"B_ViperHarness_blk_F",
	"B_ViperLightHarness_blk_F",
	"B_RadioBag_01_black_F",
	"CUP_B_AssaultPack_Black",
	"CUP_B_USPack_Black",
	"B_AssaultPack_blk",
		"B_Carryall_blk",
		"B_FieldPack_blk",
		"B_Kitbag_blk",
		"Aegis_B_patrolBackpack_blk_F",
		"pca_backpack_invisible",
		"pca_backpack_invisible_large"
];

//Cosmetic 
private _itemCosmetic = 
[
	"CUP_NVG_PVS15_black_WP",
	"CUP_NVG_PVS15_black",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_lowprofile",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_tan",
	"G_Bandanna_Vampire_01",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",
	"G_Bandanna_Skull1",
	"G_Bandanna_kawaii",
	"G_Cigarette",
	"G_Balaclava_light_blk_F",
	"G_Headset_light",
	"Aegis_G_scrimNet_black_F",
	"Aegis_G_scrimNet_under_black_F",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_white",
	"Aegis_G_Condor_EyePro_F",
	"G_Balaclava_TI_blk_F",
	"G_Bandanna_TransPride",
	"G_AirPurifyingRespirator_02_black_F",
	"G_AirPurifyingRespirator_01_F",
	"G_Balaclava_blk_lxWS",
	"CUP_RUS_Balaclava_blk",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_1",
	"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_2",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Ranger",
	"CUP_G_ESS_CBR_Facewrap_Red",
	"CUP_G_ESS_RGR_Facewrap_Skull",
	"CUP_G_ESS_KHK_Facewrap_Tan",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_PMC_Facewrap_Black",
	"CUP_PMC_Facewrap_Ranger",
	"CUP_PMC_Facewrap_Red",
	"CUP_PMC_Facewrap_Skull",
	"CUP_PMC_Facewrap_Smilie",
	"CUP_PMC_Facewrap_Tan",
	"CUP_PMC_Facewrap_Tropical",
	"CUP_G_PMC_RadioHeadset_Glasses_Dark",
	"CUP_G_PMC_RadioHeadset",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"JAM_G_Gloves_Leather_blk",
	"JAM_G_Gloves_wool_blk",
	"JAM_G_Gloves_wool_cut_blk",
	"M40_Gas_mask_nbc_f2_d",
	"M40_Gas_mask_nbc_f4_d",
	"G_simc_US_Bandoleer_flak_556_left",
	"G_simc_US_Bandoleer_flak_556_right",
	"G_simc_US_flak_Bandoleer_556",
	"G_claysack_flak",
	"G_SWDG",
	"G_SWDG_low",
	"G_Nomex_1",
	"G_Nomex_1_fold",
	"G_Nomex_1_lang",
	"G_M17_Gasbag",
	"G_simc_US_Bandoleer_556_fore",
	"G_simc_US_Bandoleer_4cm",
	"TC_G_NitrileGloves_1"
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
	"ACE_wirecutter",
	"murshun_cigs_lighter",
	"murshun_cigs_cigpack"
	
	//Removed AT4 open sight and Adapter for AKs (both from RHS)
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
	"ACE_surgicalKit",
	"ACE_suture",
	"ACE_personalAidKit"
];

//********************************************************************************//
// Weapons
//********************************************************************************//

private _itemAcc = 
[
	
	//Tactical Device
	"CUP_muzzle_snds_UZI",
	"sp_fwa_acc_machinegun_linkhide"
];

private _itemWeapRifle = 
[
	"CUP_smg_UZI"
];

private _itemWeapRifleUGL = 
[
	"ptv_hk69"
];

private _itemWeapAR = 
[
	"CUP_smg_UZI",
	"sp_fwa_aa52"
];

private _itemWeapLAT = 
[
	"CUP_launch_APILAS",
	"CUP_sgun_SPAS12"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Colt1911",
	
	//Pistol Ammo
	"CUP_7Rnd_45ACP_1911"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240_B"
];

private _itemWeapMAT = 
[
	"CUP_launch_MAAWS",
	"CUP_optic_MAAWS_Scope"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_32Rnd_9x19_UZI_M",
	"CUP_8Rnd_12Gauge_Slug"
];

private _itemAmmoTracer = 
[
	""
];

private _itemAmmoAR = 
[
	"CUP_72Rnd_9x19_UZI_M",
	"sp_fwa_100Rnd_75_french_mag_ball"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"CUP_1Rnd_SmokeGreen_M203",
	"CUP_1Rnd_SmokeRed_M203",
	"CUP_1Rnd_SmokeYellow_M203",
	"ACE_40mm_Flare_red",
	"ACE_40mm_Flare_green",
	"ACE_40mm_Flare_white",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67"
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"
];

private _itemAmmoMAT = 
[
	"CUP_MAAWS_HEAT_M",
	"CUP_MAAWS_HEDP_M"
];

private _itemEngineer = 
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"MineDetector",
	"ToolKit"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapMG + _itemWeapPistol + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMG + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Medium Anti-Tank Gunner
	case (_unitRole == "mat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapMAT + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Anti-Tank Gunner
	case (_unitRole == "amat") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoMAT + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman
	case (_unitRole == "crew") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Crewman Commander
	case (_unitRole == "crew_co") : 
	{
		[arsenal, (_itemGear + _itemUniformCrew + _itemVestCrew + _itemHeadgearCrew + _itemBackpackCrew + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Helicopter Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemUniformPilot + _itemVestPilot + _itemHeadgearPilot + _itemBackpackPilot + _itemCosmetic + _itemMisc + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Engineer
	case (_unitRole == "eng") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemExplosive + _itemEngineer)] call ace_arsenal_fnc_initBox;
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