/**
	* Adds curated arsenal to player that disables under specified conditions.
	*
	* Faction:
	*
	* Usage - under initPlayerLocal.sqf
	* 0 = execVM 'loadouts\arsenal.sqf';
*/

//Variables
//================================================================================
private _unitRole = player getVariable ["tmf_assignGear_role",nil];
private _leaderRole = ["tl","sl"];

arsenal = "building" createVehicleLocal [0,0,0];
player setVariable ["startpos", getPosASL player];


//Define Arsenal Items
//================================================================================
private _itemEquipment = 
[
	//================================================================================
	//Uniforms
	//================================================================================
	"CUP_U_B_USArmy_ACU_Gloves_UCP",
	"CUP_U_B_USArmy_ACU_Kneepad_Gloves_UCP",
	"CUP_U_B_USArmy_ACU_Kneepad_Rolled_Gloves_UCP",
	"CUP_U_B_USArmy_ACU_Kneepad_Rolled_UCP",
	"CUP_U_B_USArmy_ACU_Kneepad_UCP",
	"CUP_U_B_USArmy_ACU_Rolled_Gloves_UCP",
	"CUP_U_B_USArmy_ACU_Rolled_UCP",
	"CUP_U_B_USArmy_ACU_UCP",
	
	
	//================================================================================
	//Vests
	//================================================================================
	"rhsusf_iotv_ucp_grenadier",
	"rhsusf_iotv_ucp_medic",
	"rhsusf_iotv_ucp_repair",
	"rhsusf_iotv_ucp_rifleman",
	"rhsusf_iotv_ucp_saw",
	"rhsusf_iotv_ucp_squadleader",
	"rhsusf_iotv_ucp_teamleader",
	"rhsusf_spcs_ucp_crewman",
	"rhsusf_spcs_ucp_grenadier",
	"rhsusf_spcs_ucp_machinegunner",
	"rhsusf_spcs_ucp_medic",
	"rhsusf_spcs_ucp_rifleman",
	"rhsusf_spcs_ucp_rifleman_alt",
	"rhsusf_spcs_ucp_sniper",
	"rhsusf_spcs_ucp_squadleader",
	"rhsusf_spcs_ucp_teamleader",
	"rhsusf_spcs_ucp_teamleader_alt",
	
	
	//================================================================================
	//Headgears
	//================================================================================
	//RHS
	"rhsusf_ach_helmet_ucp",
	"rhsusf_ach_helmet_ucp_alt",
	"rhsusf_ach_helmet_ess_ucp",
	"rhsusf_ach_helmet_ess_ucp_alt",
	"rhsusf_ach_helmet_headset_ucp",
	"rhsusf_ach_helmet_headset_ucp_alt",
	"rhsusf_ach_helmet_headset_ess_ucp",
	"rhsusf_ach_helmet_headset_ess_ucp_alt",
	
	//Bearskins
	"bear_mich_bare_gray",
	"bear_mich_bare_gray_alt",
	"bear_mich_bare_gray_norotos",
	"bear_mich_bare_gray_norotos_alt",
	
	//WSX
	"$NONE_mich_norotos_spray1$",
	"$NONE_mich_rhino_spray1$",
	"$NONE_mich_norotos_spray4$",
	"$NONE_mich_rhino_spray4$",
	
	
	//================================================================================
	//Backpacks
	//================================================================================
	//RHS
	"rhsusf_assault_eagleaiii_ucp",
	
	//PCA
	"pca_backpack_invisible",
	"pca_backpack_invisible_large",
	
	
	//================================================================================
	//Cosmetics
	//================================================================================
	//BIS
	"G_Aviator",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Goggles_VR",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Spectacles_Tinted",
	"G_Sport_Blackred",
	"G_Squares",
	"G_Squares_Tinted",
	"G_WirelessEarpiece_F",

	//RHS
	"rhs_ess_black",
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhs_scarf",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
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

	//Aegis
	"G_Bandanna_CandySkull",
	"G_Bandanna_kawaii",
	"G_Bandanna_shemag",
	"G_Bandanna_Skull2",
	"G_Bandanna_Syndikat1",
	"G_Bandanna_Syndikat2",
	"G_Headset_light",
	"G_Shades_Yellowred",
	"CUP_FR_NeckScarf2",
	"$NONE_aegis_shemag_shades_khk$",
	"$NONE_aegis_shemag_tactical_khk$",
	"CUP_FR_NeckScarf",
	"$NONE_aegis_shemag_shades_oli$",
	"G_Shemag_tactical",
	"G_Shemag_tan",
	"$NONE_aegis_shemag_shades_tan$",
	"G_Shemag_tan",

	//Bearskins
	"bear_bandana_atacs_fg",
	"bear_bandana_m81",
	"bear_bandana_multicam",

	//Military Gear Packs
	"milgp_f_face_shield_blk",
	"milgp_f_face_shield_cb",
	"milgp_f_face_shield_khk",
	"milgp_f_face_shield_rgr",
	"milgp_f_face_shield_shemagh_blk",
	"milgp_f_face_shield_shemagh_cb",
	"milgp_f_face_shield_shemagh_khk",
	"milgp_f_face_shield_shemagh_rgr",
	"milgp_f_face_shield_goggles_blk",
	"milgp_f_face_shield_goggles_cb",
	"milgp_f_face_shield_goggles_khk",
	"milgp_f_face_shield_goggles_rgr",
	"milgp_f_face_shield_goggles_shemagh_blk",
	"milgp_f_face_shield_goggles_shemagh_cb",
	"milgp_f_face_shield_goggles_shemagh_khk",
	"milgp_f_face_shield_goggles_shemagh_rgr",
	"milgp_f_face_shield_shades_blk",
	"milgp_f_face_shield_shades_cb",
	"milgp_f_face_shield_shades_khk",
	"milgp_f_face_shield_shades_rgr",
	"milgp_f_face_shield_shades_shemagh_blk",
	"milgp_f_face_shield_shades_shemagh_cb",
	"milgp_f_face_shield_shades_shemagh_khk",
	"milgp_f_face_shield_shades_shemagh_rgr",
	"milgp_f_face_shield_tactical_blk",
	"milgp_f_face_shield_tactical_cb",
	"milgp_f_face_shield_tactical_khk",
	"milgp_f_face_shield_tactical_rgr",
	"milgp_f_face_shield_tactical_shemagh_blk",
	"milgp_f_face_shield_tactical_shemagh_cb",
	"milgp_f_face_shield_tactical_shemagh_khk",
	"milgp_f_face_shield_tactical_shemagh_rgr",
	"milgp_f_goggles_khk",
	"milgp_f_tactical_khk",

	//DHI
	"$REMOVE_usm_scarf$",
	"$REMOVE_usm_scarf2$",
	"$NONE_usm_nvg_scarf$",
	"$NONE_usm_nvg_scarf2$",

	//CUP
	//ESS
	"CUP_G_ESS_BLK",
	"CUP_G_ESS_BLK_Dark",
	"CUP_G_ESS_BLK_Ember",
	"CUP_G_ESS_CBR",
	"CUP_G_ESS_CBR_Dark",
	"CUP_G_ESS_CBR_Ember",
	"CUP_G_ESS_KHK",
	"CUP_G_ESS_KHK_Dark",
	"CUP_G_ESS_KHK_Ember",
	"CUP_G_ESS_RGR",
	"CUP_G_ESS_RGR_Dark",
	"CUP_G_ESS_RGR_Ember",
	"CUP_G_ESS_BLK_Facewrap_Black",
	"CUP_G_ESS_KHK_Facewrap_Tan",
	"CUP_G_ESS_RGR_Facewrap_Tropical",
	"CUP_G_ESS_BLK_Scarf_Blk",
	"CUP_G_ESS_BLK_Scarf_Grn",
	"CUP_G_ESS_KHK_Scarf_Tan",
	"CUP_G_ESS_BLK_Scarf_Face_Blk",
	"CUP_G_ESS_BLK_Scarf_Face_Grn",
	"CUP_G_ESS_KHK_Scarf_Face_Tan",
	//Glasses
	"CUP_G_Grn_Scarf_Shades",
	"CUP_G_Tan_Scarf_Shades",
	"CUP_G_Oakleys_Clr",
	"CUP_G_Oakleys_Drk",
	"CUP_G_Oakleys_Embr",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Black_Glasses_Ember",
	"CUP_G_PMC_Facewrap_Tan_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Tan_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Tan_Glasses_Ember",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Dark_Headset",
	"CUP_G_PMC_Facewrap_Tropical_Glasses_Ember",
	"CUP_G_TK_RoundGlasses_blk",
	//Face Covers
	"CUP_FR_NeckScarf",
	"CUP_FR_NeckScarf2",
	"CUP_FR_NeckScarf3",
	"CUP_G_Scarf_Face_Blk",
	"CUP_G_Scarf_Face_Grn",
	"CUP_G_Scarf_Face_Tan",
	"CUP_PMC_Facewrap_Black",
	"CUP_PMC_Facewrap_Tan",
	"CUP_PMC_Facewrap_Tropical",
	"CUP_TK_NeckScarf",
	
	
	//================================================================================
	//MISC
	//================================================================================
	//ACRE
	"ACRE_PRC343",

	//ACE
	"ACE_ATragMX",
	"ACE_CableTie",
	"ACE_Flashlight_XL50",
	"ACE_IR_Strobe_Item",
	"ACE_Kestrel4500",
	"ACE_MapTools",
	"ACE_RangeCard",

	//BIS
	"ItemCompass",
	"ItemMap",
	"ItemWatch",
	"Laserbatteries",
	"ToolKit"
];

