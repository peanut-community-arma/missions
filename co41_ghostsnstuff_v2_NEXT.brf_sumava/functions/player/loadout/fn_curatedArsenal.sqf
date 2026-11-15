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
	"ptv_u_g3_trollwdl",
	"ptv_u_g3_trollwdl_rs",
	"ptv_u_g3cw_trollwdl",
	"ptv_u_g3cw_trollwdl_grn",
	"ptv_u_g3cw_trollwdl_gry"
];

private _itemUniformCrew =
[
	"ptv_u_g3_trollwdl",
	"ptv_u_g3_trollwdl_rs",
	"ptv_u_g3cw_trollwdl",
	"ptv_u_g3cw_trollwdl_grn",
	"ptv_u_g3cw_trollwdl_gry"
];

private _itemUniformPilot =
[
	"USAF_Overalls_Ranger_6_w"
];

//Vest
private _itemVest =
[
	"V_thor_wdl",
	"V_thor_rgr",
	"V_thor_r_rgr",
	"V_thor_r2_rgr",
	"V_thor03_rgr",
	"V_thor03_wdl",
	"V_thor_rgr2",
	"V_thor_wdl2",
	"V_thor_sl_rgr",
	"V_thor_tl_rgr",
	"V_thor02_rgr",
	"V_thor02_wdl"
];

private _itemVestCrew =
[
	"V_thor03_rgr",
	"V_thor03_wdl"
];

private _itemVestPilot =
[
	"V_thor03_rgr",
	"V_thor_rgr2",
	"V_thor_wdl2"
];

//Headgear
private _itemHeadgear =
[
	"ptv_viper_ts_cover",
	"ptv_viper_ts_cover2",
	"ptv_viper_ts_cover_g",
	"ptv_viper_ts_cover2_g",
	"ptv_viper_ts_cover_gc",
	"ptv_viper_ts_cover2_gc",
	"ptv_beanie_g",
	"ptv_beanie_brwn"
];

private _itemHeadgearCrew =
[
	"CUP_H_CVC",
	"ptv_cbj_ms2",
	"ptv_100Rnd_65x25_CBJ_Mag",
	"ptv_30Rnd_65x25_CBJ_Mag"
];

private _itemHeadgearPilot =
[
	"H_PilotHelmetHeli_B",
	"ptv_cbj_ms2",
	"ptv_100Rnd_65x25_CBJ_Mag",
	"ptv_30Rnd_65x25_CBJ_Mag"
];

//Backpack
private _itemBackpack =
[
	"ptv_DeltaPack_Grn",
	"ptv_DeltaPack_AFG",
	"ptv_DeltaPack_Rgr",
	"B_Kitbag_khk",
	"B_Kitbag_rgr"
];

private _itemBackpackCrew =
[
	"ptv_DeltaPack_Grn",
	"ptv_DeltaPack_AFG",
	"ptv_DeltaPack_Rgr",
	"pca_backpack_invisible"
];

private _itemBackpackPilot =
[
	"ptv_DeltaPack_Grn",
	"ptv_DeltaPack_AFG",
	"ptv_DeltaPack_Rgr",
	"pca_backpack_invisible"
];

//Cosmetic
private _itemCosmetic =
[
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Combat",
	"G_Lowprofile",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Spectacles_Tinted",

	"G_Bandanna_BlueFlame1",
	"G_Bandanna_BlueFlame2",
	"G_Bandanna_CandySkull",
	"G_Bandanna_RedFlame2",
	"G_Bandanna_RedFlame1",
	"G_Bandanna_Skull2",
	"G_Bandanna_kawaii",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Balaclava_light_eaf_F",
	"G_Balaclava_light_G_eaf_F",
	"Aegis_G_scrimNet_under_black_F",
	"Aegis_G_scrimNet_under_olive_F",
	"G_Shemag_tactical",
	"Aegis_G_Condor_EyePro_F",
	"G_Headset_Tactical",
	"G_Headset_Tactical_grn",
	"G_Headset_Tactical_khk",
	"G_Balaclava_TI_tna_F",
	"G_Balaclava_TI_G_tna_F",
	"G_Bandanna_TransPride",

	"CUP_RUS_Balaclava_blk",
	"CUP_RUS_Balaclava_grn",
	"CUP_G_RUS_Balaclava_Ratnik",
	"CUP_G_RUS_Balaclava_Ratnik_v2",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Red",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_White",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Red",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_White",
	"CUP_Beard_Black",
	"CUP_Beard_Blonde",
	"CUP_Beard_Brown",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Blk_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard",
	"CUP_G_ESS_BLK_Scarf_Grn_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_Red_Beard",
	"CUP_G_ESS_BLK_Scarf_Red_Beard_Blonde",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard",
	"CUP_G_ESS_KHK_Scarf_Tan_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard_Blonde",
	"CUP_G_ESS_BLK_Scarf_White_Beard",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Red",
	"CUP_G_Scarf_Face_Tan",
	"CUP_G_Scarf_Face_White",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_FR_NeckScarf3",
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf5",
	"CUP_FR_NeckScarf4",

	"ptv_balaclava_01",
	"ptv_balaclava_01_g",
	"ptv_balaclava_02",
	"ptv_balaclava_02_g",
	"ptv_shemagh_balaclava_ess_t2",
	"ptv_shemagh_balaclava_ess_g2",
	"ptv_shemagh_balaclava_ess_t",
	"ptv_shemagh_balaclava_ess_g",
	"ptv_shemagh_balaclava_ess_ct3_t2",
	"ptv_shemagh_balaclava_ess_ct3_g2",
	"ptv_shemagh_balaclava_ess_ct3_t",
	"ptv_shemagh_balaclava_ess_ct3_g",
	"ptv_shemagh_balaclava_ct3_t2",
	"ptv_shemagh_balaclava_ct3_g2",
	"ptv_shemagh_balaclava_ct3_t",
	"ptv_shemagh_balaclava_ct3_g",
	"ptv_shemagh_ct3_t",
	"ptv_shemagh_ct3_g",

	"G_LEN_BCG",
	"G_Simc_pca_tacticool",

	"PLA_NV_Goggles_F",
	"PLA_NV_Glasses_F",
	"Aegis_NV_G_scrimNet_under_black_F",
	"Aegis_NV_G_scrimNet_under_olive_F",
	"pca_nvg_cigarette",
	"G_Cigarette",
	"NVG_Simc_pca_tacticool",
	"pca_nvg_shemagh_lowered_khk",
	"pca_nvg_shemagh_lowered_oli",
	"pca_nvg_shemagh_lowered_red",
	"pca_nvg_shemagh_lowered_tan",
	"pca_nvg_shemagh_lowered_white",
	"ptv_Rhino",
	"nomex_1_addon",
	"nomex_1_fold_addon",
	"nomex_1_lang_addon",
	"G_Nomex_1",
	"G_Nomex_1_fold",
	"G_Nomex_1_lang",
	"JAM_NV_Gloves_Leather_blk",

	"immersion_cigs_cigar0",
	"murshun_cigs_cig0",
	"immersion_pops_pop0",
	"immersion_cigs_cigar0_nv",
	"murshun_cigs_cig0_nv",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"immersion_pops_poppack",
	"murshun_cigs_matches"
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
];

