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
		"CUP_O_TKI_Khet_Partug_01",
		"CUP_O_TKI_Khet_Jeans_01",
		"CUP_O_TKI_Khet_Jeans_03",
		"CUP_O_TKI_Khet_Partug_04",
		"CUP_O_TKI_Khet_Partug_02",
		"CUP_O_TKI_Khet_Partug_07",
		"CUP_O_TKI_Khet_Partug_08",
		"CUP_O_TKI_Khet_Partug_05",
		"CUP_O_TKI_Khet_Partug_06",
		"CUP_O_TKI_Khet_Partug_03",
		"U_lxWS_C_Djella_03",
		"U_lxWS_C_Djella_06",
		"U_lxWS_C_Djella_02",
		"U_lxWS_C_Djella_02a",
		"U_lxWS_C_Djella_07",
		"U_lxWS_C_Djella_05",
		"U_lxWS_C_Djella_04",
		"U_lxWS_C_Djella_01",
		"U_lxWS_Tak_02_B",
		"U_lxWS_Tak_02_C",
		"U_lxWS_Tak_02_A",
		"U_lxWS_Tak_03_B",
		"U_lxWS_Tak_03_A",
		"U_lxWS_Tak_03_C",
		"U_lxWS_Tak_01_C",
		"U_lxWS_Tak_01_B",
		"U_lxWS_Tak_01_A"
	};
	vest[] = 
	{
		"pca_vest_invisible",
		"CUP_V_OI_TKI_Jacket1_04",
		"CUP_V_OI_TKI_Jacket1_06",
		"CUP_V_OI_TKI_Jacket1_05",
		"CUP_V_OI_TKI_Jacket4_04",
		"CUP_V_OI_TKI_Jacket4_05",
		"CUP_V_OI_TKI_Jacket4_06",
		"CUP_V_OI_TKI_Jacket5_04",
		"CUP_V_OI_TKI_Jacket5_05",
		"CUP_V_OI_TKI_Jacket5_06",
		"CUP_V_OI_TKI_Jacket3_04",
		"CUP_V_OI_TKI_Jacket3_05",
		"CUP_V_OI_TKI_Jacket3_06",
		"CUP_V_OI_TKI_Jacket6_04",
		"CUP_V_OI_TKI_Jacket6_05",
		"CUP_V_OI_TKI_Jacket6_06",
		"CUP_V_OI_TKI_Jacket2_04",
		"CUP_V_OI_TKI_Jacket2_06",
		"CUP_V_OI_TKI_Jacket2_05",
		"JAM_V_Chicom_Type56_grn"
	};
	headgear[] = 
	{
		LIST_15(""),
		"H_Shemag_khk",
		"H_ShemagOpen_tan",
		"H_ShemagOpen_khk",
		"lxWS_H_ssh40_green",
		"lxWS_H_cloth_5_A",
		"lxWS_H_cloth_5_C",
		"lxWS_H_cloth_5_B",
		"lxWS_H_turban_03_black",
		"lxWS_H_turban_03_sand",
		"lxWS_H_turban_03_gray",
		"lxWS_H_turban_04_black",
		"lxWS_H_turban_04_green",
		"lxWS_H_turban_04_sand",
		"lxWS_H_turban_04_gray",
		"lxWS_H_turban_02_black",
		"lxWS_H_turban_02_sand",
		"lxWS_H_turban_02_gray",
		"lxWS_H_turban_01_black",
		"lxWS_H_turban_01_sand",
		"lxWS_H_turban_01_gray",
		"CUP_H_TK_Lungee",
		"CUP_H_TKI_Lungee_Open_01",
		"CUP_H_TKI_Lungee_Open_02",
		"CUP_H_TKI_Lungee_Open_03",
		"CUP_H_TKI_Lungee_Open_04",
		"CUP_H_TKI_Lungee_Open_05",
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
		"CUP_H_TKI_Pakol_1_04",
		"CUP_H_TKI_Pakol_2_03",
		"CUP_H_TKI_SkullCap_01",
		"CUP_H_TKI_SkullCap_02",
		"CUP_H_TKI_SkullCap_04",
		"CUP_H_TKI_SkullCap_05",
		"CUP_H_TKI_SkullCap_06"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_Early"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_4("CUP_30Rnd_762x39_AK47_bakelite_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
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

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"hendrix_rpg_1"
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
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL_Early"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	primaryWeapon[] = 
	{
		"CUP_srifle_LeeEnfield"
	};
	magazines[] += 
	{
		LIST_4("CUP_10x_303_M")
	};
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