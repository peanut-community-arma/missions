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
	uniform[] = 
	{
		"CUP_U_CRYE_MCAM_NP2_Full",
		"CUP_U_CRYE_MCAM_NP2_Roll"
	};
	vest[] = 
	{
		"CUP_V_JPC_Fastbelt_mc",
		"CUP_V_JPC_lightbelt_mc",
		"CUP_V_JPC_weaponsbelt_mc"
	};
	headgear[] = 
	{
		"CUP_H_OpsCore_Covered_MCAM",
		"CUP_H_OpsCore_Covered_MCAM_NoHS",
		"CUP_H_OpsCore_Covered_MCAM_SF"
	};
	hmd[] = 
	{
		"CUP_NVG_PVS15_black_WP"
	};
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	primaryWeapon[] = 
	{
		"arifle_SPAR_01_snd_F"
	};
	attachment[] = 
	{
		"CUP_acc_ANPEQ_15_Flashlight_Black_L"
	};
	silencer[] = 
	{
		"ptv_rotex2"
	};
	scope[] = 
	{
		"CUP_optic_G33_HWS_BLK"
	};
	items[] =
	{
		"ACRE_PRC343",
		"ACE_CableTie",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint"),
		LIST_2("ACE_IR_Strobe_Item")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_10("CUP_30Rnd_556x45_PMAG_BLACK")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_556x45_PMAG_BLACK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"CUP_V_JPC_weaponsbelt_mc"
	};
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_L110A1"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_glock17"),
		LIST_3("CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = 
	{
		"CUP_sgun_M1014"
	};
	attachment[] = 
	{
		""
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_glock17"),
		LIST_5("CUP_8Rnd_12Gauge_Slug")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"CUP_V_JPC_tl_mc",
	};
	primaryWeapon[] = 
	{
		"arifle_SPAR_01_GL_snd_F"
	};
	backpackItems[] = 
	{
		LIST_20("CUP_1Rnd_HE_M203"),
		LIST_20("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"arifle_SPAR_01_GL_snd_F"
	};
	backpackItems[] = 
	{
		LIST_15("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	vest[] =
	{
		"CUP_V_JPC_tlbelt_mc"
	};
	primaryWeapon[] = 
	{
		"arifle_SPAR_01_GL_snd_F"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_glock17")
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red"),
		LIST_15("CUP_1Rnd_HE_M203"),
		LIST_8("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpack[] =
	{
		"B_Kitbag_mcamo"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_1("SmokeShellRed")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
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
	vest[] =
	{
		"CUP_V_JPC_medicalbelt_mc"
	};
	backpack[] = 
	{
		"B_Kitbag_mcamo"
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
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_10("CUP_30Rnd_556x45_PMAG_BLACK"),
		LIST_2("CUP_17Rnd_9x19_glock17")
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
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	vest[] = 
	{
		"CUP_V_JPC_weaponsbelt_mc"
	};
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_FNMAG_RIS_modern"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_glock17"),
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_5("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_8("CUP_30Rnd_556x45_PMAG_BLACK"),
		LIST_2("CUP_17Rnd_9x19_glock17")
	};
	backpackItems[] = 
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_MAAWS"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_MAAWS_Scope"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_glock17")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_glock17")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M"
	};
	linkedItems[] += 
	{
		"Laserdesignator"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_PMAG_BLACK")
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
		"CUP_hgun_Glock17_blk"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_17Rnd_9x19_glock17"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Laserdesignator"
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
	primaryWeapon[] = 
	{
		"SMG_03C_black"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("50Rnd_570x28_SMG_03"),
		LIST_3("CUP_17Rnd_9x19_glock17"),
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
		"B_Kitbag_mcamo"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag")
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
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_17Rnd_9x19_glock17"),
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
		"arifle_SPAR_03_snd_F"
	};
	scope[] = 
	{
		"CUP_optic_ACOG_TA01B_Black"
	};
	attachment[] = {};
	bipod[] = 
	{
		"bipod_01_F_snd"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_20Rnd_762x51_DMR")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_20Rnd_762x51_DMR")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	scope[] = 
	{
		"CUP_optic_ACOG_TA01B_Black"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_PMAG_BLACK"),
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_PMAG_BLACK"),
		"ace_csw_100Rnd_127x99_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};