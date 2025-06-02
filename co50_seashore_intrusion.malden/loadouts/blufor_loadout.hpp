class baseMan 
{
	displayName = "Unarmed";
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	faces[] = {};
	insignias[] = {};
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	magazines[] = {};
	items[] = {};
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	backpackItems[] = {};
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		"U_B_UBACS_mtp_f",
		"U_B_UBACS_vest_mtp_f"
	};
	vest[] = 
	{
		"V_PlateCarrierL_CTRG"
	};
	headgear[] = 
	{
		"Aegis_H_Helmet_Virtus_Cover_mtp_F"
	};
	backpack[] = 
	{
		"B_AssaultPack_mcamo"
	};
	primaryWeapon[] = 
	{
		"arifle_SA80_blk_F"
	};
	scope[] = 
	{
		"CUP_optic_Elcan_SpecterDR_black"
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
		LIST_2("rhs_mag_m67"),
		LIST_13("30Rnd_65x39_caseless_black_mag")
	};
	backpackItems[] = 
	{
		LIST_4("30Rnd_65x39_caseless_black_mag")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	primaryWeapon[] = 
	{
		"LMG_Mk200_black_F"
	};
	bipod[] = 
	{
		"ptv_acc_hbrs"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("ACE_200Rnd_65x39_cased_Box_red")
	};
	backpackItems[] = 
	{
		LIST_4("ACE_200Rnd_65x39_cased_Box_red")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	backpackItems[] += 
	{
		LIST_4("ACE_200Rnd_65x39_cased_Box_red")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"ACE_launch_NLAW_ready_F"
	};
	backpackItems[] += 
	{
		"NLAW_F"
	};
};

class gren : rm 
{
	displayName = "Grenadier";
	primaryWeapon[] = 
	{
		"arifle_SA80_GL_blk_F"
	};
	backpackItems[] = 
	{
		LIST_31("rhs_mag_M441_HE"),
		LIST_4("1Rnd_Smoke_Grenade_shell")
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	backpackItems[] = 
	{
		LIST_2("30Rnd_65x39_caseless_black_mag"),
		LIST_2("30Rnd_65x39_caseless_black_mag_Tracer"),
		LIST_2("SmokeShell")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	items[] += 
	{
		"ACRE_PRC148"
	};
	primaryWeapon[] = 
	{
		"arifle_SA80_GL_blk_F"
	};
	backpackItems[] =
	{
		LIST_2("30Rnd_65x39_caseless_black_mag_Tracer"),
		LIST_21("rhs_mag_M441_HE"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	primaryWeapon[] = 
	{
		"arifle_SA80_blk_F"
	};
	backpackItems[] =
	{
		LIST_2("30Rnd_65x39_caseless_black_mag_Tracer"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] +=
	{
		LIST_15("ACE_fieldDressing"),
		LIST_15("ACE_packingBandage"),
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
	backpack[] = 
	{
		"B_Carryall_mcamo"
	};
	backpackItems[] =
	{
		"ACE_surgicalKit",
		LIST_20("ACE_elasticBandage"),
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_20("ACE_epinephrine"),
		LIST_20("ACE_morphine"),
		LIST_12("ACE_bloodIV"),
		LIST_10("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : rm 
{
	displayName = "Medium Machine Gunner";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	primaryWeapon[] = 
	{
		"MMG_02_black_F"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_3("130Rnd_338_Mag")
	};
	backpackItems[] = 
	{
		LIST_4("130Rnd_338_Mag")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	backpackItems[] = 
	{
		LIST_4("130Rnd_338_Mag")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};

class mat : rm 
{
	displayName = "Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	secondaryWeapon[] = 
	{
		"launch_MRAWS_green_F"
	};
	backpackItems[] = 
	{
		LIST_3("MRAWS_HEAT_F")
	};
};

class amat : rm 
{
	displayName = "Assistant Medium Anti-Tank Gunner";
	backpack[] = 
	{
		"B_Kitbag_mcamo"
	};
	backpackItems[] = 
	{
		LIST_2("MRAWS_HEAT_F"),
		LIST_2("MRAWS_HEAT_F")
	};
	linkedItems[] += 
	{
		"rhssaf_zrak_rd7j"
	};
};