class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	faces[] = {};
	insignias[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	magazines[] = {};
	items[] = {};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	backpackItems[] = {};
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"milgp_u_g3_field_set_3cd",
		"milgp_u_g3_field_set_rolled_3cd"
	};
	vest[] = 
	{
		"milgp_v_marciras_assaulter_belt_tan"
	};
	headgear[] = 
	{
		"bear_ach_dcu2_headset",
		"bear_ach_dcu2_headset_alt"
	};
	backpack[] = 
	{
		"pca_tacticalpack_3cd"
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_scarl_cqc_tan"
	};
	silencer[] = 
	{
		"hlc_muzzle_fn_oem556"
	};
	scope[] = 
	{
		"rhsusf_acc_eotech_552"
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
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_marciras_hgunner_belt_tan"
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_scarl_dmr_tan"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_mk25_tan"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("hlc_15Rnd_9x19_JHP_P226"),
		LIST_9("hlc_50Rnd_556x45_EPR_M_XMAG")
	};
	backpackItems[] = 
	{
		LIST_8("hlc_50Rnd_556x45_EPR_M_XMAG")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_8("hlc_50Rnd_556x45_EPR_M_XMAG")
	};
	linkedItems[] += 
	{
		"rhsusf_bino_lerca_1200_tan"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"pca_weap_m136cs"
	};
	backpackItems[] += 
	{
		"pca_weap_m136cs_hedp"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"milgp_v_marciras_grenadier_belt_tan"
	};
	primaryWeapon[] = 
	{
		"hlc_rifle_scarl_cqc_eglm_tan"
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
	vest[] = 
	{
		"milgp_v_marciras_teamleader_belt_tan"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan"),
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"rhsusf_bino_lerca_1200_tan"
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
		"hlc_rifle_scarl_cqc_eglm_tan"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_mk25_tan"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_JHP_P226")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red"),
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
	primaryWeapon[] = 
	{
		"hlc_rifle_scarl_cqc_tan"
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpack[] = 
	{
		"B_Kitbag_tan"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_mk25_tan"
	};
	magazines[] += 
	{
		LIST_2("hlc_15Rnd_9x19_JHP_P226")
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
		LIST_4("ACE_tourniquet")
	};
};