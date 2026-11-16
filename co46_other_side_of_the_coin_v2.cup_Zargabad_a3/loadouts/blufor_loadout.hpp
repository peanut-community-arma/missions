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
		"CUP_O_TKI_Khet_Jeans_04",
		"CUP_O_TKI_Khet_Jeans_02",
		"CUP_O_TKI_Khet_Partug_04",
		"CUP_O_TKI_Khet_Partug_01",
		"CUP_O_TKI_Khet_Partug_08",
		"CUP_O_TKI_Khet_Partug_06"
	};
	vest[] = 
	{
		"JAM_V_Chicom_Type56_grn"
	};
	headgear[] = 
	{
		"CUP_H_TKI_Lungee_Open_01",
		"CUP_H_TKI_Lungee_01",
		"CUP_H_TKI_Lungee_04",
		"CUP_H_TKI_Lungee_05",
		"CUP_H_TKI_Pakol_1_01",
		"CUP_H_TKI_SkullCap_01"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM"
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
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_13("CUP_30Rnd_762x39_AK47_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_762x39_AK47_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_2("CUP_8Rnd_9x18_Makarov_M"),
		LIST_3("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
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
		"CUP_launch_RPG26"
	};
	backpackItems[] += 
	{
		"CUP_launch_RPG26"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL"
	};
	backpackItems[] = 
	{
		LIST_17("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"),
		LIST_2("SmokeShell")
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
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL"
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
		LIST_2("CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_M"),
		LIST_17("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeYellow_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeGreen_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeRed_GP25_M")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeYellow_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeGreen_GP25_M"),
		LIST_2("CUP_1Rnd_SmokeRed_GP25_M"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpack[] =
	{
		"B_simc_pack_alice_0"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_1("SmokeShellRed")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_4("CUP_1Rnd_SmokeYellow_GP25_M"),
		LIST_4("CUP_1Rnd_SmokeGreen_GP25_M"),
		LIST_4("CUP_1Rnd_SmokeRed_GP25_M"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"B_simc_pack_alice_0"
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
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit"),
		LIST_30("ACE_suture")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_11("CUP_30Rnd_762x39_AK47_M"),
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKMN"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_2("CUP_8Rnd_9x18_Makarov_M"),
		LIST_2("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_11("CUP_30Rnd_762x39_AK47_M"),
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_PGO7V"
	};
	magazines[] += 
	{
		LIST_2("CUP_8Rnd_9x18_Makarov_M")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_PG7V_M")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_simc_pack_alice_0"
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
		LIST_2("CUP_PG7V_M"),
		"CUP_OG7_M"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"CUP_H_CVC"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_9("CUP_30Rnd_762x39_AK47_M")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_8Rnd_9x18_Makarov_M"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	headgear[] = 
	{
		"H_PilotHelmetHeli_B"
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
		LIST_7("CUP_30Rnd_762x39_AK47_M"),
		LIST_3("CUP_8Rnd_9x18_Makarov_M"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"B_simc_pack_alice_0"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_Cellphone",
		"ACE_wirecutter",
		"CUP_IED_V1_M"
	};
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//
class jp : rm 
{
	displayName = "Jet Pilot";
	uniform[] = 
	{
		"CUP_U_B_USArmy_PilotOverall"
	};
	vest[] = 
	{
		"CUP_V_B_PilotVest"
	};
	headgear[] = 
	{
		"H_PilotHelmetFighter_B"
	};
	backpack[] = 
	{
		"B_Parachute"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Makarov"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_8Rnd_9x18_Makarov_M"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"CUP_srifle_Mosin_Nagant"
	};
	scope[] = 
	{
		"CUP_optic_PEM"
	};
	attachment[] = {};
	bipod[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_9("CUP_5Rnd_762x54_Mosin_M")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_5Rnd_762x54_Mosin_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	scope[] = 
	{
		"CUP_optic_PEM"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		"ACE_SpottingScope",
		"ACE_Tripod"
	};
	linkedItems[] += 
	{
		"Rangefinder"
	};
};

class hmg : rm 
{
	displayName = "Heavy Machine Gunner";
	backpack[] = 
	{
		"CUP_B_M2_Gun_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_9("CUP_30Rnd_762x39_AK47_M"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"CUP_B_M2_Tripod_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGO"),
		LIST_9("CUP_30Rnd_762x39_AK47_M"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};