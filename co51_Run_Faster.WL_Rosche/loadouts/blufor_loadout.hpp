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
		LIST_1("simc_bdu_m81"),
		LIST_1("simc_bdu_kp_m81"),
		LIST_1("simc_bdu_kp_roll_m81"),
		LIST_1("simc_bdu_roll_m81")
	};
	vest[] = 
	{
		LIST_2("simc_vest_pasgt_lc1_m81"),
		LIST_3("simc_vest_pasgt_lc1_combat_m81")
	};
	headgear[] = 
	{
		"simc_pasgt_m81_band"
	};
	backpack[] = 
	{
		"simc_lw_ruck",
		"simc_lw_ruck_light"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_ar15_645_a2"
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
	vest[] = 
	{
		"simc_vest_pasgt_lc2_saw_m81"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m249"
	};
	bipod[] = 
	{
		"rhsusf_acc_saw_bipod"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m1911a1"
	};
	magazines[] = 
	{
		LIST_2("rhsusf_mag_7x45acp_MHP"),
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("pca_mag_200Rnd_556x45_M855_mixed_soft_pouch_od")
	};
	backpackItems[] = 
	{
		LIST_4("pca_mag_200Rnd_556x45_M855_mixed_soft_pouch_od")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("pca_mag_200Rnd_556x45_M855_mixed_soft_pouch_od")
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
	vest[] = 
	{
		LIST_2("simc_vest_pasgt_lc1_holster_m81"),
		LIST_3("simc_vest_pasgt_lc2_holster_m81")
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_m1911a1"
	};
	backpackItems[] = 
	{
		LIST_2("rhsusf_mag_7x45acp_MHP"),
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag"),
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
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
	vest[] = 
	{
		"simc_vest_pasgt_lc1_gren_m81"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_ar15_705_m16a2_m203"
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
		LIST_10("rhs_mag_M441_HE"),
		LIST_5("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class FAC : sl 
{
	displayName = "FAC";
	items[] += 
	{
		"ACRE_PRC148"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"simc_lw_ruck_medic"
	};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
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
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_20("ACE_elasticBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class hp : rm 
{
	displayName = "Helicopter Pilot";
	headgear[] = 
	{
		"CUP_H_SPH4_visor"
	};
	uniform[] = 
	{
		LIST_1("simc_tcu_mk3_og107_dirt_2"),
		LIST_1("simc_tcu_mk3_nomex_fold_og107_dirt_2"),
		LIST_1("simc_tcu_mk3_nomex_og107_dirt_2"),
		LIST_1("simc_tcu_mk3_roll_og107_dirt_2"),
		LIST_1("simc_tcu_mk3_rollh_og107_dirt_2")
	};
	vest[] = 
	{
		"simc_vest_pasgt_od3"
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"sp_fwa_723_CAR15"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_7("rhs_mag_30Rnd_556x45_M855_Stanag"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};