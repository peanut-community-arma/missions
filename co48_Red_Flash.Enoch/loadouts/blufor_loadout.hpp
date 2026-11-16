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
	items[] = {};
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
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"rhs_uniform_afghanka_para"
	};
	vest[] = 
	{
		"rhs_6b3"
	};
	headgear[] = 
	{
		LIST_1("rhs_beret_vdv1"),
		LIST_1("rhs_beret_vdv3"),
		LIST_1("rhs_beret_vdv2")
	};
	backpack[] = 
	{
		"rhs_rd54_vest"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74_Early"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_10("bear_30Rnd_545x39_orange_7N22")
	};
	backpackItems[] = 
	{
		LIST_2("bear_30Rnd_545x39_orange_7N22")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_6b3_RPK"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_2("CUP_8Rnd_9x18_Makarov_M"),
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	backpackItems[] = 
	{
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	backpackItems[] += 
	{
		LIST_3("rhs_rpg7_PG7VL_mag")
	};
};

class aat : rm 
{
	displayName = "Assistant Automatic AT";
	backpackItems[] += 
	{
		LIST_4("rhs_rpg7_PG7VL_mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74_GL_Early"
	};
	backpackItems[] = 
	{
		LIST_31("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74_GL_Early"
	};
	backpackItems[] = 
	{
		LIST_3("bear_30Rnd_545x39_orange_7T3M"),
		LIST_2("SmokeShell"),
		LIST_31("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] += 
	{
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] =
	{
		LIST_2("bear_30Rnd_545x39_orange_7T3M"),
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_6("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("rhs_GRD40_Red"),
		LIST_2("rhs_GRD40_Green")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		LIST_11("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_4("rhs_GRD40_Red"),
		LIST_4("rhs_GRD40_Green"),
		LIST_2("SmokeShellGreen"),
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] += 
	{
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};


class hp : rm 
{
	displayName = "Helicopter Pilot";
	headgear[] = 
	{
		"rhs_zsh7a_mike_alt"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("bear_30Rnd_545x39_orange_7N22"),
		LIST_3("CUP_8Rnd_9x18_Makarov_M"),
		LIST_2("SmokeShellPurple"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//
