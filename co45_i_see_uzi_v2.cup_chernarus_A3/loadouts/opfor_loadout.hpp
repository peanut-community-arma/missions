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
		LIST_4("JAM_U_Obr88_spets"),
		LIST_4("JAM_U_Obr88_rolled_spets"),
		"JAM_U_Obr88_telnyashka_spets",
		"JAM_U_Suit_KZS_Down_spets"
	};
	vest[] = 
	{
		"JAM_V_6b3_grn_alt",
		"JAM_V_6b3_grn",
		"JAM_V_6b3_grn_gear",
		LIST_3("JAM_V_Lifchik_V2_khk"),
		LIST_3("JAM_V_Lifchik_V2_Open_01_khk"),
		LIST_5("JAM_V_Lifchik_V2_flare_khk")
	};
	headgear[] = 
	{
		LIST_10("JAM_H_HelmetSSh68_Cover_spets"),
		"JAM_H_Obr88_Cap_spets",
		LIST_2("JAM_H_HelmetSSh68_oli"),
		LIST_2("JAM_H_HelmetSSh68_Net_oli")
	};
	goggles[] = 
	{
		LIST_15(""),
		"JAM_G_ReconMask_spets"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74",
		"CUP_arifle_AKS74",
		"CUP_arifle_AKS74U"
	};
	attachment[] = 
	{
		"acc_flashlight"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_30Rnd_545x39_AK_M")
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
		LIST_9("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"JAM_V_Lifchik_V1_khk"
	};
	backpack[] = 
	{
		"JAM_B_Sidor_khk"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKMN"
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
		"CUP_B_RPGPack_Khaki"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_PGO7V3"
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
		"CUP_arifle_AKS74_GL",
		"CUP_arifle_AK74_GL"
	};
	magazines[] += 
	{
		LIST_5("CUP_IlumFlareRed_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"JAM_B_Sidor_khk"
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
		"JAM_B_Sidor_khk"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter"
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
		LIST_5("CUP_30Rnd_545x39_AK_M")
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
		LIST_5("CUP_30Rnd_545x39_AK_M")
	};
};