private _itemSpecial =
[
	//================================================================================//
	//Binoculars
	//================================================================================//
	//BIS
	"Binocular",
	
	//RHS
	"rhsusf_bino_m24",
	"rhsusf_bino_m24_ard",
	
	
	//================================================================================
	//Explosives
	//================================================================================
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
	
	
	//================================================================================
	//Radios
	//================================================================================
	"ACRE_PRC148",
	"ACRE_PRC152",
	"ACRE_PRC117F"
];

private _itemMedical = 
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

private _itemMedicalAdv = 
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

private _itemMod =
[
	//================================================================================
	//Optics
	//================================================================================
	//BIS
	"optic_holosight",
	"optic_holosight_blk_f",
	
	//RHS
	"rhs_optic_maaws",
	"rhsusf_acc_acog",
	"rhsusf_acc_acog_d",
	"rhsusf_acc_acog2",
	"rhsusf_acc_acog3",
	"rhsusf_acc_acog_rmr",
	"rhsusf_acc_compm4",
	"rhsusf_acc_elcan",
	"rhsusf_acc_elcan_ard",
	"rhsusf_acc_eotech",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_552_d",
	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_g33_t1",
	"rhsusf_acc_g33_xps3",
	"rhsusf_acc_mrds",
	"rhsusf_acc_mrds_c",
	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_c",
	"rhsusf_acc_su230a_mrds",
	"rhsusf_acc_su230a_mrds_c",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",
	"$NONE_sma_acc_elcan_specter_blk$",
	"cup_optic_elcan_specterdr_black",
	"cup_optic_elcan_specterdr_coyote",
	"cup_optic_elcan_specterdr_rmr_black",
	"cup_optic_elcan_specterdr_rmr_coyote",
	
	
	//SMA
	"$NONE_sma_acc_eotech_552_blk$",
	"$NONE_sma_acc_eotech_552_g33_blk$",
	"$NONE_sma_acc_eotech_552_g33_tan$",
	"$NONE_sma_acc_eotech_552_kf_blk$",
	"$NONE_sma_acc_eotech_552_kf_tan$",
	"$NONE_sma_acc_eotech_xps3_blk$",
	"$NONE_sma_acc_eotech_xps3_g33_blk$",
	"$NONE_sma_acc_micro_t2$",
	"$NONE_sma_acc_micro_t2_g33$",
	"$NONE_sma_acc_micro_t2_low$",
	
	//PCA
	"RKSL_optic_EOT552",
	"RKSL_optic_EOT552X",
	
	//CUP
	"cup_optic_compm2_low",
	"cup_optic_compm2_low_coyote",
	"cup_optic_compm4",
	"cup_optic_eotech553_black",
	"cup_optic_eotech553_coyote",
	"cup_optic_microt1",
	"cup_optic_microt1_coyote",
	"cup_optic_microt1_low",
	"cup_optic_microt1_low_coyote",
	"cup_optic_holoblack",
	
	
	//================================================================================
	//Bipod & Foregrips
	//================================================================================
	//bis
	"bipod_01_f_blk",
	"bipod_02_f_blk",
	"bipod_03_f_blk",
	
	//rhs
	"rhs_acc_harris_swivel",
	"rhsusf_acc_grip1",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip2_tan",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip4",
	"rhsusf_acc_grip4_bipod",
	"rhsusf_acc_harris_bipod",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_kac_grip_saw_bipod",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_rvg_de",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_saw_lw_bipod",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_tdstubby_tan",
	
	//cup
	"cup_bipod_harris_1a2_l_blk",
	"cup_bipod_vltor_modpod_black",
	
	
	//================================================================================
	//Tactical Devices
	//================================================================================
	//BIS
	"acc_pointer_ir",
	"acc_flashlight",
	
	//RHS
	"rhsusf_acc_anpeq15",
	"rhsusf_acc_anpeq15_bk",
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15_bk_top",
	"rhsusf_acc_anpeq15a",
	"rhsusf_acc_m952v",
	"rhsusf_acc_wmx_bk",
	
	//CUP
	"cup_acc_anpeq_15_black",
	"cup_acc_anpeq_15_black_top",
	"cup_acc_anpeq_15_flashlight_black_l",
	"cup_acc_anpeq_15_top_flashlight_black_l",
	"cup_acc_flashlight"
];

