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
	
	//Uniform 
	"Atlas_U_B_H_Soldier_commando_F",
	"Atlas_U_B_H_Soldier_commando_shortsleeve_F",
	
	//Vest
	"V_PlateCarrierIA1_oli",
	"V_PlateCarrierIA2_oli",
	"V_PlateCarrierIAGL_oli",
	
	//Headgear
	"CUP_H_PASGTv2_OD",
	"$NONE_usm_helmet_pasgt_ceswd_odg$",
	"CUP_H_PASGTv2_NVG_OD",
	"$NONE_usm_helmet_pasgt_rms_odg$",
	"H_Bandanna_khk",
	"Aegis_H_Milcap_nohs_grn_F",
	"H_Booniehat_oli",
	"$NONE_usm_bdu_8point_odg$",
	
	//Backpack
	"pca_eagle_a3_od",
	"B_AssaultPackSpec_rgr",
	"amf_felin_tecpack_rgr",
	"B_TacticalPack_rgr",
	"pca_kitbag_od",
	"pca_assaultpack_od",
	"pca_carryall_od",
	"pca_backpack_invisible",
	"pca_backpack_invisible_large"
];

private _itemGearMedic = 
[
	//Vest 
	"milgp_v_jpc_medic_rgr",
	"milgp_v_jpc_medic_belt_rgr"
];

private _itemCosmetic = 
[
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_tan",
	"G_Spectacles",
	"G_Shades_Black",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Bandanna_kawaii",
	"G_Combat_Goggles_blk_F",
	"G_Balaclava_light_blk_F",
	"G_Balaclava_light_G_blk_F",
	"G_Balaclava_light_eaf_F",
	"G_Balaclava_light_G_eaf_F",
	"G_Balaclava_TI_tna_F",
	"G_Balaclava_TI_G_tna_F",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_PMC_Facewrap_Black",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
	"CUP_G_TK_RoundGlasses",
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_ess_black",
	"rhsusf_shemagh_grn",
	"rhsusf_shemagh2_grn",
	"rhsusf_shemagh_od",
	"rhsusf_shemagh2_od",
	"rhsusf_shemagh_gogg_grn",
	"rhsusf_shemagh2_gogg_grn",
	"rhsusf_shemagh_gogg_od",
	"rhsusf_shemagh2_gogg_od",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Embr",
	"$NONE_pca_nvg_glasses_blk$",
	"$NONE_pca_nvg_glasses_clr$",
	"$NONE_pca_nvg_glasses_org$",
	"$NONE_pca_nvg_glasses_ylw$",
	"$NONE_pca_nvg_ess_blk$",
	"$NONE_pca_nvg_face_shield_blk$",
	"$NONE_pca_nvg_face_shield_rgr$",
	"$NONE_pca_nvg_face_shield_shemagh_blk$",
	"$NONE_pca_nvg_face_shield_shemagh_rgr$",
	"$NONE_pca_nvg_shemagh_grn$",
	"$NONE_pca_nvg_shemagh2_grn$",
	"$NONE_pca_nvg_shemagh_od$",
	"$NONE_pca_nvg_shemagh2_od$",
	"$NONE_pca_nvg_oakley_goggles_blk$",
	"$NONE_pca_nvg_oakley_goggles_clr$",
	"$NONE_pca_nvg_oakley_goggles_ylw$",
	"$NONE_pca_nvg_tactical_glasses$",
	"$NONE_pca_nvg_tactical_goggles$",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter"
	
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
	"ACE_bloodIV_250",
	"ACE_bloodIV_500"
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
	"Binocular",
	"rhssaf_zrak_rd7j"
];

