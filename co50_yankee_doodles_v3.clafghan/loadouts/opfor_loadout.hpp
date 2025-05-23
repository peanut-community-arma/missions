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
		LIST_2("ACE_packingBandage"),
		"ACE_epinephrine",
		"ACE_morphine",
		"ACE_tourniquet",
		"ACE_splint",
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white"
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
		"pca_uniform_m88_field_od"
	};
	vest[] =
	{
		LIST_2("rhs_6b3_od"),
		"rhs_6b3_od_ak_1",
		"rhs_6b3_od_ak_2",
		"rhs_6b3_od_ak_3",
		"rhs_6b3_od_officer",
		"rhs_6b3_od_vog_1",
		"rhs_6b3_od_vog_2"
	};
	headgear[] =
	{
		LIST_9("pca_ssh68_dgrn"),
		"pca_m88_fieldcap"
	};
	backpack[] =
	{
		LIST_17(""),
		LIST_2("B_FieldPack_green_F"),
		"pca_rd54_od"
	};
	primaryWeapon[] =
	{
		LIST_3("rhs_weap_ak74n"),
		LIST_2("rhs_weap_ak74n_2")
	};
	magazines[] =
	{
		LIST_7("rhs_30Rnd_545x39_7N6M_plum_AK")
	};
};

class ar : rm
{
	displayName = "Automatic Rifleman";
	vest[] =
	{
		"rhs_6b3_od_rpk"
	};
	primaryWeapon[] =
	{
		"CUP_arifle_RPK74_45"
	};
	magazines[] =
	{
		LIST_5("pca_mag_45Rnd_545x39_Bakelite_Mixed_7N6M")
	};
};

class mg : rm
{
	displayName = "Machine Gunner";
	vest[] =
	{
		"rhs_6b3_od_rpk"
	};
	primaryWeapon[] =
	{
		"CUP_lmg_UK59"
	};
	magazines[] =
	{
		LIST_3("CUP_50Rnd_UK59_762x54R_Tracer")
	};
};

class rm_lat : rm
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = {"rhs_weap_rpg18"};
	magazines[] +=
	{
		"rhs_rpg18_mag"
	};
};

class rm_mat : rm
{
	displayName = "Rifleman (MAT)";
	backpack[] =
	{
		"rhs_rpg_2"
	};
	secondaryWeapon[] =
	{
		"rhs_weap_rpg7"
	};
	backpackItems[] =
	{
		LIST_4("rhs_rpg7_PG7V_mag")
	};
};

class gren : rm
{
	displayName = "Grenadier";
	vest[] =
	{
		"rhs_6b3_od_vog_1",
		"rhs_6b3_od_vog_2"
	};
	primaryWeapon[] =
	{
		LIST_3("rhs_weap_ak74n_gp25"),
		LIST_2("rhs_weap_ak74n_2_gp25")
	};
	magazines[] +=
	{
		LIST_2("rhs_VOG25")
	};
};

class medic : rm
{
	displayName = "Medic";
	backpack[] =
	{
		LIST_2("B_FieldPack_green_F"),
		"pca_rd54_od"
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
		"rhs_weap_aks74un"
	};
	magazines[] =
	{
		LIST_3("rhs_30Rnd_545x39_7N6M_AK")
	};
};

class dm : rm
{
	displayName = "Marksman";
	primaryWeapon[] =
	{
		"pca_weap_svd_wood"
	};
	scope[] =
	{
		"rhs_acc_pso1m21"
	};
	magazines[] =
	{
		LIST_3("rhs_10Rnd_762x54mmR_7N1")
	};
};

class pilot : rm
{
	displayName = "Pilot Crew";
	headgear[] =
	{
		"rhs_zsh7a_mike_green",
		"rhs_zsh7a_mike_green_alt"
	};
	primaryWeapon[] =
	{
		"rhs_weap_aks74un"
	};
	magazines[] =
	{
		LIST_3("rhs_30Rnd_545x39_7N6M_AK")
	};
};
