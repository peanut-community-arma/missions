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
	"U_Simc_vc_black_1",
		"U_Simc_vc_black_1_trop",
		"U_Simc_vc_black_2",
		"U_Simc_vc_black_2_trop",
		"U_Simc_vc_blau_1",
		"U_Simc_vc_blau_1_trop",
		"U_Simc_vc_blau_2",
		"U_Simc_vc_blau_2_trop",
		"U_Simc_vc_grun_1",
		"U_Simc_vc_grun_1_trop",
		"U_Simc_vc_grun_2",
		"U_Simc_vc_grun_2_trop"
];

private _itemUniformCrew = 
[
	"U_Simc_vc_black_1",
		"U_Simc_vc_black_1_trop",
		"U_Simc_vc_black_2",
		"U_Simc_vc_black_2_trop",
		"U_Simc_vc_blau_1",
		"U_Simc_vc_blau_1_trop",
		"U_Simc_vc_blau_2",
		"U_Simc_vc_blau_2_trop",
		"U_Simc_vc_grun_1",
		"U_Simc_vc_grun_1_trop",
		"U_Simc_vc_grun_2",
		"U_Simc_vc_grun_2_trop"
];

private _itemUniformPilot = 
[
	"U_Simc_vc_black_1",
		"U_Simc_vc_black_1_trop",
		"U_Simc_vc_black_2",
		"U_Simc_vc_black_2_trop",
		"U_Simc_vc_blau_1",
		"U_Simc_vc_blau_1_trop",
		"U_Simc_vc_blau_2",
		"U_Simc_vc_blau_2_trop",
		"U_Simc_vc_grun_1",
		"U_Simc_vc_grun_1_trop",
		"U_Simc_vc_grun_2",
		"U_Simc_vc_grun_2_trop"
];

//Vest
private _itemVest = 
[
	"JAM_V_Equip_PAVN_rifle_02",
	"JAM_V_Equip_PAVN_mg_01",
	"JAM_V_Equip_PAVN_rifle_01",
	"JAM_V_Equip_PAVN_mg_02",
	"JAM_V_Equip_VietMinh_mg_01",
	"JAM_V_Equip_VietMinh_grenade_04",
	"JAM_V_Equip_VietMinh_rifle_01",
	"JAM_V_Equip_VietMinh_grenade_01",
	"JAM_V_Equip_VietMinh_smg_02",
	"JAM_V_Equip_VietMinh_grenade_03",
	"JAM_V_Equip_VietMinh_smg_01",
	"JAM_V_Equip_VietMinh_grenade_02",
	"pca_vest_invisible"
];

private _itemVestCrew = 
[
	"JAM_V_Equip_PAVN_rifle_02",
	"JAM_V_Equip_PAVN_mg_01",
	"JAM_V_Equip_PAVN_rifle_01",
	"JAM_V_Equip_PAVN_mg_02",
	"JAM_V_Equip_VietMinh_mg_01",
	"JAM_V_Equip_VietMinh_grenade_04",
	"JAM_V_Equip_VietMinh_rifle_01",
	"JAM_V_Equip_VietMinh_grenade_01",
	"JAM_V_Equip_VietMinh_smg_02",
	"JAM_V_Equip_VietMinh_grenade_03",
	"JAM_V_Equip_VietMinh_smg_01",
	"JAM_V_Equip_VietMinh_grenade_02",
	"pca_vest_invisible"
];

private _itemVestPilot = 
[
	"JAM_V_Equip_PAVN_rifle_02",
	"JAM_V_Equip_PAVN_mg_01",
	"JAM_V_Equip_PAVN_rifle_01",
	"JAM_V_Equip_PAVN_mg_02",
	"JAM_V_Equip_VietMinh_mg_01",
	"JAM_V_Equip_VietMinh_grenade_04",
	"JAM_V_Equip_VietMinh_rifle_01",
	"JAM_V_Equip_VietMinh_grenade_01",
	"JAM_V_Equip_VietMinh_smg_02",
	"JAM_V_Equip_VietMinh_grenade_03",
	"JAM_V_Equip_VietMinh_smg_01",
	"JAM_V_Equip_VietMinh_grenade_02",
	"pca_vest_invisible"
];

