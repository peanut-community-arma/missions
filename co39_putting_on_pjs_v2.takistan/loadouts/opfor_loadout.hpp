class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	// Leave empty to not change faces and Insignias
	faces[] = {};
	insignias[] = {};
	// All Randomized. Add Primary Weapon and attachments
	// Leave Empty to remove all. {"Default"} for using original items the character start with
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	// SecondaryAttachments[] arrays are NOT randomized
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there's any
	magazines[] = {};
	items[] = 
	{
		LIST_2("ACE_fieldDressing"),
		"ACE_packingBandage",
		"ACE_quikclot",
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
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"CUP_O_TKI_Khet_Jeans_04",
	"CUP_O_TKI_Khet_Jeans_02",
	"CUP_O_TKI_Khet_Jeans_01",
	"CUP_O_TKI_Khet_Jeans_03",
	"CUP_O_TKI_Khet_Partug_04",
	"CUP_O_TKI_Khet_Partug_02",
	"CUP_O_TKI_Khet_Partug_01",
	"CUP_O_TKI_Khet_Partug_07",
	"CUP_O_TKI_Khet_Partug_08",
	"CUP_O_TKI_Khet_Partug_05",
	"CUP_O_TKI_Khet_Partug_06",
	"CUP_O_TKI_Khet_Partug_03",
	"U_lxWS_Djella_02_Brown",
	"U_lxWS_Djella_02_Grey",
	"U_lxWS_Djella_03_Green",
	"U_lxWS_Djella_02_Sand",
	"U_lxWS_C_Djella_06",
	"U_lxWS_C_Djella_05",
	"U_lxWS_Tak_03_C",
	"CUP_U_O_TK_Green",
	"CUP_U_O_TK_MixedCamo"
	};
	vest[] = 
	{
		"CUP_V_OI_TKI_Jacket1_06",
	"CUP_V_OI_TKI_Jacket1_01",
	"CUP_V_OI_TKI_Jacket1_02",
	"CUP_V_OI_TKI_Jacket1_03",
	"CUP_V_OI_TKI_Jacket4_02",
	"CUP_V_OI_TKI_Jacket4_03",
	"CUP_V_OI_TKI_Jacket4_01",
	"CUP_V_OI_TKI_Jacket5_05",
	"CUP_V_OI_TKI_Jacket5_02",
	"CUP_V_OI_TKI_Jacket5_03",
	"CUP_V_OI_TKI_Jacket5_01",
	"CUP_V_OI_TKI_Jacket3_02",
	"CUP_V_OI_TKI_Jacket3_03",
	"CUP_V_OI_TKI_Jacket3_01",
	"CUP_V_OI_TKI_Jacket6_02",
	"CUP_V_OI_TKI_Jacket6_03",
	"CUP_V_OI_TKI_Jacket6_01",
	"CUP_V_OI_TKI_Jacket2_03",
	"CUP_V_OI_TKI_Jacket2_02",
	"CUP_V_OI_TKI_Jacket2_01",
		"JAM_V_Chicom_Type56_grn",
		"CUP_V_O_TK_Vest_1",
		"CUP_V_O_SLA_M23_1_OD"
	};
	headgear[] = 
	{
		LIST_10(""),
		"CUP_H_TK_Lungee",
	"CUP_H_TKI_Lungee_Open_01",
	"CUP_H_TKI_Lungee_Open_02",
	"CUP_H_TKI_Lungee_Open_03",
	"CUP_H_TKI_Lungee_Open_04",
	"CUP_H_TKI_Lungee_Open_05",
	"CUP_H_TKI_Lungee_Open_06",
	"CUP_H_TKI_Lungee_01",
	"CUP_H_TKI_Lungee_02",
	"CUP_H_TKI_Lungee_03",
	"CUP_H_TKI_Lungee_04",
	"CUP_H_TKI_Lungee_05",
	"CUP_H_TKI_Lungee_06",
	"CUP_H_TKI_Pakol_1_01",
	"CUP_H_TKI_Pakol_2_04",
	"CUP_H_TKI_Pakol_2_05",
	"CUP_H_TKI_Pakol_2_06",
	"CUP_H_TKI_Pakol_1_02",
	"CUP_H_TKI_Pakol_1_03",
	"CUP_H_TKI_Pakol_1_04",
	"CUP_H_TKI_Pakol_1_05",
	"CUP_H_TKI_Pakol_1_06",
	"CUP_H_TKI_Pakol_2_01",
	"CUP_H_TKI_Pakol_2_02",
	"CUP_H_TKI_Pakol_2_03",
	"CUP_H_TKI_SkullCap_01",
	"CUP_H_TKI_SkullCap_02",
	"CUP_H_TKI_SkullCap_03",
	"CUP_H_TKI_SkullCap_04",
	"CUP_H_TKI_SkullCap_05",
	"CUP_H_TKI_SkullCap_06",
	"lxWS_H_cloth_5_A",
	"lxWS_H_cloth_5_C",
	"lxWS_H_cloth_5_B",
	"lxWS_H_turban_03_black",
	"lxWS_H_turban_03_gray",
	"lxWS_H_turban_04_black",
	"lxWS_H_turban_03_green",
	"lxWS_H_turban_03_sand",
	"lxWS_H_turban_04_green",
	"lxWS_H_turban_04_sand",
	"lxWS_H_turban_04_gray",
	"lxWS_H_turban_02_black",
	"lxWS_H_turban_02_green",
	"lxWS_H_turban_02_sand",
	"lxWS_H_turban_02_gray",
	"lxWS_H_turban_01_black",
	"lxWS_H_turban_01_green",
	"lxWS_H_turban_01_sand",
	"lxWS_H_turban_01_gray",
	"JAM_H_HelmetSSh68_grn",
	"JAM_H_HelmetSSh68_oli",
	"CUP_H_RUS_SSH68_olive"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_Early"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_30Rnd_762x39_AK47_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"JAM_B_AlicePack"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	backpack[] = 
	{
		"JAM_B_AlicePack"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
	};
};

class rm_lat2 : rm 
{
	displayName = "Rifleman (AA)";
	secondaryWeapon[] = 
	{
		"CUP_launch_Igla"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"hendrix_rpg_2"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] = 
	{
		"CUP_PG7VL_M",
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	backpack[] = 
	{
		"B_simc_US_Bandoleer_flak_556_1"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL_Early"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_1Rnd_HE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"JAM_B_AlicePack"
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
		LIST_2("ACE_bloodIV")
		//LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"JAM_B_AlicePack"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		"IEDLandSmall_Remote_Mag"
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"CUP_H_SLA_TankerHelmet"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK74M_M")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK74M_M")
	};
};