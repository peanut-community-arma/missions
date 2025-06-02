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
		"$NONE_wsx_uniform_gorka_surpat_gloves$",
		"$NONE_wsx_uniform_gorka_surpat$"
	};
	vest[] = 
	{
		"rhs_6sh117_rifleman"
	};
	headgear[] = 
	{
		LIST_3("rhs_6b7_1m_bala2"),
		LIST_2("rhs_altyn_visordown")
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak103",
		LIST_3("rhs_weap_akm")
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_762x39mm_polymer")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"$NONE_fwa_weap_rpd$"
	};
	backpack[] =
	{
		"rhs_rk_sht_30_olive"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("fwa_100rnd_762x39mm_rpd_tracer")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_pkp"
	};
		backpack[] =
	{
		"rhs_rk_sht_30_olive"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_3("rhs_100Rnd_762x54mmR_green")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m80"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] =
	{
		"rhs_weap_rpg7"
	};
	backpack[] =
	{
		"rhs_rk_sht_30_olive"
	};
	backpackItems[] = 
	{
		LIST_3("rhs_rpg7_PG7VM_mag"),
		"rhs_rpg7_TBG7V_mag"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_ak103_gp25"
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
		"rhs_rk_sht_30_olive"
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

