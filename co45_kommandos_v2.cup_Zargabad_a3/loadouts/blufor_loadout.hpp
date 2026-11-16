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
		"CUP_U_CRYE_G3C_MC",
	    "CUP_U_CRYE_G3C_MC_V2",
	    "CUP_U_CRYE_G3C_MC_V3"
	};
	vest[] = 
	{
		"CUP_V_B_Armatus_BB_MCam"
	};
	headgear[] = 
	{
		"CUP_H_OpsCore_Covered_MTP",
	    "CUP_H_OpsCore_Covered_MTP_NoHS",
	    "CUP_H_OpsCore_Covered_MTP_SF"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	hmd[] = 
	{
		"CUP_NVG_PVS15_black_WP"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36K_KSK",
		"CUP_arifle_G36K_KSK_camo"
	};
	scope[] = 
	{
		"CUP_optic_ZeissZPoint"
	};
	attachment[] = 
	{
			"CUP_acc_LLM01_L"
	};
	items[] =
	{
		"ACRE_PRC343",
		"ACE_CableTie",
		LIST_2("ACE_IR_Strobe_Item"),
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_7("CUP_30Rnd_556x45_G36")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_556x45_G36")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"CUP_V_B_RRV_DA2"
	};
	backpack[] = 
	{
		"CUP_B_USPack_Coyote"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_MG36"
	};
	scope[] = 
	{
		"CUP_optic_Eotech553_Black"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_P30L_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_P30L"),
		LIST_3("CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"CUP_B_USPack_Coyote"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag")
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
		"CUP_launch_HCPF3"
	};
	backpackItems[] += 
	{
		"CUP_launch_HCPF3"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"CUP_V_B_RRV_DA1",
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36K_RIS_AG36"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_21("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_G36K_RIS_AG36"
	};
	backpackItems[] = 
	{
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_TE1_Red_Tracer_556x45_G36"),
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
	vest[] =
	{
		"CUP_V_B_RRV_DA1"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36K_RIS_AG36"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_P30L_blk"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_P30L")
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_TE1_Red_Tracer_556x45_G36"),
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_8("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
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
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
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
		"CUP_B_USPack_Coyote"
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
		LIST_11("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
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
	vest[] =
	{
		"CUP_V_B_Armatus_BB_MCam"
	};
	backpack[] = 
	{
		"CUP_B_USPack_Coyote"
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
		"CUP_hgun_P30L_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_5("CUP_30Rnd_556x45_G36"),
		LIST_2("CUP_17Rnd_9x19_P30L")
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
		"CUP_V_B_Armatus_BB_MCam"
	};
	backpack[] = 
	{
		"CUP_B_USPack_Coyote"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_MG3_rail"
	};
	scope[] = 
	{
		""
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_P30L_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_P30L"),
		LIST_2("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_5("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"CUP_B_USPack_Coyote"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_P30L_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_5("CUP_30Rnd_556x45_G36"),
		LIST_2("CUP_17Rnd_9x19_P30L")
	};
	backpackItems[] = 
	{
		LIST_5("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
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
		"CUP_B_USPack_Coyote"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_P30L_blk"
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
		LIST_2("CUP_17Rnd_9x19_P30L")
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
		"CUP_B_USPack_Coyote"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_P30L_blk"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_P30L")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M"
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
	uniform[] = 
	{
	    "CUP_U_B_GER_Overalls_Tank"
	};
	vest[] = 
	{
		"pca_vest_invisible"
	};
	headgear[] = 
	{
		"CUP_H_Ger_Beret_TankCommander_Blk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36C"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_G36")
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
		"CUP_hgun_P30L_blk"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_17Rnd_9x19_P30L"),
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
	uniform[] = 
	{
		"USAF_Overalls_Ranger_4_w"
	};
	vest[] = 
	{
		"CUP_V_B_PilotVest"
	};
	headgear[] = 
	{
		"CUP_H_SPH4_grey",
	    "CUP_H_SPH4_grey_visor"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36C"
	};
	scope[] = 
	{
		""
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_P30L_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("CUP_30Rnd_556x45_G36"),
		LIST_3("CUP_17Rnd_9x19_P30L"),
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
		"CUP_B_USPack_Coyote"
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
		"CUP_hgun_P30L_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_17Rnd_9x19_P30L"),
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
		"CUP_srifle_AWM_des"
	};
	scope[] = 
	{
		"CUP_optic_LeupoldMk4"
	};
	attachment[] = {};
	bipod[] = 
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_5Rnd_86x70_L115A1")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_5Rnd_86x70_L115A1")
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
		"CUP_optic_HensoldtZO_low"
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
		LIST_9("CUP_30Rnd_556x45_G36"),
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
		LIST_9("CUP_30Rnd_556x45_G36"),
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