private _itemRadio = 
[
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemAcc = 
[
	//Optic
	"cup_optic_microt1",
	"RKSL_optic_EOT552",
	"cup_optic_microt1_low",
	"cup_optic_ac11704_black",
	"$NONE_sma_acc_barska_rds$",
	"optic_aco_grn",
	"optic_aco",
	"$NONE_sma_acc_cmore_blk$",
	"$NONE_sma_acc_cmore_grn$",
	"cup_optic_holoblack",
	"RKSL_optic_EOT552",
	"$NONE_sma_acc_eotech_552_kf_od$",
	"RKSL_optic_EOT552",
	"cup_optic_eotech553_black",
	"CUP_optic_CompM4",
	"cup_optic_compm2_low",
	"cup_optic_compm2_low_od",
	"cup_optic_compm2_black",
	"cup_optic_compm2_od",
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_micro_t2_low$",
	"rhsusf_acc_mrds",
	"ptv_acc_t1",
	"ptv_acc_t1_low",
	"ptv_acc_eot552",
	"$NONE_sma_acc_tasco_propoint$",
	"$NONE_sma_acc_tasco_propoint_glare$",
	"cup_optic_vortexrazor_uh1_black",
	"cup_optic_ac11704_od",
	"cup_optic_vortexrazor_uh1_khaki"
];

private _itemWeapRifle = 
[
	"CUP_Famas_F1_Rail_Wood",
	"CUP_Famas_F1_Rail"
];

private _itemWeapRifleUGL = 
[
	"CUP_glaunch_Mk13",
	"ptv_L2BPG"
];

private _itemWeapAR = 
[
	"CUP_lmg_M60E4",
	"CUP_lmg_M60E4_jungle"
];

private _itemWeapMG = 
[
	"CUP_lmg_M240"
];

private _itemWeapLAT = 
[
	"pca_weap_m136cs",
	"CUP_launch_M136"
];

private _itemWeapPistol = 
[
	"CUP_hgun_Colt1911"
];

private _itemAmmo = 
[
	//Rifle Ammo
	"CUP_25Rnd_556x45_Famas",
	"CUP_25Rnd_556x45_Famas_Wood",
	
	//Pistol Ammo
	"CUP_7Rnd_45ACP_1911",
	
	//Explosives
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",
	"CUP_1Rnd_HE_M203",
	"CUP_1Rnd_HEDP_M203",
	"CUP_1Rnd_HE_M203",
	"SmokeShell",
	"CUP_HandGrenade_M67"
];

private _itemAmmoAR = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoMG = 
[
	"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
	"rhsusf_100Rnd_762x51_m62_tracer"
];

private _itemAmmoSignal = 
[
	"CUP_25Rnd_556x45_Famas_Tracer_Red",
	"CUP_25Rnd_556x45_Famas_Wood_Tracer_Red",
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
	"CUP_1Rnd_StarFlare_Green_M203",
	"CUP_1Rnd_StarFlare_Red_M203",
	"CUP_1Rnd_StarFlare_White_M203",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_Chemlight_HiWhite",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White"
];

private _itemhp = 
[
	"$NONE_hlc_smg_mp5a3$",
	"hlc_30Rnd_9x19_FMJ_MP5",
	"$NONE_hlc_acc_surefiregrip$",
	"rhsusf_hgu56p",
	"rhsusf_hgu56p_mask",
	"rhsusf_hgu56p_mask_mo",
	"rhsusf_hgu56p_mask_skull",
	"rhsusf_hgu56p_visor",
	"rhsusf_hgu56p_visor_mask",
	"rhsusf_hgu56p_visor_mask_mo",
	"rhsusf_hgu56p_visor_mask_skull",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White"
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
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemAcc + _itemWeapPistol + _itemWeapAR + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Automatic Rifleman
	case (_unitRole == "aar") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoAR)] call ace_arsenal_fnc_initBox;
	};
	//Team Leader
	case (_unitRole == "tl") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapPistol + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Squad Leader
	case (_unitRole == "sl") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemWeapPistol + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Platoon Commander
	case (_unitRole == "co") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemWeapPistol + _itemAcc + _itemWeapRifleUGL + _itemWeapRifle + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//FAC
	case (_unitRole == "fac") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemWeapPistol + _itemAcc + _itemWeapRifle + _itemWeapRifleUGL + _itemAmmo + _itemAmmoSignal)] call ace_arsenal_fnc_initBox;
	};
	//Rifleman (First-Aid)
	case (_unitRole == "rm_fa") : 
	{
		[arsenal, (_itemGear + _itemGearMedic + _itemCosmetic + _itemMisc + _itemMed + _itemWeapPistol + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Combat Life Saver
	case (_unitRole == "cls") : 
	{
		[arsenal, (_itemGear + _itemGearMedic + _itemCosmetic + _itemMisc + _itemMed + _itemWeapPistol + _itemMedSpec + _itemAcc + _itemWeapRifle + _itemAmmo)] call ace_arsenal_fnc_initBox;
	};
	//Medium Machine Gunner
	case (_unitRole == "mmg") : 
	{
		[arsenal, (_itemGear + _itemMisc + _itemCosmetic + _itemAcc + _itemWeapMG + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	//Assistant Medium Machine Gunner
	case (_unitRole == "ammg") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemAcc + _itemWeapRifle + _itemAmmo + _itemAmmoMG)] call ace_arsenal_fnc_initBox;
	};
	//Helo Pilot
	case (_unitRole == "hp") : 
	{
		[arsenal, (_itemGear + _itemCosmetic + _itemMisc + _itemBino + _itemRadio + _itemWeapPistol + _itemhp + _itemAmmo)] call ace_arsenal_fnc_initBox;
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