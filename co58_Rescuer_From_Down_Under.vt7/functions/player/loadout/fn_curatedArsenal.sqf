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
	"Atlas_U_B_A_CombatUniform_aucamo",
	"Atlas_U_B_A_CombatUniform_shortsleeve_aucamo"
];

private _itemUniformCrew = 
[
	"Atlas_U_B_A_CombatUniform_aucamo",
	"Atlas_U_B_A_CombatUniform_shortsleeve_aucamo"
];

private _itemUniformPilot = 
[
	"Atlas_U_B_A_CombatUniform_aucamo",
	"Atlas_U_B_A_CombatUniform_shortsleeve_aucamo"
];

//Vest
private _itemVest = 
[
	"V_PlateCarrier2_aucamo_F",
	"V_PlateCarrier1_aucamo_F",
	"V_PlateCarrierGL_aucamo_F",
	"V_PlateCarrierGL_aucamo_F"
];

private _itemVestCrew = 
[
	"V_PlateCarrier2_aucamo_F",
	"V_PlateCarrier1_aucamo_F",
	"V_PlateCarrierGL_aucamo_F",
	"V_PlateCarrierGL_aucamo_F"
];

private _itemVestPilot = 
[
	"V_PlateCarrier2_aucamo_F",
	"V_PlateCarrier1_aucamo_F",
	"V_PlateCarrierGL_aucamo_F",
	"V_PlateCarrierGL_aucamo_F"
];

//Headgear 
private _itemHeadgear = 
[
	"ptv_m17_helmet_arc_rgr",
	"ptv_m17_helmet_arc_ess_cover_rgr",
	"ptv_m17_helmet_arc_ess_rgr",
	"ptv_m17_helmet_rgr",
	"ptv_m17_helmet_ess_cover_rgr",
	"ptv_m17_helmet_ess_rgr",
	"H_HelmetHBK_aucamo_F",
	"H_HelmetHBK_aucamo_chops_F",
	"H_HelmetHBK_aucamo_ear_F",
	"H_HelmetHBK_aucamo_headset_F",
	"H_Booniehat_aucamo_F",
	"H_Cap_aucamo",
	"H_MilCap_aucamo"
];

private _itemHeadgearLead = 
[
	"H_Beret_brn_SF"
];

private _itemHeadgearCrew = 
[
	"H_Beret_brn_SF"
];

private _itemHeadgearPilot = 
[
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_mask",
	"rhsusf_hgu56p_mask_mo",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_visor_mask",
	"rhsusf_hgu56p_visor_mask_mo",
	"H_HelmetHBK_aucamo_F",
	"H_HelmetHBK_aucamo_chops_F",
	"H_HelmetHBK_aucamo_ear_F",
	"H_HelmetHBK_aucamo_headset_F",
	"H_Booniehat_aucamo_F",
	"H_Cap_aucamo",
	"H_MilCap_aucamo"
];

//Backpack 
private _itemBackpack = 
[
	"B_Kitbag_aucamo_F",
	"B_Carryall_aucamo",
	"B_AssaultPack_aucamo_F"
];

private _itemBackpackCrew = 
[
	"pca_backpack_invisible"
];

private _itemBackpackPilot = 
[
	"pca_backpack_invisible"
];