private _itemWeaponRifle =
[
	"rhs_weap_mk17_CQC",
	"rhs_weap_mk17_STD"
];

private _itemWeaponAR = 
[
	"CUP_lmg_Mk48",
	"CUP_lmg_Mk48_nohg"
];

private _itemWeaponMG = 
[
	"rhs_weap_m240B"
];

private _itemWeaponGL =
[
	"rhs_weap_M320"
];

private _itemWeaponLAT = 
[
	"rhs_weap_M136",
	"rhs_weap_M136_hedp",
	"rhs_weap_M136_hp"
];

private _itemWeaponMAT = 
[
	"rhs_weap_maaws"
];

private _itemWeaponPistol = 
[
	//RHS
	"rhsusf_weap_m9",
	
	//CUP
	"CUP_hgun_M9"
];

private _itemWeaponAmmo =
[
	//================================================================================
	//7.62x51mm
	//================================================================================
	"rhs_mag_20Rnd_SCAR_762x51_m80a1_epr",
	"rhs_mag_20Rnd_SCAR_762x51_m80a1_epr_bk",
	
	
	//================================================================================
	//Pistol Cartridges
	//================================================================================
	"rhsusf_mag_15Rnd_9x19_JHP",
	
	
	//================================================================================
	//Explosives
	//================================================================================
	//ACE
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow",

	//BIS
	"1Rnd_Smoke_Grenade_shell",
	"SmokeShell",

	//RHS
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_an_m8hc",
	"rhs_mag_m67"
];

