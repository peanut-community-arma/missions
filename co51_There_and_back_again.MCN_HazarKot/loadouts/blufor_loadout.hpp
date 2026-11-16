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
		"CUP_I_B_PARA_Unit_5",
		"bear_uniform_cup_paramilitary_clothes_dbdu",
		"CUP_I_B_PARA_Unit_11",
		"CUP_I_B_PARA_Unit_2",
		"CUP_I_B_PMC_Unit_36",
		"CUP_I_B_PMC_Unit_43",
		"CUP_I_B_PMC_Unit_42",
		"$NONE_usm_bdu_srh_dcu2$",
		"CUP_U_B_BDUv2_roll_DCU_US"
	};
	vest[] = 
	{
		"milgp_v_marciras_assaulter_belt_tan"
	};
	headgear[] = 
	{
		"milgp_h_opscore_01_tan"
	};
	backpack[] = 
	{
		"pca_eagle_a3_tan"
	};
	primaryWeapon[] = 
	{
		"arifle_SA80_snd_F"
	};
	scope[] = 
	{
		"optic_Hamr"
	};
	silencer[] = 
	{
		"$NONE_hlc_muzzle_fn_oem$"
	};
	attachment[] = 
	{
		"pca_flashlight_sf_tan"
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
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("30Rnd_65x39_caseless_mag")
	};
	backpackItems[] = 
	{
		LIST_4("30Rnd_65x39_caseless_mag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_marciras_hgunner_belt_tan"
	};
	backpack[] = 
	{
		"pca_eagle_a3_tan"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_amg_tan"
	};
	bipod[] = 
	{
		"CUP_bipod_VLTOR_Modpod"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25tr_tan$"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("hlc_15Rnd_9x19_FMJ_P226"),
		LIST_3("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
	};
	backpackItems[] = 
	{
		LIST_4("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_eagle_a3_tan"
	};
	backpackItems[] += 
	{
		LIST_4("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
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
	primaryWeapon[] = 
	{
		"arifle_SA80_GL_snd_F"
	};
	vest[] = 
	{
		"milgp_v_marciras_grenadier_belt_tan"
	};
	backpackItems[] = 
	{
		LIST_31("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"arifle_SA80_GL_snd_F"
	};
	vest[] = 
	{
		"milgp_v_marciras_teamleader_belt_tan"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
	backpackItems[] =
	{
		LIST_2("30Rnd_65x39_caseless_mag_Tracer"),
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203")
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
		"arifle_SA80_GL_snd_F"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25tr_tan$"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_FMJ_P226")
	};
	backpackItems[] =
	{
		LIST_2("30Rnd_65x39_caseless_mag_Tracer"),
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
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
		LIST_20("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
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
		"pca_eagle_a3_tan"
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
		"$NONE_hlc_pistol_mk25tr_tan$"
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

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	primaryWeapon[] = 
	{
		"arifle_SA80_C_snd_F"
	};
	scope[] = 
	{
		"CUP_optic_AC11704_Tan"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	vest[] = 
	{
		"milgp_v_marciras_light_tan"
	};
	headgear[] = 
	{
		"rhsusf_cvc_alt_helmet",
		"rhsusf_cvc_ess"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25tr_tan$"
	};
	magazines[] = 
	{
		LIST_3("hlc_15Rnd_9x19_FMJ_P226"),
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("30Rnd_65x39_caseless_mag")
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
		"$NONE_hlc_pistol_mk25tr_tan$"
	};
	magazines[] += 
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};


class rc_co : rm
{
	displayName = "Spotter/Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	vest[] = 
	{
		"milgp_v_marciras_marksman_belt_tan"
	};
	primaryWeapon[] = 
	{
		"CUP_srifle_Mk18_blk"
	};
	scope[] = 
	{
		"CUP_optic_SB_11_4x20_PM"
	};
	bipod[] = 
	{
		"CUP_bipod_VLTOR_Modpod_black"
	};
	attachment[] = 
	{
		"pca_flashlight_sf"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25tr_tan$"
	};
	magazines[] = 
	{
		LIST_3("hlc_15Rnd_9x19_FMJ_P226"),
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_15("rhsusf_20Rnd_762x51_m62_Mag")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
	backpackItems[] =
	{
		LIST_10("rhsusf_20Rnd_762x51_m62_Mag"),
	};
};

class rc_sn : rm
{
	displayName = "Sniper";
	primaryWeapon[] = 
	{
		"CUP_srifle_AWM_des"
	};
	scope[] = 
	{
		"CUP_optic_LeupoldMk4"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	bipod[] = 
	{
		"CUP_bipod_VLTOR_Modpod_black"
	};
	sidearmWeapon[] = 
	{
		"$NONE_hlc_pistol_mk25tr_tan$"
	};
	vest[] = 
	{
		"milgp_v_marciras_marksman_belt_tan"
	};
	magazines[] = 
	{
		LIST_3("hlc_15Rnd_9x19_FMJ_P226"),
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_15("CUP_5Rnd_86x70_L115A1")
	};
	linkedItems[] +=
	{
		"Rangefinder"
	};
	backpackItems[] =
	{
		LIST_10("CUP_5Rnd_86x70_L115A1"),
	};
};