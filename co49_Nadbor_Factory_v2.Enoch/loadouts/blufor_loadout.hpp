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
	displayName = "Basic Townsfolk";
	uniform[] = 
	{
		"CUP_U_C_Citizen_03",
		"CUP_U_C_Citizen_01",
		"CUP_U_C_Citizen_04",
		"CUP_U_C_Citizen_02",
		"U_C_Uniform_Farmer_01_F",
		"U_C_ArtTShirt_01_v4_F",
		"U_C_ArtTShirt_01_v5_F",
		"U_C_ArtTShirt_01_v2_F",
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"CUP_U_C_Villager_03",
		"CUP_U_C_Villager_02",
		"CUP_U_C_Villager_04",
		"CUP_U_C_Villager_01",
		"CUP_U_C_Woodlander_01",
		"CUP_U_C_Woodlander_02",
		"CUP_U_C_Woodlander_03",
		"CUP_U_C_Woodlander_04",
		"CUP_U_C_Worker_03",
		"CUP_U_C_Worker_04",
		"CUP_U_C_Worker_02",
		"CUP_U_C_Worker_01"
	};
	vest[] = 
	{
		""
	};
	headgear[] = 
	{
		""
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	sidearmWeapon[] = 
	{
		"ACE_Flashlight_Maglite_ML300L"
	};
	primaryWeapon[] = 
	{
		""
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
		LIST_1("ACE_Chemlight_HiGreen")
	};
	magazines[] = {};
	backpackItems[] = {};
};

class ar : rm 
{
	displayName = "Farmer (Rifle)";
	primaryWeapon[] = 
	{
		"CUP_srifle_Remington700"
	};
	scope[] = 
	{
		"cup_optic_remington"
	};
	magazines[] = 
	{
		LIST_10("CUP_6Rnd_762x51_R700")
	};
	sidearmWeapon[] = 
	{
		""
	};
};

class rm_lat : rm 
{
	displayName = "WW2 Collector";
	uniform[] = 
	{
		"CUP_U_C_Citizen_03",
		"CUP_U_C_Citizen_01",
		"CUP_U_C_Citizen_04",
		"CUP_U_C_Citizen_02",
		"U_C_Uniform_Farmer_01_F",
		"U_C_ArtTShirt_01_v4_F",
		"U_C_ArtTShirt_01_v5_F",
		"U_C_ArtTShirt_01_v2_F",
		"U_C_Man_casual_3_F",
		"U_C_Man_casual_1_F",
		"CUP_U_C_Villager_03",
		"CUP_U_C_Villager_02",
		"CUP_U_C_Villager_04",
		"CUP_U_C_Villager_01",
		"CUP_U_C_Woodlander_01",
		"CUP_U_C_Woodlander_02",
		"CUP_U_C_Woodlander_03",
		"CUP_U_C_Woodlander_04",
		"CUP_U_C_Worker_03",
		"CUP_U_C_Worker_04",
		"CUP_U_C_Worker_02",
		"CUP_U_C_Worker_01"
	};
	vest[] = 
	{
		""
	};
	headgear[] = 
	{
		""
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	sidearmWeapon[] = 
	{
		""
	};
	primaryWeapon[] = 
	{
		"fwa_weap_ppsh41"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_6("fwa_35rnd_762x25mm_ppsh_tracer_green")
	};
	backpackItems[] = {};
};

class tl : rm 
{
	displayName = "Team Leader";
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_2("ACE_Chemlight_HiBlue"),
		LIST_1("ACE_HandFlare_Green"),
		LIST_1("ACE_HandFlare_Red")
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
};

class Pc : sl 
{
	displayName = "Police Chief";
	uniform[] = 
	{
		"CUP_U_C_Policeman_01"
	};
	vest[] = 
	{
		"pca_vest_invisible_kevlar"
	};
	headgear[] = 
	{
		"CUP_H_C_Policecap_01"
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	sidearmAttachments[] = 
	{
		"acc_flashlight_pistol"
	};
	primaryWeapon[] = 
	{
		""
	};
	scope[] = 
	{
		""
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
		LIST_2("ACE_Chemlight_HiGreen"),
		LIST_3("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	magazines[] = {};
	backpackItems[] = {};
};

class Dp : sl 
{
	displayName = "Deputy";
	uniform[] = 
	{
		"CUP_U_C_Policeman_01"
	};
	vest[] = 
	{
		"pca_vest_invisible_kevlar"
	};
	headgear[] = 
	{
		"CUP_H_C_Policecap_01"
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	sidearmAttachments[] = 
	{
		"acc_flashlight_pistol"
	};
	primaryWeapon[] = 
	{
		""
	};
	scope[] = 
	{
		""
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
		LIST_2("ACE_Chemlight_HiGreen"),
		LIST_3("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	magazines[] = {};
	backpackItems[] = {};
};


class P : sl 
{
	displayName = "Priest";
	uniform[] = 
	{
		"CUP_U_C_Priest_01"
	};
	vest[] = 
	{
		""
	};
	headgear[] = 
	{
		""
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
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
		LIST_2("ACE_Chemlight_HiGreen"),
	};
	magazines[] = {};
	backpackItems[] = {};
};

class co : sl 
{
	displayName = "Mayor";
	uniform[] = 
	{
		"U_C_FormalSuit_01_tshirt_gray_F",
		"U_C_FormalSuit_01_tshirt_black_F"
	};
	vest[] = 
	{
		"pca_vest_invisible"
	};
	headgear[] = 
	{
		""
	};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_cz99_etched"
	};
	primaryWeapon[] = 
	{
		""
	};
	scope[] = 
	{
		""
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
		LIST_2("ACE_Chemlight_HiGreen"),
		LIST_3("rhssaf_mag_15Rnd_9x19_FMJ")
	};
	magazines[] = {};
	backpackItems[] = {};
};


class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_2("ACE_Chemlight_HiRed"),
		LIST_1("ACE_HandFlare_Green"),
		LIST_1("ACE_HandFlare_Red")
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
	uniform[] = 
	{
		"CUP_U_C_Rescuer_01"
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
		LIST_2("ACE_Chemlight_HiRed"),
		LIST_1("ACE_HandFlare_Green"),
		LIST_1("ACE_HandFlare_Red")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_20("ACE_packingBandage"),
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_epinephrine"),
		LIST_5("ACE_morphine"),
		LIST_10("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_1("ACE_adenosine")
	};
};