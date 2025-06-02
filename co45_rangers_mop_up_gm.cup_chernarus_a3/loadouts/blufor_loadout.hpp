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
		"simc_bdu_m81_eto",
		"simc_bdu_roll_m81_eto"
	};
	vest[] = 
	{
		"simc_vest_rba_lbv_m81"
	};
	headgear[] = 
	{
		"simc_pasgt_m81_band"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
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
		LIST_13("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_m249"
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
		LIST_3("rhsusf_200rnd_556x45_M855_mixed_box")
	};
	backpackItems[] = 
	{
		LIST_4("rhsusf_200rnd_556x45_M855_mixed_box")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("rhsusf_200rnd_556x45_M855_mixed_box")
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
		"rhs_weap_M136"
	};
	backpackItems[] += 
	{
		LIST_2("rhs_weap_m72a7")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] = 
	{
		"simc_vest_rba_lc2_gren_m81"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_Colt727_M203"
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
		"simc_vest_rba_lbv_holster_m81"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag"),
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
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
	items[] += 
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_Colt727_M203"
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
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
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
		"CUP_arifle_M16A2"
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
		"simc_alice_pack"
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