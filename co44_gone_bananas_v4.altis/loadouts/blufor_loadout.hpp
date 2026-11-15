class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"CUP_U_B_USMC_FROG1_WMARPAT",
		"CUP_U_B_USMC_FROG2_WMARPAT",
		"CUP_U_B_USMC_FROG3_WMARPAT",
		"CUP_U_B_USMC_FROG4_WMARPAT"
	};
	vest[] = 
	{
		"CUP_V_B_Eagle_SPC_Patrol"
	};
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
	headgear[] = 
	{
		"CUP_H_USArmy_ECH_Headset_MARPAT"
	};
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
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"ItemGPS"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_HK_M27_VFG"
	};
	scope[] =
	{
		"CUP_optic_ACOG"
	};
	attachment[] = 
	{
		"CUP_acc_ANPEQ_15_Flashlight_Black_L"
	};
	silencer[] =
	{
		"CUP_muzzle_snds_M16"
	};
	secondaryWeapon[] =
	{
		"CUP_launch_M136"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_10("hlc_30rnd_556x45_EPR_PMAG")
	};
};

class gren : rm
{
	displayName = "Grenadier";
	vest[] =
	{
		"CUP_V_B_Eagle_SPC_GL"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_HK_M27_AG36"
	};
	backpackItems[] =
	{
		LIST_20("1Rnd_HE_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader"; 	
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_10("hlc_30rnd_556x45_t_PMAG")
	};	
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_6("SmokeShell"),
		LIST_4("SmokeShellBlue"),
		LIST_4("SmokeShellRed")	
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_quikclot"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_10("ACE_quikclot"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};