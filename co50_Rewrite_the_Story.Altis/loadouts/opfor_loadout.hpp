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
		"U_B_CombatUniform_mcam",
		"U_B_CombatUniform_mcam_vest",
		"U_B_CombatUniform_mcam_tshirt"
	};
	vest[] = 
	{
		LIST_4("V_PlateCarrier1_rgr"),
		"V_PlateCarrier2_rgr"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetB"),
		LIST_2("H_HelmetSpecB"),
		LIST_2("H_HelmetB_light")
	};
	backpack[] = 
	{
		LIST_7("B_AssaultPack_rgr_LAT"),
		LIST_2("B_AssaultPack_mcamo_AT"),
		"B_Carryall_cbr"
	};
	primaryWeapon[] = 
	{
		"arifle_MX_F"
	};
	scope[] = 
	{
		"optic_Aco"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_7("30Rnd_65x39_caseless_mag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"arifle_MX_SW_F"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_3("100Rnd_65x39_caseless_mag_Tracer")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"MMG_02_sand_F"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_3("130Rnd_338_Mag")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"launch_NLAW_F"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_AssaultPack_mcamo_AT",
		"B_Carryall_cbr"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_F"
	};
	backpackItems[] = 
	{
		LIST_3("MRAWS_HEAT_F"),
		"MRAWS_HE_F"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_MX_GL_F"
	};
	magazines[] += 
	{
		LIST_9("CUP_1Rnd_HE_M203"),
		LIST_2("rhs_mag_m714_White")
	};
};

class medic : rm 
{
	displayName = "Medic";
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


class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"H_HelmetCrew_B"
	};
};