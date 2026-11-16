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
		LIST_3("u_hendrix_ichkeria_insurgent_9_6"),
		LIST_3("u_hendrix_ichkeria_insurgent_10_2"),
		LIST_3("u_hendrix_ichkeria_insurgent_11_3"),
		LIST_1("u_hendrix_ichkeria_insurgent_1_1"),
		LIST_1("u_hendrix_ichkeria_insurgent_1_12"),
		
		LIST_3("u_hendrix_ichkeria_insurgent_2_1"),
		LIST_3("u_hendrix_ichkeria_insurgent_5_2"),
		LIST_3("u_hendrix_ichkeria_insurgent_6_2"),
		LIST_1("u_hendrix_ichkeria_insurgent_8_2")
	};
	vest[] = 
	{
		LIST_2("hendrix_smersh_7"),
		LIST_2("hendrix_smersh_8"),
		LIST_2("hendrix_smersh_11"),
		LIST_2("hendrix_kora_kulon_smersh_6"),
		"hendrix_6b5_v2_7_olive"
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	headgear[] = 
	{
		LIST_6(""),
		LIST_3("CUP_H_ChDKZ_Beanie"),
		LIST_1("CUP_H_ChDKZ_Cap"),
		LIST_3("hendrix_ichkeria_m68_v1"),
		LIST_1("hendrix_ushanka"),
		LIST_2("hendrix_ichkeria_m68_v5"),
		
		LIST_2("hendrix_m68_v2_bandana"),
		LIST_3("hendrix_m68_v1")
		
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_11("CUP_30Rnd_545x39_AK_M")
	};
};

class rmakm : rm 
{
	displayName = "Rifleman (AKM)";
	primaryWeapon[] = 
	{
		LIST_3("CUP_arifle_AKM"),
		LIST_2("CUP_arifle_AKMS")
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_9("CUP_30Rnd_762x39_AK47_bakelite_M")
	};
};


class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	vest[] = 
	{
		LIST_2("hendrix_razgruzka_a_7"),
		LIST_1("hendrix_6b5_v2_9_vsr")
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
		LIST_1("hendrix_razgruzka_a_6"),
		LIST_1("hendrix_6b5_bvd_5_olive"),
		LIST_1("hendrix_6b23_7_vsr")
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
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
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] = 
	{
		LIST_3("CUP_PG7VL_M"),
		"CUP_OG7_M"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74M_GL"
	};
	magazines[] += 
	{
		LIST_5("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] = 
	{
		"hendrix_smersh_10"
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