private _itemWeaponARAmmo =
[
	"rhsusf_100Rnd_762x51_m62_tracer",
	"rhsusf_100Rnd_762x51_m80a1epr"
];

private _itemWeaponMATAmmo = 
[
	"rhs_mag_maaws_HEAT",
	"rhs_mag_maaws_HEDP",
	"rhs_mag_maaws_HE"
];


//Add Items
//================================================================================
{
    _itemEquipment pushBackUnique _x;
}forEach (primaryWeaponItems player);

{
    _itemEquipment pushBackUnique _x;
}forEach (handgunItems player);

_itemEquipment pushBack uniform player;
_itemEquipment pushBack vest player;
_itemEquipment pushBack backpack player;
_itemEquipment pushBack headgear player;

{
    _itemEquipment pushBackUnique _x;
} forEach (assignedItems player);

switch (true) do 
{
	case (_unitRole == "rm") :
	{
		[arsenal, (_itemEquipment + _itemMod + _itemWeaponRifle + _itemWeaponLAT + _itemWeaponAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "ar") :
	{
		[arsenal, (_itemEquipment + _itemMod + _itemWeaponAR + _itemWeaponPistol + _itemWeaponAmmo + _itemWeaponARAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "aar") :
	{
		[arsenal, (_itemEquipment + _itemMod + _itemWeaponRifle + _itemWeaponAmmo + _itemWeaponARAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "tl") :
	{
		[arsenal, (_itemEquipment + _itemSpecial + _itemMod + _itemWeaponRifle + _itemWeaponGL + _itemWeaponPistol + _itemWeaponAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "sl") :
	{
		[arsenal, (_itemEquipment + _itemSpecial + _itemMod + _itemWeaponRifle + _itemWeaponGL + _itemWeaponPistol + _itemWeaponAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "plt") :
	{
		[arsenal, (_itemEquipment + _itemSpecial + _itemMod + _itemWeaponRifle + _itemWeaponGL + _itemWeaponPistol + _itemWeaponAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "rm_fa") :
	{
		[arsenal, (_itemEquipment + _itemMedical + _itemMod + _itemWeaponRifle + _itemWeaponAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "cls") :
	{
		[arsenal, (_itemEquipment + _itemMedical + _itemMedicalAdv + _itemMod + _itemWeaponRifle + _itemWeaponPistol + _itemWeaponAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "mat") :
	{
		[arsenal, (_itemEquipment + _itemMod + _itemWeaponRifle + _itemWeaponMAT + _itemWeaponPistol + _itemWeaponAmmo + _itemWeaponMATAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "amat") :
	{
		[arsenal, (_itemEquipment + _itemMod + _itemSpecial + _itemWeaponRifle + _itemWeaponPistol + _itemWeaponAmmo + _itemWeaponMATAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "mg") :
	{
		[arsenal, (_itemEquipment + _itemMod + _itemWeaponMG + _itemWeaponPistol + _itemWeaponAmmo + _itemWeaponARAmmo)] call ace_arsenal_fnc_initBox;
	};
	case (_unitRole == "amg") :
	{
		[arsenal, (_itemEquipment + _itemMod + _itemSpecial + _itemWeaponRifle + _itemWeaponPistol + _itemWeaponAmmo + _itemWeaponARAmmo)] call ace_arsenal_fnc_initBox;
	};
	default 
	{
		[arsenal, (_itemEquipment + _itemMod + _itemWeaponRifle + _itemWeaponAmmo)] call ace_arsenal_fnc_initBox;
	};
};

_action = 
[
	"personal_arsenal","Personal Arsenal","\A3\ui_f\data\igui\cfg\weaponicons\MG_ca.paa",
	{
		[arsenal, _player] call ace_arsenal_fnc_openBox
	},
	{ 
		(player distance2d (player getVariable ["startpos",[0,0,0]])) < 50
	},
	{},
	[],
	[0,0,0],
	3
] call ace_interact_menu_fnc_createAction;

["CAManBase", 1, ["ACE_SelfActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;