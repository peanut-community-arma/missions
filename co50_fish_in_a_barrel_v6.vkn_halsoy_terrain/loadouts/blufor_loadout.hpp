/*
	US/NATO, M81
	Europe, 199X
*/

class baseMan 
{
	displayName = "Unarmed";
	uniform[] = 
	{
		"$NONE_usm_bdu_wdl$",
		"$NONE_usm_bdu_btisrl_wdl$",
		"$NONE_usm_bdu_bti_wdl$",
		"$NONE_usm_bdu_srl_wdl$",
		"$NONE_usm_bdum65_wdl$"
	};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {"CUP_NVG_PVS7"};
	faces[] = {};
	insignias[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {"acc_flashlight"};
	silencer[] = {};
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	magazines[] = {};
	items[] = 
	{
		LIST_2("ACE_fieldDressing"),
		LIST_2("ACE_packingBandage"),
		LIST_2("ACE_quikclot"),
		LIST_2("ACE_morphine")
	};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	backpackItems[] = {};
	code = "";
};

//Infantry
class rm : baseMan 
{
	displayName = "Rifleman";
	vest[] = 
	{
		"CUP_V_B_PASGT_OD"
	};
	backpack[] = 
	{
		"pca_eagle_a3_m81",
		"pca_kitbag_m81"
	};
	headgear[] = 
	{
		"$NONE_usm_helmet_pasgt_ceswd_wdl$",
		"CUP_H_PASGTv2_NVG_WDL"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	scope[] = 
	{
	};
	magazines[] = 
	{
		LIST_7("rhs_mag_30Rnd_556x45_M855_Stanag"),
		"rhs_mag_m67",
		"SmokeShell"
	};
	//Comment out items[] and backpackItems[] before use as NPCs
	items[] += 
	{
		"ACRE_PRC343",
		LIST_8("ACE_fieldDressing"),
		LIST_3("ACE_packingBandage"),
		LIST_3("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_splint")
	};
	backpackItems[] = 
	{
		LIST_14("rhs_mag_30Rnd_556x45_M855_Stanag"),
		"rhs_mag_m67",
		"SmokeShell"
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] += 
	{
		"CUP_V_B_PASGT_OD"
	};
	backpack[] = 
	{
		"pca_eagle_a3_m81",
		"pca_kitbag_m81"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m249_light_S"
	};
	magazines[] = 
	{
		LIST_3("rhsusf_100Rnd_556x45_M855_mixed_soft_pouch")
	};
	backpackItems[] =
	{
		LIST_3("rhsusf_100Rnd_556x45_M855_mixed_soft_pouch")
	};
};

class aar : rm 
{
	displayName ="Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_eagle_a3_m81",
		"pca_kitbag_m81"
	};
	backpackItems[] = 
	{
		LIST_3("rhsusf_100Rnd_556x45_M855_mixed_soft_pouch")
	};
	linkedItems[] += {"Binocular"};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = {"rhs_weap_m72a7"};
	backpackItems[] += {"rhs_weap_m72a7"};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"CUP_V_B_PASGT_OD"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2_GL"
	};
	secondaryWeapon[] = {""};
	backpackItems[] += 
	{
		LIST_11("rhs_mag_M441_HE"),
		LIST_5("1Rnd_Smoke_Grenade_shell")
	};
};

//Leadership
class tl : rm
{
	displayName = "Fireteam Leader";
	linkedItems[] += {"Binocular"};
};

class sl : tl
{
	displayName = "Squad Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2_GL"
	};
	secondaryWeapon[] = {""};
	backpackItems[] += 
	{
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("1Rnd_SmokeYellow_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_7("rhs_mag_M441_HE")
	};
	items[] += {"ACRE_PRC148"};
};

class co : sl
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"rhs_weap_m4_carryhandle",
		"rhs_weap_m4_carryhandle_mstock"
	};
};

