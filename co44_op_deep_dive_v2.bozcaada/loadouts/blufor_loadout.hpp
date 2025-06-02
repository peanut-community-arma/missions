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
		"simc_bdu_raid_dtex"
	};
	vest[] = 
	{
		"V_PlateCarrier1_cbr"
	};
	headgear[] = 
	{
		"H_HelmetB_light"
	};
	backpack[] = 
	{
		"B_AssaultPack_cbr"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_scarh_std_tan$"
	};
	scope[] = 
	{
		"cup_optic_eotech533"
	};
	silencer[] = 
	{
		"$NONE_hlc_muzzle_fn_oem$"
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
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_Kitbag_cbr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Mk48_nohg"
	};
		scope[] = 
	{
		"$NONE_rksl_optic_eot552x$"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25_tan$"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("hlc_15Rnd_9x19_FMJ_P226"),
		LIST_3("rhsusf_100Rnd_762x51_m80a1epr")
	};
	backpackItems[] = 
	{
		LIST_4("rhsusf_100Rnd_762x51_m80a1epr")
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
		LIST_4("rhsusf_100Rnd_762x51_m80a1epr")
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
		"$NONE_hlc_rifle_scarh_std_eglm_tan$"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_21("rhs_mag_M433_HEDP"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	backpackItems[] = 
	{
		LIST_2("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr"),
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
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_scarh_std_eglm_tan$"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25_tan$"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_FMJ_P226")
	};
	backpackItems[] =
	{
		LIST_10("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		"ACE_wirecutter"
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_10("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		"ACE_wirecutter"
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_scarh_std_tan$"
	};
	backpackItems[] =
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		"ACE_wirecutter"
	};
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
		"B_Kitbag_cbr"
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
		"$NONE_hlc_pistol_mk25_tan$"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_FMJ_P226")
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
		"B_Kitbag_cbr"
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
		"$NONE_hlc_pistol_mk25_tan$"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("hlc_15Rnd_9x19_FMJ_P226"),
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
		"B_Kitbag_cbr"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25_tan$"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_FMJ_P226")
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
		"B_Kitbag_cbr"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25_tan$"
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
		LIST_2("hlc_15Rnd_9x19_FMJ_P226")
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
		"B_Kitbag_cbr"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25_tan$"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_FMJ_P226")
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
		LIST_9("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr")
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
		"$NONE_hlc_pistol_mk25_tan$"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("hlc_15Rnd_9x19_FMJ_P226"),
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
		"rhsusf_ihadss"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25_tan$"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr"),
		LIST_3("hlc_15Rnd_9x19_FMJ_P226"),
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
		"$NONE_hlc_pistol_mk25_tan$"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_5("hlc_15Rnd_9x19_FMJ_P226"),
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
		"$NONE_hlc_rifle_scarh_ssr_tan$"
	};
	scope[] = 
	{
		"optic_dms"
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
		LIST_9("rhs_mag_20Rnd_SCAR_762x51_m61_ap")
	};
	backpackItems[] = 
	{
		LIST_12("rhs_mag_20Rnd_SCAR_762x51_m61_ap")
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
		"ace_compat_rhs_usf3_m2_carry"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_9("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr"),
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
		LIST_9("rhs_mag_20Rnd_SCAR_762x51_m80a1_epr"),
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