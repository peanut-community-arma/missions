class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"bear_uniform_indep_cadpat",
		"bear_uniform_indep_rs_cadpat"
	};
	vest[] = 
	{
		"milgp_v_marciras_assaulter_belt_rgr"
	};
	backpack[] = 
	{
		"B_AssaultPack_rgr"
	};
	headgear[] = 
	{
		"bear_lwh_cadpat"	
	};
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
	primaryWeapon[] = 
	{
		"bear_diemaco_c8"
	};
	scope[] =
	{
		"ptv_acc_c79"
	};
	sidearmWeapon[] =
	{
		"CUP_hgun_M17_Green"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_12("rhs_mag_30Rnd_556x45_M855_Stanag"),
		LIST_2("CUP_17Rnd_9x19_M17_Green")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_marciras_hgunner_belt_rgr"
	};	
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m249_light_S"
	};
	bipod[] = 
	{
		"rhsusf_acc_grip4_bipod"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("CUP_17Rnd_9x19_M17_Green"),
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
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};
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
	displayName = "Rifleman (AT)";
	backpack[] = 
	{
		"B_Kitbag_rgr"
	};	
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
	backpackItems[] = 
	{
		LIST_3("rhs_weap_m72a7")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] = 
	{
		"milgp_v_marciras_grenadier_belt_rgr"
	};	
	primaryWeapon[] = 
	{
		"bear_diemaco_c8_m203"
	};	
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_12("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red"),
		LIST_2("CUP_17Rnd_9x19_M17_Green")
	};	
	backpackItems[] = 
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_5("1Rnd_Smoke_Grenade_shell")
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
		"milgp_v_marciras_teamleader_belt_rgr"
	};		
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_21("rhs_mag_M441_HE"),
		LIST_10("rhs_mag_M433_HEDP"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
		LIST_5("rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red")		
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
		"milgp_v_marciras_medic_belt_rgr"
	};	
	backpack[] = 
	{
		"B_TacticalPack_rgr"
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

class mmg : ar 
{
	displayName = "Medium Machine Gunner";
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
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("CUP_17Rnd_9x19_M17_Green"),
		LIST_3("rhsusf_100Rnd_762x51")
	};
	backpackItems[] = 
	{
		LIST_6("rhsusf_100Rnd_762x51")
	};
};

class ammg : aar 
{
	displayName = "Assistant Medium Machine Gunner";
	backpackItems[] = 
	{
		LIST_6("rhsusf_100Rnd_762x51")
	};
};