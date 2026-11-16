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
		LIST_5("U_B_CombatUniform_mcam"),
		LIST_5("U_B_CombatUniform_mcam_vest"),
		"U_B_CombatUniform_mcam_tshirt"
	};
	vest[] = 
	{
		"V_PlateCarrier1_rgr",
		"V_PlateCarrier2_rgr",
		"Aegis_V_PlateCarrier2_alt_rgr"
	};
	headgear[] = 
	{
		LIST_10("H_HelmetB"),
		LIST_2("H_HelmetSpecB"),
		LIST_2("H_HelmetB_camo"),
		LIST_2("H_HelmetB_desert"),
		LIST_2("H_HelmetSpecB_paint2"),
		LIST_2("H_HelmetSpecB_paint1"),
		LIST_2("H_HelmetB_plain_mcamo"),
		LIST_2("H_HelmetB_grass"),
		LIST_2("H_HelmetSpecB_mcamo"),
		LIST_2("H_HelmetB_light"),
		LIST_2("H_HelmetB_light_mcamo"),
		LIST_2("H_HelmetSpecB_light_mcamo"),
		LIST_2("H_HelmetSpecB_light")
	};
	goggles[] = 
	{
		LIST_15(""),
		"G_Balaclava_blk",
		"G_Balaclava_combat",
		"G_Bandanna_blk",
		"G_Bandanna_shades",
		"G_Combat",
		"G_Shades_Black",
		"G_Spectacles_Tinted"
	};
	hmd[] = 
	{
		LIST_15(""),
		"NVGoggles"
	};
	primaryWeapon[] = 
	{
		"arifle_Mk20_plain_F"
	};
	scope[] = 
	{
		LIST_4(""),
		LIST_3("optic_Aco"),
		"optic_Arco"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_11("CUP_30Rnd_556x45_Stanag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_AssaultPack_rgr"
	};
	primaryWeapon[] = 
	{
		"LMG_Mk200_F"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_3("200Rnd_65x39_cased_Box")
	};
};

class mg : rm 
{
	displayName = "Machine Gunner";
	primaryWeapon[] = 
	{
		"srifle_EBR_F"
	};
	scope[] = 
	{
		"optic_MRCO"
	};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_4("20Rnd_762x51_Mag")
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
		"launch_B_Titan_short_F"
	};
	backpackItems[] = 
	{
		"Titan_AP"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_Mk20_GL_plain_F"
	};
	magazines[] += 
	{
		"1Rnd_HE_Grenade_shell",
		LIST_2("1Rnd_Smoke_Grenade_shell")
	};
};

class medic : rm 
{
	displayName = "Medic";
	backpack[] = 
	{
		"B_AssaultPack_rgr"
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
		LIST_2("ACE_bloodIV")
		//LIST_2("ACE_adenosine")
	};
};

class engineer : rm 
{
	displayName = "Engineer";
	primaryWeapon[] = 
	{
		"Aegis_sgun_KSG_black_F"
	};
	scope[] = 
	{
		""
	};
	backpack[] = 
	{
		"B_AssaultPack_rgr"
	};
	backpackItems[] = 
	{
		LIST_6("8Rnd_12Gauge_Slug")
	};
};

class crewman : rm 
{
	displayName = "Crewman";
	headgear[] = 
	{
		"H_HelmetCrew_B"
	};
	primaryWeapon[] = 
	{
		"SMG_01_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("30Rnd_45ACP_Mag_SMG_01")
	};
};

class pilot : rm 
{
	displayName = "Pilot Crew";
	uniform[] = 
	{
		"U_B_HeliPilotCoveralls"
	};
	vest[] = 
	{
		"V_TacVest_blk"
	};
	headgear[] = 
	{
		"H_PilotHelmetHeli_B",
		"H_PilotHelmetHeli_B_visor_up"
	};
	primaryWeapon[] = 
	{
		"SMG_01_F"
	};
	scope[] = {};
	magazines[] = 
	{
		"HandGrenade",
		"SmokeShell",
		LIST_5("30Rnd_45ACP_Mag_SMG_01")
	};
};