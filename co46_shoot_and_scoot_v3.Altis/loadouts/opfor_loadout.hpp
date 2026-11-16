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
		"U_I_CombatUniform",
		"U_I_CombatUniform_shortsleeve"
	};
	vest[] = 
	{
		"V_PlateCarrierIA1_dgtl"
	};
	headgear[] = 
	{
		"H_HelmetIA"
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("B_AssaultPack_dgtl"),
	};
	primaryWeapon[] = 
	{
		LIST_4("arifle_Mk20_F"),
		"arifle_Mk20C_F"
	};
	scope[] = 
	{
		LIST_3("optic_aco_grn"),
		LIST_2("cup_optic_mepro")
	};
	magazines[] = 
	{
		"SmokeShell",
		"HandGrenade",
		LIST_9("30Rnd_556x45_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"CUP_lmg_minimi_railed"
	};
	magazines[] = 
	{
		"SmokeShell",
		"HandGrenade",
		LIST_3("CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249")
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"pca_weap_m136cs"
	};
};

class rm_mat : rm 
{
	displayName = "Rifleman (MAT)";
	backpack[] = 
	{
		"B_Carryall_oli"
	};
	secondaryWeapon[] = 
	{
		"launch_RPG32_F"
	};
	backpackItems[] = 
	{
		"RPG32_F"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_Mk20_GL_F"
	};
	magazines[] += 
	{
		LIST_3("1Rnd_HE_Grenade_shell"),
		LIST_2("rhs_GRD40_White")
	};
};

class medic : rm
{
	displayName = "Medic";
	backpack[] =
	{
		"B_Carryall_oli"
	};
	backpackItems[] =
	{
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_salineIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	vest[] = 
	{
		"V_BandollierB_oli"
	};
	headgear[] = 
	{
		"H_HelmetCrew_I"
	};
	scope[] = {};
	magazines[] = 
	{
		"SmokeShell",
		"HandGrenade",
		LIST_7("30Rnd_556x45_Stanag")
	};
};

class pilot : rm 
{
	displayName = "Helicopter Pilot";
	uniform[] =
	{
		"U_I_HeliPilotCoveralls"
	};
	vest[] = 
	{
		"V_TacVest_oli"
	};
	headgear[] = 
	{
		"H_PilotHelmetHeli_I",
		"H_CrewHelmetHeli_I"
	};
	primaryWeapon[] = 
	{
		"hgun_PDW2000_F"
	};
	scope[] = 
	{
		"optic_holosight_smg"
	};
	magazines[] = 
	{
		"Chemlight_green",
		"SmokeShellGreen",
		LIST_5("30Rnd_9x21_Yellow_Mag")
	};
};