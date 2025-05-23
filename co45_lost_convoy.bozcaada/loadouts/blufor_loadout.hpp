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
		"aegis_rcu_vrd",
		"aegis_rcu_rs_vrd"
	};
	vest[] = 
	{
		"aegis_modular_carrier_lite_grn"
	};
	headgear[] = 
	{
		"aegis_specter_od"
	};
	backpack[] = 
	{
		"B_FieldPack_green_F"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_DSA_SA58_OSW_VFG"
	};
	scope[] = 
	{
		"sma_acc_eotech_552_kf_blk"
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
		LIST_9("CUP_30Rnd_762x51_FNFAL_M")
	};
	backpackItems[] = 
	{
		LIST_2("CUP_30Rnd_762x51_FNFAL_M")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"aegis_tacticalpack_rgr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_MG3_rail"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
		LIST_3("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"aegis_tacticalpack_rgr"
	};
	backpackItems[] += 
	{
		LIST_4("CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M")
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
		"launch_RPG32_green_F"
	};
	backpackItems[] = 
	{
		LIST_3("RPG32_F"),
		"RPG32_HE_F"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_DSA_SA58_OSW_M203"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_11("rhs_mag_M433_HEDP"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_DSA_SA58_OSW_M203"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_11("rhs_mag_M433_HEDP"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M"),
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
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_15Rnd_9x19_JHP")
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M"),
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
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"aegis_tacticalpack_rgr"
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
		LIST_4("ACE_tourniquet")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpack[] = 
	{
		"B_Carryall_green_F"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_M9"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_15Rnd_9x19_JHP")
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
