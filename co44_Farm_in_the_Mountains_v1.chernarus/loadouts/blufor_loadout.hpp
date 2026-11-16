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
		"CUP_I_B_PMC_Unit_37",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_12",
		"CUP_I_B_PMC_Unit_8",
		"CUP_I_B_PMC_Unit_4"
	};
	vest[] = 
	{
		"V_Simc_flak_M69",
        "V_TacVest_blk",
        "V_TacVest_grn",
        "V_TacVest_grn",
        "V_TacVest_tan",
        "bear_tactical_vest_green"
	};
	headgear[] = 
	{
		"TC_Helmet_CowboyHat1",
		"TC_Helmet_CowboyHat3",
		"TC_Helmet_CowboyHat2",
		"H_Watchcap_red",
		"H_Cap_red"
	};
	backpack[] = 
	{
		"CUP_B_Bergen_BAF",
		"CUP_B_USPack_Coyote"
	};
	primaryWeapon[] = 
	{
		"CUP_srifle_Mosin_Nagant"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_4("ACE_CableTie")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_13("rhsgref_5Rnd_762x54_m38")
	};
	backpackItems[] = 
	{
		LIST_4("rhsgref_5Rnd_762x54_m38"),
		LIST_4("ACE_CableTie")
	};
};

class ar : rm 
{
	displayName = "Nailgunner";
	primaryWeapon[] = 
	{
		"rhs_weap_m3a1_specops"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_8Rnd_9x18_Makarov_M"),
		LIST_8("rhsgref_30rnd_1143x23_M1911B_2mag_SMG")
	};
	backpackItems[] = 
	{
		LIST_4("rhsgref_30rnd_1143x23_M1911B_2mag_SMG"),
		LIST_4("ACE_CableTie")
	};
};

class aar : rm 
{
	displayName = "Assistant Nailgunner";
	backpackItems[] += 
	{
		LIST_4("rhsgref_30rnd_1143x23_M1911B_2mag_SMG"),
		LIST_4("ACE_CableTie")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Breacher";
	primaryWeapon[] = 
	{
		"rhs_weap_M590_5RD"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_12("rhsusf_5Rnd_Slug")
	};
	backpackItems[] = 
	{
		LIST_4("rhsusf_5Rnd_Slug"),
		LIST_4("ACE_CableTie"),
		"ACE_wirecutter"
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	backpackItems[] = 
	{
		LIST_2("SmokeShell"),
		LIST_4("ACE_CableTie")
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
	primaryWeapon[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] += 
	{
		LIST_2("SmokeShell"),
		LIST_10("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] =
	{
		LIST_2("CUP_8Rnd_9x18_Makarov_M"),
		LIST_4("ACE_CableTie")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK101"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_8("CUP_30Rnd_556x45_AK")
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_556x45_AK"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		LIST_4("ACE_CableTie")
	};
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
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine"),
		LIST_4("ACE_CableTie")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	hmd[] = {"TC_NVG_NitrileGloves_1"};
	primaryWeapon[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] += 
	{
		LIST_12("CUP_8Rnd_9x18_Makarov_M")
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
		LIST_2("ACE_adenosine"),
		LIST_4("ACE_CableTie")
	};
};