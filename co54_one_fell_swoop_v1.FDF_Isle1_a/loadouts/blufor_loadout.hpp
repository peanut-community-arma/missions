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
		"CUP_U_O_Partisan_TTsKO",
		"CUP_U_O_Partisan_TTsKO_Mixed"
	};
	vest[] = 
	{
		"rhsgref_6b23_ttsko_forest"
	};
	headgear[] = 
	{
		"rhsgref_ssh68_ttsko_forest"
	};
	backpack[] = 
	{
		"pca_umbts_flora"
	};
	primaryWeapon[] = 
	{
		"Opf_arifle_SKS_F"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_m67"),
		LIST_13("fwa_10rnd_762x39_sks")
	};
	backpackItems[] = 
	{
		LIST_4("fwa_10rnd_762x39_sks")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"pca_umbts_flora"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_Early",
		"CUP_arifle_AKMS_Early",
		"CUP_arifle_AKM"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_tt33"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_m67"),
		LIST_2("rhs_mag_762x25_8"),
		LIST_13("rhs_30Rnd_762x39mm")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_30Rnd_762x39mm")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_umbts_flora"
	};
	backpackItems[] += 
	{
		LIST_4("rhs_30Rnd_762x39mm")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg26"
	};
	backpackItems[] += 
	{
		"rhs_weap_rpg26"
	};
};

class gren : ar 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_GL_Early"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	backpackItems[] = 
	{
		LIST_4("rhs_30Rnd_762x39mm_tracer"),
		LIST_2("rhs_mag_rdg2_white")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_tt33"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_762x25_8")
	};
	backpackItems[] =
	{
		LIST_4("rhs_30Rnd_762x39mm_tracer"),
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_6("CUP_1Rnd_SMOKE_GP25_M"),
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
	primaryWeapon[] = 
	{
		"CUP_arifle_AKM_Early"
	};
	backpackItems[] =
	{
		LIST_4("rhs_30Rnd_762x39mm_tracer"),
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
		LIST_11("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M"),
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
		"pca_umbts_flora"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
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
		"rhs_weap_tt33"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_762x25_8")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
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
		"pca_umbts_flora"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] = 
	{
		"rhsusf_acc_ARDEC_M240"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_tt33"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_m67"),
		LIST_2("rhs_mag_762x25_8"),
		LIST_3("rhs_100Rnd_762x54mmR_7N13")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_100Rnd_762x54mmR_7N13")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"pca_umbts_flora"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_tt33"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_762x25_8")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_100Rnd_762x54mmR_7N13")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"pca_umbts_flora"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_tt33"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v2"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_762x25_8")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_rpg7_PG7VL_mag")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"pca_umbts_flora"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_tt33"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_762x25_8")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_rpg7_PG7VL_mag"),
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
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
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_m67"),
		LIST_9("fwa_10rnd_762x39_sks")
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
		"rhs_weap_tt33"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("rhs_mag_762x25_8"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"rhssaf_zrak_rd7j"
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
		"rhs_weap_tt33"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_7("fwa_10rnd_762x39_sks"),
		LIST_3("rhs_mag_762x25_8"),
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
		"pca_umbts_flora"
	};
	backpackItems[] = 
	{
		"ACE_DefusalKit",
		"ACE_Clacker",
		LIST_4("rhs_mine_pmn2_mag"),
		LIST_2("rhs_mine_tm62m_mag")
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
		"rhs_weap_tt33"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_5("rhs_mag_762x25_8"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	backpackItems[] = {};
};

class dm : rm 
{
	displayName = "Designated Marksman";
	vest[] = 
	{
		"rhsusf_spcs_ocp_sniper"
	};
	headgear[] = 
	{
		"rhsusf_ach_helmet_camo_ocp"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m14ebrri"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG"
	};
	attachment[] = {};
	bipod[] = 
	{
		"rhsusf_acc_harris_bipod"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_m67"),
		LIST_9("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	backpackItems[] = 
	{
		LIST_12("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class spt : rm 
{
	displayName = "Spotter";
	headgear[] = 
	{
		"rhsusf_ach_helmet_camo_ocp"
	};
	scope[] = 
	{
		"rhsusf_acc_ACOG"
	};
	backpackItems[] += 
	{
		LIST_2("rhs_mag_rdg2_white"),
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
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] = 
	{
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_m67"),
		LIST_9("fwa_10rnd_762x39_sks"),
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
		LIST_2("rhs_mag_rdg2_white"),
		LIST_2("rhs_mag_m67"),
		LIST_9("fwa_10rnd_762x39_sks"),
		"ace_csw_100Rnd_127x99_mag_red"
	};
	backpackItems[] = 
	{
		LIST_3("ace_csw_100Rnd_127x99_mag_red")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};