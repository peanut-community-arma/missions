class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"Aegis_U_O_CombatFatigues_F",
		LIST_2("Aegis_U_O_CombatFatigues_02_F"),
		LIST_3("Aegis_U_O_CombatUniform_tshirt_hex_F")
	};
	vest[] = 
	{
		"Atlas_V_ORigLBV_Hex_F",
		LIST_2("Atlas_V_OCarrierRig_Lite_Hex_F")
	};
	backpack[] = 
	{
		"B_AssaultPack_ocamo"
	};
	headgear[] = 
	{
		LIST_3("Atlas_H_HelmetCCH_HiCut_cover_hex_F"),
		"H_MilCap_ocamo",
		"H_Booniehat_ocamo_hs"		
	};
	goggles[] = 
	{
		LIST_3(""),
		"G_Bandanna_aviator",
		"G_Bandanna_khk",
		"G_Bandanna_oli",
		"G_Bandanna_shades",
		"G_Bandanna_sport",
		"G_Bandanna_tan"
	};
	hmd[] = {};
	// Leave empty to not change faces and Insignias
	faces[] = {"faceset:persian", "faceset:african", "faceset:caucasian", "faceset:asian"};
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
		"ACE_tourniquet",
		"ACE_morphine",
		"ACE_splint"
	};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass",
		"ItemGPS"
	};
	// These are put directly into the backpack
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit
	code =  "_this call pca_fnc_unlimitedAmmo";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] =
	{
		"arifle_CTAR_hex_F"
	};
	scope[] =
	{
		"optic_ACO_grn"
	};
	sidearmWeapon[] =
	{
		"hgun_Rook40_F"
	};
	magazines[] =
	{
		LIST_2("17Rnd_9x21_Mag"),
		LIST_9("30Rnd_580x42_Mag_F"),
		"MiniGrenade",
		"SmokeShell"
	};
};
class ar : rm 
{
	displayName = "Automatic Rifleman";
	primaryWeapon[] = 
	{
		"arifle_CTARS_hex_F"
	};
	magazines[] = 
	{
		LIST_2("17Rnd_9x21_Mag"),
		LIST_8("100Rnd_580x42_hex_Mag_F"),
		"MiniGrenade",
		"SmokeShell"
	};
};
class dm : rm
{
	displayName = "Marksman";
	primaryWeapon[] =
	{
		"srifle_DMR_07_hex_F"
	};
	scope[] =
	{
		"optic_Arco_hex_lxWS"
	};
	magazines[] =
	{
		LIST_2("17Rnd_9x21_Mag"),
		LIST_9("20Rnd_650x39_Cased_Mag_F"),
		"MiniGrenade",
		"SmokeShell"
	};	
};

class rm_at : rm 
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = 
	{
		"CUP_launch_RPG26"
	};
};

class tl : rm
{
	displayName = "Team Leader";
	primaryWeapon[] =
	{
		"arifle_CTAR_GL_hex_F"
	};
	magazines[] =
	{
		LIST_2("17Rnd_9x21_Mag"),
		LIST_9("30Rnd_580x42_Mag_Tracer_F"),
		"MiniGrenade",
		"SmokeShell",		
		LIST_2("1Rnd_HE_Grenade_shell")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class medic : rm 
{
	displayName = "Medic";
	traits[] = {"medic"};	
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_bloodIV")
	};
};

class sf_rm : rm
{
	displayName = "SF Rifleman";
	uniform[] =
	{
		"U_O_CombatUniform_ocamo"
	};
	vest[] =
	{
		"V_HarnessOSpec_brn"
	};
	headgear[] =
	{
		LIST_10("H_HelmetLeaderO_ocamo"),
		"H_HelmetO_ocamo",
		"H_turban_02_mask_hex_lxws"
	};
	goggles[] =
	{
		LIST_2(""),
		"G_Balaclava_oli_lxWS",
		"G_Balaclava_snd_lxWS"
	};
};

class sf_ar : sf_rm
{
	displayName = "SF Automatic Rifleman";
	primaryWeapon[] =
	{
		"LMG_Zafir_F"
	};
	magazines[] = 
	{
		LIST_2("17Rnd_9x21_Mag"),
		LIST_5("150Rnd_762x54_Box"),
		"MiniGrenade",
		"SmokeShell"
	};	
};

class sf_dm : sf_rm
{
	displayName = "SF Marksman";
	primaryWeapon[] = 
	{
		"srifle_DMR_01_F"
	};
	scope[] =
	{
		"optic_DMS"
	};
	bipod[] =
	{
		"bipod_02_F_hex"
	};
	magazines[] =
	{
		LIST_2("17Rnd_9x21_Mag"),
		LIST_12("10Rnd_762x54_Mag"),
		"MiniGrenade",
		"SmokeShell"
	};	
};

class sf_rm_at : sf_rm
{
	displayName = "SF Rifleman (AT)";
	secondaryWeapon[] =
	{
		"launch_RPG32_F"
	};
	backpackItems[] =
	{
		LIST_2("RPG32_F"),
		"RPG32_HE_F"
	};
};

class sf_tl : sf_rm
{
	displayName = "SF Team Leader";
	primaryWeapon[] =
	{
		"arifle_CTAR_GL_hex_F"
	};
	magazines[] =
	{
		LIST_2("17Rnd_9x21_Mag"),
		LIST_9("30Rnd_580x42_Mag_Tracer_F"),
		"MiniGrenade",
		"SmokeShell",		
		LIST_2("1Rnd_HE_Grenade_shell")
	};
	linkedItems[] += 
	{
		"Binocular"
	};	
};

class sf_medic : sf_rm
{
	displayName = "SF Medic";
	traits[] = {"medic"};	
	backpackItems[] = 
	{
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_elasticBandage"),
		LIST_5("ACE_packingBandage"),
		LIST_4("ACE_epinephrine"),
		LIST_4("ACE_morphine"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_bloodIV")
	};	
};

class crew : sf_rm
{
	displayName = "Crew";
	traits[] = {"engineer"};
	headgear[] =
	{
		"H_HelmetCrew_O"
	};
	vest[] =
	{
		"V_HarnessO_brn"
	};
	primaryWeapon[] =
	{
		"SMG_02_F"
	};
	scope[] = 
	{
		"optic_ACO_grn_smg"
	};
	magazines[] =
	{
		LIST_2("17Rnd_9x21_Mag"),
		LIST_9("30Rnd_9x21_Mag_SMG_02"),
		"MiniGrenade",
		"SmokeShell"
	};
	backpackItems[] =
	{
		"Toolkit"
	};
};

class hp : crew
{
	displayName = "Pilot";
	headgear[] =
	{
		"H_PilotHelmetHeli_O"
	};
};
