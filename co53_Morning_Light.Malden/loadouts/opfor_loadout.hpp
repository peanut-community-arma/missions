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
	faces[] = 
	{
		"WhiteHead_02",
		"WhiteHead_03",
		"WhiteHead_04",
		"WhiteHead_05",
		"WhiteHead_06",
		"WhiteHead_07",
		"WhiteHead_08",
		"WhiteHead_09",
		"WhiteHead_10",
		"WhiteHead_11",
		"WhiteHead_12",
		"WhiteHead_13",
		"WhiteHead_14",
		"WhiteHead_15",
		"WhiteHead_16",
		"WhiteHead_17",
		"WhiteHead_18",
		"WhiteHead_19",
		"WhiteHead_20",
		"WhiteHead_21",
		"WhiteHead_22_a",
		"WhiteHead_22_l",
		"WhiteHead_22_sa",
		"AfricanHead_01",
		"AfricanHead_02",
		"AfricanHead_03"
	};
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
		"V_PlateCarrierGL_rgr"
	};
	headgear[] = 
	{
		LIST_3("H_HelmetB"),
		LIST_2("H_HelmetSpecB")
	};
	backpack[] = 
	{
		LIST_7("B_AssaultPack_rgr"),
		LIST_2("B_Kitbag_sgg"),
		"B_Carryall_mcamo"
	};
	primaryWeapon[] = 
	{
		LIST_3("arifle_MX_F"),
		LIST_1("arifle_MXC_F")
	};
	scope[] = 
	{
		"optic_aco"
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
	bipod[] = 
	{
		"bipod_01_f_snd"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("100Rnd_65x39_caseless_mag_Tracer")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"MMG_02_camo_F"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("130Rnd_338_Mag")
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
		"B_Carryall_mcamo"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_rail_F"
	};
	backpackItems[] = 
	{
		LIST_4("MRAWS_HEAT_F"),
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
		LIST_3("CUP_1Rnd_HE_M203")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_Carryall_mcamo"
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


class crew : rm 
{
	displayName = "Crew";
	headgear[] = 
	{
		"H_HelmetCrew_B"
	};
};