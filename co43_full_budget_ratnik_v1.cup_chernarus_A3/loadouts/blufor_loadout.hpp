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
		"CUP_U_O_RUS_Soldier_VKPO_Summer_2",
		"CUP_U_O_RUS_Soldier_VKPO_Rolled_Summer_3"
	};
	vest[] = 
	{
		"CUP_V_O_RUS_6B45_AK_Med_Radio_Summer",
		"CUP_V_O_RUS_6B45_AK_Summer"
	};
	headgear[] = 
	{
		"CUP_H_RUS_6B47_6M21_6B34C_Summer",
		"CUP_H_RUS_6B47_6M21_6B34D_Summer"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74M"
	};
	scope[] = 
	{
		"CUP_optic_PechenegScope"
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
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_13("CUP_30Rnd_545x39_AK74M_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_545x39_AK74M_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"CUP_B_RUS_Patrol_bag_Summer"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74M"
	};
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_2("17Rnd_9x21_Mag"),
		LIST_3("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"CUP_B_RUS_Patrol_bag_Summer"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
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
	vest[] =
	{
		"CUP_V_O_RUS_6B45_SPP_VOG_Summer",
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74M_GL"
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
		"CUP_arifle_AK74M_GL"
	};
	backpackItems[] = 
	{
		LIST_17("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_2("CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"),
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
		"CUP_V_O_RUS_6B45_SPP_VOG_Radio_Summer"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AK74M_GL"
	};
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	magazines[] += 
	{
		LIST_2("17Rnd_9x21_Mag")
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_TE1_Green_Tracer_545x39_AK74M_M"),
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
		"CUP_B_RUS_Patrol_bag_Summer"
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
	vest[] =
	{
		"CUP_V_O_RUS_6B45_SPP_AK_Med_Summer"
	};
	backpack[] = 
	{
		"CUP_B_RUS_Patrol_bag_Summer"
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
		"hgun_Rook40_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_11("CUP_30Rnd_545x39_AK74M_M"),
		LIST_2("17Rnd_9x21_Mag")
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
		"CUP_V_O_RUS_6B45_SPP_PKP_Summer"
	};
	backpack[] = 
	{
		"CUP_B_RUS_Patrol_bag_Summer"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_2("17Rnd_9x21_Mag"),
		LIST_2("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	backpackItems[] = 
	{
		LIST_5("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"CUP_B_RUS_Patrol_bag_Summer"
	};
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_11("CUP_30Rnd_545x39_AK74M_M"),
		LIST_2("17Rnd_9x21_Mag")
	};
	backpackItems[] = 
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	vest[] = 
	{
		"CUP_V_O_RUS_6B45_AK_Summer"
	};
	backpack[] = 
	{
		"hendrix_rpg_2"
	};
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG7V"
	};
	secondaryAttachments[] = 
	{
		"CUP_optic_PGO7V3"
	};
	magazines[] += 
	{
		LIST_2("17Rnd_9x21_Mag")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_PG7V_M")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	vest[] = 
	{
		"CUP_V_O_RUS_6B45_AK_Summer"
	};
	backpack[] = 
	{
		"hendrix_rpg_2"
	};
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	magazines[] += 
	{
		LIST_2("17Rnd_9x21_Mag")
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
		"CUP_H_SLA_TankerHelmet"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("CUP_30Rnd_545x39_AK74M_M")
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
		"hgun_Rook40_F"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("17Rnd_9x21_Mag"),
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
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("CUP_30Rnd_545x39_AK74M_M"),
		LIST_3("17Rnd_9x21_Mag"),
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
		"CUP_B_RUS_Patrol_bag_Summer"
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
		"hgun_Rook40_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("17Rnd_9x21_Mag"),
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
		"CUP_srifle_SVD"
	};
	scope[] = 
	{
		"CUP_optic_PSO_3"
	};
	attachment[] = {};
	bipod[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("CUP_10Rnd_762x54_SVD_M")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_10Rnd_762x54_SVD_M")
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
		"CUP_optic_PSO_3"
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
		"CUP_B_DShkM_Gun_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("CUP_30Rnd_545x39_AK74M_M"),
		"ace_csw_50Rnd_127x108_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_50Rnd_127x108_mag")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"CUP_B_DShkM_TripodHigh_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("CUP_30Rnd_545x39_AK74M_M"),
		"ace_csw_50Rnd_127x108_mag"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_50Rnd_127x108_mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};