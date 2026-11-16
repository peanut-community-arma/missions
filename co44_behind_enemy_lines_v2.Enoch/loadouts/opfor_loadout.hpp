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
		"rhs_6b2_AK"
		//"rhs_belt_AK4"
	};
	headgear[] = 
	{
		"rhs_ssh68_2"
	};
	backpack[] = 
	{
		"rhs_rd54"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74"
	};
	attachment[] = 
	{
		"rhs_acc_2dpzenit"
	}; 
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_7("rhs_30Rnd_545x39_7N6_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	attachment[] =
	{
		"rhs_acc_2dpzenit_ris"
	};
	vest[] =
	{
		"rhs_6b2_RPK"
		//"rhs_belt_AK4"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class vdv : rm 
{
	displayName = "paratrooper";
	headgear[] =
	{
		"rhs_beret_vdv1"
	};
};


class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"CUP_lmg_PKM"
	};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_3("CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"rhs_rk_sht_30_emr",
		"rhs_tortila_emr"
	};
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg7"
	};
	secondaryAttachments[] = 
	{
		"rhs_acc_pgo7v3"
	};
	backpackItems[] = 
	{
		LIST_4("rhs_rpg7_PG7VL_mag"),
		"rhs_rpg7_PG7VR_mag",
		"rhs_rpg7_OG7V_mag"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_ak74m_gp25"
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
		"rhs_medic_bag"
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
		"rhs_6b48"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74u"
	};
	scope[] = {};
	magazines[] = 
	{
		"CUP_HandGrenade_RGD5",
		"SmokeShell",
		LIST_5("rhs_30Rnd_545x39_7N6_AK")
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