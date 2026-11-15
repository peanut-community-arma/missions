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
		"U_B_UBACS_mtp_f",
		"U_B_UBACS_vest_mtp_f",
		"U_B_UBACS_tshirt_mtp_f"
	};
	vest[] = 
	{
		"V_CarrierRigKBT_01_light_MTP_F"
	};
	headgear[] = 
	{
		"Aegis_H_Helmet_Virtus_Cover_mtp_F",
		"Aegis_H_Helmet_Virtus_Scrim_mtp_F"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"arifle_SA80_snd_F"
	};
	scope[] = 
	{
		"CUP_optic_Elcan_reflex"
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
		LIST_2("CUP_HandGrenade_M67"),
		"ACE_EntrenchingTool",
		LIST_13("30Rnd_65x39_caseless_mag")
	};
	backpackItems[] = 
	{
		LIST_4("30Rnd_65x39_caseless_mag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"Aegis_V_CarrierRigKBT_01_cqb_mtp_F"
	};
	backpack[] = 
	{
		"CUP_B_Predator_MTP"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_FNMAG_RIS_modern"
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
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_3("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"CUP_B_Predator_MTP"
	};
	backpackItems[] += 
	{
		LIST_3("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"launch_NLAW_F"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"V_CarrierRigKBT_01_heavy_MTP_F",
	};
	primaryWeapon[] = 
	{
		"arifle_SA80_GL_snd_F"
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
		"arifle_SA80_GL_snd_F"
	};
	backpackItems[] = 
	{
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("30Rnd_65x39_caseless_mag_Tracer"),
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
		"Aegis_V_CarrierRigKBT_01_cqb_mtp_F"
	};
	primaryWeapon[] = 
	{
		"arifle_SA80_GL_snd_F"
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
		LIST_2("30Rnd_65x39_caseless_mag_Tracer"),
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
		"CUP_B_Predator_Radio_MTP"
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
		"V_CarrierRigKBT_01_light_MTP_F"
	};
	backpack[] = 
	{
		"CUP_B_Predator_MTP"
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
		LIST_11("30Rnd_65x39_caseless_mag"),
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
		"V_CarrierRigKBT_01_light_MTP_F"
	};
	backpack[] = 
	{
		"CUP_B_Predator_MTP"
	};
	primaryWeapon[] = 
	{
		"Aegis_MMG_FNMAG_F"
	};
	scope[] = 
	{
		"ACE_optic_Hamr_2D"
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
		LIST_2("Aegis_200Rnd_762x51_MAG_Red_Tracer_F")
	};
	backpackItems[] = 
	{
		LIST_3("Aegis_200Rnd_762x51_MAG_Red_Tracer_F")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"CUP_B_Predator_MTP"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_10("30Rnd_65x39_caseless_mag"),
		LIST_2("CUP_17Rnd_9x19_glock17")
	};
	backpackItems[] = 
	{
		LIST_3("Aegis_200Rnd_762x51_MAG_Red_Tracer_F")
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
		"CUP_B_Predator_MTP"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_F"
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
		"CUP_B_Predator_MTP"
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
	primaryWeapon[] = 
	{
		"arifle_SA80_C_snd_F"
	};
	scope[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("30Rnd_65x39_caseless_mag")
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
	primaryWeapon[] = 
	{
		"arifle_SA80_C_snd_F"
	};
	scope[] = 
	{
		""
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("30Rnd_65x39_caseless_mag"),
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
		"CUP_B_Predator_MTP"
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
		"CUP_srifle_AWM_des"
	};
	scope[] = 
	{
		"CUP_optic_LeupoldMk4_20x40_LRT"
	};
	attachment[] = {};
	silencer[] = 
	{
		"CUP_muzzle_snds_AWM"
	};
	bipod[] = 
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("CUP_17Rnd_9x19_glock17"),
		LIST_9("CUP_5Rnd_86x70_L115A1")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_5Rnd_86x70_L115A1")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	primaryWeapon[] = 
	{
		"CUP_srifle_L129A1"
	};
	scope[] = 
	{
		"CUP_optic_LeupoldM3LR"
	};
	silencer[] = 
	{
		"CUP_muzzle_snds_socom762rc"
	};
	bipod[] = 
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Glock17_blk"
	};
	backpackItems[] += 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_20Rnd_762x51_L129_M"),
		LIST_3("CUP_17Rnd_9x19_glock17"),
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
		"B_Mortar_01_Weapon_grn_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("30Rnd_65x39_caseless_mag")
	};
	linkedItems[] += 
	{
		"ACE_RangeTable_82mm"
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"B_Mortar_01_support_grn_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_3("30Rnd_65x39_caseless_mag")
	};
	linkedItems[] += 
	{
		"ACE_RangeTable_82mm"
	};
};