//Headgear 
private _itemHeadgear = 
[
	"JAM_H_VietPithHelmet_cover_prp",
	"JAM_H_VietPithHelmet_cover_net_prp",
	"H_Simc_nasi",
	"H_Simc_Boon_zwart_1",
	"H_Simc_Boon_zwart_2"
];

private _itemHeadgearCrew = 
[
	"CUP_H_SLA_TankerHelmet"
];

private _itemHeadgearPilot = 
[
	"JAM_H_VietPithHelmet_cover_prp",
	"JAM_H_VietPithHelmet_cover_net_prp",
	"H_Simc_nasi",
	"H_Simc_Boon_zwart_1",
	"H_Simc_Boon_zwart_2",
	"CUP_H_RUS_ZSH_Shield_Up",
	"CUP_H_RUS_ZSH_Shield_Down"
];

//Backpack 
private _itemBackpack = 
[
	"pca_backpack_invisible",
	"hendrix_rpg_1",
	"hendrix_kolobok_1",
	"hendrix_kolobok_2",
	"hendrix_crate_1"
];

private _itemBackpackCrew = 
[
	"pca_backpack_invisible",
	"hendrix_rpg_1",
	"hendrix_kolobok_1",
	"hendrix_kolobok_2"
];

private _itemBackpackPilot = 
[
	"pca_backpack_invisible"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_tan",
	"G_Cigarette",
	"G_Shemag_khk",
	"G_Shemag_oli",
	"G_Shemag_red",
	"G_Shemag_tan",
	"G_Shemag_white",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_G_TK_RoundGlasses_blk",
	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"JAM_G_Poncho_01_grn",
	"M40_Gas_mask_nbc_v2_d",
	"M40_Gas_mask_nbc_v4_d",
	"TC_G_NitrileGloves_1",
	"G_Nomex_1",
"G_Nomex_1_fold",
"G_Nomex_1_lang",
"G_Nomex_2",
"G_Nomex_2_fold",
"G_Nomex_2_lang",
"G_Nomex_2_cut",
"G_Nomex_2_fold_cut",
"G_Nomex_2_lang_cut",
"G_Nomex_1_cut",
"G_Nomex_1_fold_cut",
"G_Nomex_1_lang_cut",
"G_Nomex_desu",
"G_Nomex_desu_fold",
"G_Nomex_desu_lang",
"G_Nomex_desu_2",
"G_Nomex_desu_2_fold",
"G_Nomex_desu_2_lang",
"G_Nomex_desu_2_cut",
"G_Nomex_desu_2_fold_cut",
"G_Nomex_desu_2_lang_cut",
"G_Nomex_desu_cut",
"G_Nomex_desu_fold_cut",
"G_Nomex_desu_lang_cut",
"nomex_1_addon",
"nomex_1_fold_addon",
"nomex_1_lang_addon",
"nomex_2_addon",
"nomex_2_fold_addon",
"nomex_2_lang_addon",
"nomex_3_addon",
"nomex_3_fold_addon",
"nomex_3_lang_addon",
"nomex_4_addon",
"nomex_4_fold_addon",
"nomex_4_lang_addon",
"TC_NVG_NitrileGloves_1",
"G_simc_US_Bandoleer_flak_556_left",
"G_simc_US_Bandoleer_flak_556_right",
"G_simc_US_flak_Bandoleer_556",
"G_claysack_flak",
"G_illegal_canteen",
"G_M17_Gasbag",
"G_simc_US_Bandoleer_556_fore",
"G_simc_US_Bandoleer_556_left",
"G_simc_US_Bandoleer_556_right",
"G_simc_US_Bandoleer_60",
"G_simc_US_Bandoleer_60_L",
"G_simc_US_Bandoleer_60_R",
"G_simc_US_Bandoleer_4cm",
"G_simc_US_Bandoleer_556",
"G_simc_US_Bandoleer_556_low",
"G_botol_left",
"G_botol_regt",
"G_botol",
"G_claysack",
"G_Anduk_1",
"G_Anduk_2",
"G_simc_roll",
"bandolier_flak_556_addon",
"bandolier_flak_556_addon_left",
"bandolier_flak_556_addon_right",
"claysac_flak_addon",
"illegal_canteen_addon",
"M17_gasbag_addon",
"bandolier_556_addon",
"bandolier_556_addon_fore",
"bandolier_556_addon_left",
"bandolier_556_addon_low",
"bandolier_556_addon_right",
"m60_band_addon",
"m60_band_addon_L",
"m60_band_addon_R",
"m79_band_addon",
"botol_left_addon",
"botol_regt_addon",
"botol_addon",
"claysac_addon",
"anduk_1_addon",
"anduk_2_addon",
"pca_nvg_cigarette",
"pca_nvg_shemagh_lowered_khk",
"pca_nvg_shemagh_lowered_oli",
"pca_nvg_shemagh_lowered_red",
"pca_nvg_shemagh_lowered_tan",
"pca_nvg_shemagh_lowered_white",
"immersion_cigs_cigar0_nv",
"murshun_cigs_cig0_nv",
"G_Spectacles_Tinted",
"G_Squares_Tinted",
"G_Squares",
"G_Spectacles"
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
	
	
	//Grip
	
	
	//Tactical Device
	
];

