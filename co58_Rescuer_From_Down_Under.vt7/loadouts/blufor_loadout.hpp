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
		"aegis_acu_ausmtp"
	};
	vest[] = 
	{
		"aegis_platecarrier_rig_ausmtp"
	};
	headgear[] = 
	{
		"ptv_m17_helmet_arc_rgr"
	};
	backpack[] = 
	{
		"aegis_kitbag_ausmpt"
	};
	primaryWeapon[] = 
	{
		"aegis_weap_aur90"
	};
	scope[] = 
	{
		"rhsusf_acc_compm4"
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
		LIST_13("hlc_30Rnd_556x45_EPR_AUG")
	};
	backpackItems[] = 
	{
		LIST_4("hlc_30Rnd_556x45_EPR_AUG")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"aegis_platecarrier_spec_ausmtp"
	};
	backpack[] = 
	{
		"aegis_carryall_ausmtp"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_Mk48_nohg"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_p226"
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
		"aegis_kitbag_ausmpt"
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
		"aegis_weap_aur90_eglm"
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
		LIST_2("hlc_30Rnd_556x45_EPR_T_AUG"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_3("1Rnd_Smoke_Grenade_shell")
	};
	primaryWeapon[] = 
	{
		"aegis_weap_aur90_eglm"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	headgear[] = 
	{
		"aegis_beret_sf_brn"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_p226"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_FMJ_P226")
	};
	backpackItems[] =
	{
		LIST_2("hlc_30Rnd_556x45_EPR_T_AUG"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
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
		LIST_13("rhs_mag_M441_HE"),
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
		"aegis_carryall_ausmtp"
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
		"hlc_pistol_p226"
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
	vest[] = 
	{
		"aegis_platecarrier_spec_ausmtp"
	};
	backpack[] = 
	{
		"aegis_carryall_ausmtp"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m240G"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_p226"
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
		"aegis_carryall_ausmtp"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_p226"
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
		"aegis_carryall_ausmtp"
	};
	secondaryWeapon[] = 
	{
		"fwa_weap_m2_carlgustaf_no78"
	};
	secondaryAttachments[] = 
	{
		"rhs_optic_maaws"
	};
	backpackItems[] = 
	{
		LIST_2("fwa_1rnd_m2_carlgustaf_HEAT")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"aegis_carryall_ausmtp"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_p226"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_FMJ_P226")
	};
	backpackItems[] = 
	{
		LIST_2("fwa_1rnd_m2_carlgustaf_HEAT"),
		"fwa_1rnd_m2_carlgustaf_HE"
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
		"aegis_platecarrier_lite_ausmtp"
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
		"hlc_pistol_p226"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("hlc_30Rnd_556x45_EPR_AUG"),
		LIST_3("hlc_15Rnd_9x19_FMJ_P226"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};