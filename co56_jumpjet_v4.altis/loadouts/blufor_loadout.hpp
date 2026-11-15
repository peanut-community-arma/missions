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
		"V_Simc_vest_pasgt_erdl_alice"
	};
	headgear[] = 
	{
		"CUP_H_BAF_PARA_BERET",
		"JAM_H_HelmetM1_low_cover_net_wdl",
		"JAM_H_HelmetM1_low_net_oli"
	};
	backpack[] = 
	{
		"B_simc_pack_alice_0",
		"B_simc_pack_alice_3",
		"B_simc_pack_alice_frame_2_alt"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL5061_wooden"
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
		LIST_13("CUP_20Rnd_762x51_FNFAL_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_20Rnd_762x51_FNFAL_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"V_Simc_vest_pasgt_erdl_alice_60"
	};
	backpack[] = 
	{
		"B_simc_pack_alice_0",
		"B_simc_pack_alice_3",
		"B_simc_pack_alice_frame_2_alt"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_bren_l4_lmg"
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
		LIST_3("sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer")
	};
	backpackItems[] = 
	{
		LIST_4("sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_simc_pack_alice_0",
		"B_simc_pack_alice_3",
		"B_simc_pack_alice_frame_2_alt"
	};
	backpackItems[] += 
	{
		LIST_4("sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer")
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
		"CUP_launch_M72A6"
	};
	backpackItems[] += 
	{
		"CUP_launch_M72A6"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"V_Simc_vest_pasgt_erdl_nade",
	};
	primaryWeapon[] = 
	{
		"arifle_SLR_GL_lxWS"
	};
	backpackItems[] = 
	{
		LIST_3("1Rnd_40mm_HE_lxWS"),
		LIST_3("1Rnd_58mm_AT_lxWS"),
		LIST_2("1Rnd_50mm_Smoke_lxWS")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"arifle_SLR_GL_lxWS"
	};
	backpack[] = 
	{
		"CUP_B_ACRPara_dpm"
	};
	backpackItems[] = 
	{
		LIST_3("1Rnd_40mm_HE_lxWS"),
		LIST_3("1Rnd_58mm_AT_lxWS"),
		LIST_2("1Rnd_50mm_Smoke_lxWS"),
		LIST_2("20Rnd_762x51_slr_lxWS"),
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
		"V_Simc_vest_pasgt_erdl_alice_45"
	};
	primaryWeapon[] = 
	{
		"arifle_SLR_GL_lxWS"
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
		LIST_2("20Rnd_762x51_slr_lxWS"),
		LIST_5("1Rnd_40mm_HE_lxWS"),
		LIST_5("1Rnd_58mm_AT_lxWS"),
		LIST_3("1Rnd_50mm_Smoke_lxWS")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_5("1Rnd_40mm_HE_lxWS"),
		LIST_4("1Rnd_50mm_Smoke_lxWS"),
		LIST_2("20Rnd_762x51_slr_lxWS"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpack[] = 
	{
		"CUP_B_ACRPara_dpm"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_1("SmokeShellRed"),
		LIST_2("20Rnd_762x51_slr_lxWS")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("1Rnd_40mm_HE_lxWS"),
		LIST_4("1Rnd_50mm_Smoke_lxWS"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellRed"),
		LIST_2("20Rnd_762x51_slr_lxWS")
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
		"V_Simc_vest_pasgt_erdl_alice"
	};
	backpack[] = 
	{
		"CUP_B_ACRPara_dpm"
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
		LIST_5("CUP_20Rnd_762x51_FNFAL_M"),
		LIST_2("CUP_13Rnd_9x19_Browning_HP")
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
		"V_Simc_vest_pasgt_erdl_alice_60"
	};
	backpack[] = 
	{
		"CUP_B_ACRPara_dpm"
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
		LIST_2("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"CUP_B_ACRPara_dpm"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_Browning_HP"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_20Rnd_762x51_FNFAL_M"),
		LIST_2("CUP_13Rnd_9x19_Browning_HP")
	};
	backpackItems[] = 
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
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
		"B_simc_pack_alice_0",
		"B_simc_pack_alice_3",
		"B_simc_pack_alice_frame_2_alt"
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
		"B_simc_pack_alice_0",
		"B_simc_pack_alice_3",
		"B_simc_pack_alice_frame_2_alt"
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
		LIST_9("CUP_20Rnd_762x51_FNFAL_M")
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
		LIST_7("CUP_20Rnd_762x51_FNFAL_M"),
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
		"B_simc_pack_alice_0",
		"B_simc_pack_alice_3",
		"B_simc_pack_alice_frame_2_alt"
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
		"USAF_Overalls_Ranger_6_w"
	};
	vest[] = 
	{
		"CUP_V_B_PilotVest"
	};
	headgear[] = 
	{
		"CUP_H_RUS_ZSH_Shield_Up",
		"CUP_H_RUS_ZSH_Shield_Down"
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
		"CUP_srifle_Remington700"
	};
	scope[] = 
	{
		"CUP_optic_Remington"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_6Rnd_762x51_R700")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_6Rnd_762x51_R700")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class spt : rm 
{
	displayName = "Spotter";
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
		LIST_9("CUP_20Rnd_762x51_FNFAL_M"),
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
		LIST_9("CUP_20Rnd_762x51_FNFAL_M"),
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