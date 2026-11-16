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
	"Aegis_U_O_LightCombatFatigues_ruarid_F",
	"Aegis_U_O_CombatFatigues_ruarid_F",
	"Aegis_U_O_CombatFatigues_02_ruarid_F",
	"U_O_R_CombatUniform_tshirt_arid_F"
];

private _itemUniformCrew = 
[
	"Aegis_U_O_CombatFatigues_ruarid_F",
	"Aegis_U_O_CombatFatigues_02_ruarid_F",
	"U_O_R_CombatUniform_tshirt_arid_F"
];

private _itemUniformPilot = 
[
	"Aegis_U_O_CombatFatigues_ruarid_F",
	"Aegis_U_O_CombatFatigues_02_ruarid_F",
	"U_O_R_CombatUniform_tshirt_arid_F"
];

//Vest
private _itemVest = 
[
	"hendrix_kora_kulon_smersh_5",
	"hendrix_kora_kulon_smersh_6",
	"hendrix_kora_kulon_jhuk_blk",
	"hendrix_kora_kulon_jhuk_grn",
	"hendrix_kora_kulon_chikom",
	"hendrix_kora_kulon_smersh_1",
	"hendrix_kora_kulon_smersh_4",
	"hendrix_kora_kulon_smersh_2",
	"hendrix_kora_kulon_smersh_3",
	"hendrix_kora_kulon_smersh_7"
];

private _itemVestCrew = 
[
	"hendrix_kora_kulon_base"
];

private _itemVestPilot = 
[
	"hendrix_kora_kulon_base"
];

//Headgear 
private _itemHeadgear = 
[
	"CUP_H_RUS_6B47_headset_desert",
	"CUP_H_RUS_6B47_headset_goggles_desert",
	"CUP_H_RUS_6B47_goggles_desert",
	"CUP_H_RUS_6B47_desert",
	"H_Booniehat_khk_hs",
	"Aegis_H_MilCap_tachs_grn_F",
	"H_Headset_Tactical_khk"
];

private _itemHeadgearCrew = 
[
	"CUP_H_TK_TankerHelmet"
];

private _itemHeadgearPilot = 
[
	"CUP_H_RUS_ZSH_Shield_Up",
	"CUP_H_RUS_ZSH_Shield_Down"
];

//Backpack 
private _itemBackpack = 
[
	"B_Kitbag_cbr",
	"B_Kitbag_desert_lxWS",
	"B_Kitbag_khk",
	"B_Kitbag_mcamo",
	"B_Kitbag_sgg"
];

private _itemBackpackCrew = 
[
	"B_AssaultPack_cbr"
];

private _itemBackpackPilot = 
[
	"B_AssaultPack_cbr"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_shades",
	"CUP_G_ESS_KHK_Dark",
	"CUP_G_ESS_KHK_Ember",
	"CUP_G_ESS_KHK",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"G_Lowprofile",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_White",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_white",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",
	
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"Goggles",
	"Aegis_Goggles_Cover_F",
	"pca_nvg_cigarette",
	"murshun_cigs_cig0_nv",
	"immersion_cigs_cigar0_nv",
	"bandolier_flak_556_addon",
	"bandolier_flak_556_addon_left",
	"bandolier_flak_556_addon_right",
	"claysac_flak_addon",
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
	"ToolKit"
	
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
	//Optic
	"CUP_optic_1P87_RIS",
	"CUP_optic_1P87_RIS_desert",
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_coyote",
	"CUP_optic_AC11704_Black",
	"CUP_optic_AC11704_Coyote",
	"optic_ACO_grn",
	"optic_Aco",
	"CUP_optic_HoloBlack",
	"CUP_optic_HoloDesert",
	"CUP_optic_OKP_7_rail",
	"CUP_optic_OKP_7_d_rail",
	
	//Grip
	"bnae_bipod_blk_virtual",
	"bnae_bipod_snd_virtual",
	
	//Tactical Device
	"CUP_acc_ANPEQ_15_Black",
	"CUP_acc_ANPEQ_15_Black_Top",
	"CUP_acc_ANPEQ_15_Flashlight_Black_L",
	"CUP_acc_ANPEQ_15_Top_Flashlight_Black_L"
];