//Cosmetic 
private _itemCosmetic = 
[
	"G_AirPurifyingRespirator_01_F",
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_yellow",
	"rhs_googles_orange",
	"rhs_ess_black",
	"G_Bandanna_aviator",
	"G_Bandanna_blk",
	"G_Bandanna_kawaii",
	"pca_bandana_mc",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Combat",
	"G_Combat_Goggles_blk_F",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_RGR",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Balaclava_light_mtp_F",
	"G_Balaclava_light_G_mtp_F",
	"milgp_f_face_shield_mc",
	"milgp_f_face_shield_goggles_mc",
	"milgp_f_face_shield_goggles_shemagh_mc",
	"milgp_f_face_shield_shades_mc",
	"milgp_f_face_shield_shades_shemagh_mc",
	"milgp_f_face_shield_shemagh_mc",
	"milgp_f_face_shield_tactical_mc",
	"milgp_f_face_shield_tactical_shemagh_mc",
	"G_Balaclava_light_wdl_F",
	"G_Balaclava_light_G_wdl_F",
	"CUP_G_TK_RoundGlasses",
	"CUP_G_TK_RoundGlasses_blk",
	"CUP_FR_NeckScarf2",
	"$NONE_aegis_shemag_shades_khk$",
	"$NONE_aegis_shemag_tactical_khk$",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"milgp_f_tactical_khk",
	"G_Tactical_Yellow",
	"milgp_f_goggles_khk",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"CUP_G_Oakleys_Embr",
	"G_Spectacles",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"milgp_f_tactical_khk",
	"G_Tactical_Yellow",
	"milgp_f_goggles_khk",
	
	
	"pca_balaclava_blk_1",
	"pca_balaclava_blk_2",
	"pca_balaclava_oli_1",
	"pca_balaclava_oli_2",
	"$NONE_pca_nvg_balaclava$",
	"$NONE_pca_nvg_balaclava2$",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"$NONE_pca_nvg_face_shield_mc$",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_mc$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"Goggles_grn_F",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"pca_nvg_shemagh_lowered_khk",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
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

private _itemAcc = 
[
	//Optic
	"CUP_optic_MicroT1",
	"CUP_optic_MicroT1_low",
	"CUP_optic_MicroT1_low_OD",
	"CUP_optic_MicroT1_OD",
	"CUP_optic_AC11704_Black",
	"CUP_optic_AC11704_OD",
	"$NONE_sma_acc_barska_rds$",
	"optic_ACO_grn",
	"optic_Aco",
	"$NONE_sma_acc_cmore_blk$",
	"$NONE_sma_acc_cmore_grn$",
	"CUP_optic_HoloBlack",
	"RKSL_optic_EOT552",
	"CUP_optic_Eotech553_Black",
	"CUP_optic_Eotech553_OD",
	
	"optic_Holosight_blk_F",
	"optic_Holosight_lush_F",
	"RKSL_optic_EOT552",
	"rhsusf_acc_eotech_552_wd",
	"CUP_optic_CompM4",
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_micro_t2_low$",
	"ptv_acc_compm4s",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"ptv_acc_eot552",
	"rhsusf_acc_RX01_NoFilter",
	"rhsusf_acc_RX01",
	"CUP_optic_TrijiconRx01_black",
	"CUP_optic_TrijiconRx01_kf_black",
	
	"CUP_optic_VortexRazor_UH1_Black",
	"CUP_optic_VortexRazor_UH1_OD",
	"$NONE_sma_acc_vortex_blk$",
	"$NONE_sma_acc_vortex_lc_blk$",
	"CUP_optic_CompM4",
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_micro_t2_low$",
	"ptv_acc_compm4s",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"ptv_acc_eot552",
	"rhsusf_acc_RX01_NoFilter",
	"rhsusf_acc_RX01",
	"CUP_optic_TrijiconRx01_black",
	"CUP_optic_TrijiconRx01_kf_black",
	
	//Grip
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip4",
	"rhsusf_acc_grip4_bipod",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_kac_grip_saw_bipod",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_rvg_de",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_saw_lw_bipod",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_tdstubby_tan"
];

private _itemWeapRifle = 
[
	"arifle_AUG_black_F",
	"arifle_AUG_C_black_F",
	"arifle_AUG_F",
	"arifle_AUG_C_F"
];

private _itemWeapRifleUGL = 
[
	"arifle_AUG_GL_black_F",
	"arifle_AUG_GL_F"
];

private _itemWeapAR = 
[
	"CUP_lmg_Mk48_nohg",
	"CUP_lmg_Mk48_nohg_od",
	"CUP_lmg_Mk48_nohg_wdl",
	"CUP_lmg_Mk48",
	"CUP_lmg_Mk48_od",
	"CUP_lmg_Mk48_wdl"
];

private _itemWeapLAT = 
[
	"CUP_launch_M136"
];

private _itemWeapPistol = 
[
	"$NONE_hlc_pistol_p226$",
	"hlc_15Rnd_9x19_FMJ_P226"
];

//Special
private _itemWeapMG = 
[
	"CUP_lmg_M240"
];

private _itemWeapMAT = 
[
	"sp_fwa_m2_carlGustav_no78"
];

//********************************************************************************//
// Ammunitions
//********************************************************************************//

private _itemAmmo = 
[
	//Rifle Ammo
	"hlc_30Rnd_556x45_EPR_AUG",
	"hlc_30Rnd_556x45_EPR_T_AUG",
	
	//Pistol Ammo
	"hlc_15Rnd_9x19_FMJ_P226"
];

private _itemAmmoTracer = 
[
	"hlc_30Rnd_556x45_EPR_T_AUG"
];

private _itemAmmoAR = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
	"rhsusf_100Rnd_762x51_m62_tracer"
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
	"1Rnd_SmokeYellow_Grenade_shell"
];

private _itemExplosive = 
[
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"CUP_HandGrenade_M67"
];

//Special
private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMAT = 
[
	"fwa_1rnd_m2_carlgustaf_HEAT",
	"fwa_1rnd_m2_carlgustaf_HE",
	"fwa_1rnd_m2_carlgustaf_WP"
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
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemWeapRifleUGL + _itemAmmo + _itemAmmoTracer + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader 
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemHeadgearLead + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Sergeant 
	case (_unitRole == "sgt") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemHeadgearLead + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander 
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemHeadgearLead + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
	};
	//Forward Air Controller
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemUniform + _itemVest + _itemHeadgear + _itemHeadgearLead + _itemBackpack + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemWeapPistol + _itemAmmo + _itemAmmoTracer + _itemAmmoSignal + _itemExplosive)] call ace_arsenal_fnc_initBox;
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