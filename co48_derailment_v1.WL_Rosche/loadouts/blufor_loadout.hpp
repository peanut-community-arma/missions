// World War Whatever player loadout, last modified 2023-05-25
// rm_lat repurposed as Radio Operator class

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
		"U_Simc_arvn_og107",
		"simc_arvn_roll_og107"
	};
	vest[] = 
	{
		"pca_vest_invisible"
	};
	headgear[] = 
	{
		LIST_5("rhs_ssh60"),
		LIST_2("simc_p58_cap_og107")
	};
	backpack[] = 
	{
		"pca_backpack_invisible",
		"simc_m1941_pack_od3"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_mas_49"
	};
	items[] =
	{
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_16("sp_fwa_10rnd_75_mas49")
	};
	backpackItems[] =
	{
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"simc_tropical_pack"
	};
	vest[] =
	{
		"simc_m1937_belt_sog_patrol"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_bren_mk2"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("fwa_30rnd_303_bren_tracer_red")
	};
	backpackItems[] = 
	{
		LIST_4("fwa_30rnd_303_bren_tracer_red")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"simc_tropical_pack"
	};
	backpackItems[] += 
	{
		LIST_8("fwa_30rnd_303_bren_tracer_red")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm
{
	displayName = "Radio Operator";
	primaryWeapon[] =
	{
		"sp_fwa_smg_mat49"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("sp_fwa_32Rnd_9x19_MAT49")
	};
	backpack[] =
	{
		"simc_prc25_radiopack_41"
	};
	backpackItems[] =
	{
		"ACRE_PRC77"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_M4A1_BUIS_GL"
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
	backpackItems[] = 
	{
		LIST_2("fwa_10rnd_75_mas49_tracer_red"),
		LIST_2("fwa_1rnd_rifle_grenade_mas_34mm_HE"),
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
	vest[] = 
	{
		"rhs_gear_OFF"
	};
	backpack[] = 
	{
		"simc_tropical_pack_radio"
	};
	backpackItems[] =
	{
		"ACRE_PRC77",
		LIST_2("fwa_1rnd_rifle_grenade_mas_34mm_HE"),
		LIST_2("fwa_10rnd_75_mas49_tracer_red"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{	
		"ACRE_PRC77",
		LIST_2("fwa_1rnd_rifle_grenade_mas_34mm_HE"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	headgear[] =
	{
		"CUP_H_C_Beret_01"
	};
	backpackItems[] =
	{
		"ACRE_PRC77",
		LIST_2("fwa_10rnd_75_mas49_tracer_red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
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
	backpack[] = 
	{
		"simc_tropical_pack"
	};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] =
	{
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_20("ACE_elasticBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	backpack[] = 
	{
		"simc_tropical_pack"
	};
	vest[] =
	{
		"simc_m1937_belt_sog_patrol"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_aa52"
	};
	bipod[] = {};
	attachment[] = {};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_5("rhsusf_50Rnd_762x51")
	};
	backpackItems[] = 
	{
		LIST_5("rhsusf_50Rnd_762x51")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"simc_tropical_pack"
	};
	backpackItems[] = 
	{
		LIST_6("rhsusf_50Rnd_762x51")
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
		"rhsusf_assault_eagleaiii_ocp"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
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
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP")
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
		"rhsusf_assault_eagleaiii_ocp"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_MAAWS_HEAT_M"),
		"CUP_MAAWS_HEDP_M",
		"MRAWS_HE_F"
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
	vest[] = 
	{
		"rhsusf_spcs_ocp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_cvc_helmet",
		"rhsusf_cvc_alt_helmet",
		"rhsusf_cvc_ess"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag")
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
		"rhsusf_weap_glock17g4"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_17Rnd_9x19_JHP"),
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
	vest[] = 
	{
		"rhsusf_spcs_ocp_crewman"
	};
	headgear[] = 
	{
		"rhsusf_ihadss"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_3("rhsusf_mag_17Rnd_9x19_JHP"),
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
		"rhsusf_assault_eagleaiii_ocp"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("DemoCharge_Remote_Mag"),
		LIST_2("SatchelCharge_Remote_Mag")
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
		"rhsusf_hgu56p_visor_mask"
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("rhsusf_mag_17Rnd_9x19_JHP"),
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
		"cup_optic_no23mk2"
	};
	attachment[] = {};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_10x_303_M")
	};
	backpackItems[] = 
	{
		LIST_12("CUP_10x_303_M")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	backpack[] =
	{
		"simc_prc25_radiopack_41"
	};
	backpackItems[] =
	{
		"ACRE_PRC77"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class hmg : rm 
{
	displayName = "Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
};

class ahmg : rm 
{
	displayName = "Assistant Heavy Machine Gunner";
	backpack[] = 
	{
		"ace_csw_m3CarryTripodLow"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};