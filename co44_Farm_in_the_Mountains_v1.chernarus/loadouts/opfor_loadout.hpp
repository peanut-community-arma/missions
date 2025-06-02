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
		"ItemRadio",
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
		"CUP_U_C_Woodlander_03",
		"CUP_U_C_Woodlander_01",
		"CUP_U_C_Worker_02",
		"CUP_U_C_Rocker_01",
		"U_Rangemaster",
		"CUP_U_C_racketeer_01",
		"simc_og107_mk3_rain_parka",
		"CUP_U_C_Profiteer_01",
		"CUP_U_C_Policeman_01",
		"U_C_Mechanic_01_F",
		"CUP_U_C_Mechanic_03",
		"U_C_E_LooterJacket_01_F",
		"U_I_L_Uniform_01_tshirt_skull_F",
		"Atlas_U_C_CommonerJacket_01_grey_F",
		"U_C_Uniform_Formal_01_white_F",
		"U_C_Uniform_Farmer_01_F",
		"CUP_U_C_Citizen_03",
		"CUP_U_O_CHDKZ_Lopotev"
	};
	vest[] = {};
	headgear[] = 
	{
		"H_Bandanna_gry",
		LIST_3(""),
        "H_Cap_blk",
        "CUP_H_FR_BandanaGreen",
        "H_Cap_blk",
        "H_Cap_oli",
        "H_Hat_camo",
        "H_Hat_tan"
	};
	backpack[] = 
	{
		LIST_7(""),
		LIST_2("B_Messenger_Black_F"),
		"B_Messenger_Gray_F"
	};
	primaryWeapon[] = 
	{
		"CUP_srifle_CZ550",
        "CUP_srifle_Remington700"
	};
	magazines[] = 
	{
		LIST_3("CUP_5x_22_LR_17_HMR_M"),
        LIST_3("CUP_6Rnd_762x51_R700")
	};
};

class ldr : rm 
{
	displayName = "Leader";
	primaryWeapon[] = {};
	sidearmWeapon[] = 
	{
		"CUP_hgun_TT",
        "bnae_weap_colt357"
	};
	vest[] = {
        "V_LegStrapBag_black_F",
        "V_LegStrapBag_olive_F"
    };
	magazines[] = 
	{
		LIST_3("CUP_8Rnd_762x25_TT"),
		LIST_3("bnae_6Rnd_357M")
	};
};

class sg : rm 
{
	displayName = "Shotgun";
	primaryWeapon[] = 
	{
		"CUP_sgun_slamfire",
        "rhs_weap_Izh18"
	};
	magazines[] = 
	{
		LIST_20("rhsgref_1Rnd_00Buck")
	};
};

class smg : rm 
{
	displayName = "SeMiGun";
	primaryWeapon[] = 
	{
		"rhs_weap_m3a1"
	};
	magazines[] = 
	{
		LIST_3("rhsgref_30rnd_1143x23_M1911B_SMG")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_CivilianBackpack_01_Everyday_Black_F"
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