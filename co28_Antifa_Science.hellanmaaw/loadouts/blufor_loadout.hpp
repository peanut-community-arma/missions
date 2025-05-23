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
		"rhs_uniform_afghanka_winter_boots"
	};
	vest[] = 
	{
		"rhs_belt_AK"
	};
	headgear[] = 
	{
		"rhs_ssh68_2"
	};
	backpack[] = 
	{
		"rhs_rd54"
	};
	primaryWeapon[] = 
	{
		"fwa_weap_sks"
	};
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
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_17("fwa_10rnd_762x39_sks")
	};
	backpackItems[] = 
	{
		LIST_4("fwa_10rnd_762x39_sks")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_belt_RPK"
	};
	primaryWeapon[] = 
	{
		"fwa_weap_rpd"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_2("rhs_mag_9x18_8_57N181S"),
		LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
	};
	backpackItems[] = 
	{
		LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = 
	{
		"CUP_srifle_ksvk"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_2("rhs_mag_9x18_8_57N181S"),
		LIST_15("CUP_5Rnd_127x108_KSVK_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_5Rnd_127x108_KSVK_M")
	};
};

class sh : rm 
{
	displayName = "Sharpshooter";
	primaryWeapon[] = 
	{
		"CUP_srifle_Mosin_Nagant"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_2("rhs_mag_9x18_8_57N181S"),
		LIST_15("rhsgref_5Rnd_762x54_m38")
	};
	scope[] = 
	{
		"CUP_optic_PEM"
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"fwa_weap_pps43"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_10("fwa_35rnd_762x25mm_pps43")
	};
	headgear[] = 
	{
		"rhs_cossack_visor_cap"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	sidearmWeapon[] = 
	{
		"CUP_hgun_FlareGun"
	};
	backpackItems[] = 
	{
		LIST_2("CUP_IllumFlareGreen_265_M"),
		LIST_2("CUP_IllumFlareRed_265_M"),
		LIST_2("CUP_IllumFlareWhite_265_M"),
		LIST_5("CUP_IllumFlareYellow_265_M")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_1("SmokeShellRed")
	};
};

class rad : rm 
{
	displayName = "Radio Operator";
	magazines[] += 
	{
		"ACRE_PRC148"
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
		LIST_10("ACE_quikclot"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit"),
		LIST_30("ACE_suture")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"rhs_weap_makarov_pm"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_9x18_8_57N181S")
	};
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