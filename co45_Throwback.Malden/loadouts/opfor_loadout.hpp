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
		"rhs_uniform_afghanka_moldovan_ttsko_cold"
	};
	vest[] = 
	{
		LIST_4("rhs_6b3"),
		"rhs_6b3_AK_2",
		"rhs_6b3_AK_3"
	};
	headgear[] = 
	{
		LIST_3("rhs_6b27m_green"),
		LIST_1("rhs_6b27m_green_ess"),
		LIST_2("rhs_6b27m_green_bala"),
		LIST_1("rhs_6b27m_green_ess_bala")
	};
	backpack[] = 
	{
		"pca_backpack_invisible"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak74"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("rhs_30Rnd_545x39_7N10_AK")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_6b3_RPK"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_RPK74_45"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	vest[] = 
	{
		"rhs_6b3_RPK"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_pkm"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_4("rhs_100Rnd_762x54mmR")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_rpg26"
	};
	backpackItems[] = 
	{
		"rhs_weap_rpg26"
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
	vest[] = 
	{
		"rhs_6b3_VOG_2"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_ak74_gp25"
	};
	magazines[] += 
	{
		LIST_9("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class mark : rm 
{
	displayName = "Marksman";
	primaryWeapon[] = 
	{
		"CUP_srifle_SVD"
	};
	scope[] = 
	{
		"CUP_optic_PSO_1"
	};
	magazines[] = 
	{
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_7("CUP_10Rnd_762x54_SVD_M")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	vest[] = 
	{
		"rhs_6b3_off"
	};
	headgear[] = 
	{
		LIST_1("rhs_tsh4"),
		LIST_1("rhs_tsh4_bala")
	};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74u"
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	vest[] = 
	{
		"rhs_6b3_off"
	};
	headgear[] = 
	{
		"rhs_zsh7a_mike",
		"rhs_zsh7a_mike_alt"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_aks74u"
	};
};