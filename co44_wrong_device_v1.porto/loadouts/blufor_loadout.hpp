class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"milgp_u_g3_field_set_mc",
		"milgp_u_g3_field_set_rolled_mc"
	};
	vest[] = 
	{
		"milgp_v_marciras_assaulter_belt_mc"
	};
	backpack[] = 
	{
		"pca_assaultpack_mc"
	};
	headgear[] = 
	{
		"milgp_h_opscore_01_mc",
		"milgp_h_opscore_02_mc",
		"milgp_h_opscore_03_mc",
		"milgp_h_opscore_04_mc",
		"milgp_h_opscore_05_mc",
		"milgp_h_opscore_06_mc"	
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
		"ItemCompass",
		"ItemGPS"
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
		"$NONE_hlc_rifle_acr68_sbr_blk$"
	};
	scope[] =
	{
		"optic_aco"
	};
	bipod[] =
	{
		"rhsusf_acc_grip3"
	};
	attachment[] =
	{
		"pca_flashlight_sf"
	};
	sidearmWeapon[] =
	{
		"$NONE_hlc_pistol_mk25tr$"
	};
	sidearmAttachments[] = 
	{
		"$NONE_hlc_acc_tlr1$"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),		
		LIST_12("hlc_30Rnd_68x43_FMJ_STANAG"),
		LIST_2("hlc_12Rnd_40SW_FMJ_P226")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_marciras_hgunner_belt_mc"
	};
	backpack[] = 
	{
		"pca_carryall_mc"
	};
	primaryWeapon[] = 
	{
		"ptv_weap_m62mr_blk"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("hlc_12Rnd_40SW_FMJ_P226"),
		LIST_4("ptv_200Rnd_556x45_M855A1_mixed_m62_soft_pouch")
	};
	backpackItems[] = 
	{
		LIST_4("ptv_200Rnd_556x45_M855A1_mixed_m62_soft_pouch")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_mc"
	};
	backpackItems[] = 
	{
		LIST_4("ptv_200Rnd_556x45_M855A1_mixed_m62_soft_pouch")
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
	vest[] =
	{
		"milgp_v_marciras_grenadier_belt_mc"
	};
	primaryWeapon[] = 
	{
		"$NONE_hlc_rifle_acr68_sbr_m203_blk$"
	};
	backpackItems[] = 
	{
		LIST_20("1Rnd_HE_Grenade_shell"),
		LIST_5("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : gren 
{
	displayName = "Team Leader";
	vest[] =
	{
		"milgp_v_marciras_teamleader_belt_mc"
	};
	linkedItems[] += 
	{
		"Binocular"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),		
		LIST_12("hlc_30Rnd_68x43_Tracer_STANAG"),
		LIST_2("hlc_12Rnd_40SW_FMJ_P226")
	};	
	backpackItems[] += 
	{
		LIST_5("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_5("1Rnd_SmokeRed_Grenade_shell"),
		LIST_5("SmokeShellBlue"),
		LIST_5("SmokeShellRed"),
		"DemoCharge_Remote_Mag"
	};	
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
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
		"milgp_v_marciras_medic_belt_mc"
	};
	backpack[] = 
	{
		"pca_tacticalpack_mc"
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