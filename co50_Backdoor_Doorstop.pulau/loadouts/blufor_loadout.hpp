/*
	* Example Player Loadout
	* Template for creating player loadout
	* Faction: Example US Army Loadout (OCP, 2020)
*/

// Weaponless Baseclass
class baseMan 
{
	displayName = "Unarmed";
	// All Randomized.
	uniform[] = {};
	vest[] = {};
	backpack[] = {};
	headgear[] = {};
	goggles[] = {};
	hmd[] = {};
	// Leave empty to not change faces and Insignias -> example: faces[] = {};
	faces[] = {};
	insignias[] = {};
	//All Randomized. Add Primary Weapon and attachments.
	//Leave Empty to remove all. {"Default"} for using original items the character start with.
	primaryWeapon[] = {};
	scope[] = {};
	bipod[] = {};
	attachment[] = {};
	silencer[] = {};
	//SecondaryAttachments[] arrays are NOT randomized.
	secondaryWeapon[] = {};
	secondaryAttachments[] = {};
	sidearmWeapon[] = {};
	sidearmAttachments[] = {};
	// These are added to the uniform or vest first - overflow goes to backpack if there is space.
	magazines[] = {};
	items[] = {};
	// These are added directly into their respective slots
	linkedItems[] = 
	{
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
	// These are put directly into the backpack.
	backpackItems[] = {};
	// This is executed after the unit init is complete. Argument: _this = _unit.
	code = "";
};

class rm : baseMan
{
	displayName = "Rifleman";
	uniform[] = 
	{
		LIST_1("usp_g3c_rs_kp_mx_tsw"),
		LIST_1("usp_g3c_rs2_kp_mx_tsw")
	};
	vest[] = 
	{
		"milgp_v_jpc_assaulter_belt_rgr"
	};
	headgear[] = 
	{
		"usp_opscore_mt_ct_fg"
	};
	backpack[] = 
	{
		"pca_eagle_a3_od"
	};
	primaryWeapon[] = 
	{
		LIST_1("camel_weap_k1a_rgr"),
		LIST_1("camel_weap_k1a_blk")
	};
	scope[] = 
	{
		"rhsusf_acc_compm4"
	};
		bipod[] = 
	{
		"rhsusf_acc_rvg_blk"
	};
	items[] =
	{
		//Standard Start Items for player
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
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
	backpackItems[] = 
	{
		LIST_4("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
};

class ar : rm 
{
	displayName = "Automatic Rifleman";
	vest[] = 
	{
		"milgp_v_jpc_hgunner_belt_rgr"
	};
	backpack[] = 
	{
		"pca_carryall_od"
	};
	primaryWeapon[] = 
	{
		"sps_weap_kac_lamg_hg_blk"
	};
	bipod[] = 
	{
		"hlc_bipod_utgshooters"
	};
	scope[] = 
	{
		"rhsusf_acc_compm4"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_p226r_combat"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("hlc_15Rnd_9x19_JHP_P226"),
		LIST_3("sps_200Rnd_556x45_M855A1_Mixed_KAC_Box")
	};
	backpackItems[] = 
	{
		LIST_4("sps_200Rnd_556x45_M855A1_Mixed_KAC_Box")
	};
};

class aar : rm 
{
	displayName = "Assistant Automatic Rifleman";
	backpack[] = 
	{
		"pca_carryall_od"
	};
	backpackItems[] += 
	{
		LIST_4("sps_200Rnd_556x45_M855A1_Mixed_KAC_Box")
	};
	linkedItems[] = 
	{
		"rhssaf_zrak_rd7j",
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
};

class rm_lat : rm 
{
	displayName = "Rifleman (LAT)";
	secondaryWeapon[] = 
	{
		"pca_weap_m136cs"
	};
	backpackItems[] = 
	{
		"pca_weap_m136cs"
	};
};

class tl : rm 
{
	displayName = "Team Leader";
	vest[] = 
	{
		LIST_2("milgp_v_jpc_grenadier_belt_rgr"),
		LIST_3("milgp_v_jpc_teamleader_belt_rgr")
	};
	headgear[] = 
	{
		"usp_opscore_mt_ct_cb1_tl_fg"
	};
	items[] += 
	{
		"ACRE_PRC148"
	};
	sidearmWeapon[] = 
	{
		"rhs_weap_M320"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
	backpackItems[] = 
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
		LIST_13("rhs_mag_M441_HE"),
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red"),
		LIST_2("SmokeShell")
	};
};

class sl : tl 
{
	displayName = "Squad Leader";
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red"),
		LIST_13("rhs_mag_M441_HE"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class co : sl 
{
	displayName = "Platoon Commander";
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_13("rhs_mag_30Rnd_556x45_M855A1_PMAG")
	};
	backpackItems[] =
	{
		LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"),
		LIST_2("SmokeShellBlue"),
		LIST_2("SmokeShellGreen"),
		LIST_2("SmokeShellRed"),
		LIST_13("rhs_mag_M441_HE"),
		LIST_6("1Rnd_Smoke_Grenade_shell"),
		LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
		LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
		LIST_2("1Rnd_SmokeRed_Grenade_shell")
	};
};

class rm_fa : rm 
{
	displayName = "Rifleman (First-Aid)";
	traits[] = {"medic"};
	backpackItems[] +=
	{
		LIST_20("ACE_fieldDressing"),
		LIST_20("ACE_packingBandage"),
		LIST_10("ACE_epinephrine"),
		LIST_10("ACE_morphine"),
		LIST_16("ACE_bloodIV_500"),
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_splint"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class cls : rm_fa
{
	displayName = "Combat Life Saver";
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
		LIST_4("ACE_personalAidKit"),
		LIST_4("ACE_tourniquet"),
		LIST_2("ACE_adenosine")
	};
};

class mmg : ar 
{
	displayName = "Medium Machine Gunner";
	primaryWeapon[] = 
	{
		"sps_weap_kac_amg_blk"
	};
	sidearmWeapon[] = 
	{
		"hlc_pistol_p226r_combat"
	};
	magazines[] = 
	{
		LIST_2("SmokeShell"),
		LIST_2("rhs_mag_m67"),
		LIST_3("hlc_15Rnd_9x19_JHP_P226"),
		LIST_3("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
	};
	backpackItems[] = 
	{
		LIST_6("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
	};
};

class ammg : rm 
{
	displayName = "Assistant Medium Machine Gunner";
	backpackItems[] = 
	{
		LIST_8("sps_100Rnd_762x51_M80A1_Mixed_KAC_Box")
	};
	linkedItems[] = 
	{
		"rhssaf_zrak_rd7j",
		"ItemWatch",
		"ItemMap",
		"ItemCompass"
	};
};