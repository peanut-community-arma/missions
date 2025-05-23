/*
	Iranian Army, Desert
	202X
*/

class baseMan 
{
	displayName = "Unarmed";
	uniform[] = 
	{
		"pca_uniform_m88_field_od",
		"pca_uniform_afghanka"
	};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = 
	{
		LIST_3(""),
		"rhs_balaclava",
		"simc_bandoleer_low_flak",
		"simc_bandoleer_left_flak",
		"CUP_G_WristWatch",
		"CUP_TK_NeckScarf",
		"aegis_shemagh_loop_tan",
		"aegis_shemag_red"
	};
	hmd[] = {};
	faces[] = {"default"};
	insignias[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {LIST_17(""),LIST_8("rhs_acc_2dpzenit")};
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
		LIST_2("rhs_6b3"),
		"rhs_6b3_AK",
		"rhs_6b3_AK_2",
		"rhs_6b3_AK_3"
	};
	headgear[] = 
	{
		"CUP_H_RUS_SSH68_green",
		"CUP_H_RUS_SSH68_olive"
	};
	backpack[] = 
	{
		"rhs_sidor",
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		LIST_3("rhs_weap_aks74n"),
		LIST_6("rhs_weap_ak74n"),
		"rhs_weap_aks74un"
	};
	magazines[] = 
	{
		LIST_3("rhs_30Rnd_545x39_7N6_AK"),
		LIST_4("rhs_30Rnd_545x39_AK_green"),
		"rhs_mag_f1",
		"SmokeShell"
	};
	//Comment out items[] and backpackItems[] before use as NPCs
	/*items[] += 
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
		LIST_14("rhs_30Rnd_545x39_7N6_AK"),
		"rhs_mag_f1",
		"SmokeShell"
	};*/
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_6b3_RPK"
	};
	backpack[] = 
	{
		"rhs_sidor"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_rpk74m"
	};
	magazines[] = 
	{
		LIST_3("rhs_45Rnd_545X39_7N6_AK")
	};
	backpackItems[] =
	{
		LIST_4("rhs_45Rnd_545X39_7N6_AK")
	};
};

class aar : rm 
{
	displayName ="Assistant Automatic Rifleman";
	backpack[] = 
	{
		"rhs_sidor"
	};
	backpackItems[] = 
	{
		LIST_3("rhs_45Rnd_545X39_7N6_AK")
	};
	linkedItems[] += {"Binocular"};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = {"rhs_weap_rpg26"};
	//backpackItems[] += {"rhs_weap_rpg26"};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"rhs_6b3_VOG",
		"rhs_6b3_VOG_2"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak74n_gp25",
		"rhs_weap_aks74n_gp25"
	};
	secondaryWeapon[] = {""};
	backpackItems[] += 
	{
		LIST_11("rhs_VOG25"),
		LIST_5("rhs_GRD40_White")
	};
};

//Leadership
class tl : rm
{
	displayName = "Fireteam Leader";
	headgear[] = 
	{
		LIST_9("rhs_beret_vdv_early"),
		"pca_ushanka"
	};
	vest[] += 
	{
		"rhs_6b3_VOG",
		"rhs_6b3_VOG_2"
	};
	scope[] += {LIST_9(""),"rhs_acc_1pn34"};
	linkedItems[] += {"Binocular"};
};

class sl : tl
{
	displayName = "Squad Leader";
	primaryWeapon[] = 
	{
		"rhs_weap_aks74n_gp25"
	};
	secondaryWeapon[] = {""};
	backpackItems[] += 
	{
		LIST_2("rhs_GRD40_Red"),
		LIST_2("rhs_GRD40_White"),
		LIST_2("rhs_GRD40_Green"),
		LIST_2("rhs_VG40OP_white"),
		LIST_7("rhs_VOG25")
	};
	items[] += {"ACRE_PRC148"};
};

class co : sl
{
	displayName = "Platoon Commander";
};

//Specialists
class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = {"pca_carryall_od"};
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
	backpack[] = {"pca_carryall_od"};
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
		"rhs_weap_pkm"
	};
	magazines[] = 
	{
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
	backpackItems[] =
	{
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
};

class ammg : aar 
{
	displayName = "Assistant Medium Machine Gunner";
	linkedItems[] += {"Binocular"};
	backpackItems[] =
	{
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
};

class mat : rm
{
	displayName = "Medium Antitank";
	secondaryWeapon[] = {"rhs_weap_rpg7"};
	backpack[] = {"rhs_rpg_6b3"};
	magazines[] += 
	{
		LIST_2("rhs_rpg7_PG7VL_mag")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Antitank";
	backpack[] = {"rhs_rpg_6b3"};
	backpackItems[] =
	{
		LIST_2("rhs_rpg7_PG7VL_mag")
	};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	headgear[] += 
	{
		"pca_m88_fieldcap",
		"rhs_beret_vdv_early",
		"usm_headwrap_odg2",
		"H_Shemag_olive"
	};
	primaryWeapon[] = {"rhs_weap_svds"};
	scope[] =
	{
		"rhs_acc_1pn34"
	};
	magazines[] = 
	{
		LIST_20("rhs_10Rnd_762x54mmR_7N1")
	};
};

//Vehicle Crews
class crew : rm
{
	displayName = "Vehicle Crew";
	traits[] = {"engineer"};
	uniform[] = 
	{
		"rhs_uniform_afghanka"
	};
	vest[] = 
	{
		"rhs_6sh92_vsr_headset"
	};
	backpack[] = 
	{
		"bear_sidor_tan"
	};
	headgear[] = 
	{
		"pca_fieldcap_cdf_ttsko_autumn",
		"pca_m88_fieldcap_spetsodezhda_od",
		"rhs_fieldcap_m88"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74un"
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew
{
	displayName = "Vehicle Commander";
	headgear[] = 
	{
		"rhs_cossack_visor_cap_tan"
	};
	goggles[] = 
	{
		"CUP_Beard_Black",
		"CUP_Beard_Brown"
	};
	hmd[] = 
	{
		"immersion_cigs_cigar0_nv",
		"murshun_cigs_cig0_nv"
	};
	items[] += {"ACRE_PRC148"};
	linkedItems[] += {"Binocular"};
};

class hp : crew_co
{
	displayName = "Helicopter Crew";
	headgear[] = 
	{
		"rhs_zsh7a_mike_alt",
		"rhs_zsh7a_mike"
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
	secondaryWeapon[] = {"ace_compat_rhs_afrf3_spg9m_carry"};
	backpackItems[] = 
	{
		"CUP_compats_PG9_M"
	};
};

class acsw : csw
{
	displayName = "Crew-served Weapon Assistant"
	secondaryWeapon[] = {"ace_csw_spg9CarryTripod"};
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
		"aegis_tacvest_blk"
	};
};