//Specialists
class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	vest[] +=
	{
		"CUP_V_B_PASGT_OD"
	};
	backpack[] = 
	{
		"pca_eagle_a3_m81",
		"pca_kitbag_m81"
	};
	backpackItems[] =
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_bloodIV"),
		LIST_10("ACE_morphine"),
		LIST_10("ACE_epinephrine"),
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa 
{
	displayName = "Combat Life Saver";
	backpackItems[] +=
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage")
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = {"rhs_rk_sht_30_olive_engineer_empty"};
	secondaryWeapon[] = 
	{
		"ACE_VMH3"
	};
	backpackItems[] =
	{
		"ACE_wirecutter",
		"ToolKit",
		"ACE_DefusalKit"
	};
};

//Medium Support Teams
class mmg : ar
{
	displayName = "Medium Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_m240G"
	};
	magazines[] = 
	{
		LIST_3("rhsusf_100Rnd_762x51")
	};
	backpackItems[] =
	{
		LIST_3("rhsusf_100Rnd_762x51")
	};
};

class ammg : aar 
{
	displayName = "Assistant Medium Machine Gunner";
	linkedItems[] += {"Binocular"};
	backpackItems[] =
	{
		LIST_3("rhsusf_100Rnd_762x51")
	};
};

class mat : rm
{
	displayName = "Medium Antitank";
	secondaryWeapon[] = {"rhs_weap_maaws"};
	backpack[] = 
	{
		"pca_eagle_a3_m81",
		"pca_kitbag_m81"
	};
	magazines[] += 
	{
		"rhs_mag_maaws_HEAT"
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Antitank";
	backpack[] = 
	{
		"pca_eagle_a3_m81",
		"pca_kitbag_m81"
	};
	backpackItems[] =
	{
		"rhs_mag_maaws_HEAT"
	};
};

class dm : tl 
{
	displayName = "Designated Marksman";
	headgear[] = 
	{
		"",
		"pca_beanie_oli"
	};
	hmd[] =
	{
		"CUP_NVG_PVS7_Hide"
	};
	backpack[] =
	{
		"B_Static_Designator_01_weapon_F"
	};
	linkedItems[] =
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"B_UavTerminal"
	};
};

//Vehicle Crews
class crew : rm
{
	displayName = "Vehicle Crew";
	traits[] = {"engineer"};
	uniform[] = 
	{
		"CUP_U_B_BDUv2_OD",
		"$NONE_usm_bdu_btisrl_odg$",
		"$NONE_usm_bdu_bti_odg$",
		"CUP_U_B_BDUv2_roll2_OD",
		"CUP_U_B_BDUv2_roll_OD_US"
	};
	vest[] = 
	{
		"CUP_V_B_PASGT_OD"
	};
	backpack[] = 
	{
		"pca_assaultpack_m81",
		"B_AssaultPack_rgr",
		"rhsusf_falconii"
	};
	headgear[] = 
	{
		"CUP_H_CZ_Helmet05"
	};
};

class crew_co : crew
{
	displayName = "Vehicle Commander";
	items[] += {"ACRE_PRC148"};
	linkedItems[] += {"Binocular"};
};

class hp : crew_co
{
	displayName = "Helicopter Crew";
	headgear[] = 
	{
		"rhsusf_hgu56p_black"
	};
};

//Heavy Support Teams
class hmg : mat
{
	displayName = "Heavy Machine Gunner";
	secondaryWeapon[] = {"ace_compat_rhs_usf3_m2_carry"};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class ahmg : hmg
{
	displayName = "Assistant Heavy Machine Gunner";
	secondaryWeapon[] = {"ace_csw_m3CarryTripodLow"};
};

class csw : mat
{
	displayName = "Crew-served Weapon Gunner"
	secondaryWeapon[] = {"ace_compat_rhs_usf3_tow_carry"};
	backpackItems[] = 
	{
		"CUP_compats_TOW_M"
	};
};

class acsw : csw
{
	displayName = "Crew-served Weapon Assistant"
	secondaryWeapon[] = {"ace_csw_m220CarryTripod"};
};

//VIPs
class vip : baseMan
{
	displayName = "VIP";
	uniform[] = 
	{
		"U_C_FormalSuit_01_black_F"
	};
	vest[] = 
	{
		"V_TacVest_blk"
	};
};
