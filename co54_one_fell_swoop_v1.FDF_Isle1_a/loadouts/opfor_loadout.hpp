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
	items[] = 
	{
		LIST_2("ACE_fieldDressing"),
		"ACE_packingBandage",
		"ACE_quikclot",
		"ACE_tourniquet",
		"ACE_morphine",
		"ACE_splint"
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
	code = "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"rhs_uniform_acu_oefcp"
	};
	vest[] = 
	{
		LIST_4("CUP_V_JPC_lightbelt_mc"),
		"CUP_V_JPC_Fastbelt_mc"
	};
	headgear[] = 
	{
		LIST_3("rhsusf_ach_helmet_headset_ocp"),
		LIST_2("rhsusf_ach_helmet_headset_ess_ocp")
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m4a1"
	};
	scope[] = 
	{
		LIST_3("rhsusf_acc_compm4"),
		"rhsusf_acc_eotech_552"	
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"CUP_V_JPC_weaponsbelt_mc"
	};
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_m249_light_S"
	};
	bipod[] = 
	{
		"rhsusf_acc_saw_lw_bipod"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_4("rhsusf_200Rnd_556x45_mixed_soft_pouch")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_M136"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_maaws"
	};
	secondaryAttachments[] = 
	{
		"rhs_optic_maaws"
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_maaws_HE"),
		"rhs_mag_maaws_HEDP"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_m4a1_m203s"
	};
	magazines[] += 
	{
		LIST_3("rhs_mag_M441_HE"),
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	vest[] =
	{
		"CUP_V_JPC_medicalbelt_mc"
	};
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_salineIV"),
		LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"rhsusf_assault_eagleaiii_ocp"
	};
	backpackItems[] = 
	{
		"ToolKit",
		"ACE_wirecutter",
		LIST_2("rhs_ec400_sand_mag")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	vest[] = 
	{
		"CUP_V_JPC_Fast_mc"
	};
	headgear[] = 
	{
		"rhsusf_cvc_helmet",
		"rhsusf_cvc_alt_helmet",
		"rhsusf_cvc_ess"
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] = 
	{
		"CUP_V_JPC_Fast_mc"
	};
	headgear[] = 
	{
		"rhsusf_ihadss"
	};
	sidearmWeapon[] = 
	{
		"rhsusf_weap_glock17g4"
	};
	magazines[] += 
	{
		LIST_3("rhsusf_mag_17Rnd_9x19_JHP")
	};
};