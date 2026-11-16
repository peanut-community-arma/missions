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
		"CUP_U_B_BDUv2_DPM",
		"CUP_U_B_BDUv2_roll2_DPM",
		"CUP_U_B_BDUv2_roll_DPM",
		"CUP_U_B_BDUv2_DPM_OD",
		"CUP_U_B_BDUv2_roll2_DPM_OD",
		"CUP_U_B_BDUv2_roll_DPM_OD"
	};
	vest[] = 
	{
		"V_Simc_56",
		"V_Simc_56_alt"
	};
	headgear[] = 
	{
		"CUP_H_BAF_PARA_BERET",
		"JAM_H_HelmetM1_low_cover_net_wdl",
	    "JAM_H_HelmetM1_low_net_oli",
	    "JAM_H_CapBeanie_blk"
	};
	backpack[] = 
	{
		"B_simc_USMC65_M41_flat"
	};
	primaryWeapon[] = 
	{
		"CUP_srifle_LeeEnfield"
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
		LIST_13("CUP_10x_303_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_10x_303_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"V_Simc_Alice_60"
	};
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_bren_mk2"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_13Rnd_9x19_Browning_HP"),
		LIST_3("sp_fwa_30Rnd_303_Bren_Tracer")
	};
	backpackItems[] = 
	{
		LIST_4("sp_fwa_30Rnd_303_Bren_Tracer")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
	};
	backpackItems[] += 
	{
		LIST_4("sp_fwa_30Rnd_303_Bren_Tracer")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	primaryWeapon[] = 
	{
		"sp_fwa_smg_sterling"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_13Rnd_9x19_Browning_HP"),
		LIST_3("sp_fwa_32Rnd_9x19_L2A3_Sterling_Ball")
	};
	secondaryWeapon[] = 
	{
		"CUP_launch_HCPF3"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	sidearmWeapon[] = 
	{
		"ptv_hk69"
	};
	vest[] =
	{
		"V_Simc_56_4cm",
	};
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
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
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
	};
	backpackItems[] = 
	{
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_10x_303_M"),
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
		"V_Simc_56_4cm"
	};
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
	};
	sidearmWeapon[] = 
	{
		"ptv_hk69"
	};
	magazines[] += 
	{
		LIST_2("CUP_13Rnd_9x19_Browning_HP")
	};
	backpackItems[] =
	{
		LIST_2("CUP_10x_303_M"),
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_8("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
	};
	sidearmWeapon[] = 
	{
		"ptv_hk69"
	};
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
	sidearmWeapon[] = 
	{
		"ptv_hk69"
	};
	backpack[] =
	{
		"B_simc_pack_trop_1_alt"
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
		"V_Simc_56_med_side_ass"
	};
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
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
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_10x_303_M"),
		LIST_2("CUP_13Rnd_9x19_Browning_HP")
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
	vest[] = 
	{
		"V_Simc_56_60"
	};
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_FNMAG"
	};
	bipod[] = {};
	attachment[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("CUP_13Rnd_9x19_Browning_HP"),
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_10x_303_M"),
		LIST_2("CUP_13Rnd_9x19_Browning_HP")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
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
		"B_simc_pack_trop_1_alt"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Browning_HP"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m2_carlGustav"
	};
	magazines[] += 
	{
		LIST_2("CUP_13Rnd_9x19_Browning_HP")
	};
	backpackItems[] = 
	{
		LIST_2("sp_fwa_carlg_1rnd_heat")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Browning_HP"
	};
	magazines[] += 
	{
		LIST_2("CUP_13Rnd_9x19_Browning_HP")
	};
	backpackItems[] = 
	{
		LIST_2("sp_fwa_carlg_1rnd_heat"),
		"sp_fwa_carlg_1rnd_he"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_10x_303_M")
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
		"CUP_hgun_Browning_HP"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("CUP_13Rnd_9x19_Browning_HP"),
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
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("CUP_10x_303_M"),
		LIST_3("CUP_13Rnd_9x19_Browning_HP"),
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
		"B_simc_pack_trop_1_alt"
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
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_13Rnd_9x19_Browning_HP"),
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
		"CUP_srifle_LeeEnfield"
	};
	scope[] = 
	{
		"CUP_optic_no23mk2"
	};
	attachment[] = {};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_6("CUP_10x_303_M")
	};
	backpackItems[] = 
	{
		LIST_10("CUP_10x_303_M")
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
		"CUP_optic_no23mk2"
	};
	backpack[] = 
	{
		"B_simc_pack_trop_1_alt"
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
		LIST_9("CUP_10x_303_M"),
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
		LIST_9("CUP_10x_303_M"),
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