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
		"U_C_Man_casual_2_F",
		"U_C_Man_casual_3_F",
		"U_C_Journalist",
		"U_C_Man_casual_1_F",
		"U_B_ION_Uniform_01_poloshirt_blue_F"
	};
	vest[] = 
	{
		"V_PlateCarrierIA2_khk",
		"V_PlateCarrierIA1_khk"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetB_sand"),
		LIST_2("H_HelmetSpecB_sand")
	};
	primaryWeapon[] = 
	{
		"arifle_Mk20_plain_F"
	};
	scope[] = 
	{
		"optic_ACO_grn"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_11("30Rnd_556x45_Stanag_Sand_green")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"LMG_Mk200_F"
	};
	backpack[] =
	{
		"B_FieldPack_cbr"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("ACE_200Rnd_65x39_cased_Box_green")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"V_PlateCarrierIAGL_khk"
	};
	backpack[] =
	{
		"B_FieldPack_cbr"
	};
	primaryWeapon[] = 
	{
		"MMG_01_tan_F"
	};
	sidearmWeapon[] =
	{
		"Aegis_hgun_P320_sand_F"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_3("17Rnd_9x21_Mag"),
		LIST_4("150Rnd_93x64_Mag")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_M72A6"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_FieldPack_cbr"
	};
	secondaryWeapon[] = 
	{
		"launch_RPG32_tan_lxWS"
	};
	backpackItems[] = 
	{
		LIST_2("RPG32_F")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	uniform[] +=
	{
		"U_C_Uniform_Formal_01_blue_F"
	};
	primaryWeapon[] = 
	{
		"arifle_Mk20_GL_plain_F"
	};
	magazines[] += 
	{
		LIST_5("1Rnd_HE_Grenade_shell"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_FieldPack_cbr"
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
		"CUP_B_RUS_Patrol_bag_6E5_Summer"
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
		"H_HelmetCrew_I"
	};
	primaryWeapon[] = 
	{
		"SMG_02_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("30Rnd_9x21_Mag_SMG_02_Tracer_Green")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	headgear[] = 
	{
		"H_PilotHelmetHeli_B"
	};
	primaryWeapon[] = 
	{
		"SMG_02_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("30Rnd_9x21_Mag_SMG_02_Tracer_Green")
	};
};
