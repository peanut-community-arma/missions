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
	displayName = "Fixer";
	uniform[] = 
	{
		"CUP_I_B_PMC_Unit_41",
		"CUP_I_B_PMC_Unit_42",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_40",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_39"
	};
	vest[] = 
	{
		"pca_vest_invisible_kevlar"
	};
	headgear[] = 
	{
		"bear_opscore_tan_pelt",
		"bear_opscore_tan_pelt_cam"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"SMG_03C_black",
		"SMG_03C_hex"
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
		LIST_13("50Rnd_570x28_SMG_03")
	};
	backpackItems[] = 
	{
	};
};

class demo : rm
{
	displayName = "Fixer (Engineer)"
	traits[] = {"engineer", "explosiveSpecialist"};
	vest[] =
	{
		"V_PlateCarrierSpec_blk"
	};
	sidearmWeapon[] = {"ACE_VMM3"};
	backpackItems[] +=
	{
		"ACE_DefusalKit",
		"ACE_Clacker",
		LIST_2("rhsusf_m112_mag")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	backpackItems[] = 
	{
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"ItemGPS"
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
		"hlc_rifle_magpul556_blk",
		"hlc_rifle_magpul556"
	};
	scope[] =
	{
		"rhsusf_acc_compm4"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] = 
	{
		LIST_2("HandGrenade"),
		LIST_2("SmokeShell"),
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Chief of Security";
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

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"wsx_tacticalpack_blk"
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_JHP")
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

class str : rm 
{
	displayName = "Streamer";
	uniform[] =
	{
		"U_NikosBody",
		"U_C_man_sport_1_F",
		"CUP_U_C_Rocker_04"
	};
	headgear[] =
	{
		"H_Cap_surfer",
		"CUP_H_PMC_Cap_Back_Burberry",
		"milgp_h_cap_backwards_02_goggles_rgr",
		"CUP_H_PMC_Cap_Back_Tan"
	};
	primaryWeapon[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	sidearmWeapon[] = 
	{
		"Xnooz_AppareilPhoto"
	};
	linkedItems[] +=
	{
		"ItemGPS"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		"ACE_Cellphone"
	};
	backpackItems[] = 
	{
	};
};

class prd : rm 
{
	displayName = "Production";
	traits[] = {"engineer"};
	backpack[] = 
	{
	};
	primaryWeapon[] = {};
	sidearmWeapon[] = 
	{
		"Xnooz_micro1"
	};
	secondaryWeapon[] = 
	{
		"XZ_CamRecorder_1"
	};
	linkedItems[] +=
	{
		"ItemGPS"
	};
	magazines[] = 
	{
		LIST_2("XZ_CamRecorder_Mag")
	};
	backpackItems[] = {};
};

class drone : prd 
{
	displayName = "Drone Operator";
	backpack[] = 
	{
		"B_UAV_06_medical_backpack_F"
	};
	backpackItems[] = 
	{
	};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"B_UavTerminal"
	};
};

class prd_tl : prd 
{
	displayName = "Production Lead";
	backpack[] =
	{
		"wsx_tacticalpack_blk"
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};