private _itemBino =
[
	"Binocular"
];

private _itemRadio =
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F",
	"Laserdesignator_03",
	"Laserbatteries"
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
	"ACE_tourniquet",

	"TC_NVG_NitrileGloves_1",
	"TC_G_NitrileGloves_1"
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
	"Aegis_optic_ICO",
	"Aegis_optic_ICO_khaki",
	"Aegis_optic_1p87",
	"Aegis_optic_1p87_lush",
	"Aegis_optic_ROS",

	"optic_Holosight",
	"optic_Holosight_blk_F",
	"optic_Holosight_khk_F",
	"optic_Holosight_lush_F",

	"optic_r1_high_lxWS",
	"optic_r1_high_khaki_lxWS",
	"optic_r1_high_lush_lxWS",
	"optic_r1_high_snake_lxWS",

	"CUP_optic_AC11704_Black",
	"CUP_optic_AC11704_OD",
	"CUP_optic_AC11704_Coyote",
	"CUP_optic_MEPRO_moa_clear",
	"CUP_optic_VortexRazor_UH1_Black",
	"CUP_optic_VortexRazor_UH1_Coyote",
	"CUP_optic_VortexRazor_UH1_Khaki",
	"CUP_optic_VortexRazor_UH1_OD",

	"JCA_optic_MROS_black",
	"JCA_optic_MROS_olive",

	"ptv_compm4s",
	"ptv_compm5",
	"ptv_t1",
	"ptv_eot552",
	"ptv_xps3",
	"RKSL_optic_EOT552",

	//Grip
	"ptv_acc_grip1",
	"ptv_acc_grip2",
	"ptv_acc_grip3",
	"ptv_acc_grip4",

	//Tactical Device
	"ACE_DBAL_A3_Red",
	"Aegis_acc_pointer_DM"
];

private _itemWeapRifle =
[
	"ptv_rs556",
	"ptv_rs556_b",
	"ptv_rs556s",
	"ptv_rs556s_b"
];

private _itemWeapRifleUGL =
[
	"ptv_rs556_gl",
	"ptv_rs556_gl_b",
	"ptv_RadioBag_01_Woodland"
];

private _itemWeapAR =
[
	"ptv_ng5",
	"ptv_ng5_b",
	"ptv_ng5_sf",
	"ptv_ng5_sf_b"
];

private _itemWeapLAT =
[
	"CUP_launch_M72A6"
];

private _itemWeapPistol =
[
	"ptv_l9a2_g",

	//Pistol Ammo
	"ptv_17Rnd_9mm_L9A2"
];

//Special
private _itemWeapMG =
[
	"ptv_m60e4r_g"
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
	"CUP_30Rnd_556x45_Emag"
];

private _itemAmmoTracer =
[
	"CUP_30Rnd_556x45_Emag_Tracer_Red"
];

private _itemAmmoAR =
[
	"ptv_150Rnd_556x45_Negev",
	"ptv_150Rnd_556x45_Negev_Tracer_Red",
	"B_Carryall_oli"
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
	"ACE_40mm_Flare_white"
];

private _itemExplosive =
[
	"1Rnd_Smoke_Grenade_shell",
	"CUP_1Rnd_Smoke_M203",
	"SmokeShell",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"HandGrenade",
	"ptv_mag_frag03"
];

//Special
private _itemAmmoMG =
[
	"ptv_100Rnd_762x51_B_M60",
	"ptv_100Rnd_762x51_M_M60",
	"ptv_100Rnd_762x51_T_M60"
];

private _itemAmmoMAT =
[
	"MRAWS_HEAT_F",
	"MRAWS_HEAT55_F",
	"MRAWS_HE_F"
];

private _itemEngineer =
[
	"ACE_Clacker",
	"ACE_DefusalKit",
	"ACE_EntrenchingTool",
	"ACE_M26_Clacker",
	"ACE_wirecutter",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
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
