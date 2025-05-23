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
		"usm_bdu_taki",
		"usm_bdu_bti_taki",
		"usm_bdu_btisrl_taki",
		"usm_bdu_srl_taki",
		"usm_bdu_srh_taki"
	};
	vest[] = 
	{
		LIST_4("usm_vest_lbe_rifleman"),
		"usm_vest_lbe_rifleman2"
	};
	headgear[] = 
	{
		"pca_ssh68_helmet"
	};
	backpack[] = 
	{
		"pca_rd54_oli"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL5062"
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
		LIST_2("rhs_mag_m67"),
		LIST_11("CUP_20Rnd_762x51_FNFAL_M")
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
		"usm_vest_lbe_machinegunner"
	};
	backpack[] = 
	{
		"CUP_B_AlicePack_Khaki"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_MG3"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_6("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"CUP_B_AlicePack_Khaki"
	};
	backpackItems[] = 
	{
		LIST_6("rhsusf_100Rnd_762x51_m80a1epr")
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
		"rhs_weap_m72a7"
	};
	backpackItems[] = 
	{
		"rhs_weap_m72a7"
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	backpackItems[] = 
	{
		LIST_2("CUP_20Rnd_762x51_FNFAL_M"),
		LIST_2("CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_M"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	vest[] = 
	{
		"usm_vest_lbe_rifleman3"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A1E1GL"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_11("rhs_mag_30Rnd_556x45_M193_Stanag")
	};
	backpackItems[] =
	{
		LIST_4("rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	vest[] = 
	{
		"usm_vest_lbe_rifleman4"
	};
	backpackItems[] +=
	{
		"SmokeShellBlue",
		"SmokeShellGreen",
		"SmokeShellRed"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"CUP_B_AlicePack_Khaki"
	};
	backpackItems[] =
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_20("ACE_elasticBandage"),
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_epinephrine"),
		LIST_15("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"rhs_tsh4",
		"rhs_tsh4_ess"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_FNFAL_OSW"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_5("CUP_20Rnd_762x51_FNFAL_M")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	items[] +=
	{
		"ACRE_PRC148"
	};
	linkedItems[] +=
	{
		"rhssaf_zrak_rd7j"
	};
};