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
	items[] = {};
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
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"CUP_U_B_GER_Flecktarn_2",
		"CUP_U_B_GER_Flecktarn_8"
	};
	vest[] = 
	{
		"CUP_V_B_GER_PVest_Fleck_RFL"
	};
	headgear[] = 
	{
		"CUP_H_Ger_M92_Cover"
	};
	backpack[] = 
	{
		"B_Kitbag_flecktarn"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A3"
	};
	scope[] = 
	{
		"Aegis_optic_ICO"
	};
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
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_13("CUP_30Rnd_556x45_G36")
	};
	backpackItems[] = 
	{
		LIST_4("CUP_30Rnd_556x45_G36")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"CUP_V_B_GER_PVest_Fleck_MG"
	};
	backpack[] = 
	{
		"B_Carryall_flecktarn"
	};
	primaryWeapon[] = 
	{
		"ptv_MG3KWS_b"
	};
	sidearmWeapon[] = 
	{
		"ptv_usp45t"
	};
	magazines[] = 
	{
		LIST_3("ptv_250Rnd_762x51_M_MG3")
	};
	backpackItems[] = 
	{
		LIST_2("ptv_250Rnd_762x51_M_MG3"),
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_2("ptv_12Rnd_45ACP_USP")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_Carryall_flecktarn"
	};
	backpackItems[] += 
	{
		LIST_2("ptv_250Rnd_762x51_M_MG3")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"Atlas_Launch_Pzf3_F"
	};
	backpackItems[] += 
	{
		LIST_3("Atlas_DM12_HEAT_F")
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	vest[] =
	{
		"CUP_V_B_GER_PVest_Fleck_Gren",
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A3_AG36"
	};
	backpackItems[] = 
	{
		LIST_21("CUP_1Rnd_HE_M203"),
		LIST_21("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A3_AG36"
	};
	vest[] =
	{
		"CUP_V_B_GER_PVest_Fleck_Gren",
	};
	backpackItems[] = 
	{
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_10("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("CUP_30Rnd_TE1_Red_Tracer_556x45_G36"),
		LIST_2("SmokeShell")
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
	vest[] =
	{
		"CUP_V_B_GER_PVest_Fleck_TL"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36A3_AG36"
	};
	sidearmWeapon[] = 
	{
		"ptv_usp45t"
	};
	magazines[] += 
	{
		LIST_2("ptv_12Rnd_45ACP_USP")
	};
	backpackItems[] =
	{
		LIST_2("CUP_30Rnd_TE1_Red_Tracer_556x45_G36"),
		LIST_17("CUP_1Rnd_HE_M203"),
		LIST_8("CUP_1Rnd_HEDP_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
	backpackItems[] =
	{
		LIST_13("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	backpack[] =
	{
		"B_Carryall_flecktarn"
	};
	backpackItems[] +=
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_1("SmokeShellRed")
	};
};

class fac : sl 
{
	displayName = "Forward Air Controller";
	backpackItems[] =
	{
		"Laserbatteries",
		LIST_11("CUP_1Rnd_HE_M203"),
		LIST_4("1Rnd_Smoke_Grenade_shell"),
		LIST_4("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_4("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_4("1Rnd_SmokeRed_Grenade_shell"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] += 
	{
		"Laserdesignator"
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	vest[] =
	{
		"CUP_V_B_GER_PVest_Fleck_Med"
	};
	backpack[] = 
	{
		"B_Carryall_flecktarn"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_quikclot"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit"),
		LIST_30("ACE_suture")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"ptv_usp45t"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_11("CUP_30Rnd_556x45_G36"),
		LIST_2("ptv_12Rnd_45ACP_USP")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_10("ACE_quikclot"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		//LIST_2("ACE_adenosine"),
		LIST_1("ACE_personalAidKit")
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	uniform[] = 
	{
		"CUP_U_B_GER_Fleck_Overalls_Tank"
	};
	primaryWeapon[] = 
	{
		"CUP_arifle_G36C"
	};
	headgear[] = 
	{
		"CUP_H_Ger_Beret_TankCommander_Grn"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("CUP_HandGrenade_M67"),
		LIST_9("CUP_30Rnd_556x45_G36")
	};
	backpackItems[] = 
	{
		"ToolKit"
	};
};

class crew_co : crew 
{
	displayName = "Crewman Commander";
	sidearmWeapon[] = 
	{
		"ptv_usp45t"
	};
	items[] +=
	{
		"ACRE_PRC148"
	};
	magazines[] += 
	{
		LIST_3("ptv_12Rnd_45ACP_USP"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] +=
	{
		"Binocular"
	};
};