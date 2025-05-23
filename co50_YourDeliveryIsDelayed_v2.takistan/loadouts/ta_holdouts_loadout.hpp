/*
	* Example Enemy Loadout
	* Template for creating enemy loadouts.
	* Faction: Example Russian Army Loadout (EMR, 2020)
*/

// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized. Use LIST_X("className") for multiple items in an array. 
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {"default"};
	hmd[] = {};
	// Leave empty to not change faces and Insignias -> example: faces[] = {};
	faces[] = {"faceset:persian"};
	insignias[] = {};
	//All Randomized. Add Primary Weapon and attachments.
	//Leave Empty to remove all. {"Default"} for using original items the character start with.
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	// *WARNING* secondaryAttachments[] arrays are NOT randomized.
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there's any.
	magazines[] = {};
	items[] = 
	{
		LIST_2("ACE_fieldDressing"),
		"ACE_packingBandage",
		//"ACE_quikclot",
		"ACE_tourniquet",
		"ACE_morphine",
		"ACE_splint"
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack.
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit.
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman (FAL)";
	uniform[] = 
	{
		"bear_uniform_m93_olive_takistanibrush",
		"bear_uniform_m93_olive",
		"bear_uniform_m93_olivegray"
	};
	vest[] = 
	{
		LIST_4("CUP_V_O_TK_Vest_1"),
		"CUP_V_O_SLA_M23_1_OD"
	};
	headgear[] = 
	{
		LIST_3("CUP_H_TK_Helmet"),
		LIST_2("CUP_H_SLA_Helmet_DES_worn")
	};
	goggles[] =
	{
		"CUP_FR_NeckScarf",
		"CUP_FR_NeckScarf2"
	};
	backpack[] = 
	{
		""
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_20Rnd_762x51_FNFAL_M")
	};
};

class rm_74 : rm 
{
	displayName = "Rifle (AK-74)";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74_Early",
		"CUP_arifle_AKS74_Early"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_13("CUP_30Rnd_545x39_AK74_plum_M")
	};
};

class ar : rm 
{
	displayName = "AR (RPK-74M)";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
	};
};

class rm_m16 : rm 
{
	displayName = "Rifle (M16A2)";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_13("30Rnd_556x45_Stanag_green"),
	};
};

class mg : rm 
{
	displayName = "Machine Gunner (PKM)";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG18"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"CUP_B_RPGPack_Khaki"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] = 
	{
		"CUP_PG7V_M",
		"CUP_TBG7V_M"
	};
};

class gren : rm_m16 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2_GL"
	};
	magazines[] += 
	{
		LIST_2("1Rnd_HE_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"CUP_V_O_TK_Vest_2"
	};
	backpack[] = 
	{
		"CUP_B_TK_Medic_Desert"
	};
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_salineIV_500"),
		LIST_2("ACE_adenosine")
	};
};

class mlt : rm
{
	displayName = "Militia (FAL)"
	uniform[] =
	{
		"bear_uniform_m93_olive_takistanibrush",
	"bear_uniform_m93_olive",
	"bear_uniform_m93_olivegray"
	};
	vest[] = 
	{
		"CUP_V_OI_TKI_Jacket5_04",
		"CUP_V_OI_TKI_Jacket3_04",
		"CUP_V_OI_TKI_Jacket3_05"
	};
	headgear[] =
	{
		LIST_7(""),
		"CUP_H_TKI_Lungee_01",
		"CUP_H_TKI_Lungee_02",
		"CUP_H_TKI_Lungee_03",
		"CUP_H_TK_Lungee",
		"CUP_H_TKI_Lungee_Open_01"
	};
};

class mlt_ar : ar
{
	displayName = "Militia (RPK-74)"
	uniform[] =
	{
		"bear_uniform_m93_olive_takistanibrush",
	"bear_uniform_m93_olive",
	"bear_uniform_m93_olivegray"
	};
	vest[] = 
	{
		"CUP_V_OI_TKI_Jacket5_04",
		"CUP_V_OI_TKI_Jacket3_04",
		"CUP_V_OI_TKI_Jacket3_05"
	};
	headgear[] =
	{
		LIST_7(""),
		"CUP_H_TKI_Lungee_01",
		"CUP_H_TKI_Lungee_02",
		"CUP_H_TKI_Lungee_03",
		"CUP_H_TK_Lungee",
		"CUP_H_TKI_Lungee_Open_01"
	};
};

class mlt_m16 : rm_m16
{
	displayName = "Militia (M16)"
	uniform[] =
	{
		"bear_uniform_m93_olive_takistanibrush",
	"bear_uniform_m93_olive",
	"bear_uniform_m93_olivegray"
	};
	vest[] = 
	{
		"CUP_V_OI_TKI_Jacket5_04",
		"CUP_V_OI_TKI_Jacket3_04",
		"CUP_V_OI_TKI_Jacket3_05"
	};
	headgear[] =
	{
		LIST_7(""),
		"CUP_H_TKI_Lungee_01",
		"CUP_H_TKI_Lungee_02",
		"CUP_H_TKI_Lungee_03",
		"CUP_H_TK_Lungee",
		"CUP_H_TKI_Lungee_Open_01"
	};
};

class mlt_74 : rm_74
{
	displayName = "Militia (AK-74)"
	uniform[] =
	{
		"bear_uniform_m93_olive_takistanibrush",
		"bear_uniform_m93_olive",
		"bear_uniform_m93_olivegray"
	};
	vest[] = 
	{
		"CUP_V_OI_TKI_Jacket5_04",
		"CUP_V_OI_TKI_Jacket3_04",
		"CUP_V_OI_TKI_Jacket3_05"
	};
	headgear[] =
	{
		LIST_7(""),
		"CUP_H_TKI_Lungee_01",
		"CUP_H_TKI_Lungee_02",
		"CUP_H_TKI_Lungee_03",
		"CUP_H_TK_Lungee",
		"CUP_H_TKI_Lungee_Open_01"
	};
};