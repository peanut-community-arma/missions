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
		"$NONE_wsx_uniform_combat_tubitak$"
	};
	vest[] =
	{
		LIST_4("Atlas_Tacvest_Ard_F"),
		"V_TacVest_oli",
		"V_TacVest_khk"
	};
	headgear[] =
	{
		"H_PASGT_basic_UNO_F"
	};
	backpack[] =
	{
		"B_Kitbag_rgr"
	};
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_hk33a2$"
	};
	scope[] = {};
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
		// LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("hlc_30Rnd_556x45_B_HK33")
	};
	backpackItems[] =
	{
		LIST_4("hlc_30Rnd_556x45_B_HK33")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	// vest[] =
	// {
	// 	"Atlas_Tacvest_Ard_F"
	// };
	backpack[] =
	{
		"pca_eagle_a3_rgr"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_PKM"
	};
	bipod[] = {};
	sidearmWeapon[] =
	{
		"CUP_hgun_M9"
	};
	magazines[] =
	{
		// LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("CUP_15Rnd_9x19_M9"),
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M")
	};
	backpackItems[] =
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M")
	};
};

class aar : rm
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] =
	{
		"pca_eagle_a3_rgr"
	};
	backpackItems[] +=
	{
		LIST_4("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M")
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
		"rhs_weap_M136"
	};
	backpackItems[] +=
	{
		"rhs_weap_M136"
	};
};

class gren : rm
{
	displayName = "Grenadier";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_hk33a2_ris_m203$"
	};
	backpackItems[] =
	{
		LIST_21("rhs_mag_M441_HE")
	};
};

class tl : gren
{
	displayName = "Team Leader";
	backpackItems[] =
	{
		LIST_15("rhs_mag_M441_HE"),
		LIST_4("hlc_30Rnd_556x45_T_HK33"),
		LIST_3("ACE_CableTie")
		// LIST_2("SmokeShell")
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
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_hk33a2_ris_m203$"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M9"
	};
	magazines[] +=
	{
		LIST_2("CUP_15Rnd_9x19_M9")
	};
	backpackItems[] =
	{
		LIST_2("hlc_30Rnd_556x45_T_HK33"),
		LIST_21("rhs_mag_M441_HE")
		// LIST_6("1Rnd_Smoke_Grenade_shell"),
		// LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		// LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		// LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("rhs_mag_M441_HE")
		// LIST_4("1Rnd_Smoke_Grenade_shell"),
		// LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		// LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		// LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		// LIST_2("SmokeShellBlue"),
		// LIST_2("SmokeShellGreen"),
		// LIST_2("SmokeShellRed")
	};
};

class co : sl
{
	displayName = "Platoon Commander";
	primaryWeapon[] =
	{
		"$NONE_hlc_rifle_hk33a2_ris_m203$"
	};
	// backpackItems[] =
	// {
	// 	LIST_2("hlc_30Rnd_556x45_T_HK33")
	// 	// LIST_2("SmokeShellBlue"),
	// 	// LIST_2("SmokeShellGreen"),
	// 	// LIST_2("SmokeShellRed")
	// };
};

class fac : sl
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("rhs_mag_M441_HE"),
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
		"pca_eagle_a3_rgr"
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
		"CUP_hgun_M9"
	};
	magazines[] +=
	{
		LIST_2("CUP_15Rnd_9x19_M9")
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
	vest[] =
	{
		"Atlas_Tacvest_Ard_F"
	};
	backpack[] =
	{
		"pca_eagle_a3_rgr"
	};
	primaryWeapon[] =
	{
		"rhs_weap_m240B"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] =
	{
		"rhsusf_acc_ARDEC_M240"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M9"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("CUP_15Rnd_9x19_M9"),
		LIST_3("rhsusf_100Rnd_762x51_m80a1epr")
	};
	backpackItems[] =
	{
		LIST_6("rhsusf_100Rnd_762x51_m80a1epr")
	};
};

class ammg : rm
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] =
	{
		"pca_eagle_a3_rgr"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M9"
	};
	magazines[] +=
	{
		LIST_2("CUP_15Rnd_9x19_M9")
	};
	backpackItems[] =
	{
		LIST_8("rhsusf_100Rnd_762x51_m80a1epr")
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
		"pca_eagle_a3_rgr"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M9"
	};
	secondaryWeapon[] =
	{
		"rhs_weap_maaws"
	};
	secondaryAttachments[] =
	{
		"rhs_optic_maaws"
	};
	magazines[] +=
	{
		LIST_2("CUP_15Rnd_9x19_M9")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_maaws_HEAT")
	};
};

class amat : rm
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] =
	{
		"pca_eagle_a3_rgr"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M9"
	};
	magazines[] +=
	{
		LIST_2("CUP_15Rnd_9x19_M9")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_maaws_HEAT"),
		"rhs_mag_maaws_HEDP",
		"rhs_mag_maaws_HE"
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
		LIST_2("rhs_mag_m67"),
		LIST_9("hlc_30Rnd_556x45_B_HK33")
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
		"CUP_hgun_M9"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] +=
	{
		LIST_3("CUP_15Rnd_9x19_M9"),
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
		"CUP_hgun_M9"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_7("hlc_30Rnd_556x45_B_HK33"),
		LIST_3("CUP_15Rnd_9x19_M9"),
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
		"pca_eagle_a3_rgr"
	};
	backpackItems[] =
	{
		"ToolKit",
		"ACE_DefusalKit",
		"ACE_M26_Clacker",
		"ACE_wirecutter",
		LIST_4("rhsusf_m112_mag"),
		LIST_2("rhsusf_m112x4_mag")
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
		"CUP_hgun_M9"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_5("CUP_15Rnd_9x19_M9"),
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
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_9("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	backpackItems[] =
	{
		LIST_12("rhsusf_20Rnd_762x51_m118_special_Mag")
	};
	linkedItems[] +=
	{
		"Binocular"
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
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] =
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_9("hlc_30Rnd_556x45_B_HK33"),
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
		LIST_2("rhs_mag_m67"),
		LIST_9("hlc_30Rnd_556x45_B_HK33"),
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
