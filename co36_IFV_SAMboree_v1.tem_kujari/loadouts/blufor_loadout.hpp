class baseMan 
{
	displayName = "Unarmed";
	// All Randomized
	uniform[] = 
	{
		"U_B_CombatUniform_mcam",
		"U_B_CombatUniform_mcam_vest",
		"U_B_CombatUniform_mcam_tshirt"
	};
	vest[] = 
	{
		"V_PlateCarrier2_mtp"
	};
	backpack[] = 
	{
		"B_AssaultPack_mcamo"
	};
	headgear[] = 
	{
		"H_HelmetSpecB_mcamo"	
	};
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
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_5("ACE_packingBandage"),
		LIST_5("ACE_quikclot"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
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
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	primaryWeapon[] = 
	{
		"arifle_MX_F"
	};
	scope[] =
	{
		"optic_Hamr"
	};
	sidearmWeapon[] =
	{
		"hgun_P07_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_10("30Rnd_65x39_caseless_mag"),
		LIST_2("16Rnd_9x21_Mag_v2")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_TacticalPack_mcamo"
	};
	primaryWeapon[] = 
	{
		"arifle_MX_SW_F"
	};
	bipod[] =
	{
		"bipod_01_F_snd"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_2("16Rnd_9x21_Mag_v2"),
		LIST_5("100Rnd_65x39_caseless_mag")
	};
	backpackItems[] = 
	{
		LIST_8("100Rnd_65x39_caseless_mag")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_TacticalPack_mcamo"
	};
	backpackItems[] += 
	{
		LIST_8("100Rnd_65x39_caseless_mag")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (AT)";
	secondaryWeapon[] = 
	{
		"launch_MRAWS_sand_rail_F"
	};	
	backpackItems[] = 
	{
		LIST_3("MRAWS_HEAT55_F")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] =
	{
		"V_PlateCarrierGL_mtp"
	};
	primaryWeapon[] = 
	{
		"arifle_MX_GL_F"
	};	
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("HandGrenade"),
		LIST_11("30Rnd_65x39_caseless_mag_Tracer"),
		LIST_2("16Rnd_9x21_Mag_v2")
	};	
	backpackItems[] = 
	{
		LIST_6("3Rnd_HE_Grenade_shell"),
		LIST_2("3Rnd_Smoke_Grenade_shell")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	backpackItems[] =
	{
		LIST_5("3Rnd_HE_Grenade_shell"),
		LIST_2("3Rnd_Smoke_Grenade_shell"),
		LIST_2("3Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("3Rnd_SmokeRed_Grenade_shell")		
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	backpackItems[] =
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_quikclot"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_1("ACE_personalAidKit")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_quikclot"),
		LIST_15("ACE_epinephrine"),
		LIST_15("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_1("ACE_personalAidKit")
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	vest[] = 
	{
		"V_PlateCarrier1_mtp"
	};
	headgear[] = 
	{
		"H_HelmetCrew_B"
	};
	primaryWeapon[] =
	{
		"arifle_MXC_F"
	};	
	scope[] =
	{
		"optic_Holosight"
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	items[] +=
	{
		"ACRE_PRC148"
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};