private _itemWeapRifle = 
[
	"CUP_arifle_AK12_black",
	"CUP_arifle_AK12_AFG_black",
	"CUP_arifle_AK12_VG_black",
	"CUP_arifle_AK12_arid",
	"CUP_arifle_AK12_AFG_arid",
	"CUP_arifle_AK12_VG_arid",
	"CUP_arifle_AK12_tan",
	"CUP_arifle_AK12_AFG_tan",
	"CUP_arifle_AK12_VG_tan"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AK12_GP34_black",
	"CUP_arifle_AK12_GP34_arid",
	"CUP_arifle_AK12_GP34_tan"
];

private _itemWeapAR = 
[
	"CUP_lmg_Pecheneg_top_rail_B50_vfg",
	"CUP_lmg_Pecheneg_top_rail"
];

private _itemWeapLAT = 
[
	"CUP_launch_RPG7V",
	"CUP_OG7_M",
	"CUP_PG7VL_M"
];

private _itemWeapPistol = 
[
	"Flex_CUP_PLA_HGun_QSZ92",
	"hgun_Rook40_F",
	
	//Pistol Ammo
	"17Rnd_9x21_Mag"
];

//Special
private _itemWeapMG = 
[
	"CUP_AGS30_carry",
	"ace_csw_kordCarryTripodLow"
];

private _itemWeapMAT = 
[
	"launch_RPG32_black_F",
	"launch_RPG32_tan_lxWS",
	"launch_RPG32_F"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_545x39_AK_M",
	"CUP_30Rnd_545x39_AK74M_desert_M",
	"CUP_30Rnd_545x39_AK74M_M",
	"CUP_30Rnd_545x39_AK74_plum_M",
	"CUP_launch_RPG26"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M",
	"CUP_30Rnd_TE1_Red_Tracer_545x39_AK_desert_M",
	"CUP_30Rnd_TE1_Red_Tracer_545x39_AK74M_M",
	"CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"
];

private _itemAmmoAR = 
[
	"ACE_150Rnd_762x54_Box_tracer_red",
	"ACE_150Rnd_762x54_Box_red",
	"CUP_5Rnd_762x54_Mosin_M"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"hlc_GRD_blue",
	"hlc_GRD_green",
	"hlc_GRD_orange",
	"hlc_GRD_purple",
	"hlc_GRD_Red",
	"hlc_GRD_yellow",
	"CUP_1Rnd_SmokeGreen_GP25_M",
	"CUP_1Rnd_SmokeRed_GP25_M",
	"CUP_1Rnd_SmokeYellow_GP25_M",
	"CUP_FlareRed_GP25_M",
	"CUP_FlareGreen_GP25_M",
	"CUP_FlareWhite_GP25_M",
	"PlusG_Armband_NVG_Yuke_alt_F",
	"PlusG_Armband_NVG_Obristan_alt_F",
	"PlusG_Armband_NVG_Impor_alt_F",
	"PlusG_Armband_NVG_fist_alt_F",
	"PlusG_Armband_NVG_estovakia_alt_F",
	"PlusG_Armband_NVG_CL_alt_F",
	"PlusG_Armband_NVG_bos_alt_F",
	"CUP_arifle_AK12_GP34_tiger",
	"CUP_arifle_AK12_GP34_winter",
	"CUP_arifle_AK12_GP34_snowtiger"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_SMOKE_GP25_M",
	"SmokeShell",
	"hlc_VOG25_AK",
	"CUP_1Rnd_HE_GP25_M",
	"CUP_HandGrenade_RGD5"
];

//Special
private _itemAmmoMG = 
[
	"CUP_compats_29Rnd_30mm_AGS30_M"
];

private _itemAmmoMAT = 
[
	"RPG32_F",
	"RPG32_HE_F"
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
	"ToolKit",
	"Aegis_NV_G_Armband_OPF_alt_F"
];

private _itemRec = 
[
	"CUP_srifle_Mosin_Nagant",
	"CUP_optic_PEM"
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
	//DM
	case (_unitRole == "dmr") :
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapRifle + _itemAmmo + _itemExplosive + _itemRec)] call ace_arsenal_fnc_initBox;
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