private _itemWeapRifle = 
[
	"CUP_SKS",
	"sp_fwa_smg_mat49",
	"CUP_srifle_Mosin_Nagant"
];

private _itemWeapRifleUGL = 
[
	"CUP_arifle_AKM_GL_Early"
];

private _itemWeapAR = 
[
	"sp_fwa_fm2429"
];

private _itemWeapLAT = 
[
	"CUP_launch_RPG26"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Makarov",
	
	//Pistol Ammo
	"CUP_8Rnd_9x18_Makarov_M"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_UK59",
	"CUP_lmg_PKM"
	///Ideally DPM
];

private _itemWeapMAT = 
[
	"CUP_launch_RPG7V"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_30Rnd_762x39_AK47_M",
	"CUP_10Rnd_762x39_SKS_M",
	"sp_fwa_32Rnd_9x19_MAT49_Ball",
	"CUP_5Rnd_762x54_Mosin_M"
];

private _itemAmmoTracer = 
[
	"CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"
];

private _itemAmmoAR = 
[
	"sp_fwa_25Rnd_75x54_fm2429_Tracer",
	"sp_fwa_25Rnd_75x54_fm2429_Ball"
];

private _itemAmmoSignal = 
[
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"CUP_1Rnd_SmokeGreen_GP25_M",
	"CUP_1Rnd_SmokeRed_GP25_M",
	"CUP_1Rnd_SMOKE_GP25_M",
	"CUP_1Rnd_SmokeYellow_GP25_M",
	"CUP_IlumFlareGreen_GP25_M",
	"CUP_IlumFlareRed_GP25_M",
	"CUP_IlumFlareWhite_GP25_M",
	"CUP_FlareGreen_GP25_M",
	"CUP_FlareRed_GP25_M",
	"CUP_FlareWhite_GP25_M",
	"CUP_FlareYellow_GP25_M"
];

private _itemExplosive = 
[
	"CUP_1Rnd_SMOKE_GP25_M",
	"SmokeShell",
	"CUP_1Rnd_HE_GP25_M",
	"CUP_HandGrenade_RGD5",
	"CUP_HandGrenade_RGO"
];

//Special
private _itemAmmoMG = 
[
	"CUP_50Rnd_UK59_762x54R_Tracer",
	"CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"
];

private _itemAmmoMAT = 
[
	"CUP_OG7_M",
	"CUP_PG7V_M"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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