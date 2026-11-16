class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"Atlas_U_O_Afghanka_01_semiarid_F",
		"Atlas_U_O_Afghanka_02_semiarid_F"
	};
	vest[] = 
	{
		"Atlas_V_OCarrierRig_Lite_semiarid_F"
	};
	backpack[] = 
	{
		"B_FieldPack_semiarid"
	};
	headgear[] = 
	{
		"Atlas_H_HelmetCCH_HiCut_Cover_semiarid_F"	
	};
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
	primaryWeapon[] = 
	{
		"arifle_Mk20C_plain_F"
	};
	scope[] =
	{
		"optic_Aco"
	};
	sidearmWeapon[] =
	{
		"hgun_Pistol_heavy_01_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_12("CUP_30Rnd_556x45_PMAG_COYOTE_RPL"),
		LIST_2("11Rnd_45ACP_Mag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_Carryall_semiarid"
	};
	primaryWeapon[] = 
	{
		"SPS_KAC_LWAMG_Tan_F"
	};
	bipod[] = 
	{
		"bipod_02_F_tan"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("11Rnd_45ACP_Mag"),
		LIST_4("SPS_KAC_LWAMG_100rnd_Box_M80A1")
	};
	backpackItems[] = 
	{
		LIST_6("SPS_KAC_LWAMG_100rnd_Box_M80A1")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_Carryall_semiarid"
	};
	backpackItems[] += 
	{
		LIST_6("SPS_KAC_LWAMG_100rnd_Box_M80A1")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (AT)";
	backpack[] = 
	{
		"B_Carryall_semiarid"
	};	
	secondaryWeapon[] = 
	{
		"launch_MRAWS_sand_rail_F"
	};	
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_12("CUP_30Rnd_556x45_PMAG_COYOTE_RPL"),
		LIST_2("11Rnd_45ACP_Mag")
	};	
	backpackItems[] = 
	{
		LIST_3("MRAWS_HEAT_F"),
		"MRAWS_HE_F"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	vest[] = 
	{
		"Atlas_V_OCarrierRig_GL_semiarid_F"
	};
	primaryWeapon[] = 
	{
		"arifle_Mk20_GL_plain_F"
	};	
	backpackItems[] = 
	{
		LIST_15("1Rnd_HE_Grenade_shell"),
		LIST_5("1Rnd_Smoke_Grenade_shell")
	};	
};
class tl : gren 
{
	displayName = "Team Leader";
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_12("CUP_30Rnd_556x45_PMAG_COYOTE_RPL_Tracer_Red"),
		LIST_2("11Rnd_45ACP_Mag")
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
	backpackItems[] +=
	{
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
		LIST_4("SmokeShellBlue"),
		LIST_4("SmokeShellRed")		
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	items[] += 
	{
		"ACRE_PRC148"
	};	
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpack[]= 
	{
		"B_Carryall_semiarid"
	};
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_15("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_15("1Rnd_SmokeRed_Grenade_shell"),
		LIST_15("SmokeShellBlue"),
		LIST_15("SmokeShellRed")
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
		"B_Carryall_semiarid"
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
		LIST_10("ACE_suture")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
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

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"H_HelmetCrew_B"
	};
	primaryWeapon[] =
	{
		"arifle_Mk20C_plain_F"
	};	
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	items[] +=
	{
		"ACRE_PRC148"
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};

class hp : rm
{
	displayName = "Helicopter Pilot";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"H_PilotHelmetHeli_O"
	};
	primaryWeapon[] =
	{
		"arifle_Mk20C_plain_F"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};	
	backpackItems[] = 
	{
		"ToolKit"
	};	
};

class eng : rm 
{
	displayName = "Engineer";
	traits[] = {"engineer","explosiveSpecialist"};
	backpack[] = 
	{
		"B_Carryall_semiarid"
	};
	primaryWeapon[] =
	{
		"arifle_Mk20C_plain_F"
	};	
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_8("DemoCharge_Remote_Mag")
	};
};

//********************************************************************************//
//Uncommon Roles - !!! CUSTOM ENTRIES NEEDED FOR CURATED ARSENAL !!!
//********************************************************************************//

class dm : rm 
{
	displayName = "Designated Marksman";
	primaryWeapon[] = 
	{
		"Aegis_arifle_SR25_MR_snd_F"
	};
	scope[] = 
	{
		"optic_SOS"
	};
	bipod[] = 
	{
		"bipod_02_F_tan"
	};
	items[] +=
	{
		"ACE_ATragMX",
		"ACE_microDAGR"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_20("Aegis_20Rnd_762x51_Red_Sand_SMAG"),
		LIST_2("11Rnd_45ACP_Mag")
	};
	linkedItems[] += 
	{
		"ACE_Vector"
	};
};