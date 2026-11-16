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
		"rhs_uniform_afghanka"
	};
	vest[] = 
	{
		LIST_4("rhs_chicom_khk")
	};
	headgear[] = 
	{
		LIST_3("rhs_ssh68_2")
	};
	primaryWeapon[] = 
	{
		LIST_3("$NONE_hlc_rifle_ak74_worn$"),
		LIST_2("CUP_arifle_AK74_Early"),
		"CUP_arifle_AKS74U"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("rhs_30Rnd_545x39_7N10_plum_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"$NONE_fwa_weap_rpd$"
	};
	vest[] =
	{
		"rhs_lifchik_light"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("fwa_100rnd_762x39mm_rpd_tracer")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_pkp"
	};
	
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("rhs_100Rnd_762x54mmR")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_ak74m_gp25"
	};
	vest[] = 
	{
		"rhs_lifchik_vog"
	};
	magazines[] += 
	{
		LIST_9("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
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
		LIST_2("ACE_bloodIV"),
		LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr_engineer_empty"
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
	headgear[] = 
	{
		"rhs_tsh4"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_AKS74U"
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_spetsnaz2"
	};
	headgear[] = 
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak105"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};