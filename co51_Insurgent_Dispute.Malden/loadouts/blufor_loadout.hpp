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
		"$NONE_usm_bdu_btisrl_odg$",
		"CUP_U_B_BDUv2_OD",
		"$NONE_usm_bdu_bti_odg$",
		"CUP_U_B_BDUv2_roll2_OD",
		"CUP_U_B_BDUv2_roll_OD_US",
		"CUP_U_B_BDUv2_OD_US"
	};
	vest[] = 
	{
		"rhs_6b2_chicom",
		"rhs_6b2_lifchik"
	};
	headgear[] = 
	{
		"CUP_H_TK_Helmet",
		"CUP_H_SLA_Helmet_OD_worn"
	};
	backpack[] = 
	{
		"rhs_rd54_vest"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_savz58p",
		"rhs_weap_savz58v"
	};
	items[] =
	{
		"ACRE_PRC343",
		LIST_10("ACE_fieldDressing"),
		LIST_10("ACE_packingBandage"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_epinephrine"),
		LIST_2("ACE_morphine"),
		LIST_2("ACE_splint")
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_13("rhs_30Rnd_762x39mm_Savz58")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_30Rnd_762x39mm_Savz58")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"rhs_6b2_RPK"
	};
	primaryWeapon[] = 
	{
		"$NONE_fwa_weap_rpd$"
	};
	sidearmWeapon[] = 
	{
		"CUP_hgun_TT"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_2("rhs_mag_762x25_8"),
		LIST_3("fwa_100rnd_762x39mm_rpd_mixed")
	};
	backpackItems[] = 
	{
		LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpackItems[] += 
	{
		LIST_4("fwa_100rnd_762x39mm_rpd_mixed")
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
		"rhs_weap_rpg26"
	};
	backpackItems[] += 
	{
		"rhs_weap_rpg26"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK47_GL_Early"
	};
	backpackItems[] = 
	{
		LIST_31("CUP_1Rnd_HE_GP25_M"),
		LIST_4("CUP_1Rnd_SMOKE_GP25_M")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	primaryWeapon[] = 
	{
		"CUP_arifle_AK47_GL_Early"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_13("rhs_30Rnd_762x39mm_89")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_30Rnd_762x39mm_tracer"),
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_2("CUP_1Rnd_SMOKE_GP25_M")
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
	sidearmWeapon[] = 
	{
		"CUP_hgun_TaurusTracker455_gold"
	};
	magazines[] += 
	{
		LIST_3("CUP_6Rnd_45ACP_M")
	};
	headgear[] = 
	{
		"CUP_H_SLA_Beret"	
	};
	backpackItems[] =
	{
		LIST_21("CUP_1Rnd_HE_GP25_M"),
		LIST_6("CUP_1Rnd_SMOKE_GP25_M"),
		LIST_3("CUP_1Rnd_SmokeRed_GP25_M"),
		LIST_3("CUP_1Rnd_SmokeGreen_GP25_M")
	};
};

class sgt : sl 
{
	displayName = "Platoon Sergeant";
};

class co : sl 
{
	displayName = "Platoon Commander";
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpack[] = 
	{
		"pca_backpack_invisible_large"
	};
	backpackItems[] =
	{
		LIST_20("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
		LIST_15("ACE_elasticBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_8("ACE_bloodIV"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
	sidearmWeapon[] = 
	{
		"CUP_hgun_TT"
	};
	magazines[] += 
	{
		LIST_2("rhs_mag_762x25_8")
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_30("ACE_elasticBandage"),
		LIST_30("ACE_packingBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class crew : rm 
{
	displayName = "Crewman";
	traits[] = {"engineer"};
	headgear[] = 
	{
		"CUP_H_TK_TankerHelmet"
	};
	primaryWeapon[] = 
	{
		"rhs_weap_savz61"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_f1"),
		LIST_9("rhsgref_20rnd_765x17_vz61")
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
	magazines[] += 
	{
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
	linkedItems[] += 
	{
		"Binocular"
	};
};