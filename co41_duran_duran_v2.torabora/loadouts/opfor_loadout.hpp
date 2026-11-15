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
		"u_hendrix_gorka_4_VSR93w",
		"u_hendrix_m88_3_VSR93w",
		"u_hendrix_m88_5_VSR93w",
		"JAM_U_Obr88_telnyashka_khk"
	};
	vest[] = 
	{
		LIST_2("pca_vest_invisible"),
		LIST_2("hendrix_razgruzka_a_4"),
		"hendrix_6b5_bvd_7_olive"
	};
	headgear[] = 
	{
		"JAM_H_Sov_Beret_01_vdv",
		"JAM_H_Obr88_Cap_khk",
		LIST_2("JAM_H_HelmetSSh68_oli"),
		LIST_2("JAM_H_HelmetSSh68_Net_oli")
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM"
	};
	attachment[] = 
	{
		"acc_flashlight"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_762x39_AK47_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"hendrix_veshmeshok_1"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"hendrix_6b5_bvd_5_olive"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg"
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
		"Atlas_Launch_Pzf3_F"
	};
	backpackItems[] = 
	{
		LIST_3("Atlas_DM12_HEAT_F")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKMS_GL_Early"
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
		"hendrix_rd54_1_afganka"
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
		"hendrix_rd54_1_afganka"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("CUP_MineE_M")
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
	vest[] =
	{
		"V_Pocketed_olive_F"
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