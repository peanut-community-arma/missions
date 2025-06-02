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
		LIST_2("CUP_U_I_RACS_Desert_1"),
		"CUP_U_I_RACS_Desert_2"
	};
	vest[] = 
	{
		"CUP_V_I_RACS_Carrier_Vest_2",
		"CUP_V_I_RACS_Carrier_Vest_3",
		"CUP_V_I_RACS_Carrier_Vest"
	};
	headgear[] = 
	{
		"H_O_Helmet_canvas_RACS"
	};
	backpack[] = 
	{
		LIST_3(""),
		LIST_2("pca_assaultpack_cbr"),
		"B_TacticalPack_khk"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_M16A2"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_7("rhs_mag_30Rnd_556x45_M855_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"rhs_weap_m249"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_4("rhsusf_200rnd_556x45_M856_box")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"rhs_weap_m249"
	};
	magazines[] = 
	{
		"rhs_mag_m67",
		"SmokeShell",
		LIST_4("rhsusf_200rnd_556x45_M856_box")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"rhs_weap_m72a7"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_TacticalPack_khk"
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
		LIST_2("CUP_MAAWS_HEAT_M")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"rhs_weap_m70b3n_pbg40"
	};
	magazines[] += 
	{
		LIST_3("rhs_VOG25"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		LIST_2("pca_assaultpack_cbr"),
		"B_TacticalPack_khk"
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
	vest[] = 
	{
		"rhs_6b23_digi_6sh92_headset_spetsnaz"
	};
	headgear[] = 
	{
		"rhs_6b48"
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
		"rhs_mag_rgd5",
		"rhs_mag_rdg2_white",
		LIST_5("rhs_30Rnd_545x39_7N10_AK")
	};
};