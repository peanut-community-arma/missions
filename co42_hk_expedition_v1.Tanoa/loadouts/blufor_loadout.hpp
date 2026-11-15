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
		"CUP_U_B_USMC_FROG1_WMARPAT",
		"CUP_U_B_USMC_FROG4_WMARPAT"
	};
	vest[] = 
	{
		"Aegis_V_CarrierRigKBT_01_recon_cbr_F"
	};
	headgear[] = 
	{
		"Aegis_H_Helmet_FASTMT_Headset_cbr_F"
	};
	backpack[] = 
	{
		"B_AssaultPack_cbr"
	};
	primaryWeapon[] = 
	{
		"arifle_SPAR_01_blk_F"
	};
	scope[] = 
	{
		"CUP_optic_SB_11_4x20_PM"
	};
	attachment[] = 
	{
		"CUP_acc_ANPEQ_15_Tan_Top"
	};
	silencer[] = 
	{
		"CUP_muzzle_snds_M16_coyote"
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
		LIST_10("CUP_30Rnd_556x45_PMAG_COYOTE")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_556x45_PMAG_COYOTE")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"Aegis_V_CarrierRigKBT_01_recon_cbr_F"
	};
	backpack[] = 
	{
		"B_Kitbag_cbr"
	};
	primaryWeapon[] = 
	{
		"arifle_SPAR_02_blk_F"
	};
	attachment[] = 
	{
		"CUP_acc_ANPEQ_15"
	};
	bipod[] = 
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Coyote"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_M17_Black"),
		LIST_3("CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_Kitbag_cbr"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red")
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
		"CUP_launch_M136"
	};
	backpackItems[] += 
	{
		"CUP_launch_M136"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"Aegis_V_CarrierRigKBT_01_cqb_cbr_F",
	};
	primaryWeapon[] = 
	{
		"arifle_SPAR_01_blk_F"
	};
	secondaryWeapon[] = 
	{
		"ptv_hk69"
	};
	backpackItems[] = 
	{
		LIST_21("1Rnd_HE_Grenade_shell"),
		LIST_21("1Rnd_HEDP_Grenade_shell"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"arifle_SPAR_01_blk_F"
	};
	secondaryWeapon[] = 
	{
		"ptv_hk69"
	};
	backpackItems[] = 
	{
		LIST_17("1Rnd_HE_Grenade_shell"),
		LIST_10("1Rnd_HEDP_Grenade_shell"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red"),
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
		"Aegis_V_CarrierRigKBT_01_cqb_cbr_F"
	};
	primaryWeapon[] = 
	{
		"arifle_SPAR_01_blk_F"
	};
	secondaryWeapon[] = 
	{
		"ptv_hk69"
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red"),
		LIST_17("1Rnd_HE_Grenade_shell"),
		LIST_8("1Rnd_HEDP_Grenade_shell"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	secondaryWeapon[] = 
	{
		"ptv_hk69"
	};
	backpackItems[] =
	{
		LIST_13("1Rnd_HE_Grenade_shell"),
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
	secondaryWeapon[] = 
	{
		"ptv_hk69"
	};
	backpack[] =
	{
		"B_Kitbag_cbr"
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
	secondaryWeapon[] = 
	{
		"ptv_hk69"
	};
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("1Rnd_HE_Grenade_shell"),
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
		"V_CarrierRigKBT_01_light_Coyote_F"
	};
	backpack[] = 
	{
		"B_Kitbag_cbr"
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
		"CUP_hgun_M17_Coyote"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_30Rnd_556x45_PMAG_COYOTE"),
		LIST_2("CUP_17Rnd_9x19_M17_Black")
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
		"Aegis_V_CarrierRigKBT_01_recon_cbr_F"
	};
	backpack[] = 
	{
		"B_Kitbag_cbr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M240"
	};
	scope[] = 
	{
		"CUP_optic_ACOG_TA648_308_RDS_Black"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Coyote"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_17Rnd_9x19_M17_Black"),
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
		"B_Kitbag_cbr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Coyote"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_30Rnd_556x45_PMAG_COYOTE"),
		LIST_2("CUP_17Rnd_9x19_M17_Black")
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
		"B_Kitbag_cbr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Coyote"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_F"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_M17_Black")
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
		"B_Kitbag_cbr"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Coyote"
	};
	magazines[] += 
	{
		LIST_2("CUP_17Rnd_9x19_M17_Black")
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
	vest[] = 
	{
		"V_CarrierRigKBT_01_light_Coyote_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_PMAG_COYOTE")
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
		"CUP_hgun_M17_Coyote"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_17Rnd_9x19_M17_Black"),
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
	sidearmWeapon[] = 
	{
		"CUP_hgun_M17_Coyote"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("CUP_30Rnd_556x45_PMAG_COYOTE"),
		LIST_3("CUP_17Rnd_9x19_M17_Black"),
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
		"B_Kitbag_cbr"
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
		"CUP_hgun_M17_Coyote"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_17Rnd_9x19_M17_Black"),
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
		"arifle_SPAR_01_blk_F"
	};
	scope[] = 
	{
		"CUP_optic_LeupoldMk4_20x40_LRT"
	};
	attachment[] = 
	{
		"CUP_acc_ANPEQ_15"
	};
	bipod[] = 
	{
		"CUP_bipod_Harris_1A2_L_BLK"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_5("CUP_30Rnd_556x45_PMAG_COYOTE")
	};
	backpackItems[] = 
	{
		LIST_5("CUP_30Rnd_556x45_PMAG_COYOTE")
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
		"CUP_optic_LeupoldMk4_20x40_LRT"
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
		LIST_9("CUP_30Rnd_556x45_PMAG_COYOTE"),
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
		LIST_9("CUP_30Rnd_556x45_PMAG_COYOTE"),
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