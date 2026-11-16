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
		"bear_uniform_indep_rs_cadpat",
		"bear_uniform_indep_cadpat"
	};
	vest[] = 
	{
		"pca_mbav_rifleman_rgr"
	};
	headgear[] = 
	{
		"bear_lwh_cadpat"
	};
	backpack[] = 
	{
		"pca_kitbag_od"
	};
	primaryWeapon[] = 
	{
		"bear_diemaco_c8"
	};
	scope[] = 
	{
		"CUP_optic_CompM4"
	};
	secondaryWeapon[] = 
	{
		"pca_weap_m136cs"
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
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"pca_mbav_mg_rgr"
	};
	backpack[] = 
	{
		"pca_eagle_a3_rgr"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m249_pip_S"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip4_bipod"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	secondaryWeapon[] = 
	{
		""
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
		LIST_3("pca_mag_200Rnd_556x45_M855A1_mixed_soft_pouch_od")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_200Rnd_556x45_M855A1_mixed_soft_pouch_od")
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
		LIST_4("pca_mag_200Rnd_556x45_M855A1_mixed_soft_pouch_od")
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
		"pca_weap_m136cs"
	};
	backpackItems[] += 
	{
		"pca_weap_m136cs"
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] = 
	{
		"pca_mbav_grenadier_rgr"
	};
	primaryWeapon[] = 
	{
		"bear_diemaco_c8_m203"
	};
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_21("rhs_mag_M433_HEDP"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		LIST_2("SmokeShell"),
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
		"bear_diemaco_c8_m203"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
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

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	vest[] = 
	{
		"pca_mbav_medic_rgr"
	};
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
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
		"pca_mbav_mg_rgr"
	};
	backpack[] = 
	{
		"pca_eagle_a3_rgr"
	};
	primaryWeapon[] = 
	{
		"CUP_lmg_M240_B"
	};
	bipod[] = {};
	attachment[] = {};
	silencer[] = 
	{
		"rhsusf_acc_ARDEC_M240"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ"),
		LIST_3("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
	};
	backpackItems[] = 
	{
		LIST_6("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	backpackItems[] = 
	{
		LIST_8("CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M")
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
		"pca_eagle_a3_rgr"
	};
	secondaryWeapon[] = 
	{
		"sp_fwa_m2_carlGustav_no78"
	};
	backpackItems[] += 
	{
		LIST_3("fwa_1rnd_m2_carlgustaf_HEAT")
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
		"rhsusf_weap_glock17g4"
	};
	magazines[] += 
	{
		LIST_2("rhsusf_mag_17Rnd_9x19_FMJ")
	};
	backpackItems[] = 
	{
		LIST_3("CUP_Javelin_M")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};


class eng : rm 
{
	displayName = "Engineer";
	backpackItems[] = 
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
		LIST_4("CUP_HandGrenade_M67"),
		LIST_2("DemoCharge_Remote_Mag"),
		LIST_2("ATMine_Range_Mag"),
		"ACE_Clacker"
	};
};