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
		"Aegis_U_O_Luchnik_taiga_F",
		"Aegis_U_O_Luchnik_RolledUp_taiga_F"
	};
	vest[] = 
	{
		"Aegis_V_OCarrierLuchnik_Lite_F"
	};
	headgear[] = 
	{
		"H_HelmetLuchnik_cover_rutaiga_F",
		"H_HelmetLuchnik_headset_grn_F"
	};
	backpack[] = 
	{
		"B_FieldPack_taiga_F"
	};
	hmd[] = 
	{
		"hendrix_armband_bushlat_th_NVG_w"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_545_F"
	};
	scope[] = 
	{
		"Aegis_optic_1p87"
	};
	attachment[] = 
	{
		"pca_flashlight_sf"
	};
	silencer[] = 
	{
		""
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
		LIST_2("ACE_Chemlight_HiGreen"),
		LIST_2("Chemlight_green"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_10("CUP_30Rnd_545x39_AK12_M"),
		"DemoCharge_Remote_Mag",
		"ACE_Clacker"
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_545x39_AK12_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"Aegis_V_OCarrierLuchnik_CQB_F"
	};
	backpack[] = 
	{
		"CUP_O_RUS_Patrol_bag_Green"
	};
	primaryWeapon[] = 
	{
		"Aegis_arifle_RPK12_545_F"
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
		LIST_8("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"),
		"DemoCharge_Remote_Mag",
		"ACE_Clacker"
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"CUP_O_RUS_Patrol_bag_Green"
	};
	backpackItems[] += 
	{
		LIST_3("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M")
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
		"Aegis_V_OCarrierLuchnik_GL_F",
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	backpackItems[] = 
	{
		LIST_15("CUP_1Rnd_HE_M203"),
		LIST_15("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
	};
	silencer[] = 
	{
		"CUP_muzzle_TGPA"
	};
	backpackItems[] = 
	{
		LIST_15("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_TE1_Green_Tracer_545x39_AK12_M"),
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
		"Aegis_V_OCarrierLuchnik_GL_F"
	};
	primaryWeapon[] = 
	{
		"arifle_AK12_GL_545_F"
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
		LIST_2("CUP_30Rnd_TE1_Green_Tracer_545x39_AK12_M"),
		LIST_15("CUP_1Rnd_HE_M203"),
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
		LIST_15("CUP_1Rnd_HE_M203"),
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
		"CUP_O_RUS_Patrol_bag_Green"
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
		"Aegis_V_OCarrierLuchnik_Lite_F"
	};
	backpack[] = 
	{
		"CUP_O_RUS_Patrol_bag_Green"
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
		LIST_10("CUP_30Rnd_545x39_AK12_M"),
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
		"Aegis_V_OCarrierLuchnik_CQB_F"
	};
	backpack[] = 
	{
		"CUP_O_RUS_Patrol_bag_Green"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Pecheneg_top_rail"
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
		"CUP_O_RUS_Patrol_bag_Green"
	};
	sidearmWeapon[] = 
	{
		"hgun_Rook40_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_10("CUP_30Rnd_545x39_AK12_M"),
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
	backpack[] = 
	{
		"CUP_O_RUS_Patrol_bag_Green"
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
		LIST_2("CUP_PG7VM_M")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"CUP_O_RUS_Patrol_bag_Green"
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
		LIST_2("CUP_PG7VM_M"),
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
		LIST_9("CUP_30Rnd_545x39_AK12_M")
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
		LIST_7("CUP_30Rnd_545x39_AK12_M"),
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
		"CUP_O_RUS_Patrol_bag_Green"
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
		"U_O_R_PilotCoveralls"
	};
	vest[] = 
	{
		"pca_vest_invisible"
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
		"srifle_DMR_04_F"
	};
	scope[] = 
	{
		"optic_DMS_weathered_Kir_F"
	};
	attachment[] = {};
	bipod[] = 
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("10Rnd_127x54_Mag")
	};
	backpackItems[] = 
	{
		LIST_12("10Rnd_127x54_Mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	primaryWeapon[] = 
	{
		"srifle_DMR_04_F"
	};
	scope[] = 
	{
		"optic_DMS_weathered_Kir_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("10Rnd_127x54_Mag")
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
		"CUP_B_Kord_Gun_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("CUP_30Rnd_545x39_AK12_M"),
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
		"CUP_B_Kord_TripodHigh_Bag"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_RGD5"),
		LIST_9("CUP_30Rnd_545x39_AK12_M"),
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