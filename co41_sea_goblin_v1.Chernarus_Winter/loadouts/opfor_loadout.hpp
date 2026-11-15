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
		"u_hendrix_mvd_1_kamysh_blue",
		"CUP_U_O_CHDKZ_Commander"
	};
	vest[] = 
	{
		"hendrix_kora_kulon_jhuk_grn"
	};
	backpack[] = 
	{
		"JAM_B_Bedroll_gry"
	};
	headgear[] = 
	{
		LIST_2("CUP_H_RUS_6B27"),
		LIST_2("CUP_H_RUS_6B27_goggles"),
		LIST_2("CUP_H_RUS_6B27_headset_goggles"),
		LIST_2("CUP_H_RUS_6B27_headset"),
		LIST_2("CUP_H_RUS_6B27_NVG"),
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Winter_Green_1",
		"CUP_H_RUS_Ratnik_Balaclava_6M2_Winter_Green_2"
	};
	goggles[] = 
	{
		"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_1",
		"CUP_G_RUS_Ratnik_Balaclava_Winter_Green_2"
	};
	primaryWeapon[] = 
	{
		"Aegis_arifle_AKM74_olive_F"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_30Rnd_545x39_AK74M_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"hendrix_kora_kulon_jhuk_grn"
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
		"hendrix_rpg_2"
	};
	secondaryWeapon[] = 
	{
		"Aegis_launch_RPG7M_F"
	};
	backpackItems[] = 
	{
		LIST_2("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class rm_aa : rm 
{
	displayName = "Rifleman (AA)";
	secondaryWeapon[] = 
	{
		"CUP_launch_9K32Strela"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"Aegis_arifle_AKM74_olive_GL_F"
	};
	magazines[] += 
	{
		LIST_2("CUP_1Rnd_HE_GP25_M"),
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
		"CUP_arifle_AK105"
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
		"CUP_arifle_AK105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("CUP_30Rnd_545x39_AK74M_M")
	};
};